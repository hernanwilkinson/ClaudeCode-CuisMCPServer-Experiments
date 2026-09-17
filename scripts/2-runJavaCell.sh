#!/usr/bin/env bash
# Run one cell of an experiment in Java instead of Cuis: Claude Code with its ordinary file and
# shell tools on a Gradle + JUnit 5 project, no MCP server. The counterpart of 2-runCell.sh for
# the language comparison; same experiment layout, same manifest fields where they apply:
#
#   experiments/<experiment>/cells/java-gradle_<config>_<technique>/<exercise>/<YYYYmmdd-HHMMSS-pid>/
#
#   manifest.json, prompt.md, workdir/ (the project as the agent left it, CLAUDE.md, .mcp.json),
#   output/project/ (sources as left, without build dirs), claude-stream.jsonl,
#   claude-transcript.jsonl, usage.json, warm-up.txt, analysis/ (acceptance and own-test runs),
#   analysis.json (written by analyze-java-run.py, the shape 3-analyzeRun produces where it applies)
#
# Usage:
#   scripts/2-runJavaCell.sh --experiment 006-Foo --exercise exercises/2024-1c-parcial1 \
#       [--config 1-Empty] [--technique free] [--model M] [--effort E] [--budget USD] \
#       [--timeout SECONDS] [--tools "Read,Edit,Write,Bash,Glob,Grep"] [--note TEXT]
#
# The exercise must have a java/ directory holding the Gradle project (settings.gradle.kts,
# build.gradle.kts, src/main/java, src/test/java) and spec.md (spec-java.md is used instead when
# present). Gradle is the one under tools/gradle (put on the PATH of the session); the given tests
# are run once before the session (warm-up, which also compiles and caches), and after it twice
# in copies of the project: with the ORIGINAL tests against the final code (acceptance) and as
# the agent left it (its own tests).
#
# Isolation as in 2-runCell.sh: --setting-sources project, working directory outside $HOME,
# --strict-mcp-config with an empty server list so no user MCP server is reachable, only the
# tools named in --tools, --disable-slash-commands.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
EXPERIMENTS_DIR="${EXPERIMENTS_DIR:-$PROJECT_DIR/experiments}"
WORKDIRS_DIR="${WORKDIRS_DIR:-/private/tmp/claude-cells}"
GRADLE_BIN="${GRADLE_BIN:-$PROJECT_DIR/tools/gradle/bin}"

EXPERIMENT=""; CONFIG="1-Empty"; TECHNIQUE="free"; EXERCISE=""; MODEL="claude-fable-5-1"; EFFORT="high"
BUDGET="15"; TIMEOUT="1800"; NOTE=""; TOOLS="Read,Edit,Write,Bash,Glob,Grep"
usage() { sed -n '2,28p' "$0" | sed 's/^# \{0,1\}//'; exit 2; }
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
[ -x "$GRADLE_BIN/gradle" ] || { echo "no Gradle at $GRADLE_BIN (tools/gradle)" >&2; exit 1; }
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
[ -f "$EXERCISE_DIR/exercise.json" ] && [ -f "$EXERCISE_DIR/java/build.gradle.kts" ] || { echo "$EXERCISE_DIR needs exercise.json and java/build.gradle.kts" >&2; exit 1; }
SPEC_FILE="$EXERCISE_DIR/spec.md"; [ -f "$EXERCISE_DIR/spec-java.md" ] && SPEC_FILE="$EXERCISE_DIR/spec-java.md"
EXERCISE_NAME="$(python3 -c "import json; print(json.load(open('$EXERCISE_DIR/exercise.json'))['name'])")"
JAVA_PACKAGE="$(cd "$EXERCISE_DIR/java/src/main/java" && find . -mindepth 1 -maxdepth 1 -type d | head -1 | sed 's|^\./||')"

# ---------------------------------------------------------------- run and working directories

