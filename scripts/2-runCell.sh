#!/usr/bin/env bash
# Run one cell of an experiment: one tool scenario, one Claude Code configuration, one
# technique, one exercise, once. Every run belongs to an experiment (a hypothesis or an idea
# being tried, named NNN-Description) and lands under
#
#   experiments/<experiment>/cells/<scenario>_<config>_<technique>/<exercise>/<YYYYmmdd-HHMMSS-pid>/
#
#   manifest.json        parameters, versions, hashes of every guidance text, timings, outcome
#   prompt.md            the exact prompt given to Claude Code
#   workdir/             Claude Code's working directory: CLAUDE.md, .mcp.json, .claude/skills
#   image/               the scenario image the run worked on, saved after the run
#   output/<Package>.pck.st   the package the agent wrote, filed out by the harness
#   claude-stream.jsonl  every event of the session: tool calls, results, usage, final result
#   claude-transcript.jsonl   Claude Code's own transcript of the session
#   usage.json           tokens, cost and tool-call counts (session-tokens.py)
#   tools-list.json      the tool definitions the server offered, as the model saw them
#   vm.log               what the image printed
#
# Usage:
#   scripts/2-runCell.sh --experiment 003-SomeIdea --scenario 4-Refactoring \
#       --config 4-Refactoring,7-DesignHeuristics --technique tdd --exercise exercises/smoke \
#       [--model M] [--effort E] [--budget USD] [--timeout SECONDS] [--note TEXT]
#
# --experiment names the directory under experiments/ the run belongs to (created if needed;
# write its README.md yourself for a hand-made experiment, 5-runMatrix.sh writes one).
#
# --config takes one or more names from scripts/configs, comma separated; their CLAUDE.md texts
# are concatenated in that order, and their skills.txt entries installed as project skills.
# 1-Empty adds nothing. Techniques are files in scripts/techniques. An exercise is a directory
# with spec.md and exercise.json (name, kind, package, startingPackages, acceptanceTests).
#
# --finish <run-dir> completes a run whose collection did not happen (the terminal closed, the
# script was killed): it restarts the run's saved image, files the package out, gathers the
# transcript and writes the manifest with status "interrupted". Everything it needs is in
# <run>/parameters.json, written before the session starts.
#
# --interactive prepares the very same cell but, instead of a headless session, opens Claude
# Code in the current terminal with the prompt already entered, so you can watch what it does
# and talk to it; when you exit it, the run is collected exactly like a headless one (the stream
# file is empty, the transcript and the server's call log carry everything). Run it from a real
# terminal, not from a script.
#
# Isolation: Claude Code runs with --setting-sources project, which leaves out the user
# settings, the user CLAUDE.md and the user skills, in a working directory outside $HOME
# (under /private/tmp) because from inside $HOME the user CLAUDE.md is loaded as project
# memory anyway; with --tools "" (or "Skill" when the configuration installs skills) so it has
# no file, shell or web access; and with --strict-mcp-config so the scenario image is its only
# MCP server. The image files live outside the working directory. Login is the one in ~/.claude.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
# shellcheck source=scenarios.sh
source "$SCRIPT_DIR/scenarios.sh"

SCENARIOS_DIR="${SCENARIOS_DIR:-$PROJECT_DIR/scenarios}"
EXPERIMENTS_DIR="${EXPERIMENTS_DIR:-$PROJECT_DIR/experiments}"
WORKDIRS_DIR="${WORKDIRS_DIR:-/private/tmp/claude-cells}"   # must not be under $HOME, see below
EXPERIMENT=""
WARM_UP=""
MCP_CLIENT="$SCRIPT_DIR/mcp-client.py"

SCENARIO=""
CONFIG="1-Empty"
TECHNIQUE="free"
EXERCISE=""
MODEL="claude-fable-5-1"
EFFORT="high"
BUDGET="20"
TIMEOUT="3600"
NOTE=""
INTERACTIVE=0
FINISH=""
AGENT="claude"

usage() {
  sed -n '2,34p' "$0" | sed 's/^# \{0,1\}//'
  exit 2
}

while [ $# -gt 0 ]; do
  case "$1" in
    --scenario)  SCENARIO="$2"; shift 2 ;;
    --config)    CONFIG="$2"; shift 2 ;;
    --technique) TECHNIQUE="$2"; shift 2 ;;
    --exercise)  EXERCISE="$2"; shift 2 ;;
    --model)     MODEL="$2"; shift 2 ;;
    --effort)    EFFORT="$2"; shift 2 ;;
    --budget)    BUDGET="$2"; shift 2 ;;
    --timeout)   TIMEOUT="$2"; shift 2 ;;
    --experiment) EXPERIMENT="$2"; shift 2 ;;
    --experiments-dir) EXPERIMENTS_DIR="$2"; shift 2 ;;
    --note)      NOTE="$2"; shift 2 ;;
    --agent)     AGENT="$2"; shift 2 ;;
    --interactive) INTERACTIVE=1; shift ;;
    --finish)    FINISH="$2"; shift 2 ;;
    -h|--help)   usage ;;
    *) echo "unknown option: $1" >&2; usage ;;
  esac
