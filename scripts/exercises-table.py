#!/usr/bin/env python3
"""Collate every exercises/*/exercise.json into a Markdown inventory table.

    python3 scripts/exercises-table.py [exercises-dir]

Prints the table to stdout. The scenario-fit column is derived from the design flags each
importer recorded; the curated recommendations live in exercises/README.md next to it.
"""

import json
import sys
from pathlib import Path

FLAG_COLUMNS = [
    ("refactoringOfGivenCode", "refactor"),
    ("newBehaviorOnGivenCode", "feature"),
    ("fromScratch", "scratch"),
    ("conditionalsToPolymorphism", "ifs→poly"),
    ("duplicatedCode", "duplication"),
    ("collectionProtocol", "collections"),
    ("typeInformationHelps", "types"),
    ("stateMachine", "states"),
]


def scenario_fit(design):
    fits = []
    if design.get("refactoringOfGivenCode") or design.get("duplicatedCode"):
        fits.append("4-Refactoring")
    if design.get("collectionProtocol"):
        fits.append("3-Search")
    if design.get("typeInformationHelps"):
        fits.append("5-LiveTyping")
    if design.get("typeInformationHelps") and design.get("refactoringOfGivenCode"):
        fits.append("6-LiveTypingRefactoring")
    if design.get("fromScratch"):
        fits.append("1/2 greenfield")
    if design.get("stateMachine") and design.get("newBehaviorOnGivenCode"):
        fits.append("7-Debug")
    return ", ".join(fits) or "-"


def main():
    root = Path(sys.argv[1] if len(sys.argv) > 1 else "exercises")
    rows = []
    for path in sorted(root.glob("*/exercise.json")):
        try:
            rows.append(json.load(open(path)))
        except ValueError as error:
            print(f"cannot read {path}: {error}", file=sys.stderr)

    print("| Exercise | Title | Kind | Starting code | Design traits | Fits |")
    print("|---|---|---|---|---|---|")
    for row in rows:
        design = row.get("design", {})
        size = row.get("sizeHint", {})
        starting = (f"{size.get('classesInStartingCode', 0)} classes, "
                    f"{size.get('methodsInStartingCode', 0)} methods"
                    if row.get("startingPackages") else "none")
        traits = ", ".join(label for key, label in FLAG_COLUMNS if design.get(key)) or "-"
        title = row.get("title", "")
        if row.get("maskedFrom"):
            title += " (masked)"
        print(f"| [{row['name']}]({row['name']}/spec.md) | {title} | "
              f"{row.get('kind', '')} | {starting} | {traits} | {scenario_fit(design)} |")
    print(f"\n{len(rows)} exercises.", file=sys.stderr)


if __name__ == "__main__":
    main()
