#!/usr/bin/env bash
# Analyze one run: file the package the run produced into a fresh copy of the analysis image,
# run the acceptance tests and the agent's tests, measure coverage and test smells, apply
# SmalltalkMentor's heuristics (and, on request, its LLM review), count design metrics from the
# parse trees, diff the package against the starting code and summarize what the agent did from
# the server's call log and Claude Code's usage. Writes <run>/analysis.json.
#
#   scripts/3-analyzeRun.sh <run-dir> [--llm-review [N]] [--keep-image]
#
# The analysis image is scenarios/analysis (built by 1-createScenarioImage.sh analysis): the
# University base with every MCP tool, TestLint and SmalltalkMentor. It is copied into
# <run>/analysis/image/, loaded with <run>/output/<Package>.pck.st and the acceptance tests, and
# deleted afterwards (kept with --keep-image). The run's own saved image is never touched.
#
# --llm-review asks SmalltalkMentor to review each method with its configured LLM provider (the
# keys in ~/.smalltalk-mentor/), at most N methods (default 200). Off by default: one model
# call per method.
#
# Acceptance tests: exercise.json may name "acceptanceTests" (a .st or .pck.st file relative to
# the exercise directory, loaded here and never shown to the agent) and/or
# "acceptanceTestClasses". Without either, the test classes the starting code brought count as
# the acceptance tests, since the exam gave them; a greenfield exercise without starting code
# then has none and only the agent's own tests are reported.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
MCP_CLIENT="$SCRIPT_DIR/mcp-client.py"
SCENARIOS_DIR="${SCENARIOS_DIR:-$PROJECT_DIR/scenarios}"
ANALYSIS_IMAGE_DIR="$SCENARIOS_DIR/analysis"

KEEP_IMAGE=0
LLM_REVIEW_LIMIT=0
RUN=""
while [ $# -gt 0 ]; do
  case "$1" in
    --keep-image) KEEP_IMAGE=1; shift ;;
    --llm-review)
      LLM_REVIEW_LIMIT=200
      if [ $# -gt 1 ] && [[ "$2" =~ ^[0-9]+$ ]]; then LLM_REVIEW_LIMIT="$2"; shift; fi
      shift ;;
    -h|--help) sed -n '2,24p' "$0" | sed 's/^# \{0,1\}//'; exit 2 ;;
    *) RUN="$1"; shift ;;
  esac
done
[ -n "$RUN" ] || { echo "usage: $(basename "$0") <run-dir> [--llm-review [N]] [--keep-image]" >&2; exit 2; }
RUN="$(cd "$RUN" && pwd)"
[ -f "$RUN/manifest.json" ] || { echo "$RUN has no manifest.json" >&2; exit 1; }
[ -f "$ANALYSIS_IMAGE_DIR/manifest.json" ] || { echo "the analysis image is not built; run scripts/1-createScenarioImage.sh analysis" >&2; exit 1; }

if which -s brew; then
  export DYLD_LIBRARY_PATH="$(brew --prefix)/lib:${DYLD_LIBRARY_PATH:-}"
fi

log() { echo "    $*"; }
echo "==> analyzing $RUN"

EXERCISE_DIR="$RUN/exercise"
PACKAGE="$(python3 -c "import json; print(json.load(open('$EXERCISE_DIR/exercise.json'))['package'])")"
PACKAGE_FILE="$RUN/output/$PACKAGE.pck.st"
[ -f "$PACKAGE_FILE" ] || { echo "the run has no filed-out package at $PACKAGE_FILE" >&2; exit 1; }
VM="$(python3 -c "import json; print(json.load(open('$ANALYSIS_IMAGE_DIR/manifest.json'))['vm'])")"
IMAGE_NAME="$(python3 -c "import json; print(json.load(open('$ANALYSIS_IMAGE_DIR/manifest.json'))['image'])")"

# ---------------------------------------------------------------- a fresh analysis image