done

if [ -z "$FINISH" ]; then
  [ -n "$EXPERIMENT" ] || { echo "--experiment is required (the NNN-Description directory under experiments/ this run belongs to)" >&2; usage; }
  [ -n "$SCENARIO" ] || { echo "--scenario is required" >&2; usage; }
  [ -n "$EXERCISE" ] || { echo "--exercise is required" >&2; usage; }
fi

if which -s brew; then
  export DYLD_LIBRARY_PATH="$(brew --prefix)/lib:${DYLD_LIBRARY_PATH:-}"
fi
log() { echo "    $*"; }

# ---------------------------------------------------------------- shared pieces

start_image() {
  # The server logs every tool call it serves, with arguments, duration and full answer, as
  # JSON lines; the harness's own calls before and after the session land there too, so the
  # manifest records the line numbers between which the agent's calls lie.
  (
    cd "$RUN/image"
    SMALLTALK_MCP_TOKEN="$TOKEN" exec "$VM" "$IMAGE_FILE" "--mcpHttpPort=$PORT" "--mcpLogCalls=$MCP_CALLS_LOG"
  ) >> "$RUN/vm.log" 2>&1 &
  VM_PID=$!
  trap stop_vm EXIT
  mcp wait 120 > /dev/null
}
stop_vm() { kill "${VM_PID:-0}" 2>/dev/null || true; wait "${VM_PID:-0}" 2>/dev/null || true; }
mcp() { python3 "$MCP_CLIENT" --port "$PORT" --token "$TOKEN" "$@"; }


collect_run() {
# ---------------------------------------------------------------- collect the work

# After a timeout the image may be wedged (a session killed mid-call); the collection then must
# fail fast instead of waiting the client's default ten minutes per call.
if grep -q 'timeout after' "$RUN/claude-stderr.log" 2>/dev/null; then export MCP_CLIENT_TIMEOUT=90; log "session timed out: collection calls limited to 90s each"; fi
log "saving the image"
mcp call smalltalk_save_image '{}' > /dev/null || log "save_image failed; the image on disk is the one from before the run"
for _ in $(seq 1 60); do
  [ "$(stat -f %m "$IMAGE_FILE")" -gt "$START_SECONDS" ] && break
  sleep 1
done

log "filing out package $PACKAGE"
mcp evaluate "[ | package | package := CodePackage named: '$PACKAGE' createIfAbsent: true registerIfNew: true. package fullFileName: '$RUN/output/$PACKAGE.pck.st'. package save. 'OK ', package methodCount printString, ' methods' ] on: Error do: [ :anError | 'FAILED: ', anError description ]" \
  > "$RUN/output/fileout.log" 2>&1 || log "file out failed: $(cat "$RUN/output/fileout.log")"

stop_vm
trap - EXIT

# What the agent changed outside the package (base-class extensions under a category naming no
# package) is not in the package file-out; it is extracted from the saved image so the package
# can be tested on its own and the omission counted.
"$SCRIPT_DIR/extract-loose-changes.sh" "$RUN" 2>&1 | sed 's/^/    /' || log "loose-changes extraction failed"

if [ -d "$WORKDIR" ] && [ "$WORKDIR" != "$RUN/workdir" ]; then
  mv "$WORKDIR" "$RUN/workdir"
  rmdir "$WORKDIRS_DIR" 2>/dev/null || true
fi

SESSION_ID="$(python3 -c "
import json
for line in open('$RUN/claude-stream.jsonl'):
    r = json.loads(line)
    if r.get('type') == 'system' and r.get('subtype') == 'init':
        print(r['session_id']); break
" 2>/dev/null || true)"
if [ "$AGENT" = codex ]; then
  # The thread id of the session names its rollout file under CODEX_HOME.
  SESSION_ID="$(python3 -c "
import json, sys
for line in open('$RUN/claude-stream.jsonl'):
    try: r = json.loads(line)
    except ValueError: continue
    if r.get('type') == 'thread.started':
        print(r['thread_id']); break
" 2>/dev/null || true)"
  TRANSCRIPT="$(find "${CODEX_HOME:-$HOME/.codex}/sessions" -name "rollout-*$SESSION_ID.jsonl" 2>/dev/null | head -1)"
  if [ -n "$TRANSCRIPT" ] && [ -f "$TRANSCRIPT" ]; then
    cp "$TRANSCRIPT" "$RUN/codex-rollout.jsonl"
    python3 "$SCRIPT_DIR/codex-session-tokens.py" "$RUN/codex-rollout.jsonl" --json > "$RUN/usage.json" 2>/dev/null || true
  fi
else
TRANSCRIPT="$(find "$HOME/.claude/projects" -name "$SESSION_ID.jsonl" 2>/dev/null | head -1)"
if [ -z "$SESSION_ID" ]; then
  # No stream (interactive session): the transcript is the one that records this working
  # directory and was written after the prompt was.
  TRANSCRIPT="$(grep -l -F "\"cwd\":\"$WORKDIR_ORIGINAL\"" $(find "$HOME/.claude/projects" -name '*.jsonl' -newer "$RUN/prompt.md" 2>/dev/null) 2>/dev/null | head -1)"
  SESSION_ID="$( [ -n "$TRANSCRIPT" ] && basename "$TRANSCRIPT" .jsonl || echo "" )"
