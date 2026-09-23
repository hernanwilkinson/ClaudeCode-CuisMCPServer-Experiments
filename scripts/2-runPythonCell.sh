#!/usr/bin/env bash
# Run one cell of an experiment in Python: Claude Code with its ordinary file and shell tools on
# a pytest project, no MCP server. The Python counterpart of 2-runJavaCell.sh, built the same way
# so the two languages differ only in the language: same prompt shape, same isolation, same
# warm-up, same acceptance rule, same manifest and analysis shape.
#
#   experiments/<experiment>/cells/python-pytest_<config>_<technique>/<exercise>/<YYYYmmdd-HHMMSS-pid>/
#
#   manifest.json, prompt.md, workdir/ (the project as the agent left it, CLAUDE.md, .mcp.json),
#   output/project/ (sources as left, without caches), claude-stream.jsonl,
#   claude-transcript.jsonl, usage.json, warm-up.txt, analysis/ (acceptance and own-test runs),
#   analysis.json (written by analyze-python-run.py, the shape 3-analyzeRun produces where it applies)
#
# Usage:
#   scripts/2-runPythonCell.sh --experiment 020-Foo --exercise exercises/2024-1c-parcial1 \
#       [--config 1-Empty] [--technique free] [--model M] [--effort E] [--budget USD] \
#       [--timeout SECONDS] [--tools "Read,Edit,Write,Bash,Glob,Grep"] [--note TEXT]
#
# The exercise must have a python/ directory holding the project (pyproject.toml with the pytest
# settings, src/<package>/, tests/) and spec.md (spec-python.md is used instead when present). The
# interpreter is the python3 on the PATH, with pytest installed; both versions go to the manifest.
# The given tests are run once before the session (warm-up), and after it twice in copies of the
# project: with the ORIGINAL tests against the final code, and as the agent left it (its own tests).
#
# Isolation as in 2-runCell.sh: --setting-sources project, working directory outside $HOME,
# --strict-mcp-config with an empty server list so no user MCP server is reachable, only the
# tools named in --tools, --disable-slash-commands.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
EXPERIMENTS_DIR="${EXPERIMENTS_DIR:-$PROJECT_DIR/experiments}"
WORKDIRS_DIR="${WORKDIRS_DIR:-/private/tmp/claude-cells}"
PYTHON="${PYTHON:-$(command -v python3)}"

EXPERIMENT=""; CONFIG="1-Empty"; TECHNIQUE="free"; EXERCISE=""; MODEL="claude-fable-5-1"; EFFORT="high"
BUDGET="15"; TIMEOUT="1800"; NOTE=""; TOOLS="Read,Edit,Write,Bash,Glob,Grep"
usage() { sed -n '2,29p' "$0" | sed 's/^# \{0,1\}//'; exit 2; }
while [ $# -gt 0 ]; do
  case "$1" in
    --experiment) EXPERIMENT="$2"; shift 2 ;;
    --config)    CONFIG="$2"; shift 2 ;;
    --technique) TECHNIQUE="$2"; shift 2 ;;
    --exercise)  EXERCISE="$2"; shift 2 ;;
    --model)     MODEL="$2"; shift 2 ;;
    --effort)    EFFORT="$2"; shift 2 ;;
    --budget)    BUDGET="$2"; shift 2 ;;
    --timeout)   TIMEOUT="$2"; shift 2 ;;
    --tools)     TOOLS="$2"; shift 2 ;;
    --note)      NOTE="$2"; shift 2 ;;
    -h|--help)   usage ;;
    *) echo "unknown option: $1" >&2; usage ;;
  esac
done
[ -n "$EXPERIMENT" ] || { echo "--experiment is required" >&2; usage; }
[ -n "$EXERCISE" ] || { echo "--exercise is required" >&2; usage; }
"$PYTHON" -c "import pytest" 2>/dev/null || { echo "pytest is not installed for $PYTHON" >&2; exit 1; }
log() { echo "    $*"; }

# ---------------------------------------------------------------- validation