ANALYSIS="$RUN/analysis"
rm -rf "$ANALYSIS"
mkdir -p "$ANALYSIS/image"
cp "$ANALYSIS_IMAGE_DIR/$IMAGE_NAME" "$ANALYSIS_IMAGE_DIR/${IMAGE_NAME%.image}.changes" "$ANALYSIS_IMAGE_DIR"/*.sources "$ANALYSIS/image/"
[ -f "$ANALYSIS_IMAGE_DIR/UnicodeData.txt" ] && cp "$ANALYSIS_IMAGE_DIR/UnicodeData.txt" "$ANALYSIS/image/"
cp "$ANALYSIS_IMAGE_DIR/manifest.json" "$ANALYSIS/analysis-image-manifest.json"

PORT="$(python3 -c 'import socket; s=socket.socket(); s.bind(("127.0.0.1",0)); print(s.getsockname()[1]); s.close()')"
TOKEN="$(openssl rand -hex 16)"
(
  cd "$ANALYSIS/image"
  SMALLTALK_MCP_TOKEN="$TOKEN" exec "$VM" "$ANALYSIS/image/$IMAGE_NAME" "--mcpHttpPort=$PORT" "--mcpLogCalls=$ANALYSIS/mcp-calls.jsonl"
) > "$ANALYSIS/vm.log" 2>&1 &
VM_PID=$!
stop_vm() { kill "$VM_PID" 2>/dev/null || true; wait "$VM_PID" 2>/dev/null || true; rm -rf "$ANALYSIS/image-UserFiles" "$RUN/analysis-UserFiles"; }
trap stop_vm EXIT
mcp() { python3 "$MCP_CLIENT" --port "$PORT" --token "$TOKEN" "$@"; }
mcp wait 120 > /dev/null

install_package() {
  mcp evaluate "[ ((FeatureRequirement name: (CodePackageFile packageNameFrom: '$1')) pathName: '$1') satisfyRequirementsAndInstall. 'OK' ] on: Error, FeatureRequirementUnsatisfied do: [ :anError | 'FAILED: ', anError description ]" > "$ANALYSIS/install.log" 2>&1 \
    || { echo "installing $1 failed: $(cat "$ANALYSIS/install.log")" >&2; exit 1; }

# What the agent changed outside the package (base-class extensions under a category that names
# no package): extracted from the run's saved image if not done yet, then filed in on top.
[ -f "$RUN/output/LooseChanges.st" ] || "$SCRIPT_DIR/extract-loose-changes.sh" "$RUN" 2>&1 | sed 's/^/    /' || true
if [ -s "$RUN/output/LooseChanges.st" ]; then
  echo "    filing in $(grep -c '^!' "$RUN/output/LooseChanges.st") loose method chunk(s) the package needs"
  mcp evaluate "[ (FileEntry withAbsolutePathName: '$RUN/output/LooseChanges.st') readStreamDo: [ :aStream | aStream fileIn ]. 'OK' ] on: Error do: [ :anError | 'FAILED: ', anError description ]" > "$ANALYSIS/loose-filein.log" 2>&1 || true
fi
}
file_in() {
  mcp evaluate "[ (FileEntry withAbsolutePathName: '$1') readStreamDo: [ :aStream | aStream fileIn ]. 'OK' ] on: Error do: [ :anError | 'FAILED: ', anError description ]" > "$ANALYSIS/filein.log" 2>&1 \
    || { echo "filing in $1 failed: $(cat "$ANALYSIS/filein.log")" >&2; exit 1; }
}

log "installing the run's package $PACKAGE"
install_package "$PACKAGE_FILE"

# ---------------------------------------------------------------- acceptance tests

ACCEPTANCE_FILE="$(python3 -c "import json; print(json.load(open('$EXERCISE_DIR/exercise.json')).get('acceptanceTests') or '')")"
if [ -n "$ACCEPTANCE_FILE" ]; then
  log "loading acceptance tests $ACCEPTANCE_FILE"
  case "$ACCEPTANCE_FILE" in
    *.pck.st) install_package "$EXERCISE_DIR/$ACCEPTANCE_FILE" ;;
    *) file_in "$EXERCISE_DIR/$ACCEPTANCE_FILE" ;;
  esac
fi
ACCEPTANCE_CLASSES="$(python3 - "$EXERCISE_DIR" "$ACCEPTANCE_FILE" <<'EOF'
import json, re, sys
from pathlib import Path
exercise_dir, acceptance_file = Path(sys.argv[1]), sys.argv[2]
exercise = json.load(open(exercise_dir / "exercise.json"))
names = list(exercise.get("acceptanceTestClasses") or [])
definition = re.compile(r"^\s*(\S+)\s+(?:variable|weak|)subclass:\s*#(\w+)", re.M)
def test_classes_in(path):
    text = path.read_bytes().decode("utf-8", "replace")
    found, known = [], {"TestCase"}
    for superclass, name in definition.findall(text):
        if superclass in known or superclass.endswith("Test") or superclass.endswith("TestCase"):
            known.add(name); found.append(name)
    return found
if acceptance_file:
    names += test_classes_in(exercise_dir / acceptance_file)
elif not names:
    for relative in exercise.get("startingPackages") or []:
        if relative and (exercise_dir / relative).is_file():
            names += test_classes_in(exercise_dir / relative)
print(" ".join(dict.fromkeys(names)))
EOF
)"
log "acceptance test classes: ${ACCEPTANCE_CLASSES:-none}"

# ---------------------------------------------------------------- the in-image analysis

python3 - "$SCRIPT_DIR/analysis.st" "$ANALYSIS/analysis.st" "$PACKAGE" "$ACCEPTANCE_CLASSES" "$LLM_REVIEW_LIMIT" "$ANALYSIS/in-image.json" <<'EOF'
import sys
template, target, package, classes, limit, output = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4].split(), sys.argv[5], sys.argv[6]
literal = "#(" + " ".join(f"'{name}'" for name in classes) + ")"
source = (open(template).read()
          .replace("{{PACKAGE}}", package.replace("'", "''"))
          .replace("{{ACCEPTANCE_CLASS_NAMES}}", literal)
          .replace("{{LLM_REVIEW_LIMIT}}", limit)
          .replace("{{OUTPUT_FILE}}", output.replace("'", "''")))
open(target, "w").write(source)
EOF
log "running tests, coverage, test smells, heuristics and metrics in the image$( [ "$LLM_REVIEW_LIMIT" -gt 0 ] && echo ", LLM review of up to $LLM_REVIEW_LIMIT methods" )"
rm -f "$ANALYSIS/in-image.json"
mcp evaluate "@$ANALYSIS/analysis.st" > "$ANALYSIS/in-image.log" 2>&1 \
  || { echo "the in-image analysis failed: $(head -c 2000 "$ANALYSIS/in-image.log")" >&2; exit 1; }
python3 -c "import json; json.load(open('$ANALYSIS/in-image.json'))" \
  || { echo "the image did not write a readable $ANALYSIS/in-image.json: $(head -c 500 "$ANALYSIS/in-image.log")" >&2; exit 1; }

stop_vm
trap - EXIT
[ "$KEEP_IMAGE" -eq 1 ] || rm -rf "$ANALYSIS/image"

# ---------------------------------------------------------------- merge

python3 "$SCRIPT_DIR/analysis-merge.py" "$RUN"
echo "==> $RUN/analysis.json"