fi
if [ -n "$SESSION_ID" ] && [ -f "$TRANSCRIPT" ]; then
  cp "$TRANSCRIPT" "$RUN/claude-transcript.jsonl"
  python3 "$SCRIPT_DIR/session-tokens.py" "$RUN/claude-transcript.jsonl" --json > "$RUN/usage.json" 2>/dev/null || true
fi
fi

# ---------------------------------------------------------------- manifest

python3 - "$RUN" <<EOF
import hashlib, json, os, sys
run = sys.argv[1]

def sha256(path):
    return hashlib.sha256(open(path, "rb").read()).hexdigest()

result = {}
# Codex has no single "result" record: a session is a sequence of turns, the last agent message
# is its answer and the usage of each turn is reported when the turn closes.
turns, last_message, codex_usage = 0, None, None
for line in open(f"{run}/claude-stream.jsonl"):
    try:
        record = json.loads(line)
    except ValueError:
        continue
    if record.get("type") == "result":
        result = record
    elif record.get("type") == "turn.completed":
        turns += 1
        codex_usage = record.get("usage")
    elif record.get("type") in ("turn.failed", "error"):
        result = {"subtype": "error", "is_error": True, "result": json.dumps(record)[:1000]}
    elif record.get("type") == "item.completed" and (record.get("item") or {}).get("type") == "agent_message":
        last_message = record["item"].get("text")
if "$AGENT" == "codex" and not result and turns:
    result = {"subtype": "success", "is_error": False, "num_turns": turns,
              "usage": codex_usage, "result": last_message}

interactive = "$INTERACTIVE" == "1"
status = "completed"
if "$CLAUDE_STATUS" != "0" or result.get("is_error"):
    status = "failed"
if "timeout after" in open(f"{run}/claude-stderr.log").read():
    status = "timeout"
if "$CLAUDE_STATUS" == "130":
    status = "interrupted"
if not result and not interactive:
    status = "no-result"
usage = {}
if os.path.exists(f"{run}/usage.json"):
    try:
        usage = json.load(open(f"{run}/usage.json"))
    except ValueError:
        usage = {}