IFS=',' read -r -a CONFIG_NAMES <<< "$CONFIG"
for name in "${CONFIG_NAMES[@]}"; do
  [ -f "$SCRIPT_DIR/configs/$name/CLAUDE.md" ] || { echo "unknown configuration: $name" >&2; exit 1; }
done
CONFIG_LABEL="${CONFIG//,/+}"
TECHNIQUE_FILE="$SCRIPT_DIR/techniques/$TECHNIQUE.md"
[ -f "$TECHNIQUE_FILE" ] || { echo "unknown technique: $TECHNIQUE" >&2; exit 1; }
EXERCISE_DIR="$(cd "$EXERCISE" && pwd)"
[ -f "$EXERCISE_DIR/exercise.json" ] && [ -f "$EXERCISE_DIR/python/pyproject.toml" ] || { echo "$EXERCISE_DIR needs exercise.json and python/pyproject.toml" >&2; exit 1; }
SPEC_FILE="$EXERCISE_DIR/spec.md"; [ -f "$EXERCISE_DIR/spec-python.md" ] && SPEC_FILE="$EXERCISE_DIR/spec-python.md"
EXERCISE_NAME="$(python3 -c "import json; print(json.load(open('$EXERCISE_DIR/exercise.json'))['name'])")"
PY_PACKAGE="$(cd "$EXERCISE_DIR/python/src" && find . -mindepth 1 -maxdepth 1 -type d ! -name '__pycache__' | head -1 | sed 's|^\./||')"

# ---------------------------------------------------------------- run and working directories

RUN_ID="$(date +%Y%m%d-%H%M%S)-$$"
RUN="$EXPERIMENTS_DIR/$EXPERIMENT/cells/python-pytest_${CONFIG_LABEL}_${TECHNIQUE}/$EXERCISE_NAME/$RUN_ID"
mkdir -p "$RUN/output" "$RUN/analysis"
echo "==> run $RUN"
WORKDIR="$WORKDIRS_DIR/$RUN_ID-$$"
mkdir -p "$WORKDIR"
CACHES=(--exclude __pycache__ --exclude .pytest_cache --exclude build)
rsync -a "${CACHES[@]}" "$EXERCISE_DIR/" "$RUN/exercise/"
rsync -a "${CACHES[@]}" "$EXERCISE_DIR/python/" "$WORKDIR/"

{
  for name in "${CONFIG_NAMES[@]}"; do
    while IFS= read -r line || [ -n "$line" ]; do
      case "$line" in
        "@include "*) cat "${line#@include }"; echo ;;
        *) printf '%s\n' "$line" ;;
      esac
    done < "$SCRIPT_DIR/configs/$name/CLAUDE.md"
    echo
  done
} > "$WORKDIR/CLAUDE.md"
echo '{ "mcpServers": {} }' > "$WORKDIR/.mcp.json"

# ---------------------------------------------------------------- prompt

{
  cat "$SPEC_FILE"
  if [ -s "$TECHNIQUE_FILE" ]; then echo; cat "$TECHNIQUE_FILE"; fi
  echo
  echo "Work in the Python project in the current directory; it is the only place your work is read from. The code is in src/$PY_PACKAGE (the package $PY_PACKAGE) and the tests in tests. Run the tests with \`python3 -m pytest\` (pytest is installed). Do not create files outside this project."
} > "$RUN/prompt.md"

# ---------------------------------------------------------------- warm-up: the given tests, once