RUN_ID="$(date +%Y%m%d-%H%M%S)-$$"
RUN="$EXPERIMENTS_DIR/$EXPERIMENT/cells/java-gradle_${CONFIG_LABEL}_${TECHNIQUE}/$EXERCISE_NAME/$RUN_ID"
mkdir -p "$RUN/output" "$RUN/analysis"
echo "==> run $RUN"
WORKDIR="$WORKDIRS_DIR/$RUN_ID-$$"
mkdir -p "$WORKDIR"
WORKDIR_ORIGINAL="$WORKDIR"
cp -R "$EXERCISE_DIR" "$RUN/exercise"
rm -rf "$RUN/exercise/java/build" "$RUN/exercise/java/.gradle"
cp -R "$EXERCISE_DIR/java/." "$WORKDIR/"
rm -rf "$WORKDIR/build" "$WORKDIR/.gradle"

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
  echo "Work in the Gradle project in the current directory; it is the only place your work is read from. The code is in src/main/java/$JAVA_PACKAGE and the tests in src/test/java/$JAVA_PACKAGE, both in the package $JAVA_PACKAGE. Run the tests with \`gradle test\` (Gradle is on the PATH). Do not create files outside this project."
} > "$RUN/prompt.md"

# ---------------------------------------------------------------- warm-up: the given tests, once

export PATH="$GRADLE_BIN:$PATH"
export GRADLE_OPTS="${GRADLE_OPTS:--Dorg.gradle.console=plain}"
results_by_class() {  # <project-dir> <json-out>: per test class counts from the JUnit XML
  python3 - "$1" "$2" <<'PY'
import glob, json, sys, xml.etree.ElementTree as ET
out = {}
for f in glob.glob(f"{sys.argv[1]}/build/test-results/test/*.xml"):
    r = ET.parse(f).getroot()
    out[r.get("name")] = {k: int(r.get(k, 0)) for k in ("tests", "failures", "errors", "skipped")}
json.dump(out, open(sys.argv[2], "w"), indent=2)
PY
}
test_results() {  # <project-dir> -> "classes N run M passed P failed F errors E" (from the JUnit XML)
  python3 - "$1" <<'PY'
import glob, sys, xml.etree.ElementTree as ET
files = glob.glob(f"{sys.argv[1]}/build/test-results/test/*.xml")
tests = failures = errors = skipped = 0
for f in files:
    r = ET.parse(f).getroot()
    tests += int(r.get("tests", 0)); failures += int(r.get("failures", 0)); errors += int(r.get("errors", 0)); skipped += int(r.get("skipped", 0))
print(f"classes {len(files)} run {tests - skipped} passed {tests - skipped - failures - errors} failed {failures} errors {errors}")
PY
}
( cd "$WORKDIR" && gradle test > "$RUN/warm-up.log" 2>&1 ) || true
WARM_UP="$(test_results "$WORKDIR")"
grep -q 'BUILD SUCCESSFUL' "$RUN/warm-up.log" || WARM_UP="$WARM_UP (build not successful, see warm-up.log)"
log "warm-up (given tests run once before the session): $WARM_UP"
echo "$WARM_UP" > "$RUN/warm-up.txt"

# ---------------------------------------------------------------- run Claude Code

CLAUDE_VERSION="$(claude --version 2>/dev/null | head -1)"
STARTED_AT="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
START_SECONDS=$(date +%s)
log "claude $CLAUDE_VERSION, model $MODEL, effort $EFFORT, tools $TOOLS, budget \$$BUDGET, timeout ${TIMEOUT}s"
python3 - "$RUN/parameters.json" <<PARAMS
import json, sys
json.dump({"RUN_ID": "$RUN_ID", "EXPERIMENT": "$EXPERIMENT", "SCENARIO": "java-gradle", "CONFIG": "$CONFIG", "TECHNIQUE": "$TECHNIQUE",
    "EXERCISE_NAME": "$EXERCISE_NAME", "JAVA_PACKAGE": "$JAVA_PACKAGE", "MODEL": "$MODEL", "EFFORT": "$EFFORT", "BUDGET": "$BUDGET",
    "TIMEOUT": "$TIMEOUT", "NOTE": "$NOTE", "TOOLS": "$TOOLS", "CLAUDE_VERSION": "$CLAUDE_VERSION", "WORKDIR": "$WORKDIR",
    "STARTED_AT": "$STARTED_AT", "START_SECONDS": "$START_SECONDS", "WARM_UP": "$WARM_UP"}, open(sys.argv[1], "w"), indent=2)
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

gradle --stop > /dev/null 2>&1 || true
mkdir -p "$RUN/output/project"
rsync -a --exclude build --exclude .gradle --exclude CLAUDE.md --exclude .mcp.json --exclude .claude "$WORKDIR/" "$RUN/output/project/"