skills = sorted(os.listdir(f"{run}/workdir/.claude/skills")) if os.path.isdir(f"{run}/workdir/.claude/skills") else []
manifest = {
    "experiment": "$EXPERIMENT", "runId": "$RUN_ID", "warmUp": "$WARM_UP",
    "mode": "interactive" if interactive else "headless",
    "userMemoryPausedDuringSession": interactive,
    "scenario": "$SCENARIO",
    "config": "$CONFIG".split(","),
    "technique": "$TECHNIQUE",
    "exercise": "$EXERCISE_NAME",
    "package": "$PACKAGE",
    "agent": "$AGENT",
    "model": "$MODEL",
    "effort": "$EFFORT",
    "budgetUsd": float("$BUDGET"),
    "timeoutSeconds": int("$TIMEOUT"),
    "note": "$NOTE",
    "claudeCodeVersion": "$CLAUDE_VERSION",
    "builtinTools": "$BUILTIN_TOOLS",
    "skills": skills,
    "scenarioManifest": json.load(open(f"{run}/image/scenario-manifest.json")),
    "toolsServed": len(json.load(open(f"{run}/tools-list.json"))),
    "toolDefinitionBytes": os.path.getsize(f"{run}/tools-list.json"),
    "hashes": {
        "prompt.md": sha256(f"{run}/prompt.md"),
        "$MEMORY_FILE": sha256(f"{run}/workdir/$MEMORY_FILE"),
        "spec.md": sha256(f"{run}/exercise/spec.md"),
        "skills": {name: sha256(f"{run}/workdir/.claude/skills/{name}/SKILL.md") for name in skills},
    },
    "port": int("$PORT"),
    "startedAt": "$STARTED_AT",
    "endedAt": "$ENDED_AT",
    "elapsedSeconds": int("$ELAPSED"),
    "claudeExitStatus": int("$CLAUDE_STATUS"),
    "status": status,
    "mcpCallsLog": {
        "file": "mcp-calls.jsonl",
        "agentCallsFromLine": int("$CALLS_LOGGED_BEFORE_RUN") + 1,
        "agentCallsToLine": int("$CALLS_LOGGED_AFTER_RUN"),
        "agentCalls": int("$CALLS_LOGGED_AFTER_RUN") - int("$CALLS_LOGGED_BEFORE_RUN"),
    },
    "changesBytesAtStart": int("$CHANGES_BYTES_AT_START"),
    "changesBytesAtEnd": os.path.getsize([f"{run}/image/{f}" for f in os.listdir(f"{run}/image") if f.endswith(".changes")][0]),
    "usageFromTranscript": {
        "totalCostUsd": usage.get("total_cost_usd"),
        "perModel": usage.get("per_model"),
        "toolCalls": usage.get("tool_calls"),
    },
    "result": {
        "subtype": result.get("subtype"),
        "isError": result.get("is_error"),
        "numTurns": result.get("num_turns"),
        "durationMs": result.get("duration_ms"),
        "durationApiMs": result.get("duration_api_ms"),
        "totalCostUsd": result.get("total_cost_usd"),
        "usage": result.get("usage"),
        "modelUsage": result.get("modelUsage"),
        "stopReason": result.get("stop_reason"),
        "terminalReason": result.get("terminal_reason"),
        "text": result.get("result"),
    },
}
json.dump(manifest, open(f"{run}/manifest.json", "w"), indent=2)
print(f"    status {status}, turns {result.get('num_turns')}, cost \${result.get('total_cost_usd') if result else usage.get('total_cost_usd')}")
EOF

echo "==> done: $RUN"
}

if [ -n "$FINISH" ]; then
  RUN="$(cd "$FINISH" && pwd)"
  [ -f "$RUN/parameters.json" ] || { echo "$RUN has no parameters.json; only runs started by this version of the script can be finished" >&2; exit 1; }
  eval "$(python3 -c "
import json, shlex
p = json.load(open('$RUN/parameters.json'))
for key, value in p.items():
    print(f'{key}={shlex.quote(str(value))}')