# pytest writes one JUnit XML for the whole run; results are read from it per test class, the
# class being the last component of each testcase's classname (tests.test_hotel.HotelTest).
run_pytest() {  # <project-dir> <log>
  ( cd "$1" && "$PYTHON" -m pytest -q -p no:cacheprovider --junitxml=build/test-results/junit.xml > "$2" 2>&1 ) || true
}
results_by_class() {  # <project-dir> <json-out>
  "$PYTHON" - "$1" "$2" <<'PY'
import json, os, sys, xml.etree.ElementTree as ET
out = {}
path = f"{sys.argv[1]}/build/test-results/junit.xml"
if os.path.exists(path):
    for case in ET.parse(path).getroot().iter("testcase"):
        name = (case.get("classname") or "").rsplit(".", 1)[-1] or "<module>"
        counts = out.setdefault(name, {"tests": 0, "failures": 0, "errors": 0, "skipped": 0})
        counts["tests"] += 1
        if case.find("failure") is not None: counts["failures"] += 1
        if case.find("error") is not None: counts["errors"] += 1
        if case.find("skipped") is not None: counts["skipped"] += 1
json.dump(out, open(sys.argv[2], "w"), indent=2)
PY
}
test_results() {  # <project-dir> -> "classes N run M passed P failed F errors E" (from the JUnit XML)
  "$PYTHON" - "$1" <<'PY'
import os, sys, xml.etree.ElementTree as ET
path = f"{sys.argv[1]}/build/test-results/junit.xml"
if not os.path.exists(path):
    print("classes 0 run 0 passed 0 failed 0 errors 0"); sys.exit()
classes = set(); tests = failures = errors = skipped = 0
for case in ET.parse(path).getroot().iter("testcase"):
    classes.add((case.get("classname") or "").rsplit(".", 1)[-1])
    tests += 1
    failures += case.find("failure") is not None
    errors += case.find("error") is not None
    skipped += case.find("skipped") is not None
print(f"classes {len(classes)} run {tests - skipped} passed {tests - skipped - failures - errors} failed {failures} errors {errors}")
PY
}
collection_error() {  # <log> -> the first collection or syntax error line, empty if none
  grep -m1 -E '^E +(SyntaxError|ImportError|ModuleNotFoundError|IndentationError|NameError)|ERROR collecting' "$1" | cut -c1-160 || true
}
run_pytest "$WORKDIR" "$RUN/warm-up.log"
WARM_UP="$(test_results "$WORKDIR")"
rm -rf "$WORKDIR/build"
log "warm-up (given tests run once before the session): $WARM_UP"
echo "$WARM_UP" > "$RUN/warm-up.txt"
find "$WORKDIR" -name __pycache__ -type d -prune -exec rm -rf {} +

# ---------------------------------------------------------------- run Claude Code

CLAUDE_VERSION="$(claude --version 2>/dev/null | head -1)"
PYTHON_VERSION="$("$PYTHON" --version 2>&1 | head -1)"
PYTEST_VERSION="$("$PYTHON" -c 'import pytest; print("pytest " + pytest.__version__)')"
STARTED_AT="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
START_SECONDS=$(date +%s)
log "claude $CLAUDE_VERSION, model $MODEL, effort $EFFORT, tools $TOOLS, $PYTHON_VERSION, $PYTEST_VERSION, budget \$$BUDGET, timeout ${TIMEOUT}s"
python3 - "$RUN/parameters.json" <<PARAMS
import json, sys
json.dump({"RUN_ID": "$RUN_ID", "EXPERIMENT": "$EXPERIMENT", "SCENARIO": "python-pytest", "CONFIG": "$CONFIG", "TECHNIQUE": "$TECHNIQUE",
    "EXERCISE_NAME": "$EXERCISE_NAME", "PY_PACKAGE": "$PY_PACKAGE", "MODEL": "$MODEL", "EFFORT": "$EFFORT", "BUDGET": "$BUDGET",
    "TIMEOUT": "$TIMEOUT", "NOTE": "$NOTE", "TOOLS": "$TOOLS", "CLAUDE_VERSION": "$CLAUDE_VERSION", "WORKDIR": "$WORKDIR",
    "PYTHON": "$PYTHON", "STARTED_AT": "$STARTED_AT", "START_SECONDS": "$START_SECONDS", "WARM_UP": "$WARM_UP"}, open(sys.argv[1], "w"), indent=2)
PARAMS

