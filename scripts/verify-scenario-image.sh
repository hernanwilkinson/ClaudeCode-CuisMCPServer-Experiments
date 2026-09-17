#!/usr/bin/env bash
# Start a built scenario image with its MCP server and check it the way Claude Code will see it:
# tools/list over HTTP must answer exactly the tools expected-tools.json names, and the image,
# asked through smalltalk_evaluate, must hold exactly the decorators expected. The update level
# of the image is recorded as well.
#
#   scripts/verify-scenario-image.sh 1-Evaluate+TestRunning [port]
#   scripts/verify-scenario-image.sh all
#
# Writes served-tools.json next to the image: tool names, their count, the size in bytes of the
# tool definitions (what every request to the model carries), the decorators and the update
# level. Exits non-zero on any difference. The image is not saved.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
# shellcheck source=scenarios.sh
source "$SCRIPT_DIR/scenarios.sh"
SCENARIOS_DIR="${SCENARIOS_DIR:-$PROJECT_DIR/scenarios}"

if [ $# -lt 1 ]; then
  echo "usage: $(basename "$0") <scenario> [port] | all" >&2
  exit 2
fi

if which -s brew; then
  export DYLD_LIBRARY_PATH="$(brew --prefix)/lib:${DYLD_LIBRARY_PATH:-}"
fi

verify_scenario() {
  local scenario="$1"
  local port="${2:-2470}"
  local dir="$SCENARIOS_DIR/$scenario"
  local manifest="$dir/manifest.json"
  [ -f "$manifest" ] || { echo "no manifest for $scenario at $manifest; build it first" >&2; return 1; }

  local vm image token
  vm="$(python3 -c "import json; print(json.load(open('$manifest'))['vm'])")"
  image="$dir/$(python3 -c "import json; print(json.load(open('$manifest'))['image'])")"
  token="$(openssl rand -hex 16)"

  echo "==> $scenario on port $port"
  # The call log is switched on the way the runner does it, so the verification also proves
  # that every scenario image logs its tool calls; the file is removed afterwards.
  local callsLog="$dir/verify-mcp-calls.jsonl"
  rm -f "$callsLog"
  (
    cd "$dir"
    SMALLTALK_MCP_TOKEN="$token" exec "$vm" "$image" "--mcpHttpPort=$port" "--mcpLogCalls=$callsLog"
  ) > "$dir/verify-vm.log" 2>&1 &
  local vmPid=$!

  local result=0
  python3 - "$dir" "$port" "$token" <<'EOF' || result=$?
import json, sys, time, urllib.request, urllib.error

directory, port, token = sys.argv[1], sys.argv[2], sys.argv[3]
endpoint = f"http://127.0.0.1:{port}/mcp"


def call(method, params=None, identifier=1):
    body = {"jsonrpc": "2.0", "id": identifier, "method": method}
    if params is not None:
        body["params"] = params
    request = urllib.request.Request(
        endpoint, data=json.dumps(body).encode(),
        headers={"Authorization": f"Bearer {token}", "Content-Type": "application/json"})
    with urllib.request.urlopen(request, timeout=30) as response:
        return json.load(response)


def wait_for_server():
    for _ in range(60):
        try:
            return call("tools/list")
        except (urllib.error.URLError, ConnectionError, OSError):
            time.sleep(1)
    sys.exit("the server did not answer tools/list within 60 seconds")


def evaluate(code):
    answer = call("tools/call", {"name": "smalltalk_evaluate", "arguments": {"code": code}}, 2)
    return answer["result"]["content"][0]["text"]


def json_in(text):
    """The evaluate tool answers the printString of the result, so a String comes back quoted
    with its own quotes doubled. Undo that when the text is not already JSON."""
    try:
        return json.loads(text)
    except ValueError:
        return json.loads(text.strip().strip("'").replace("''", "'"))


IMAGE_STATE_CODE = """| decorators |
decorators := (MCPToolDecorator allSubclasses reject: [ :eachClass | eachClass isAbstract ])
	collect: [ :eachClass | eachClass name ].
Json render: (OrderedDictionary new
	at: 'decorators' put: decorators asSortedCollection asArray;
	at: 'highestUpdate' put: SystemVersion current highestUpdate;
	yourself)"""

tools = wait_for_server()["result"]["tools"]
served = sorted(tool["name"] for tool in tools)
state = json_in(evaluate(IMAGE_STATE_CODE))
expected = json.load(open(f"{directory}/expected-tools.json"))

report = {
    "tools": served,
    "count": len(served),
    "definitionBytes": len(json.dumps(tools)),
    "decorators": state["decorators"],
    "highestUpdate": state["highestUpdate"],
}
json.dump(report, open(f"{directory}/served-tools.json", "w"), indent=2)

print(f"    served {len(served)} tools, definitions {report['definitionBytes']:,} bytes, "
      f"{len(state['decorators'])} decorators, update {state['highestUpdate']}")

problems = []
for label, expectedNames, actualNames in (
        ("tool", expected["tools"], served),
        ("decorator", expected["decorators"], state["decorators"])):
    for name in sorted(set(expectedNames) - set(actualNames)):
        problems.append(f"{label} expected but absent: {name}")
    for name in sorted(set(actualNames) - set(expectedNames)):
        problems.append(f"{label} present but not expected: {name}")
if problems:
    print("    MISMATCH")
    for problem in problems:
        print(f"      {problem}")
    sys.exit(1)
print("    matches expected-tools.json")
EOF

  kill "$vmPid" 2>/dev/null || true
  wait "$vmPid" 2>/dev/null || true
  if [ -s "$callsLog" ]; then
    python3 - "$callsLog" <<'EOF' || result=1
import json, sys
records = [json.loads(line) for line in open(sys.argv[1]) if line.strip()]
tools = [record["tool"] for record in records]
print(f"    call log: {len(records)} record(s) {tools}, keys {sorted(records[0].keys())}")
EOF
  else
    echo "    call log: MISSING or empty ($callsLog)"; result=1
  fi
  rm -f "$callsLog"
  # Cuis creates a user files directory next to the image directory on startup; nothing of ours
  # lives there.
  rm -rf "$dir-UserFiles"
  return $result
}

if [ "$1" = "all" ]; then
  failures=0
  for scenario in $SCENARIOS; do
    verify_scenario "$scenario" || failures=$((failures + 1))
  done
  [ "$failures" -eq 0 ] || { echo "$failures scenario(s) failed verification" >&2; exit 1; }
else
  verify_scenario "$@"
fi
