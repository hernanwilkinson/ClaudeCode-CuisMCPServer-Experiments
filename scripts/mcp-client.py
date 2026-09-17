#!/usr/bin/env python3
"""Talk to a running Cuis MCP server over HTTP, the way Claude Code does.

    mcp-client.py --port PORT --token TOKEN wait [SECONDS]
    mcp-client.py --port PORT --token TOKEN tools-list
    mcp-client.py --port PORT --token TOKEN call TOOL '{"json": "arguments"}'
    mcp-client.py --port PORT --token TOKEN evaluate 'Smalltalk code'
    mcp-client.py --port PORT --token TOKEN evaluate @file.st

`wait` polls tools/list until the server answers. `tools-list` prints the tool definitions as
JSON. `call` prints the JSON-RPC result. `evaluate` prints the text the smalltalk_evaluate tool
answers, and exits 3 when that text says FAILED, which is the convention the harness code uses.
"""

import json
import os
import sys
import time
import urllib.error
import urllib.request


def parse_arguments(argv):
    options = {"port": None, "token": ""}
    rest = []
    iterator = iter(argv)
    for argument in iterator:
        if argument == "--port":
            options["port"] = next(iterator)
        elif argument == "--token":
            options["token"] = next(iterator)
        else:
            rest.append(argument)
    if options["port"] is None or not rest:
        sys.exit(__doc__)
    return options, rest


class Server:
    def __init__(self, port, token):
        self.endpoint = f"http://127.0.0.1:{port}/mcp"
        self.token = token
        self.nextIdentifier = 1

    def call(self, method, params=None):
        body = {"jsonrpc": "2.0", "id": self.nextIdentifier, "method": method}
        self.nextIdentifier += 1
        if params is not None:
            body["params"] = params
        request = urllib.request.Request(
            self.endpoint, data=json.dumps(body).encode(),
            headers={"Authorization": f"Bearer {self.token}", "Content-Type": "application/json"})
        with urllib.request.urlopen(request, timeout=int(os.environ.get('MCP_CLIENT_TIMEOUT', '600'))) as response:
            answer = json.load(response)
        if "error" in answer:
            raise RuntimeError(f"{method}: {answer['error']}")
        return answer["result"]

    def wait(self, seconds):
        deadline = time.time() + seconds
        while time.time() < deadline:
            try:
                return self.call("tools/list")
            except (urllib.error.URLError, ConnectionError, OSError):
                time.sleep(1)
        sys.exit(f"the MCP server did not answer within {seconds} seconds")

    def tool(self, name, arguments):
        result = self.call("tools/call", {"name": name, "arguments": arguments})
        return "".join(block.get("text", "") for block in result.get("content", []))


def main():
    options, rest = parse_arguments(sys.argv[1:])
    server = Server(options["port"], options["token"])
    command, arguments = rest[0], rest[1:]

    if command == "wait":
        server.wait(int(arguments[0]) if arguments else 60)
        print("ready")
    elif command == "tools-list":
        print(json.dumps(server.call("tools/list")["tools"], indent=2))
    elif command == "call":
        print(server.tool(arguments[0], json.loads(arguments[1]) if len(arguments) > 1 else {}))
    elif command == "evaluate":
        code = arguments[0]
        if code.startswith("@"):
            code = open(code[1:]).read()
        text = server.tool("smalltalk_evaluate", {"code": code})
        print(text)
        if "FAILED" in text:
            sys.exit(3)
    elif command == "evaluate-json":
        # The evaluate tool answers the printString of the result, so a String comes back
        # quoted with its quotes doubled; undo that and hand back the JSON the code rendered.
        code = arguments[0]
        if code.startswith("@"):
            code = open(code[1:]).read()
        text = server.tool("smalltalk_evaluate", {"code": code})
        try:
            document = json.loads(text)
        except ValueError:
            try:
                document = json.loads(text.strip().strip("'").replace("''", "'"))
            except ValueError:
                sys.exit(f"the evaluation did not answer JSON:\n{text[:2000]}")
        print(json.dumps(document, indent=2, ensure_ascii=False))
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main()
