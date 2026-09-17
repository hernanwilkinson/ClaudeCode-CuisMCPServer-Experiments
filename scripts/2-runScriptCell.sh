#!/usr/bin/env bash
# Run one cell of an experiment in Cuis WITHOUT the MCP server: Claude Code with its file and
# shell tools writes Smalltalk scripts and runs each one against the image from the command line
# (the VM's -s option, through cuis-script-wrapper.st). A script is evaluated as the evaluate tool
# would evaluate it; its value is printed; an error prints ERROR: and leaves the image untouched;
# a script that ends normally saves the image, so definitions persist between scripts. The
# counterpart of 2-runCell.sh for the environment comparison (files and shell versus MCP tools).
#
#   experiments/<experiment>/cells/cuis-script_<config>_<technique>/<exercise>/<YYYYmmdd-HHMMSS-pid>/
#
# Same outputs as 2-runCell.sh where they apply: manifest.json, prompt.md, workdir/ (the scripts the
# agent wrote, cuis.sh, run-tests.st, CLAUDE.md), image/ (saved by the scripts), output/<Package>.pck.st
# and LooseChanges.st, claude-stream.jsonl, claude-transcript.jsonl, usage.json, warm-up.txt,
# scripts.log (every script run: file, status, stdout size). No mcp-calls.jsonl: the analysis reads
# the stream for the agent's calls and counts script runs.
#
# Usage:
#   scripts/2-runScriptCell.sh --experiment 009-Foo --exercise exercises/2024-1c-parcial1 \
#       [--scenario 1-Evaluate+TestRunning-University] [--config 1-Empty] [--technique free] \
#       [--model M] [--effort E] [--budget USD] [--timeout SECONDS] [--tools "Read,Edit,Write,Bash,Glob,Grep"] [--note TEXT]
#
# --scenario names the image to work on (default the University-based evaluate-only image); no
# server is started on it. Isolation as in the other runners.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
EXPERIMENTS_DIR="${EXPERIMENTS_DIR:-$PROJECT_DIR/experiments}"
WORKDIRS_DIR="${WORKDIRS_DIR:-/private/tmp/claude-cells}"
SCENARIOS_DIR="${SCENARIOS_DIR:-$PROJECT_DIR/scenarios}"
WRAPPER="$SCRIPT_DIR/cuis-script-wrapper.st"

EXPERIMENT=""; SCENARIO="1-Evaluate+TestRunning-University"; CONFIG="1-Empty"; TECHNIQUE="free"; EXERCISE=""
MODEL="claude-fable-5-1"; EFFORT="high"; BUDGET="15"; TIMEOUT="1800"; NOTE=""; TOOLS="Read,Edit,Write,Bash,Glob,Grep"
usage() { sed -n '2,24p' "$0" | sed 's/^# \{0,1\}//'; exit 2; }
while [ $# -gt 0 ]; do
  case "$1" in
    --experiment) EXPERIMENT="$2"; shift 2 ;;
    --scenario)  SCENARIO="$2"; shift 2 ;;
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
log() { echo "    $*"; }

# ---------------------------------------------------------------- validation

SCENARIO_DIR="$SCENARIOS_DIR/$SCENARIO"
[ -f "$SCENARIO_DIR/manifest.json" ] || { echo "scenario $SCENARIO is not built" >&2; exit 1; }
IFS=',' read -r -a CONFIG_NAMES <<< "$CONFIG"
for name in "${CONFIG_NAMES[@]}"; do [ -f "$SCRIPT_DIR/configs/$name/CLAUDE.md" ] || { echo "unknown configuration: $name" >&2; exit 1; }; done
CONFIG_LABEL="${CONFIG//,/+}"
TECHNIQUE_FILE="$SCRIPT_DIR/techniques/$TECHNIQUE.md"
[ -f "$TECHNIQUE_FILE" ] || { echo "unknown technique: $TECHNIQUE" >&2; exit 1; }
EXERCISE_DIR="$(cd "$EXERCISE" && pwd)"
[ -f "$EXERCISE_DIR/spec.md" ] && [ -f "$EXERCISE_DIR/exercise.json" ] || { echo "$EXERCISE_DIR needs spec.md and exercise.json" >&2; exit 1; }
EXERCISE_NAME="$(python3 -c "import json; print(json.load(open('$EXERCISE_DIR/exercise.json'))['name'])")"
PACKAGE="$(python3 -c "import json; print(json.load(open('$EXERCISE_DIR/exercise.json'))['package'])")"

# ---------------------------------------------------------------- run and working directories

