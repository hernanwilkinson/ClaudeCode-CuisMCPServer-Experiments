# 005-LiveTypingCheaper

## Hypothesis

Implementing and refactoring code with LiveTyping information is cheaper than without it. Four cells on the University base (update 8182, LiveTyping VM) so the base is the same everywhere: 1u = evaluate and test tools only (1-Evaluate+TestRunning-University, heuristics inlined); 5 = the same image with every tool group and the LiveTyping tools and decorators, told to use the type information (5-LiveTyping + 8); 4u = every tool group but no LiveTyping, told to use the tools over evaluate (4-Refactoring-University, 2 + 8); 6 = LiveTyping tools, decorators and actual-scope refactorings, told to use the type information, the actual scope, and the tools over evaluate (6-LiveTypingRefactoring, 2 + 5 + 6 + 8). The given tests are run once before every session (warm-up) so the types exist in every cell and only their being served differs. Exercises where the types are not visible in the source: CustomerImporter (2022-1c-recuperatorio-parcial1, refactoring), Seabed crawler (2019-2c-parcial2-masked, implementing on a hierarchy) and Sims Hotels (2024-1c-parcial1, refactoring, 110 methods). One run per cell, free technique.

## Design

Started 2026-09-14. Model `claude-opus-5`, effort high, technique `free`,
1 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `1-Evaluate+TestRunning-University:8-DesignHeuristicsInline:free`
- `5-LiveTyping:5-LiveTyping+8-DesignHeuristicsInline:free`
- `4-Refactoring-University:2-EvaluateAsLastResource+8-DesignHeuristicsInline:free`
- `6-LiveTypingRefactoring:2-EvaluateAsLastResource+5-LiveTyping+6-LiveTypingRefactoring+8-DesignHeuristicsInline:free`

Exercises:
- `exercises/2022-1c-recuperatorio-parcial1`
- `exercises/2019-2c-parcial2-masked`
- `exercises/2024-1c-parcial1`

## Results

One run per cell, twelve runs, all completed, all passing the given tests (on the Seabed
crawler the agents added their tests to the given test class, so the count there includes
them; the 16 given ones pass in every cell). [table.md](table.md) has every measure.

Cells (all on the University base, update 8182, heuristics inlined, free technique):
- 1u: evaluate + tests only, no LiveTyping (1-Evaluate+TestRunning-University, configuration 8)
- 5: all tools + LiveTyping, told to use types (5-LiveTyping, configurations 5 + 8)
- 4u: all tools, no LiveTyping, tools over evaluate (4-Refactoring-University, configurations 2 + 8)
- 6: LiveTyping + actual scope, tools over evaluate (6-LiveTypingRefactoring, configurations 2 + 5 + 6 + 8)

The given tests were run once before every session (warm-up), so LiveTyping had the types of
the given code in every cell; only the serving of that information differs.

Cost:

| Exercise | Cell | Cost | Input-side tokens | Output | API requests | Tool calls | Seconds |
|---|---|---|---|---|---|---|---|
| CustomerImporter | 1u: evaluate + tests only, no LiveTyping | $2.61 | 1,275 k | 49 k | 25 | 26 | 584 |
| CustomerImporter | 5: all tools + LiveTyping, told to use types | $3.92 | 3,485 k | 47 k | 43 | 56 | 579 |
| CustomerImporter | 4u: all tools, no LiveTyping, tools over evaluate | $3.95 | 3,075 k | 52 k | 37 | 63 | 629 |
| CustomerImporter | 6: LiveTyping + actual scope, tools over evaluate | $4.01 | 3,492 k | 48 k | 42 | 63 | 659 |
| Seabed crawler | 1u: evaluate + tests only, no LiveTyping | $4.16 | 2,768 k | 74 k | 40 | 47 | 873 |
| Seabed crawler | 5: all tools + LiveTyping, told to use types | $7.18 | 7,623 k | 86 k | 72 | 101 | 1103 |
| Seabed crawler | 4u: all tools, no LiveTyping, tools over evaluate | $3.81 | 2,645 k | 64 k | 32 | 51 | 741 |
| Seabed crawler | 6: LiveTyping + actual scope, tools over evaluate | $5.34 | 4,639 k | 77 k | 48 | 71 | 904 |
| Sims Hotels | 1u: evaluate + tests only, no LiveTyping | $2.72 | 2,006 k | 41 k | 37 | 39 | 488 |
| Sims Hotels | 5: all tools + LiveTyping, told to use types | $3.18 | 2,765 k | 40 k | 36 | 43 | 502 |
| Sims Hotels | 4u: all tools, no LiveTyping, tools over evaluate | $3.71 | 3,636 k | 44 k | 49 | 53 | 592 |
| Sims Hotels | 6: LiveTyping + actual scope, tools over evaluate | $3.83 | 4,369 k | 37 k | 58 | 58 | 456 |

