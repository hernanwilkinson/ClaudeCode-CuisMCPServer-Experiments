#!/usr/bin/env python3
"""Analysis of a Python run (2-runPythonCell.sh): writes <run>/analysis.json in the shape
analyze-java-run.py writes for Java runs, so matrix-table.py puts both languages in one table.
The agent-side measures (tokens, requests, tool calls, test runs, files read and edited) come
from the same code as the Java analysis; only the source measures and the test-run detection
are Python's.

    analyze-python-run.py <run-dir>

The source measures are counted with regular expressions over the files, as in Java, and are
meant to compare Python against Python, not against Java or Smalltalk:
  ifs          `if` and `elif` statements, plus `match` statements (Java counts if and switch)
  ternaries    conditional expressions `x if c else y`
  typeChecks   isinstance(...) and type(...) comparisons (Java: instanceof)
  nilChecks    `is None`, `is not None`, `== None`, `!= None` (Java: == null, != null)
"""
import difflib
import importlib.util
import json
import re
import sys
from pathlib import Path

_spec = importlib.util.spec_from_file_location("java_analysis", Path(__file__).with_name("analyze-java-run.py"))
java = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(java)

DEF = re.compile(r"^\s*def\s+\w+\s*\(", re.M)
java.TEST_RUN = re.compile(r"\bpytest\b|\bpy\.test\b|-m\s+unittest\b")   # what stream_statistics counts as a test run


def code_lines(text):
    return [line for line in text.splitlines() if line.strip() and not line.strip().startswith("#")]


def measure(directory):
    files = sorted(p for p in directory.rglob("*.py") if "__pycache__" not in p.parts) if directory.exists() else []
    text = "\n".join(f.read_text(errors="replace") for f in files)
    lines = code_lines(text)
    statement_ifs = sum(1 for line in lines if re.match(r"\s*(el)?if\b", line))
    matches = sum(1 for line in lines if re.match(r"\s*match\s+\S.*:\s*$", line))
    ternaries = sum(1 for line in lines if not re.match(r"\s*(el)?if\b|\s*while\b", line) and re.search(r"\S\s+if\s+.+\s+else\s+\S", line))
    return {
        "files": len(files), "linesOfCode": len(lines),
        "classes": len(re.findall(r"^\s*class\s+\w+", text, re.M)),
        "methods": len(DEF.findall(text)),
        "ifs": statement_ifs, "switches": matches, "ternaries": ternaries,
        "instanceofs": len(re.findall(r"\bisinstance\s*\(|\btype\s*\([^)]*\)\s*(?:==|!=|is\b)", text)),
        "nullChecks": len(re.findall(r"\bis\s+(?:not\s+)?None\b|[=!]=\s*None\b", text)),
        "tests": len(re.findall(r"^\s*def\s+test\w*\s*\(", text, re.M)),
    }


def source_measures(root):
    return {"main": measure(root / "src"), "test": measure(root / "tests")}


def diff_against(given, final):
    def index(root):
        return {str(f.relative_to(root)): f.read_text(errors="replace") for f in root.rglob("*.py") if "__pycache__" not in f.parts} if root.exists() else {}
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
    methods_before = sum(len(DEF.findall(t)) for t in before.values()); methods_after = sum(len(DEF.findall(t)) for t in after.values())
    return {"filesAdded": added, "filesChanged": changed, "filesRemoved": removed, "linesAdded": lines_added, "linesRemoved": lines_removed,
            "methodsBefore": methods_before, "methodsAfter": methods_after}


def main():
    run = Path(sys.argv[1]).resolve()
    manifest = json.load(open(run / "manifest.json"))
    usage = json.load(open(run / "usage.json")) if (run / "usage.json").exists() else {}
    tokens = {"input": 0, "cacheWrite": 0, "cacheRead": 0, "output": 0, "thinking": 0, "requests": 0}
    for bucket in (usage.get("per_model") or {}).values():
        tokens["input"] += bucket.get("input", 0); tokens["cacheWrite"] += bucket.get("cache_write_5m", 0) + bucket.get("cache_write_1h", 0)
        tokens["cacheRead"] += bucket.get("cache_read", 0); tokens["output"] += bucket.get("output", 0)
        tokens["thinking"] += bucket.get("thinking", 0); tokens["requests"] += bucket.get("requests", 0)
    calls = java.stream_statistics(run)
    result = manifest.get("result") or {}
    final = run / "output" / "project"; given = run / "exercise" / "python"
    sources = source_measures(final)
    acceptance = manifest.get("acceptance") if isinstance(manifest.get("acceptance"), dict) else java.parse_results(manifest.get("acceptance"))
    own = java.parse_results(manifest.get("ownTests"))
    original_as_given = java.parse_results(manifest.get("originalTestsAsGiven"))
    main_src = sources["main"]
    analysis = {
        "run": manifest.get("runId"), "language": "python", "scenario": "python-pytest", "config": manifest.get("config"), "technique": manifest.get("technique"),
        "exercise": manifest.get("exercise"), "package": manifest.get("package"), "status": manifest.get("status"),
        "acceptance": acceptance, "agentTests": own, "originalTestsAsGiven": original_as_given,
        "coverageByAllTests": None, "coverageByAgentTests": None, "testSmells": None, "mentor": {"findings": None}, "mentorFindings": None,
        "model": {"classes": main_src["classes"], "methods": main_src["methods"], "linesOfCode": main_src["linesOfCode"],
                  "totals": {"ifs": main_src["ifs"] + main_src["switches"], "switches": main_src["switches"], "ternaries": main_src["ternaries"],
                             "typeChecks": main_src["instanceofs"], "nilChecks": main_src["nullChecks"]}},
        "python": sources,
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
    print(f"analysis of {analysis['run']}: python-pytest / {'+'.join(analysis['config'] or [])} / {analysis['technique']} / {analysis['exercise']}")
    print(f"  acceptance         {acceptance if isinstance(acceptance, str) else f'{acceptance['passed']}/{acceptance['run']} passed, {acceptance['failed']} failed, {acceptance['errors']} errors'}")
    print(f"  own tests          {own if isinstance(own, str) else f'{own['passed']}/{own['run']} passed'}")
    print(f"  code               {main_src['classes']} classes, {main_src['methods']} methods, {main_src['linesOfCode']} lines; ifs {main_src['ifs']}, match {main_src['switches']}, isinstance {main_src['instanceofs']}, None checks {main_src['nullChecks']}; tests {sources['test']['tests']}")
    print(f"  diff               files +{len(analysis['diff']['filesAdded'])} ~{len(analysis['diff']['filesChanged'])} -{len(analysis['diff']['filesRemoved'])}, lines +{analysis['diff']['linesAdded']} -{analysis['diff']['linesRemoved']}, methods {analysis['diff']['methodsBefore']} -> {analysis['diff']['methodsAfter']}")
    print(f"  tool calls         {a['toolCalls']} ({calls['byTool']}), {a['toolErrors']} errors, {a['testRunCalls']} test runs, first at call {a['firstTestRunAtCall']}")
    print(f"  agent              {a['model']} effort {a['effort']}, {a['elapsedSeconds']}s, cost ${a['costUsd']}, requests {tokens['requests']}, tokens in {tokens['input']} cache-read {tokens['cacheRead']:,} out {tokens['output']:,}")


if __name__ == "__main__":
    main()
