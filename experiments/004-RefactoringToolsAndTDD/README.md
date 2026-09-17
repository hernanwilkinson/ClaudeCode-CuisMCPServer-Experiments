# 004-RefactoringToolsAndTDD

## Hypothesis

H1: with TDD and the design heuristics, having the refactoring tools (scenario 4-Refactoring) uses fewer tokens than not having them (scenario 3-Search, which differs only by the two refactoring tool groups); cells A (3:8:tdd), B (4:8:tdd, tools available but not mentioned) and C (4:4+8:tdd, told to refactor with the tools). H2: with the refactoring tools and the heuristics, TDD produces a better design than test-after or a free technique; cells C, D (4:4+8:test-after) and E (4:4+8:free). Heuristics inlined in CLAUDE.md (configuration 8) in every cell. One repetition on MineField (2023-2c-parcial2, greenfield from nothing) and Aterrizar.com (2025-2c-recuperatorio, greenfield over a small given class); neither has acceptance tests, so correctness is the agent's own tests and quality is the design measures.

## Design

Started 2026-09-11. Model `claude-opus-5`, effort high, technique `free`,
1 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `3-Search:8-DesignHeuristicsInline:tdd`
- `4-Refactoring:8-DesignHeuristicsInline:tdd`
- `4-Refactoring:4-Refactoring+8-DesignHeuristicsInline:tdd`
- `4-Refactoring:4-Refactoring+8-DesignHeuristicsInline:test-after`
- `4-Refactoring:4-Refactoring+8-DesignHeuristicsInline:free`

Exercises:
- `exercises/2023-2c-parcial2`
- `exercises/2025-2c-recuperatorio`

## Results

One run per cell. Ten completed runs; the first free-technique run on Aterrizar was cut by an
API outage ("No response from API" after 18 minutes of retries) and was rerun; the cut run is
listed but excluded. Between 15:53 and 17:45 the API answered with 529 and rate-limit retries,
which stretched the two Aterrizar TDD runs of cells A and B to 44 and 47 minutes; their token
counts are unaffected, their times are. [table.md](table.md) has every measure.

Cells:
- A: scenario 3, heuristics, TDD (no refactoring tools)
- B: scenario 4, heuristics, TDD (tools available, not mentioned)
- C: scenario 4, heuristics + refactor-with-tools, TDD
- D: scenario 4, heuristics + refactor-with-tools, test-after
- E: scenario 4, heuristics + refactor-with-tools, free

Cost and process:

| Exercise | Cell | Cost | Input-side tokens | Output | API requests | Tool calls | Test runs | Refactoring tool calls / failed | Hand-made refactorings | Seconds |
|---|---|---|---|---|---|---|---|---|---|---|
| MineField | A | $7.50 | 9,430 k | 69 k | 158 | 176 | 73 | 0 / 0 | 14 | 1023 |
| MineField | B | $7.19 | 7,782 k | 80 k | 105 | 174 | 49 | 0 / 0 | 27 | 1047 |
| MineField | C | $11.44 | 14,970 k | 103 k | 156 | 237 | 81 | 36 / 3 | 14 | 1415 |
| MineField | D | $2.26 | 579 k | 53 k | 11 | 29 | 1 | 0 / 0 | 3 | 571 |
| MineField | E | $2.69 | 780 k | 62 k | 13 | 26 | 1 | 0 / 0 | 3 | 681 |
| Aterrizar.com | A | $5.95 | 6,003 k | 72 k | 82 | 123 | 33 | 0 / 0 | 21 | 2668 |
| Aterrizar.com | B | $7.51 | 8,857 k | 75 k | 114 | 165 | 49 | 7 / 0 | 18 | 2800 |
| Aterrizar.com | C | $6.15 | 6,826 k | 69 k | 87 | 123 | 32 | 11 / 0 | 8 | 908 |
| Aterrizar.com | D | $2.19 | 875 k | 45 k | 17 | 49 | 2 | 0 / 0 | 0 | 486 |
| Aterrizar.com | E | $2.81 | 958 k | 61 k | 17 | 50 | 4 | 1 / 0 | 1 | 1049 |
| Aterrizar.com | E (**failed**, API outage, excluded) | $2.13 | 604 k | 47 k | 14 | 49 | 1 | 0 / 0 | 0 | 2174 |