LiveTyping cell against its control:

| Exercise | Comparison | Cost | Input-side | Tool calls | Exploration calls before first change | MessageNotUnderstood answers | Failed test runs |
|---|---|---|---|---|---|---|---|
| CustomerImporter | 5 vs 1u | +50% | +173% | +115% | 9 → 18 | 1 → 2 | 0 → 0 |
| CustomerImporter | 6 vs 4u | +1% | +14% | +0% | 18 → 17 | 1 → 1 | 0 → 0 |
| Seabed crawler | 5 vs 1u | +72% | +175% | +115% | 9 → 7 | 3 → 2 | 2 → 0 |
| Seabed crawler | 6 vs 4u | +40% | +75% | +39% | 6 → 12 | 1 → 1 | 0 → 0 |
| Sims Hotels | 5 vs 1u | +17% | +38% | +10% | 10 → 11 | 3 → 1 | 1 → 0 |
| Sims Hotels | 6 vs 4u | +3% | +20% | +9% | 9 → 10 | 1 → 1 | 1 → 0 |

Process (exploration = reading calls before the first change; LT = LiveTyping tool calls;
actual = actual-scope refactorings; hand-made = refactorings done with define and delete calls):

| Exercise | Cell | Exploration before first change | LT calls | Actual-scope | Refactoring calls / failed | Hand-made | MessageNotUnderstood answers | Failed test runs / test runs | Tool errors |
|---|---|---|---|---|---|---|---|---|---|
| CustomerImporter | 1u | 9 | 0 | 0 | 0 / 0 | 0 | 1 | 0 / 3 | 0 |
| CustomerImporter | 5 | 18 | 5 | 0 | 0 / 0 | 5 | 2 | 0 / 4 | 1 |
| CustomerImporter | 4u | 18 | 0 | 0 | 2 / 0 | 12 | 1 | 0 / 5 | 0 |
| CustomerImporter | 6 | 17 | 0 | 0 | 1 / 0 | 5 | 1 | 0 / 5 | 0 |
| Seabed crawler | 1u | 9 | 0 | 0 | 0 / 0 | 0 | 3 | 2 / 7 | 2 |
| Seabed crawler | 5 | 7 | 3 | 0 | 0 / 0 | 13 | 2 | 0 / 5 | 1 |
| Seabed crawler | 4u | 6 | 0 | 0 | 0 / 0 | 10 | 1 | 0 / 5 | 0 |
| Seabed crawler | 6 | 12 | 1 | 0 | 1 / 0 | 13 | 1 | 0 / 5 | 1 |
| Sims Hotels | 1u | 10 | 0 | 0 | 0 / 0 | 0 | 3 | 1 / 7 | 1 |
| Sims Hotels | 5 | 11 | 0 | 0 | 0 / 0 | 5 | 1 | 0 / 5 | 1 |
| Sims Hotels | 4u | 9 | 0 | 0 | 0 / 0 | 10 | 1 | 1 / 6 | 0 |
| Sims Hotels | 6 | 10 | 0 | 0 | 0 / 0 | 14 | 1 | 0 / 4 | 1 |

What was produced:

