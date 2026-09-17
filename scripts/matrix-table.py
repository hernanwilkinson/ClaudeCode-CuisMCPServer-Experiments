#!/usr/bin/env python3
"""Aggregate the analyses of a matrix into results.json and table.md.

    matrix-table.py experiments/<experiment>

Reads every run under <experiment>/cells (and <experiment>/runs.txt, for the order they
finished in), takes each run's analysis.json, groups the runs by exercise and cell (scenario +
configuration), and writes per-cell medians with the per-run values behind them. The acceptance tests are the gate: a run that fails them is
listed but kept out of the medians, since its tokens bought a different outcome.
"""

import json
import statistics
import sys
from collections import defaultdict
from pathlib import Path

def methods_in_model(analysis):
    """Methods of the model classes (not the tests): the count the analysis reports, else the
    number of method records that are not in a test class."""
    model = analysis.get("model") or {}
    for key in ("methods", "methodCount"):
        if isinstance(model.get(key), int):
            return model[key]
    return sum(1 for m in analysis.get("methods") or [] if not m.get("isTest") and not str(m.get("class", "")).endswith("Test"))


MEASURES = [
    ("cost", "cost USD", lambda a: a["agent"]["costUsd"]),
    ("inputSide", "input-side tokens", lambda a: a["agent"]["tokens"]["input"] + a["agent"]["tokens"]["cacheWrite"] + a["agent"]["tokens"]["cacheRead"]),
    ("uncachedInput", "uncached + cache-write", lambda a: a["agent"]["tokens"]["input"] + a["agent"]["tokens"]["cacheWrite"]),
    ("cacheRead", "cache-read tokens", lambda a: a["agent"]["tokens"]["cacheRead"]),
    ("output", "output tokens", lambda a: a["agent"]["tokens"]["output"]),
    ("thinking", "thinking tokens", lambda a: a["agent"]["tokens"]["thinking"]),
    ("requests", "API requests", lambda a: a["agent"]["tokens"]["requests"]),
    ("inputPerRequest", "input tokens per request", lambda a: round((a["agent"]["tokens"]["input"] + a["agent"]["tokens"]["cacheWrite"] + a["agent"]["tokens"]["cacheRead"]) / max(1, a["agent"]["tokens"]["requests"]))),
    ("toolCalls", "tool calls", lambda a: a["agent"]["toolCalls"]),
    ("toolErrors", "tool errors", lambda a: a["agent"]["toolErrors"]),
    ("operations", "operations (batch steps counted)", lambda a: a["agent"].get("operations")),
    ("batchCalls", "batch calls", lambda a: a["agent"].get("batchCalls")),
    ("stepsPerBatch", "steps per batch", lambda a: a["agent"].get("stepsPerBatch")),
    ("defineCalls", "define calls", lambda a: a["agent"].get("defineCalls")),
    ("methodsDefined", "methods defined", lambda a: a["agent"].get("methodsDefined")),
    ("methodsPerDefineCall", "methods per define call", lambda a: a["agent"].get("methodsPerDefineCall")),
    ("exploration", "exploration calls before first change", lambda a: a["agent"].get("explorationCallsBeforeFirstChange")),
    ("liveTypingCalls", "LiveTyping tool calls", lambda a: a["agent"].get("liveTypingToolCalls")),
    ("actualScopeCalls", "actual-scope refactorings", lambda a: a["agent"].get("actualScopeRefactoringCalls")),
    ("refactoringCalls", "refactoring tool calls", lambda a: a["agent"].get("refactoringToolCalls")),
    ("failedRefactoringCalls", "failed refactoring calls", lambda a: len((a.get("refactoringOpportunities") or {}).get("failedRefactoringToolCalls") or []) if isinstance((a.get("refactoringOpportunities") or {}).get("failedRefactoringToolCalls"), list) else (a.get("refactoringOpportunities") or {}).get("failedRefactoringToolCalls")),
    ("handMade", "hand-made refactorings", lambda a: (a.get("refactoringOpportunities") or {}).get("manualRefactorings")),
    ("mnu", "MessageNotUnderstood answers", lambda a: a["agent"].get("messageNotUnderstoodAnswers")),
    ("failedTestRuns", "failed test runs", lambda a: a["agent"].get("failedTestRuns")),
    ("looseMethods", "methods outside package", lambda a: (a.get("looseChanges") or {}).get("methodsOutsidePackage")),
    ("crypticLeft", "cryptic names left (classes+selectors+ivars)", lambda a: sum(a["names"][k]["cryptic"] for k in ("classes", "selectors", "instanceVariables")) if a.get("names") else None),
    ("originalRecovered", "original names recovered", lambda a: sum(a["names"][k]["originalRecovered"] for k in ("classes", "selectors", "instanceVariables")) if a.get("names") else None),
    ("renameCalls", "rename tool calls", lambda a: sum(v["calls"] for k, v in (a.get("toolCalls") or {}).get("byTool", {}).items() if "rename" in k) if (a.get("toolCalls") or {}).get("byTool") else None),
    ("elapsed", "seconds", lambda a: a["agent"]["elapsedSeconds"]),
    ("ifs", "ifs in model", lambda a: a["model"].get("totals", {}).get("ifs", 0)),
    ("mentorFindings", "mentor findings", lambda a: a["mentor"].get("findings")),
    ("mentorPerMethod", "mentor findings per method", lambda a: round(a["mentor"]["findings"] / methods_in_model(a), 2) if methods_in_model(a) and (a.get("mentor") or {}).get("findings") is not None else None),
    ("methodsInModel", "methods in model", lambda a: methods_in_model(a)),
    ("testSmells", "test smells", lambda a: len(a["testSmells"]) if isinstance(a.get("testSmells"), list) else (a.get("testSmells") or {}).get("count") if isinstance(a.get("testSmells"), dict) else a.get("testSmells")),
    ("coverage", "coverage %", lambda a: a["coverageByAllTests"]["percentCovered"] if isinstance(a.get("coverageByAllTests"), dict) else None),
]