")"
  MCP_CALLS_LOG="$RUN/mcp-calls.jsonl"
  WORKDIR_ORIGINAL="$WORKDIR"
  [ -d "$WORKDIR" ] || WORKDIR="$RUN/workdir"
  PORT="$(python3 -c 'import socket; s=socket.socket(); s.bind(("127.0.0.1",0)); print(s.getsockname()[1]); s.close()')"
  TOKEN="$(openssl rand -hex 16)"
  echo "==> finishing $RUN"
  log "restarting the run's saved image"
  start_image
  CLAUDE_STATUS=130
  ENDED_AT="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  ELAPSED="$(python3 -c "
import json, datetime
records, buffer = [], ''
for l in open('$MCP_CALLS_LOG'):
    buffer += l
    try:
        records.append(json.loads(buffer)); buffer = ''
    except ValueError:
        pass  # a record of the multi-item tools spans several lines
last = datetime.datetime.fromisoformat(records[-1]['at']).timestamp() if records else $START_SECONDS
print(max(0, int(last - $START_SECONDS)))")"
  CALLS_LOGGED_AFTER_RUN="$(wc -l < "$MCP_CALLS_LOG" | tr -d ' ')"
  log "the session had been going for ${ELAPSED}s, $(( CALLS_LOGGED_AFTER_RUN - CALLS_LOGGED_BEFORE_RUN )) tool calls logged"
  collect_run
  echo "==> finished: $RUN"
  exit 0
fi

# ---------------------------------------------------------------- validation

SCENARIO_DIR="$SCENARIOS_DIR/$SCENARIO"
[ -f "$SCENARIO_DIR/manifest.json" ] || { echo "scenario $SCENARIO is not built; run 1-createScenarioImage.sh" >&2; exit 1; }

IFS=',' read -r -a CONFIG_NAMES <<< "$CONFIG"
for name in "${CONFIG_NAMES[@]}"; do
  [ -f "$SCRIPT_DIR/configs/$name/CLAUDE.md" ] || { echo "unknown configuration: $name (no scripts/configs/$name/CLAUDE.md)" >&2; exit 1; }
done
CONFIG_LABEL="${CONFIG//,/+}"

TECHNIQUE_FILE="$SCRIPT_DIR/techniques/$TECHNIQUE.md"
[ -f "$TECHNIQUE_FILE" ] || { echo "unknown technique: $TECHNIQUE (no $TECHNIQUE_FILE)" >&2; exit 1; }

EXERCISE_DIR="$(cd "$EXERCISE" && pwd)"
[ -f "$EXERCISE_DIR/spec.md" ] && [ -f "$EXERCISE_DIR/exercise.json" ] || { echo "$EXERCISE_DIR needs spec.md and exercise.json" >&2; exit 1; }
EXERCISE_NAME="$(python3 -c "import json; print(json.load(open('$EXERCISE_DIR/exercise.json'))['name'])")"
PACKAGE="$(python3 -c "import json; print(json.load(open('$EXERCISE_DIR/exercise.json'))['package'])")"

# ---------------------------------------------------------------- run directory

RUN_ID="$(date +%Y%m%d-%H%M%S)-$$"
RUN="$EXPERIMENTS_DIR/$EXPERIMENT/cells/${SCENARIO}_${CONFIG_LABEL}_${TECHNIQUE}/$EXERCISE_NAME/$RUN_ID"
mkdir -p "$RUN/image" "$RUN/output"
echo "==> run $RUN"

# Claude Code sees its working directory path, so the agent works in a directory whose name
# says nothing about the scenario, the configuration or the exercise; it is moved into the
# run directory when the session is over. It lives outside the home directory on purpose:
# since Claude Code 2.1.267, a session whose working directory is anywhere under $HOME gets
# ~/.claude/CLAUDE.md as *project* memory, which --setting-sources project keeps (2.1.212 did
# not do this; the 2026-09-10 matrix was contaminated by it). Outside $HOME it is not loaded.
WORKDIR="$WORKDIRS_DIR/$RUN_ID-$$"
mkdir -p "$WORKDIR"
WORKDIR_ORIGINAL="$WORKDIR"

# Everything that decides what the model sees is copied into the run and hashed into the manifest.
cp "$SCENARIO_DIR"/*.image "$SCENARIO_DIR"/*.changes "$SCENARIO_DIR"/*.sources "$RUN/image/"
[ -f "$SCENARIO_DIR/UnicodeData.txt" ] && cp "$SCENARIO_DIR/UnicodeData.txt" "$RUN/image/"
cp "$SCENARIO_DIR/manifest.json" "$RUN/image/scenario-manifest.json"
cp "$SCENARIO_DIR/expected-tools.json" "$RUN/image/"
cp -R "$EXERCISE_DIR" "$RUN/exercise"
IMAGE_FILE="$RUN/image/$(python3 -c "import json; print(json.load(open('$SCENARIO_DIR/manifest.json'))['image'])")"
VM="$(python3 -c "import json; print(json.load(open('$SCENARIO_DIR/manifest.json'))['vm'])")"

# ---------------------------------------------------------------- Claude Code working directory

# Claude Code reads CLAUDE.md as project memory, Codex reads AGENTS.md.
MEMORY_FILE="$( [ "$AGENT" = codex ] && echo AGENTS.md || echo CLAUDE.md )"
SKILL_SOURCES=()
{
  for name in "${CONFIG_NAMES[@]}"; do
    # An "@include <path>" line is replaced by the content of that file.
    while IFS= read -r line || [ -n "$line" ]; do
      case "$line" in
        "@include "*) cat "${line#@include }"; echo ;;
        *) printf '%s\n' "$line" ;;
      esac
    done < "$SCRIPT_DIR/configs/$name/CLAUDE.md"
    echo
    if [ -f "$SCRIPT_DIR/configs/$name/skills.txt" ]; then
      while IFS= read -r skillPath || [ -n "$skillPath" ]; do
        [ -n "$skillPath" ] && SKILL_SOURCES+=("${skillPath/#\~/$HOME}")
      done < "$SCRIPT_DIR/configs/$name/skills.txt"
    fi
  done
} > "$WORKDIR/$MEMORY_FILE"

BUILTIN_TOOLS=""
SKILLS_FLAG="--disable-slash-commands"
if [ "${#SKILL_SOURCES[@]}" -gt 0 ] && [ "$AGENT" = codex ]; then
  echo "configuration brings skills, which Codex has no equivalent for; use 8-DesignHeuristicsInline" >&2; exit 2
fi
if [ "${#SKILL_SOURCES[@]}" -gt 0 ]; then
  mkdir -p "$WORKDIR/.claude/skills"
  for source in "${SKILL_SOURCES[@]}"; do
    [ -d "$source" ] || { echo "skill directory not found: $source" >&2; exit 1; }
    cp -R "$source" "$WORKDIR/.claude/skills/$(basename "$source")"
    # A skill that points at a file on disk ("re-read that file when in doubt") cannot be
    # followed in a session without file tools, so every absolute .md path the copied SKILL.md
    # names is inlined at its end and the reader is told so.
    python3 - "$WORKDIR/.claude/skills/$(basename "$source")/SKILL.md" <<'PY'
import re, sys
from pathlib import Path
skill = Path(sys.argv[1])
text = skill.read_text()
inlined = []
for path in dict.fromkeys(re.findall(r"`?(/[\w./ -]+\.md)`?", text)):
    candidate = Path(path)
    if candidate.is_file() and candidate.resolve() != skill.resolve():
        inlined.append(f"\n\n---\n\n## Contents of {path} (inlined for this session; there is no file access here)\n\n" + candidate.read_text())
if inlined:
    skill.write_text(text + "".join(inlined))
PY
  done
  BUILTIN_TOOLS="Skill"
  SKILLS_FLAG=""
fi

PORT="$(python3 -c 'import socket; s=socket.socket(); s.bind(("127.0.0.1",0)); print(s.getsockname()[1]); s.close()')"
TOKEN="$(openssl rand -hex 16)"
cat > "$WORKDIR/.mcp.json" <<EOF
{
  "mcpServers": {
    "Cuis": {
      "type": "http",
      "url": "http://127.0.0.1:$PORT/mcp",
      "headers": { "Authorization": "Bearer $TOKEN" },
      "timeout": 600000
    }
  }
}
EOF
cat > "$WORKDIR/codex-mcp.toml" <<EOF
[mcp_servers.Cuis]
url = "http://127.0.0.1:$PORT/mcp"
bearer_token_env_var = "CUIS_MCP_TOKEN"
EOF

# ---------------------------------------------------------------- prompt

{
  cat "$EXERCISE_DIR/spec.md"
  if [ -s "$TECHNIQUE_FILE" ]; then
    echo
    cat "$TECHNIQUE_FILE"
  fi
  echo
  echo "Work in the running Cuis image reachable through the Cuis MCP tools; it is the only place your work is read from, there are no files to edit. Define the classes in the system category '$PACKAGE' and the tests in the system category '$PACKAGE-Tests'."
} > "$RUN/prompt.md"

# ---------------------------------------------------------------- start the image

MCP_CALLS_LOG="$RUN/mcp-calls.jsonl"
start_image
mcp tools-list > "$RUN/tools-list.json"
log "image serving $(python3 -c "import json; print(len(json.load(open('$RUN/tools-list.json'))))") tools on port $PORT"

# Starting code, for feature and refactoring exercises: a .pck.st is installed the way
# CodePackageFile>>installPackage: does it but without its dialog on failure; a plain .st
# (a class fileOut in chunk format, which is what the exams give) is filed in the way the
# VM's -l option does it.
for startingPackage in $(python3 -c "import json; print(' '.join(json.load(open('$EXERCISE_DIR/exercise.json')).get('startingPackages') or []))"); do
  packagePath="$EXERCISE_DIR/$startingPackage"
  log "installing $startingPackage"
  case "$startingPackage" in
    *.pck.st)
      mcp evaluate "[ ((FeatureRequirement name: (CodePackageFile packageNameFrom: '$packagePath')) pathName: '$packagePath') satisfyRequirementsAndInstall. 'OK' ] on: Error, FeatureRequirementUnsatisfied do: [ :anError | 'FAILED: ', anError description ]" > "$RUN/install.log" ;;
    *)
      mcp evaluate "[ (FileEntry withAbsolutePathName: '$packagePath') readStreamDo: [ :aStream | aStream fileIn ]. 'OK' ] on: Error do: [ :anError | 'FAILED: ', anError description ]" > "$RUN/install.log" ;;
  esac || { echo "installing $startingPackage failed: $(cat "$RUN/install.log")" >&2; exit 1; }
done

# ---------------------------------------------------------------- warm-up: run the given tests once
# LiveTyping only knows the types of code that has run, so the tests the starting code brings are
# run once before the session, in every scenario: the cells then differ only in whether that
# information is served, not in whether it exists.
WARM_UP="$(mcp evaluate "[ | classes result | classes := TestCase allSubclasses select: [ :aClass | aClass category notNil and: [ aClass category beginsWith: '$PACKAGE' ] ]. result := TestResult new. classes do: [ :aClass | aClass buildSuite run: result ]. 'classes ', classes size printString, ' run ', result runCount printString, ' passed ', result passedCount printString, ' failed ', result failureCount printString, ' errors ', result errorCount printString ] on: Error do: [ :anError | 'FAILED: ', anError description ]" 2>&1 | tr -d "'" | tail -1)"
log "warm-up (given tests run once before the session): $WARM_UP"
echo "$WARM_UP" > "$RUN/warm-up.txt"

CHANGES_BYTES_AT_START="$(stat -f %z "$RUN/image/"*.changes)"
CALLS_LOGGED_BEFORE_RUN="$( [ -f "$MCP_CALLS_LOG" ] && wc -l < "$MCP_CALLS_LOG" | tr -d ' ' || echo 0 )"

# ---------------------------------------------------------------- run Claude Code

if [ "$AGENT" = codex ]; then
  CLAUDE_VERSION="$(codex --version 2>/dev/null | head -1)"
else
  CLAUDE_VERSION="$(claude --version 2>/dev/null | head -1)"
fi
STARTED_AT="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
START_SECONDS=$(date +%s)
log "$AGENT $CLAUDE_VERSION, model $MODEL, effort $EFFORT, budget \$$BUDGET, timeout ${TIMEOUT}s"

# Everything --finish needs to collect this run if the collection below never happens.
python3 - "$RUN/parameters.json" <<PARAMS
import json, sys
json.dump({
    "RUN_ID": "$RUN_ID", "EXPERIMENT": "$EXPERIMENT", "WARM_UP": "$WARM_UP", "SCENARIO": "$SCENARIO", "CONFIG": "$CONFIG", "TECHNIQUE": "$TECHNIQUE",
    "EXERCISE_NAME": "$EXERCISE_NAME", "PACKAGE": "$PACKAGE", "MODEL": "$MODEL", "EFFORT": "$EFFORT",
    "BUDGET": "$BUDGET", "TIMEOUT": "$TIMEOUT", "NOTE": "$NOTE", "INTERACTIVE": "$INTERACTIVE",
    "CLAUDE_VERSION": "$CLAUDE_VERSION", "BUILTIN_TOOLS": "$BUILTIN_TOOLS", "WORKDIR": "$WORKDIR",
    "IMAGE_FILE": "$IMAGE_FILE", "VM": "$VM", "STARTED_AT": "$STARTED_AT", "START_SECONDS": "$START_SECONDS",
    "CHANGES_BYTES_AT_START": "$CHANGES_BYTES_AT_START", "CALLS_LOGGED_BEFORE_RUN": "$CALLS_LOGGED_BEFORE_RUN",
}, open(sys.argv[1], "w"), indent=2)
PARAMS

CLAUDE_STATUS=0
# In an interactive session Claude Code loads ~/.claude/CLAUDE.md and ~/.claude/skills whatever
# --setting-sources says (a headless one does not), so for the length of the session they are
# set aside under a name that says which run did it, and put back when it ends, however it ends.
PAUSED_USER_MEMORY=()
pause_user_memory() {
  local item
  for item in CLAUDE.md skills; do
    if [ -e "$HOME/.claude/$item" ]; then
      mv "$HOME/.claude/$item" "$HOME/.claude/$item.paused-by-run-$RUN_ID"
      PAUSED_USER_MEMORY+=("$item")
    fi
  done
}
restore_user_memory() {
  local item
  for item in "${PAUSED_USER_MEMORY[@]}"; do
    [ -e "$HOME/.claude/$item.paused-by-run-$RUN_ID" ] && mv -n "$HOME/.claude/$item.paused-by-run-$RUN_ID" "$HOME/.claude/$item"
  done
  PAUSED_USER_MEMORY=()
}

if [ "$INTERACTIVE" -eq 1 ]; then
  [ -t 0 ] || { echo "--interactive needs a terminal; run this script from one" >&2; exit 1; }
  log "setting your ~/.claude/CLAUDE.md and ~/.claude/skills aside until the session ends"
  pause_user_memory
  trap 'restore_user_memory; stop_vm' EXIT TERM
  # A Ctrl-C inside Claude Code reaches this script too; with a handler set, bash runs it and
  # carries on to the collection instead of dying.
  trap 'true' INT
  log "opening Claude Code in this terminal; exit it to finish the run"
  : > "$RUN/claude-stream.jsonl"
  (
    cd "$WORKDIR"
    # shellcheck disable=SC2086
    exec claude "$(cat "$RUN/prompt.md")" \
      --model "$MODEL" \
      --effort "$EFFORT" \
      --permission-mode bypassPermissions \
      --setting-sources project \
      --tools "$BUILTIN_TOOLS" $SKILLS_FLAG \
      --mcp-config .mcp.json --strict-mcp-config
  ) 2> "$RUN/claude-stderr.log" || CLAUDE_STATUS=$?
  trap - INT
  restore_user_memory
  trap stop_vm EXIT
elif [ "$AGENT" = codex ]; then
# Codex always has a shell, so the scenario cannot take its tools away the way --tools "" does
# for Claude Code: the sandbox is set read-only and the working directory holds nothing but the
# guidance file, which is the closest the CLI gets to "the image is the only workplace":
# read-only forbids writing and the network, and "never" turns a refused command into an answer
# the model reads instead of a prompt nobody is there to accept. The image's tools are exempted
# with default_tools_approval_mode="approve": without it "never" refuses every MCP call too.
# --ignore-user-config leaves the user's config.toml, plugins and marketplaces out; auth still
# comes from CODEX_HOME. Without < /dev/null the session waits on stdin forever.
(
  cd "$WORKDIR"
  export CUIS_MCP_TOKEN="$TOKEN"
  exec codex exec "$(cat "$RUN/prompt.md")" \
    --json --ignore-user-config --ignore-rules --skip-git-repo-check \
    --sandbox read-only -c approval_policy="never" \
    --model "$MODEL" \
    -c model_reasoning_effort="$EFFORT" \
    -c "mcp_servers.Cuis.url=\"http://127.0.0.1:$PORT/mcp\"" \
    -c 'mcp_servers.Cuis.bearer_token_env_var="CUIS_MCP_TOKEN"' \
    -c 'mcp_servers.Cuis.default_tools_approval_mode="approve"' \
    < /dev/null
) > "$RUN/claude-stream.jsonl" 2> "$RUN/claude-stderr.log" &
CLAUDE_PID=$!
( sleep "$TIMEOUT"; kill -TERM "$CLAUDE_PID" 2>/dev/null && echo "timeout after ${TIMEOUT}s" >> "$RUN/claude-stderr.log" ) > /dev/null 2>&1 &
WATCHDOG_PID=$!
wait "$CLAUDE_PID" || CLAUDE_STATUS=$?
pkill -P "$WATCHDOG_PID" 2>/dev/null || true
kill "$WATCHDOG_PID" 2>/dev/null || true
wait "$WATCHDOG_PID" 2>/dev/null || true
else
(
  cd "$WORKDIR"
  # shellcheck disable=SC2086
  exec claude -p "$(cat "$RUN/prompt.md")" \
    --model "$MODEL" \
    --effort "$EFFORT" \
    --output-format stream-json --verbose \
    --permission-mode bypassPermissions \
    --setting-sources project \
    --tools "$BUILTIN_TOOLS" $SKILLS_FLAG \
    --mcp-config .mcp.json --strict-mcp-config \
    --max-budget-usd "$BUDGET" \
    < /dev/null
) > "$RUN/claude-stream.jsonl" 2> "$RUN/claude-stderr.log" &
CLAUDE_PID=$!
# The watchdog's own output goes to /dev/null and its sleep is killed with it: otherwise the
# sleep, which survives its parent, holds this script's stdout open until the whole timeout
# elapses, and a caller capturing the output (job.sh) waits that long before going on.
( sleep "$TIMEOUT"; kill -TERM "$CLAUDE_PID" 2>/dev/null && echo "timeout after ${TIMEOUT}s" >> "$RUN/claude-stderr.log" ) > /dev/null 2>&1 &
WATCHDOG_PID=$!
wait "$CLAUDE_PID" || CLAUDE_STATUS=$?
pkill -P "$WATCHDOG_PID" 2>/dev/null || true
kill "$WATCHDOG_PID" 2>/dev/null || true
wait "$WATCHDOG_PID" 2>/dev/null || true
fi

ENDED_AT="$(date -u +%Y-%m-%dT%H:%M:%SZ)"
ELAPSED=$(( $(date +%s) - START_SECONDS ))
CALLS_LOGGED_AFTER_RUN="$( [ -f "$MCP_CALLS_LOG" ] && wc -l < "$MCP_CALLS_LOG" | tr -d ' ' || echo 0 )"
log "claude exited with status $CLAUDE_STATUS after ${ELAPSED}s, $(( CALLS_LOGGED_AFTER_RUN - CALLS_LOGGED_BEFORE_RUN )) tool calls logged by the server"

collect_run
