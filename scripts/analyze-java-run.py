#!/usr/bin/env python3
"""Analysis of a Java run (2-runJavaCell.sh): writes <run>/analysis.json in the shape
analysis-merge.py produces for Cuis runs, as far as it applies, so matrix-table.py can put both
languages in one table. Measures: the agent's tokens, cost, requests, tool calls by tool, test
runs (gradle test commands), files read and edited; the acceptance and own-test results; simple
source measures of the final code (files, lines, methods, ifs, switches, instanceof, null
checks, tests) and the diff against the given code.

    analyze-java-run.py <run-dir>
"""
import difflib
import json
import re
import sys
from collections import Counter
from pathlib import Path

METHOD = re.compile(r"^\s*(?:public|protected|private|static|final|abstract|synchronized|\s)*[\w<>\[\], ?]+\s+(\w+)\s*\([^;{]*\)\s*(?:throws [\w., ]+)?\s*\{", re.M)
TEST_RUN = re.compile(r"\bgradle(?:w)?\b[^|;&]*\btest\b")


def parse_results(text):
    m = re.match(r"classes (\d+) run (\d+) passed (\d+) failed (\d+) errors (\d+)", text or "")
    if not m:
        return text
    classes, run, passed, failed, errors = map(int, m.groups())
    return {"classes": classes, "run": run, "passed": passed, "failed": failed, "errors": errors, "failures": [], "errorTests": []}


def source_measures(root):
    main, test = root / "src" / "main" / "java", root / "src" / "test" / "java"
    def measure(directory):
        files = sorted(directory.rglob("*.java")) if directory.exists() else []
        text = "\n".join(f.read_text(errors="replace") for f in files)
        code_lines = sum(1 for line in text.splitlines() if line.strip() and not line.strip().startswith(("//", "*", "/*")))
        return {
            "files": len(files), "linesOfCode": code_lines,
            "classes": len(re.findall(r"\b(?:class|interface|enum|record)\s+\w+", text)),
            "methods": len(METHOD.findall(text)),
            "ifs": len(re.findall(r"\bif\s*\(", text)), "switches": len(re.findall(r"\bswitch\s*[({]", text)),
            "ternaries": len(re.findall(r"\?[^:;]*:", text)),
            "instanceofs": len(re.findall(r"\binstanceof\b", text)), "nullChecks": len(re.findall(r"[=!]=\s*null\b", text)),
            "tests": len(re.findall(r"@Test\b", text)),
        }
    return {"main": measure(main), "test": measure(test)}


def diff_against(given, final):
    def index(root):
        return {str(f.relative_to(root)): f.read_text(errors="replace") for f in root.rglob("*.java")} if root.exists() else {}
    before, after = index(given), index(final)
    added = sorted(set(after) - set(before)); removed = sorted(set(before) - set(after))
    changed, lines_added, lines_removed = [], 0, 0
    for name in sorted(set(before) & set(after)):
        if before[name] != after[name]:
            changed.append(name)
            for line in difflib.unified_diff(before[name].splitlines(), after[name].splitlines(), lineterm="", n=0):
                if line.startswith("+") and not line.startswith("+++"): lines_added += 1
                elif line.startswith("-") and not line.startswith("---"): lines_removed += 1
    for name in added: lines_added += len(after[name].splitlines())
    for name in removed: lines_removed += len(before[name].splitlines())
    methods_before = sum(len(METHOD.findall(t)) for t in before.values()); methods_after = sum(len(METHOD.findall(t)) for t in after.values())
    return {"filesAdded": added, "filesChanged": changed, "filesRemoved": removed, "linesAdded": lines_added, "linesRemoved": lines_removed,
            "methodsBefore": methods_before, "methodsAfter": methods_after}


def stream_statistics(run):
    by_tool = Counter(); errors = 0; test_runs = 0; first_test_run = None; sequence = []
    files_read = set(); files_edited = set(); commands = []
    index = 0
    for line in open(run / "claude-stream.jsonl"):
        try: r = json.loads(line)
        except ValueError: continue
        if r.get("type") == "assistant":
            for block in r["message"]["content"]:
                if block.get("type") != "tool_use": continue
                index += 1; name = block["name"]; args = block.get("input") or {}
                by_tool[name] += 1; sequence.append(name)
                if name == "Bash":
                    command = str(args.get("command", "")); commands.append(command)
                    if TEST_RUN.search(command):
                        test_runs += 1
                        if first_test_run is None: first_test_run = index
                elif name in ("Read", "Glob", "Grep"): files_read.add(str(args.get("file_path") or args.get("path") or args.get("pattern") or ""))
                elif name in ("Edit", "Write", "MultiEdit"): files_edited.add(str(args.get("file_path", "")))
        elif r.get("type") == "user":
            content = (r.get("message") or {}).get("content")
            if isinstance(content, list):
                errors += sum(1 for block in content if block.get("type") == "tool_result" and block.get("is_error"))
    return {"agentCalls": index, "byTool": dict(by_tool), "errors": errors, "testRuns": test_runs, "firstTestRunAtCall": first_test_run,
            "filesRead": len(files_read), "filesEdited": len(files_edited), "sequence": sequence, "bashCommands": commands}


