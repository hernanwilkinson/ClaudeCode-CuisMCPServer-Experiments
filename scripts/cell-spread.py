#!/usr/bin/env python3
"""Spread of the runs of each cell of an experiment: min, median, max, mean, standard deviation
and coefficient of variation per measure, from results.json (rebuild it first with
matrix-table.py). Prints a markdown table per cell.

    cell-spread.py experiments/<experiment> [measure ...]
"""
import json
import statistics
import sys
from pathlib import Path

DEFAULT = ["cost", "inputSide", "uncachedInput", "cacheRead", "output", "thinking", "requests", "toolCalls", "elapsed", "ifs", "mentorFindings", "coverage"]


def fmt(name, v):
    if v is None: return "-"
    if name == "cost": return f"${v:.2f}"
    if name in ("inputSide", "uncachedInput", "cacheRead", "output", "thinking"): return f"{v/1000:,.0f} k"
    return f"{v:.1f}" if isinstance(v, float) and v != int(v) else f"{int(v)}"


def main():
    matrix = Path(sys.argv[1])
    measures = sys.argv[2:] or DEFAULT
    results = json.load(open(matrix / "results.json"))
    for cell in results["cells"]:
        runs = [r for r in cell["perRun"] if r.get("acceptancePassed") is not False and r.get("status") in ("completed", None)]
        print(f"\n### {cell['exercise']} · {cell['scenario']} : {cell['config']} : {cell.get('technique', '-')} ({len(runs)} runs counted of {cell['runs']})\n")
        print("| Measure | Min | Median | Max | Mean | SD | CV % | Max / min |")
        print("|---|---|---|---|---|---|---|---|")
        for m in measures:
            values = [r[m] for r in runs if r.get(m) is not None]
            if not values: continue
            mean = statistics.mean(values)
            sd = statistics.stdev(values) if len(values) > 1 else 0.0
            cv = 100 * sd / mean if mean else 0.0
            ratio = max(values) / min(values) if min(values) else float("inf")
            print(f"| {m} | {fmt(m, min(values))} | {fmt(m, statistics.median(values))} | {fmt(m, max(values))} | {fmt(m, mean)} | {fmt(m, sd)} | {cv:.0f} | {ratio:.2f} |")


if __name__ == "__main__":
    main()