CLAUDE_STATUS=0
(
  cd "$WORKDIR"
  exec claude -p "$(cat "$RUN/prompt.md")" \
    --model "$MODEL" \
    --effort "$EFFORT" \
    --output-format stream-json --verbose \
    --permission-mode bypassPermissions \
    --setting-sources project \
    --tools "$TOOLS" --disable-slash-commands \
    --mcp-config .mcp.json --strict-mcp-config \
    --max-budget-usd "$BUDGET" \
    < /dev/null
) > "$RUN/claude-stream.jsonl" 2> "$RUN/claude-stderr.log" &
CLAUDE_PID=$!
( sleep "$TIMEOUT"; kill -TERM "$CLAUDE_PID" 2>/dev/null && echo "timeout after ${TIMEOUT}s" >> "$RUN/claude-stderr.log" ) > /dev/null 2>&1 &
WATCHDOG_PID=$!
wait "$CLAUDE_PID" || CLAUDE_STATUS=$?
pkill -P "$WATCHDOG_PID" 2>/dev/null || true
kill "$WATCHDOG_PID" 2>/dev/null || true
wait "$WATCHDOG_PID" 2>/dev/null || true
ENDED_AT="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
ELAPSED=$(( $(date +%s) - START_SECONDS ))
log "claude exited with status $CLAUDE_STATUS after ${ELAPSED}s"

# ---------------------------------------------------------------- collect the work

mkdir -p "$RUN/output/project"
rsync -a "${CACHES[@]}" --exclude CLAUDE.md --exclude .mcp.json --exclude .claude "$WORKDIR/" "$RUN/output/project/"

# the original tests, as given, against the final production code (informative, as in Java)
ACCEPTANCE="$RUN/analysis/acceptance-project"
rsync -a "$RUN/output/project/" "$ACCEPTANCE/"
rm -rf "$ACCEPTANCE/tests"; rsync -a "${CACHES[@]}" "$EXERCISE_DIR/python/tests/" "$ACCEPTANCE/tests/"
run_pytest "$ACCEPTANCE" "$RUN/analysis/acceptance.log"
ACCEPTANCE_RESULT="$(test_results "$ACCEPTANCE")"
ERR="$(collection_error "$RUN/analysis/acceptance.log")"; [ -n "$ERR" ] && ACCEPTANCE_RESULT="COLLECTION ERROR: $ERR"
log "original tests as given, on the final code: $ACCEPTANCE_RESULT"

# the agent's own tests, as it left the project
OWN="$RUN/analysis/own-tests-project"
rsync -a "$RUN/output/project/" "$OWN/"
run_pytest "$OWN" "$RUN/analysis/own-tests.log"
OWN_RESULT="$(test_results "$OWN")"
results_by_class "$OWN" "$RUN/analysis/own-tests-by-class.json"
# acceptance as the Cuis analysis defines it: the given test classes, as the agent left them
python3 - "$EXERCISE_DIR/python/tests" "$RUN/analysis/own-tests-by-class.json" "$RUN/analysis/acceptance.json" <<'PY'
import json, re, sys
from pathlib import Path
given = sorted({name for f in Path(sys.argv[1]).rglob("test_*.py") for name in re.findall(r"^class\s+(\w+Test)\b", f.read_text(), re.M)})
by_class = json.load(open(sys.argv[2]))
matches = {name: counts for name, counts in by_class.items() if name in given}
missing = [g for g in given if g not in by_class]
run = sum(c["tests"] - c["skipped"] for c in matches.values()); failed = sum(c["failures"] for c in matches.values()); errors = sum(c["errors"] for c in matches.values())
result = {"givenTestClasses": given, "classesRun": sorted(matches), "classesMissing": missing, "run": run, "passed": run - failed - errors, "failed": failed, "errors": errors, "failures": [], "errorTests": []}
json.dump(result, open(sys.argv[3], "w"), indent=2)
print(f"    acceptance (the given test classes as the agent left them): {result['passed']}/{run} passed, {failed} failed, {errors} errors" + (f", given classes missing: {missing}" if missing else ""))
PY
ERR="$(collection_error "$RUN/analysis/own-tests.log")"; [ -n "$ERR" ] && OWN_RESULT="COLLECTION ERROR: $ERR"
log "own tests (project as left): $OWN_RESULT"
rm -rf "$ACCEPTANCE/build" "$OWN/build"
find "$RUN/analysis" -name __pycache__ -type d -prune -exec rm -rf {} +

