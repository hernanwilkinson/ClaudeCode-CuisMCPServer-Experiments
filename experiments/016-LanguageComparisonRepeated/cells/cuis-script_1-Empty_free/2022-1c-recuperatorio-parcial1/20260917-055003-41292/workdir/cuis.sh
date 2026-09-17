#!/usr/bin/env bash
# Run a Smalltalk script against the image: ./cuis.sh <file.st>
# The script is evaluated like an expression (temporaries, if any, declared first); the printString
# of its value is printed. An error anywhere prints ERROR: ... , exits with status 1 and leaves the
# image exactly as it was (nothing the script did is kept). A script that ends normally saves the
# image, so what it defined is there for the next script.
[ -n "$1" ] && [ -f "$1" ] || { echo "usage: ./cuis.sh <file.st>" >&2; exit 2; }
script="$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
"/Users/hernan/Documents/Cuis/Cuis-University-Installer/Cuis-Smalltalk-Dev/LiveTypingVM.app/Contents/MacOS/Squeak" -headless "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/experiments/016-LanguageComparisonRepeated/cells/cuis-script_1-Empty_free/2022-1c-recuperatorio-parcial1/20260917-055003-41292/image/MCP-1-Evaluate+TestRunning-University.image" -s "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/scripts/cuis-script-wrapper.st" "$script" 2>&1 | tee /tmp/.cuis-last-output-$$
status=${PIPESTATUS[0]}
printf '%s\t%s\t%s\t%s\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)" "$(basename "$1")" "$status" "$(wc -c < /tmp/.cuis-last-output-$$ | tr -d ' ')" >> "/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/experiments/016-LanguageComparisonRepeated/cells/cuis-script_1-Empty_free/2022-1c-recuperatorio-parcial1/20260917-055003-41292/scripts.log"
rm -f /tmp/.cuis-last-output-$$
exit $status