def main():
    run = Path(sys.argv[1]).resolve()
    manifest = json.load(open(run / "manifest.json"))
    usage = json.load(open(run / "usage.json")) if (run / "usage.json").exists() else {}
    tokens = {"input": 0, "cacheWrite": 0, "cacheRead": 0, "output": 0, "thinking": 0, "requests": 0}
    for bucket in (usage.get("per_model") or {}).values():
        tokens["input"] += bucket.get("input", 0); tokens["cacheWrite"] += bucket.get("cache_write_5m", 0) + bucket.get("cache_write_1h", 0)
        tokens["cacheRead"] += bucket.get("cache_read", 0); tokens["output"] += bucket.get("output", 0)
        tokens["thinking"] += bucket.get("thinking", 0); tokens["requests"] += bucket.get("requests", 0)
    calls = stream_statistics(run)
    result = manifest.get("result") or {}
    final = run / "output" / "project"; given = run / "exercise" / "java"
    sources = source_measures(final)
    acceptance = manifest.get("acceptance") if isinstance(manifest.get("acceptance"), dict) else parse_results(manifest.get("acceptance"))
    own = parse_results(manifest.get("ownTests"))
    original_as_given = parse_results(manifest.get("originalTestsAsGiven"))
    analysis = {
        "run": manifest.get("runId"), "language": "java", "scenario": "java-gradle", "config": manifest.get("config"), "technique": manifest.get("technique"),
        "exercise": manifest.get("exercise"), "package": manifest.get("package"), "status": manifest.get("status"),
        "acceptance": acceptance, "agentTests": own, "originalTestsAsGiven": original_as_given,
        "coverageByAllTests": None, "coverageByAgentTests": None, "testSmells": None, "mentor": {"findings": None}, "mentorFindings": None,
        "model": {"classes": sources["main"]["classes"], "methods": sources["main"]["methods"], "linesOfCode": sources["main"]["linesOfCode"],
                  "totals": {"ifs": sources["main"]["ifs"] + sources["main"]["switches"], "switches": sources["main"]["switches"], "ternaries": sources["main"]["ternaries"],
                             "typeChecks": sources["main"]["instanceofs"], "nilChecks": sources["main"]["nullChecks"]}},
        "java": sources,
        "diff": diff_against(given, final),
        "agent": {
            "mode": "headless", "model": manifest.get("model"), "effort": manifest.get("effort"), "elapsedSeconds": manifest.get("elapsedSeconds"),
            "turns": result.get("numTurns"), "costUsd": result.get("totalCostUsd") if result.get("totalCostUsd") is not None else usage.get("total_cost_usd"),
            "tokens": tokens, "toolsServed": None, "toolDefinitionBytes": None,
            "toolCalls": calls["agentCalls"], "toolCallsPerMinute": round(60 * calls["agentCalls"] / manifest["elapsedSeconds"], 2) if manifest.get("elapsedSeconds") else None,
            "toolErrors": calls["errors"], "testRunCalls": calls["testRuns"], "firstTestRunAtCall": calls["firstTestRunAtCall"],
            "filesRead": calls["filesRead"], "filesEdited": calls["filesEdited"], "refactoringToolCalls": 0, "evaluateKinds": None,
            "explorationCallsBeforeFirstChange": next((i for i, t in enumerate(calls["sequence"]) if t in ("Edit", "Write", "MultiEdit")), len(calls["sequence"])),
            "liveTypingToolCalls": 0, "actualScopeRefactoringCalls": 0, "messageNotUnderstoodAnswers": None, "failedTestRuns": None,
        },
        "refactoringOpportunities": {}, "looseChanges": None,
        "toolCalls": {"agentCalls": calls["agentCalls"], "errors": calls["errors"], "byTool": {k: {"calls": v} for k, v in calls["byTool"].items()}, "sequence": calls["sequence"], "bashCommands": calls["bashCommands"]},
    }
    json.dump(analysis, open(run / "analysis.json", "w"), indent=2)
    a = analysis["agent"]
    print(f"analysis of {analysis['run']}: java-gradle / {'+'.join(analysis['config'] or [])} / {analysis['technique']} / {analysis['exercise']}")
    print(f"  acceptance         {acceptance if isinstance(acceptance, str) else f'{acceptance['passed']}/{acceptance['run']} passed, {acceptance['failed']} failed, {acceptance['errors']} errors'}")
    print(f"  own tests          {own if isinstance(own, str) else f'{own['passed']}/{own['run']} passed'}")
    print(f"  code               {sources['main']['classes']} classes, {sources['main']['methods']} methods, {sources['main']['linesOfCode']} lines; ifs {sources['main']['ifs']}, switches {sources['main']['switches']}, instanceof {sources['main']['instanceofs']}, null checks {sources['main']['nullChecks']}; tests {sources['test']['tests']}")
    print(f"  diff               files +{len(analysis['diff']['filesAdded'])} ~{len(analysis['diff']['filesChanged'])} -{len(analysis['diff']['filesRemoved'])}, lines +{analysis['diff']['linesAdded']} -{analysis['diff']['linesRemoved']}, methods {analysis['diff']['methodsBefore']} -> {analysis['diff']['methodsAfter']}")
    print(f"  tool calls         {a['toolCalls']} ({calls['byTool']}), {a['toolErrors']} errors, {a['testRunCalls']} test runs, first at call {a['firstTestRunAtCall']}")
    print(f"  agent              {a['model']} effort {a['effort']}, {a['elapsedSeconds']}s, cost ${a['costUsd']}, requests {tokens['requests']}, tokens in {tokens['input']} cache-read {tokens['cacheRead']:,} out {tokens['output']:,}")


if __name__ == "__main__":
    main()