mv "$WORKDIR" "$RUN/workdir"
rmdir "$WORKDIRS_DIR" 2>/dev/null || true

SESSION_ID="$(python3 -c "
import json
for line in open('$RUN/claude-stream.jsonl'):
    r = json.loads(line)
    if r.get('type') == 'system' and r.get('subtype') == 'init':
        print(r['session_id']); break
" 2>/dev/null || true)"
TRANSCRIPT="$(find "$HOME/.claude/projects" -name "$SESSION_ID.jsonl" 2>/dev/null | head -1)"
if [ -n "$SESSION_ID" ] && [ -f "$TRANSCRIPT" ]; then
  cp "$TRANSCRIPT" "$RUN/claude-transcript.jsonl"
  python3 "$SCRIPT_DIR/session-tokens.py" "$RUN/claude-transcript.jsonl" --json > "$RUN/usage.json" 2>/dev/null || true
fi

# ---------------------------------------------------------------- manifest

python3 - "$RUN" <<EOF
import hashlib, json, os, sys
run = sys.argv[1]
def sha256(path): return hashlib.sha256(open(path, "rb").read()).hexdigest()
result = {}
for line in open(f"{run}/claude-stream.jsonl"):
    try: record = json.loads(line)
    except ValueError: continue
    if record.get("type") == "result": result = record
status = "completed"
if "$CLAUDE_STATUS" != "0" or result.get("is_error"): status = "failed"
if "timeout after" in open(f"{run}/claude-stderr.log").read(): status = "timeout"
if not result: status = "no-result"
usage = {}
if os.path.exists(f"{run}/usage.json"):
    try: usage = json.load(open(f"{run}/usage.json"))
    except ValueError: usage = {}
json.dump({
    "experiment": "$EXPERIMENT", "runId": "$RUN_ID", "warmUp": "$WARM_UP", "mode": "headless",
    "scenario": "python-pytest", "language": "python", "config": "$CONFIG".split(","), "technique": "$TECHNIQUE",
    "exercise": "$EXERCISE_NAME", "package": "$PY_PACKAGE", "model": "$MODEL", "effort": "$EFFORT",
    "budgetUsd": float("$BUDGET"), "timeoutSeconds": int("$TIMEOUT"), "note": "$NOTE",
    "claudeCodeVersion": "$CLAUDE_VERSION", "builtinTools": "$TOOLS", "python": "$PYTHON_VERSION", "pytest": "$PYTEST_VERSION",
    "hashes": {"prompt.md": sha256(f"{run}/prompt.md"), "CLAUDE.md": sha256(f"{run}/workdir/CLAUDE.md"), "spec": sha256("$SPEC_FILE")},
    "startedAt": "$STARTED_AT", "endedAt": "$ENDED_AT", "elapsedSeconds": int("$ELAPSED"),
    "claudeExitStatus": int("$CLAUDE_STATUS"), "status": status,
    "originalTestsAsGiven": "$ACCEPTANCE_RESULT", "ownTests": "$OWN_RESULT",
    "acceptance": json.load(open(f"{run}/analysis/acceptance.json")),
    "usageFromTranscript": {"totalCostUsd": usage.get("total_cost_usd"), "perModel": usage.get("per_model"), "toolCalls": usage.get("tool_calls")},
    "result": {"subtype": result.get("subtype"), "isError": result.get("is_error"), "numTurns": result.get("num_turns"),
               "durationMs": result.get("duration_ms"), "durationApiMs": result.get("duration_api_ms"), "totalCostUsd": result.get("total_cost_usd"),
               "usage": result.get("usage"), "modelUsage": result.get("modelUsage"), "stopReason": result.get("stop_reason"), "text": result.get("result")},
}, open(f"{run}/manifest.json", "w"), indent=2)
print(f"    status {status}, turns {result.get('num_turns')}, cost \${result.get('total_cost_usd') if result else usage.get('total_cost_usd')}")
EOF

python3 "$SCRIPT_DIR/analyze-python-run.py" "$RUN" | sed 's/^/    /'
echo "==> done: $RUN"