def passed_acceptance(analysis):
    acceptance = analysis.get("acceptance")
    if not isinstance(acceptance, dict):
        return None
    return acceptance["failed"] == 0 and acceptance["errors"] == 0 and acceptance["run"] > 0


def analyzed_runs(matrix):
    """Every run of the experiment: the cells directory is the source of truth, runs.txt the
    order they finished in (runs.txt alone would miss runs moved in by hand)."""
    listed = [Path(line.strip()) for line in open(matrix / "runs.txt") if line.strip()] if (matrix / "runs.txt").exists() else []
    found = sorted(p.parent for p in matrix.glob("cells/*/*/*/analysis.json"))
    runs = []
    for run in listed + found:
        if run not in runs:
            runs.append(run)
    return runs


def median(values):
    values = [v for v in values if v is not None]
    return round(statistics.median(values), 2) if values else None


def main():
    matrix = Path(sys.argv[1]).resolve()
    runs = analyzed_runs(matrix)
    cells = defaultdict(list)
    for run in runs:
        path = run / "analysis.json"
        if not path.exists():
            continue
        analysis = json.load(open(path))
        key = (analysis["exercise"], analysis["scenario"], "+".join(analysis["config"] or []), analysis.get("technique") or "free")
        values = {name: measure(analysis) for name, _, measure in MEASURES}
        values["acceptancePassed"] = passed_acceptance(analysis)
        values["acceptance"] = analysis.get("acceptance")
        values["status"] = analysis.get("status")
        values["run"] = str(run)
        cells[key].append(values)

    results = []
    for (exercise, scenario, config, technique), items in sorted(cells.items()):
        gated = [v for v in items if v["acceptancePassed"] is not False and v["status"] in ("completed", None)]
        results.append({
            "exercise": exercise, "scenario": scenario, "config": config, "technique": technique,
            "runs": len(items), "passingRuns": len(gated),
            "medians": {name: median([v[name] for v in gated]) for name, _, _ in MEASURES},
            "perRun": items,
        })
    json.dump({"experiment": matrix.name, "cells": results}, open(matrix / "results.json", "w"), indent=2)

    lines = [f"# {matrix.name}: results", ""]
    parameters = matrix / "parameters.json"
    if parameters.exists():
        p = json.load(open(parameters))
        lines += [f"Model {p.get('model')}, effort {p.get('effort')}, technique {p.get('technique')}, "
                  f"{p.get('repetitions')} repetitions per cell planned. Medians over the runs that passed the acceptance tests.", ""]
    shown = ["cost", "inputSide", "cacheRead", "uncachedInput", "output", "thinking", "requests", "inputPerRequest", "toolCalls", "operations", "batchCalls", "stepsPerBatch", "toolErrors", "defineCalls", "methodsDefined", "methodsPerDefineCall", "exploration", "liveTypingCalls", "actualScopeCalls", "refactoringCalls", "failedRefactoringCalls", "handMade", "mnu", "failedTestRuns", "looseMethods", "crypticLeft", "originalRecovered", "renameCalls", "elapsed", "ifs", "methodsInModel", "mentorFindings", "mentorPerMethod", "testSmells", "coverage"]
    labels = {name: label for name, label, _ in MEASURES}
    lines.append("| Exercise | Scenario | Config | Technique | Runs | Passed | " + " | ".join(labels[n] for n in shown) + " |")
    lines.append("|" + "---|" * (6 + len(shown)))

    def fmt(value):
        if value is None:
            return "-"
        return f"{value:,.0f}" if isinstance(value, (int, float)) and value >= 100 else f"{value}"

    for cell in results:
        lines.append(f"| {cell['exercise']} | {cell['scenario']} | {cell['config']} | {cell['technique']} | {cell['runs']} | {cell['passingRuns']} | "
                     + " | ".join(fmt(cell["medians"][n]) for n in shown) + " |")

    # deltas between the two cells of each exercise, second against first in scenario order
    by_exercise = defaultdict(list)
    for cell in results:
        by_exercise[cell["exercise"]].append(cell)
    lines += ["", "## Each cell against the first, per exercise (medians)", ""]
    lines.append("| Exercise | Comparison | " + " | ".join(labels[n] for n in ["cost", "inputSide", "cacheRead", "output", "requests", "inputPerRequest", "toolCalls", "elapsed"]) + " |")
    lines.append("|" + "---|" * 10)
    for exercise, group in by_exercise.items():
        if len(group) < 2:
            continue
        first = group[0]
        for second in group[1:]:
            deltas = []
            for name in ["cost", "inputSide", "cacheRead", "output", "requests", "inputPerRequest", "toolCalls", "elapsed"]:
                a, b = first["medians"][name], second["medians"][name]
                deltas.append(f"{100 * (b - a) / a:+.0f}%" if a and b is not None else "-")
            label = lambda c: f"{c['scenario']}:{c['config']}:{c['technique']}"
            lines.append(f"| {exercise} | {label(second)} vs {label(first)} | " + " | ".join(deltas) + " |")

    lines += ["", "## Every run", ""]
    lines.append("| Exercise | Scenario | Config | Technique | Status | Acceptance | " + " | ".join(labels[n] for n in ["cost", "inputSide", "cacheRead", "output", "toolCalls", "toolErrors", "elapsed", "ifs", "mentorFindings"]) + " | Run |")
    lines.append("|" + "---|" * 16)
    for cell in results:
        for v in cell["perRun"]:
            acceptance = v["acceptance"]
            acceptance_text = f"{acceptance['passed']}/{acceptance['run']}" if isinstance(acceptance, dict) else "-"
            lines.append(f"| {cell['exercise']} | {cell['scenario']} | {cell['config']} | {cell['technique']} | {v['status']} | {acceptance_text} | "
                         + " | ".join(fmt(v[n]) for n in ["cost", "inputSide", "cacheRead", "output", "toolCalls", "toolErrors", "elapsed", "ifs", "mentorFindings"])
                         + f" | {Path(v['run']).name} |")
    (matrix / "table.md").write_text("\n".join(lines) + "\n")
    print("\n".join(lines[:6 + len(results)]))


if __name__ == "__main__":
    main()