RUN_ID="$(date +%Y%m%d-%H%M%S)-$$"
RUN="$EXPERIMENTS_DIR/$EXPERIMENT/cells/cuis-script_${CONFIG_LABEL}_${TECHNIQUE}/$EXERCISE_NAME/$RUN_ID"
mkdir -p "$RUN/image" "$RUN/output"
echo "==> run $RUN"
WORKDIR="$WORKDIRS_DIR/$RUN_ID-$$"
mkdir -p "$WORKDIR"
cp "$SCENARIO_DIR"/*.image "$SCENARIO_DIR"/*.changes "$SCENARIO_DIR"/*.sources "$RUN/image/"
[ -f "$SCENARIO_DIR/UnicodeData.txt" ] && cp "$SCENARIO_DIR/UnicodeData.txt" "$RUN/image/"
cp "$SCENARIO_DIR/manifest.json" "$RUN/image/scenario-manifest.json"
cp -R "$EXERCISE_DIR" "$RUN/exercise"
IMAGE_FILE="$RUN/image/$(python3 -c "import json; print(json.load(open('$SCENARIO_DIR/manifest.json'))['image'])")"
VM="$(python3 -c "import json; print(json.load(open('$SCENARIO_DIR/manifest.json'))['vm'])")"

{
  for name in "${CONFIG_NAMES[@]}"; do
    while IFS= read -r line || [ -n "$line" ]; do
      case "$line" in "@include "*) cat "${line#@include }"; echo ;; *) printf '%s\n' "$line" ;; esac
    done < "$SCRIPT_DIR/configs/$name/CLAUDE.md"; echo
  done
} > "$WORKDIR/CLAUDE.md"
echo '{ "mcpServers": {} }' > "$WORKDIR/.mcp.json"

# the script runner the agent uses; every run is logged with its status and output size
cat > "$WORKDIR/cuis.sh" <<EOF
#!/usr/bin/env bash
# Run a Smalltalk script against the image: ./cuis.sh <file.st>
# The script is evaluated like an expression (temporaries, if any, declared first); the printString
# of its value is printed. An error anywhere prints ERROR: ... , exits with status 1 and leaves the
# image exactly as it was (nothing the script did is kept). A script that ends normally saves the
# image, so what it defined is there for the next script.
[ -n "\$1" ] && [ -f "\$1" ] || { echo "usage: ./cuis.sh <file.st>" >&2; exit 2; }
script="\$(cd "\$(dirname "\$1")" && pwd)/\$(basename "\$1")"
"$VM" -headless "$IMAGE_FILE" -s "$WRAPPER" "\$script" 2>&1 | tee /tmp/.cuis-last-output-\$\$
status=\${PIPESTATUS[0]}
printf '%s\t%s\t%s\t%s\n' "\$(date -u +%Y-%m-%dT%H:%M:%SZ)" "\$(basename "\$1")" "\$status" "\$(wc -c < /tmp/.cuis-last-output-\$\$ | tr -d ' ')" >> "$RUN/scripts.log"
rm -f /tmp/.cuis-last-output-\$\$
exit \$status
EOF
chmod +x "$WORKDIR/cuis.sh"
cat > "$WORKDIR/run-tests.st" <<EOF
| result classes |
classes := (Smalltalk allClasses select: [ :aClass | (aClass category ifNil: [ '' ]) beginsWith: '$PACKAGE' ]) select: [ :aClass | aClass inheritsFrom: TestCase ].
result := TestResult new.
classes do: [ :aClass | aClass buildSuite run: result ].
'tests run: ', result runCount printString, ', passed: ', result passedCount printString, ', failed: ', result failureCount printString, ', errors: ', result errorCount printString,
	(result failures isEmpty ifTrue: [ '' ] ifFalse: [ '. Failed: ', (result failures collect: [ :each | each printString ]) asArray printString ]),
	(result errors isEmpty ifTrue: [ '' ] ifFalse: [ '. Errors: ', (result errors collect: [ :each | each printString ]) asArray printString ])
EOF

# ---------------------------------------------------------------- prompt

{
  cat "$EXERCISE_DIR/spec.md"
  if [ -s "$TECHNIQUE_FILE" ]; then echo; cat "$TECHNIQUE_FILE"; fi
  echo
  cat <<EOF
Work in the Cuis Smalltalk image this directory gives you access to; it is the only place your work is read from, and there is no interactive access to it. You work by writing Smalltalk scripts to files and running each one with \`./cuis.sh <file.st>\`: the script is evaluated in the image as an expression (declare temporaries first, if any) and the printString of its value is printed. If anything in a script fails, ERROR: and the error are printed, the command exits with status 1 and the image is left exactly as it was, so nothing the failing script did is kept; when a script ends normally the image is saved and everything it defined stays for the next one. Define classes with \`Object subclass: #Name instanceVariableNames: '...' classVariableNames: '' poolDictionaries: '' category: '$PACKAGE'\` and methods with \`Name compile: 'source' classified: 'category'\` (a class side with \`Name class compile:...\`). Define the classes in the system category '$PACKAGE' and the tests in the system category '$PACKAGE-Tests'. \`./cuis.sh run-tests.st\` runs every test of those categories and prints the counts and the failures. Print anything else you need with \`StdIOWriteStream stdout nextPutAll: ...; newLine\`. Do not touch the image files themselves.
EOF
} > "$RUN/prompt.md"

# ---------------------------------------------------------------- starting code and warm-up

for startingPackage in $(python3 -c "import json; print(' '.join(json.load(open('$EXERCISE_DIR/exercise.json')).get('startingPackages') or []))"); do
  packagePath="$EXERCISE_DIR/$startingPackage"
  log "installing $startingPackage"
  case "$startingPackage" in
    *.pck.st) echo "[ ((FeatureRequirement name: (CodePackageFile packageNameFrom: '$packagePath')) pathName: '$packagePath') satisfyRequirementsAndInstall. 'OK' ] on: Error, FeatureRequirementUnsatisfied do: [ :anError | 'FAILED: ', anError description ]" > "$RUN/install.st" ;;
    *)        echo "[ (FileEntry withAbsolutePathName: '$packagePath') readStreamDo: [ :aStream | aStream fileIn ]. 'OK' ] on: Error do: [ :anError | 'FAILED: ', anError description ]" > "$RUN/install.st" ;;
  esac
  "$VM" -headless "$IMAGE_FILE" -s "$WRAPPER" "$RUN/install.st" > "$RUN/install.log" 2>&1 || { echo "installing $startingPackage failed: $(cat "$RUN/install.log")" >&2; exit 1; }
done
WARM_UP="$("$VM" -headless "$IMAGE_FILE" -s "$WRAPPER" "$WORKDIR/run-tests.st" 2>&1 | tail -1 | tr -d "'")"
log "warm-up (given tests run once before the session): $WARM_UP"
echo "$WARM_UP" > "$RUN/warm-up.txt"
: > "$RUN/scripts.log"
CHANGES_BYTES_AT_START="$(stat -f %z "$RUN/image/"*.changes)"

# ---------------------------------------------------------------- run Claude Code

CLAUDE_VERSION="$(claude --version 2>/dev/null | head -1)"
STARTED_AT="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
START_SECONDS=$(date +%s)
log "claude $CLAUDE_VERSION, model $MODEL, effort $EFFORT, tools $TOOLS, budget \$$BUDGET, timeout ${TIMEOUT}s"
python3 - "$RUN/parameters.json" <<PARAMS
import json, sys
json.dump({"RUN_ID": "$RUN_ID", "EXPERIMENT": "$EXPERIMENT", "SCENARIO": "cuis-script", "IMAGE_SCENARIO": "$SCENARIO", "CONFIG": "$CONFIG", "TECHNIQUE": "$TECHNIQUE",
    "EXERCISE_NAME": "$EXERCISE_NAME", "PACKAGE": "$PACKAGE", "MODEL": "$MODEL", "EFFORT": "$EFFORT", "BUDGET": "$BUDGET", "TIMEOUT": "$TIMEOUT", "NOTE": "$NOTE",
    "TOOLS": "$TOOLS", "CLAUDE_VERSION": "$CLAUDE_VERSION", "WORKDIR": "$WORKDIR", "IMAGE_FILE": "$IMAGE_FILE", "VM": "$VM", "STARTED_AT": "$STARTED_AT",
    "START_SECONDS": "$START_SECONDS", "WARM_UP": open("$RUN/warm-up.txt").read().strip(), "CHANGES_BYTES_AT_START": "$CHANGES_BYTES_AT_START"}, open(sys.argv[1], "w"), indent=2)
PARAMS

CLAUDE_STATUS=0
(
  cd "$WORKDIR"
  exec claude -p "$(cat "$RUN/prompt.md")" --model "$MODEL" --effort "$EFFORT" --output-format stream-json --verbose \
    --permission-mode bypassPermissions --setting-sources project --tools "$TOOLS" --disable-slash-commands \
    --mcp-config .mcp.json --strict-mcp-config --max-budget-usd "$BUDGET" < /dev/null
) > "$RUN/claude-stream.jsonl" 2> "$RUN/claude-stderr.log" &
CLAUDE_PID=$!
( sleep "$TIMEOUT"; kill -TERM "$CLAUDE_PID" 2>/dev/null && echo "timeout after ${TIMEOUT}s" >> "$RUN/claude-stderr.log" ) > /dev/null 2>&1 &
WATCHDOG_PID=$!
wait "$CLAUDE_PID" || CLAUDE_STATUS=$?
pkill -P "$WATCHDOG_PID" 2>/dev/null || true; kill "$WATCHDOG_PID" 2>/dev/null || true; wait "$WATCHDOG_PID" 2>/dev/null || true
ENDED_AT="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
ELAPSED=$(( $(date +%s) - START_SECONDS ))
log "claude exited with status $CLAUDE_STATUS after ${ELAPSED}s, $(wc -l < "$RUN/scripts.log" | tr -d ' ') script runs"
pkill -f "$IMAGE_FILE" 2>/dev/null || true   # a script still running when the session was killed

# ---------------------------------------------------------------- collect the work

log "filing out package $PACKAGE"
echo "[ | package | package := CodePackage named: '$PACKAGE' createIfAbsent: true registerIfNew: true. package fullFileName: '$RUN/output/$PACKAGE.pck.st'. package save. 'OK ', package methodCount printString, ' methods' ] on: Error do: [ :anError | 'FAILED: ', anError description ]" > "$RUN/fileout.st"
"$VM" -headless "$IMAGE_FILE" -s "$WRAPPER" "$RUN/fileout.st" > "$RUN/output/fileout.log" 2>&1 || log "file out failed: $(cat "$RUN/output/fileout.log")"
"$SCRIPT_DIR/extract-loose-changes.sh" "$RUN" 2>&1 | sed 's/^/    /' || log "loose-changes extraction failed"
# Claude Code tells the agent to keep temporary files in a per-session scratchpad under /private/tmp,
# and the agents put their scripts there rather than in the working directory: collect them too.
for scratch in $(ls -d "/private/tmp/claude-501/-private-tmp-claude-cells-$RUN_ID-$$"/*/scratchpad 2>/dev/null); do
  mkdir -p "$RUN/agent-scratchpad" && cp -R "$scratch/." "$RUN/agent-scratchpad/" && log "collected the agent's scratchpad ($(ls "$RUN/agent-scratchpad" | wc -l | tr -d ' ') files)"