| Exercise | Cell | Given tests | Methods left outside the package | Methods | Ifs | Type checks | Mentor findings | Findings per method | Coverage % |
|---|---|---|---|---|---|---|---|---|---|
| CustomerImporter | 1u | 29/29 | 0 | 176 | 7 | 1 | 40 | 0.23 | 83.3 |
| CustomerImporter | 5 | 29/29 | 2 | 167 | 8 | 1 | 43 | 0.26 | 83.7 |
| CustomerImporter | 4u | 29/29 | 2 | 167 | 8 | 1 | 40 | 0.24 | 82.7 |
| CustomerImporter | 6 | 29/29 | 2 | 169 | 8 | 1 | 39 | 0.23 | 83.6 |
| Seabed crawler | 1u | 16/16 | 0 | 123 | 5 | 0 | 92 | 0.75 | 95.2 |
| Seabed crawler | 5 | 45/45 | 0 | 122 | 0 | 0 | 42 | 0.34 | 95.4 |
| Seabed crawler | 4u | 50/50 | 0 | 123 | 4 | 0 | 37 | 0.30 | 97.0 |
| Seabed crawler | 6 | 48/48 | 0 | 130 | 1 | 0 | 64 | 0.49 | 91.9 |
| Sims Hotels | 1u | 40/40 | 0 | 84 | 3 | 1 | 49 | 0.58 | 93.7 |
| Sims Hotels | 5 | 40/40 | 0 | 77 | 3 | 1 | 49 | 0.64 | 90.6 |
| Sims Hotels | 4u | 39/39 | 0 | 86 | 3 | 1 | 45 | 0.52 | 90.7 |
| Sims Hotels | 6 | 39/39 | 0 | 93 | 3 | 1 | 48 | 0.52 | 90.3 |

## Conclusion

**Rejected on these runs.** With LiveTyping the same work cost more in all six comparisons:
+50, +73 and +17 percent against evaluate-only, and +2, +40 and +3 percent against the same
tools without LiveTyping. Input-side tokens follow the same pattern (2.7x, 2.8x and 1.4x; 1.1x,
1.8x and 1.2x).

The type information was hardly used. Cell 5 made 5, 3 and 0 LiveTyping tool calls, cell 6
made 0, 1 and 0, and no run used the actual scope of a refactoring: the refactoring tools
themselves were called 0 to 2 times per run while 5 to 14 refactorings were done by hand,
even in the cells told to prefer the tools over evaluate. The types the decorators add to
method sources were served in every read of cells 5 and 6, and the agents read the same
number of things before their first change as their controls (18 vs 18, 7 vs 9, 11 vs 10).
So the extra cost is the cost of the bigger tool schema (62 and 68 KB per request against
2.7 and 54 KB) and of more calls, without the savings the hypothesis expected.

Where the types could have paid off, they did not visibly: the wrong-type symptoms were rare
everywhere. MessageNotUnderstood appeared in 1 to 3 answers per run in the controls and 1 to 2
with LiveTyping; failed test runs were 2 and 1 in the evaluate-only cells and 0 to 1 elsewhere.
On CustomerImporter, the exercise chosen because its ifs test the type of the zip code, all
four cells kept one type check and 7 or 8 ifs, and cell 5 did ask the types of instance
variables five times, the only run that used LiveTyping for what it is for.

Design was equal across cells on CustomerImporter and Sims Hotels. On the Seabed crawler the
LiveTyping cell 5 left 0 ifs and 42 mentor findings against 5 ifs and 92 in the evaluate-only
cell, the one clear quality difference, at 1.7 times the cost.

Three runs on CustomerImporter (cells 5, 4u and 6) defined two String extensions under the
category `*CustomerImporter` instead of `*CustomerImporter-Recu-1er-Parcial`, so the package
file-out left them behind and the package failed in a fresh image; the evaluate-only agent
used the full name. The analysis now extracts such methods from the run's saved image
(`extract-loose-changes.sh`, "methods left outside the package" above) and loads them before
testing; without that step these three runs would count as failed.

Caveats: one run per cell; configurations differ between the pairs (5 adds only the LiveTyping
clause to 1u's heuristics, 6 adds two clauses to 4u's), so the guidance is not identical
within a pair; the Seabed crawler test counts include the agents' own tests.

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