What was produced (Aterrizar's 5 acceptance tests are the given ones; own tests are the agent's):

| Exercise | Cell | Given tests | Own tests | Classes / methods | Ifs | Mentor findings | Findings per method | Test smells | Coverage % | Methods redefined |
|---|---|---|---|---|---|---|---|---|---|---|
| MineField | A | - | 39/39 | 9 / 77 | 9 | 58 | 0.75 | 11 | 99.6 | 20 |
| MineField | B | - | 43/43 | 11 / 62 | 8 | 48 | 0.77 | 3 | 99.1 | 34 |
| MineField | C | - | 40/40 | 10 / 64 | 8 | 43 | 0.67 | 15 | 99.5 | 17 |
| MineField | D | - | 54/54 | 12 / 81 | 11 | 102 | 1.26 | 5 | 97.4 | 0 |
| MineField | E | - | 60/60 | 14 / 80 | 10 | 69 | 0.86 | 0 | 95.8 | 0 |
| Aterrizar.com | A | 5/5 | 14/14 | 10 / 66 | 0 | 37 | 0.56 | 3 | 98.1 | 19 |
| Aterrizar.com | B | 5/5 | 19/19 | 9 / 59 | 0 | 39 | 0.66 | 3 | 100.0 | 11 |
| Aterrizar.com | C | 5/5 | 14/14 | 9 / 63 | 0 | 41 | 0.65 | 5 | 96.6 | 12 |
| Aterrizar.com | D | 5/5 | 23/23 | 11 / 69 | 1 | 41 | 0.59 | 2 | 98.2 | 2 |
| Aterrizar.com | E | 5/5 | 19/19 | 11 / 64 | 1 | 41 | 0.64 | 10 | 99.9 | 20 |
| Aterrizar.com | E (**failed**, API outage, excluded) | 5/5 | 44/44 | 10 / 62 | 2 | 40 | 0.65 | 2 | 98.2 | 0 |

## Conclusions

**H1, fewer tokens with the refactoring tools: not supported.** Under TDD with the heuristics,
the cell with the tools and the instruction to use them (C) cost $11.44 against $7.50 without
the tools (A) on MineField, 1.6 times the input-side tokens; on Aterrizar C cost $6.15 against
$5.95, with 1.1 times the tokens. Merely having the tools (B) changed nothing on MineField, where
the agent never called one and did 27 refactorings by hand, and cost more on Aterrizar (7
refactoring calls, $7.51). The tools were used well when asked: 36 calls on MineField with 3
failures, including insert-superclass and push-up sequences that built a `SingleUseElement`
hierarchy; but every one of those calls is an API request that re-reads the context, and the
54 KB tool schema of scenario 4 rides on every request. The refactorings replaced hand edits
(14 hand-made in C against 27 in B) without reducing the number of calls.

**H2, better design with TDD: not supported by these measures, and TDD costs 3 to 5 times more.**
On MineField TDD (C) left 8 ifs against 11 (test-after) and 10 (free), had the fewest mentor
findings per method (0.67 against 1.26 and 0.86) and the highest coverage, but wrote 15 test
smells against 5 and 0 and 36 percent fewer own tests than test-after. On Aterrizar the three
cells are indistinguishable: 0, 1 and 1 ifs, 0.65, 0.59 and 0.64 findings per method, all
given tests passing. Test-after cost $2.26 and $2.19 and free $2.69 and $2.81, against $11.44
and $6.15 for TDD. The extra cost of TDD is the technique text taken literally: one failing
test at a time means one or two test-run calls per test, 81 and 32 test runs in C against 1 or
2 in D and E, and each run is a request.

Caveats: one run per cell, two exercises, no given tests on MineField (correctness there is
the agent's own tests). The mentor's "keyword message send format" and "no extra parenthesis"
findings are layout habits and dominate some counts; findings per method excluding them would
be a fairer design measure. Scenario 4 versus 3 also changes the tool schema size, which is
part of what H1 asks but confounds "tools used" with "tools offered". The heuristics were
inlined in every cell, so no cell is a no-guidance control.

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