done
mv "$WORKDIR" "$RUN/workdir"; rmdir "$WORKDIRS_DIR" 2>/dev/null || true

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
usage = json.load(open(f"{run}/usage.json")) if os.path.exists(f"{run}/usage.json") else {}
scripts = [l.split("\t") for l in open(f"{run}/scripts.log") if l.strip()]
json.dump({
    "experiment": "$EXPERIMENT", "runId": "$RUN_ID", "warmUp": open(f"{run}/warm-up.txt").read().strip(), "mode": "headless",
    "scenario": "cuis-script", "imageScenario": "$SCENARIO", "config": "$CONFIG".split(","), "technique": "$TECHNIQUE",
    "exercise": "$EXERCISE_NAME", "package": "$PACKAGE", "model": "$MODEL", "effort": "$EFFORT",
    "budgetUsd": float("$BUDGET"), "timeoutSeconds": int("$TIMEOUT"), "note": "$NOTE",
    "claudeCodeVersion": "$CLAUDE_VERSION", "builtinTools": "$TOOLS", "skills": [],
    "scenarioManifest": json.load(open(f"{run}/image/scenario-manifest.json")), "toolsServed": 0, "toolDefinitionBytes": 0,
    "hashes": {"prompt.md": sha256(f"{run}/prompt.md"), "CLAUDE.md": sha256(f"{run}/workdir/CLAUDE.md"), "spec.md": sha256(f"{run}/exercise/spec.md"), "wrapper": sha256("$WRAPPER")},
    "startedAt": "$STARTED_AT", "endedAt": "$ENDED_AT", "elapsedSeconds": int("$ELAPSED"), "claudeExitStatus": int("$CLAUDE_STATUS"), "status": status,
    "scriptRuns": {"total": len(scripts), "failed": sum(1 for s in scripts if s[2] != "0"), "testRuns": sum(1 for s in scripts if s[1] == "run-tests.st")},
    "changesBytesAtStart": int("$CHANGES_BYTES_AT_START"),
    "changesBytesAtEnd": os.path.getsize([f"{run}/image/{f}" for f in os.listdir(f"{run}/image") if f.endswith(".changes")][0]),
    "usageFromTranscript": {"totalCostUsd": usage.get("total_cost_usd"), "perModel": usage.get("per_model"), "toolCalls": usage.get("tool_calls")},
    "result": {"subtype": result.get("subtype"), "isError": result.get("is_error"), "numTurns": result.get("num_turns"), "durationMs": result.get("duration_ms"),
               "durationApiMs": result.get("duration_api_ms"), "totalCostUsd": result.get("total_cost_usd"), "usage": result.get("usage"), "modelUsage": result.get("modelUsage"),
               "stopReason": result.get("stop_reason"), "text": result.get("result")},
}, open(f"{run}/manifest.json", "w"), indent=2)
print(f"    status {status}, turns {result.get('num_turns')}, cost \${result.get('total_cost_usd') if result else usage.get('total_cost_usd')}, script runs {len(scripts)} ({sum(1 for s in scripts if s[2] != '0')} failed)")
EOF
echo "==> done: $RUN"