# the original tests, as given, against the final production code (informative: whether the
# given tests survived untouched; the acceptance itself is the rule of the Cuis analysis below)
ACCEPTANCE="$RUN/analysis/acceptance-project"
rsync -a "$RUN/output/project/" "$ACCEPTANCE/"
rm -rf "$ACCEPTANCE/src/test"; cp -R "$EXERCISE_DIR/java/src/test" "$ACCEPTANCE/src/test"
( cd "$ACCEPTANCE" && gradle test > "$RUN/analysis/acceptance.log" 2>&1 ) || true
ACCEPTANCE_RESULT="$(test_results "$ACCEPTANCE")"
grep -q 'BUILD SUCCESSFUL\|BUILD FAILED' "$RUN/analysis/acceptance.log" || ACCEPTANCE_RESULT="$ACCEPTANCE_RESULT (gradle did not finish)"
grep -q 'Compilation failed\|error: ' "$RUN/analysis/acceptance.log" && ACCEPTANCE_RESULT="COMPILE ERROR: $(grep -m1 'error: ' "$RUN/analysis/acceptance.log" | cut -c1-160)"
log "original tests as given, on the final code: $ACCEPTANCE_RESULT"

# the agent's own tests, as it left the project
OWN="$RUN/analysis/own-tests-project"
rsync -a "$RUN/output/project/" "$OWN/"
( cd "$OWN" && gradle test > "$RUN/analysis/own-tests.log" 2>&1 ) || true
OWN_RESULT="$(test_results "$OWN")"
results_by_class "$OWN" "$RUN/analysis/own-tests-by-class.json"
# acceptance as the Cuis analysis defines it: the given test classes, as the agent left them
python3 - "$EXERCISE_DIR/java/src/test" "$RUN/analysis/own-tests-by-class.json" "$RUN/analysis/acceptance.json" <<'PY'
import json, re, sys
from pathlib import Path
given = sorted({re.search(r"\bclass\s+(\w+)", f.read_text()).group(1) for f in Path(sys.argv[1]).rglob("*.java") if re.search(r"\bclass\s+(\w+)", f.read_text())})
by_class = json.load(open(sys.argv[2]))
matches = {name: counts for name, counts in by_class.items() if name.rsplit(".", 1)[-1] in given}
missing = [g for g in given if not any(name.rsplit(".", 1)[-1] == g for name in by_class)]
run = sum(c["tests"] - c["skipped"] for c in matches.values()); failed = sum(c["failures"] for c in matches.values()); errors = sum(c["errors"] for c in matches.values())
result = {"givenTestClasses": given, "classesRun": sorted(matches), "classesMissing": missing, "run": run, "passed": run - failed - errors, "failed": failed, "errors": errors, "failures": [], "errorTests": []}
json.dump(result, open(sys.argv[3], "w"), indent=2)
print(f"    acceptance (the given test classes as the agent left them): {result['passed']}/{run} passed, {failed} failed, {errors} errors" + (f", given classes missing: {missing}" if missing else ""))
PY
grep -q 'Compilation failed\|error: ' "$RUN/analysis/own-tests.log" && OWN_RESULT="COMPILE ERROR: $(grep -m1 'error: ' "$RUN/analysis/own-tests.log" | cut -c1-160)"
log "own tests (project as left): $OWN_RESULT"
gradle --stop > /dev/null 2>&1 || true
rm -rf "$ACCEPTANCE/build" "$ACCEPTANCE/.gradle" "$OWN/build" "$OWN/.gradle"

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

GRADLE_VERSION="$(gradle --version 2>/dev/null | grep '^Gradle' | head -1 | tr -d '"')"
JAVA_VERSION="$(java -version 2>&1 | head -1 | tr -d '"')"
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
    "scenario": "java-gradle", "language": "java", "config": "$CONFIG".split(","), "technique": "$TECHNIQUE",
    "exercise": "$EXERCISE_NAME", "package": "$JAVA_PACKAGE", "model": "$MODEL", "effort": "$EFFORT",
    "budgetUsd": float("$BUDGET"), "timeoutSeconds": int("$TIMEOUT"), "note": "$NOTE",
    "claudeCodeVersion": "$CLAUDE_VERSION", "builtinTools": "$TOOLS", "gradle": "$GRADLE_VERSION", "java": "$JAVA_VERSION",
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

python3 "$SCRIPT_DIR/analyze-java-run.py" "$RUN" | sed 's/^/    /'
echo "==> done: $RUN"
