# 014-LiveTypingFiveRuns

## Hypothesis

Experiment 005 with five same-day runs per cell: implementing and refactoring with LiveTyping information is cheaper than without it. Four cells on the University base, heuristics inlined everywhere, warm-up of the given tests before every session: 1u = 1-Evaluate+TestRunning-University with configuration 8 (evaluate and the test tools, no LiveTyping); 5 = 5-LiveTyping with 5+8 (every tool group, the LiveTyping tools and decorators, told to use the types); 4u = 4-Refactoring-University with 2+8 (every tool group, no LiveTyping, tools over evaluate); 6 = 6-LiveTypingRefactoring with 2+5+6+8 (LiveTyping, actual-scope refactorings, tools over evaluate). CustomerImporter (2022-1c-recuperatorio-parcial1, refactoring), Seabed crawler (2019-2c-parcial2-masked, implementing on a hierarchy), Sims Hotels (2024-1c-parcial1, refactoring). 5 runs per cell, Opus 5 high, free, two in parallel, interleaved, one day. Every scenario except 1u carries smalltalk_batch. Read against 010's spread: five runs per cell resolve about 25 percent on the input side and 10 percent on output.

## Design

Started 2026-09-17. Model `claude-opus-5`, effort high, technique `free`,
5 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

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

Sixty runs between 02:27 and 04:32 on 2026-09-17, all completed and all passing the given tests
(on the Seabed crawler the agents add their tests to the given class, so its count includes them;
the 16 given ones pass in every run). Medians of the five runs per cell; [table.md](table.md)
has every measure. Cells: 1u = evaluate + tests, no LiveTyping; 5 = all tools + LiveTyping,
told to use the types; 4u = all tools, no LiveTyping, tools over evaluate; 6 = LiveTyping +
actual scope, tools over evaluate. LT = LiveTyping tool calls; actual = actual-scope
refactorings; hand-made = refactorings done with define and delete calls.

| Exercise | Cell | Input-side | Uncached input | Cache read | Output | Thinking | Requests | Input per request | Calls | Operations | Batches | LT calls | Actual scope | Refactoring calls | Hand-made | Exploration before first change | Tool errors | Seconds | Ifs | Mentor findings | Coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| CustomerImporter | 1u | 242 k | 37 k | 206 k | 14 k | 5 k | 8 | 30 k | 10 | 10 | 0 | 0 | 0 | 0 | 0 | 2 | 1 | 125 | 8 | 36 | 80.8 |
| CustomerImporter | 5 | 492 k | 45 k | 447 k | 16 k | 8 k | 10 | 48 k | 10 | 28 | 4 | 0 | 0 | 0 | 6 | 12 | 3 | 143 | 8 | 35 | 80.6 |
| CustomerImporter | 4u | 403 k | 43 k | 360 k | 15 k | 6 k | 9 | 45 k | 10 | 23 | 3 | 0 | 0 | 0 | 12 | 8 | 0 | 132 | 8 | 36 | 80.6 |
| CustomerImporter | 6 | 590 k | 47 k | 542 k | 17 k | 7 k | 11 | 54 k | 14 | 28 | 2 | 0 | 0 | 0 | 12 | 12 | 4 | 152 | 8 | 37 | 80.9 |
| Seabed crawler | 1u | 394 k | 41 k | 349 k | 27 k | 12 k | 13 | 30 k | 14 | 14 | 0 | 0 | 0 | 0 | 0 | 3 | 1 | 247 | 0 | 69 | 95.5 |
| Seabed crawler | 5 | 597 k | 64 k | 538 k | 40 k | 18 k | 11 | 56 k | 11 | 52 | 6 | 0 | 0 | 0 | 10 | 9 | 4 | 330 | 0 | 36 | 95.1 |
| Seabed crawler | 4u | 405 k | 54 k | 352 k | 32 k | 15 k | 8 | 51 k | 7 | 42 | 5 | 0 | 0 | 0 | 7 | 7 | 0 | 283 | 0 | 37 | 94.9 |
| Seabed crawler | 6 | 676 k | 60 k | 614 k | 36 k | 14 k | 11 | 57 k | 13 | 45 | 4 | 0 | 0 | 1 | 10 | 11 | 5 | 312 | 0 | 46 | 94.4 |
| Sims Hotels | 1u | 370 k | 46 k | 324 k | 23 k | 8 k | 10 | 34 k | 11 | 11 | 0 | 0 | 0 | 0 | 0 | 3 | 0 | 200 | 3 | 48 | 91.0 |
| Sims Hotels | 5 | 728 k | 56 k | 677 k | 24 k | 9 k | 13 | 58 k | 14 | 36 | 5 | 0 | 0 | 0 | 11 | 9 | 3 | 208 | 3 | 52 | 88.2 |
| Sims Hotels | 4u | 586 k | 52 k | 536 k | 22 k | 8 k | 11 | 53 k | 12 | 29 | 6 | 0 | 0 | 0 | 11 | 6 | 0 | 180 | 3 | 54 | 89.3 |
| Sims Hotels | 6 | 731 k | 55 k | 676 k | 22 k | 8 k | 12 | 58 k | 13 | 30 | 5 | 0 | 0 | 1 | 11 | 8 | 0 | 210 | 3 | 52 | 88.4 |

LiveTyping cell against its control, and the tools against evaluate (medians):

| Exercise | Comparison | Input-side | Uncached input | Output | Requests | Calls |
|---|---|---|---|---|---|---|
| CustomerImporter | 5 vs 1u | +103% | +22% | +17% | +25% | +0% |
| CustomerImporter | 6 vs 4u | +46% | +10% | +17% | +22% | +40% |
| CustomerImporter | 4u vs 1u | +66% | +16% | +5% | +12% | +0% |
| Seabed crawler | 5 vs 1u | +52% | +57% | +48% | -15% | -21% |
| Seabed crawler | 6 vs 4u | +67% | +13% | +13% | +38% | +86% |
| Seabed crawler | 4u vs 1u | +3% | +32% | +19% | -38% | -50% |
| Sims Hotels | 5 vs 1u | +97% | +22% | +2% | +30% | +27% |
| Sims Hotels | 6 vs 4u | +25% | +5% | +1% | +9% | +8% |
| Sims Hotels | 4u vs 1u | +58% | +14% | -5% | +10% | +9% |

Every run:

| Exercise | Cell | Given tests | Input-side | Uncached | Output | Requests | Calls | Batches | LT | Refactoring calls | Hand-made | Tool errors | Seconds | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| CustomerImporter | 1u | 29/29 | 329 k | 40 k | 17 k | 10 | 11 | 0 | 0 | 0 | 0 | 1 | 146 | `20260917-022746-43827` |
| CustomerImporter | 1u | 29/29 | 277 k | 37 k | 14 k | 9 | 10 | 0 | 0 | 0 | 0 | 2 | 124 | `20260917-024935-14651` |
| CustomerImporter | 1u | 29/29 | 174 k | 37 k | 14 k | 6 | 7 | 0 | 0 | 0 | 0 | 0 | 128 | `20260917-031717-17213` |
| CustomerImporter | 1u | 29/29 | 242 k | 36 k | 14 k | 8 | 9 | 0 | 0 | 0 | 0 | 0 | 125 | `20260917-034046-19637` |
| CustomerImporter | 1u | 29/29 | 198 k | 36 k | 14 k | 7 | 10 | 0 | 0 | 0 | 0 | 1 | 119 | `20260917-040442-22085` |
| CustomerImporter | 5 | 29/29 | 432 k | 65 k | 16 k | 9 | 9 | 4 | 0 | 0 | 6 | 3 | 138 | `20260917-022746-43828` |
| CustomerImporter | 5 | 29/29 | 523 k | 43 k | 16 k | 11 | 13 | 4 | 0 | 0 | 6 | 6 | 139 | `20260917-025217-14876` |
| CustomerImporter | 5 | 29/29 | 505 k | 47 k | 18 k | 10 | 10 | 4 | 0 | 0 | 12 | 5 | 162 | `20260917-031920-17436` |
| CustomerImporter | 5 | 29/29 | 492 k | 45 k | 17 k | 10 | 11 | 4 | 0 | 0 | 5 | 3 | 154 | `20260917-034330-19855` |
| CustomerImporter | 5 | 29/29 | 435 k | 44 k | 15 k | 9 | 9 | 4 | 0 | 0 | 12 | 0 | 143 | `20260917-040719-22307` |
| CustomerImporter | 4u | 29/29 | 519 k | 44 k | 15 k | 11 | 10 | 5 | 0 | 0 | 12 | 0 | 129 | `20260917-023039-86182` |
| CustomerImporter | 4u | 29/29 | 460 k | 43 k | 15 k | 10 | 10 | 3 | 0 | 0 | 12 | 0 | 137 | `20260917-025332-15075` |
| CustomerImporter | 4u | 29/29 | 355 k | 42 k | 14 k | 8 | 7 | 4 | 0 | 1 | 12 | 0 | 131 | `20260917-032002-17604` |
| CustomerImporter | 4u | 29/29 | 403 k | 43 k | 16 k | 9 | 10 | 3 | 0 | 0 | 12 | 0 | 138 | `20260917-034432-20033` |
| CustomerImporter | 4u | 29/29 | 397 k | 42 k | 15 k | 9 | 10 | 2 | 0 | 0 | 11 | 0 | 132 | `20260917-040858-22504` |
| CustomerImporter | 6 | 29/29 | 446 k | 68 k | 16 k | 9 | 10 | 4 | 0 | 0 | 12 | 3 | 145 | `20260917-023045-89655` |
| CustomerImporter | 6 | 29/29 | 590 k | 48 k | 17 k | 11 | 14 | 4 | 0 | 0 | 12 | 6 | 152 | `20260917-025513-15270` |
| CustomerImporter | 6 | 29/29 | 789 k | 47 k | 18 k | 14 | 24 | 2 | 1 | 0 | 12 | 9 | 159 | `20260917-032240-17904` |
| CustomerImporter | 6 | 29/29 | 706 k | 46 k | 17 k | 13 | 25 | 1 | 0 | 1 | 12 | 4 | 161 | `20260917-034642-20242` |
| CustomerImporter | 6 | 29/29 | 448 k | 44 k | 16 k | 9 | 13 | 2 | 0 | 1 | 12 | 0 | 148 | `20260917-041020-22696` |
| Seabed crawler | 1u | 47/47 | 417 k | 41 k | 26 k | 14 | 16 | 0 | 0 | 0 | 0 | 1 | 236 | `20260917-023326-13051` |
| Seabed crawler | 1u | 47/47 | 394 k | 45 k | 33 k | 12 | 14 | 0 | 0 | 0 | 0 | 1 | 297 | `20260917-025628-15466` |
| Seabed crawler | 1u | 47/47 | 335 k | 38 k | 24 k | 13 | 15 | 0 | 0 | 0 | 0 | 1 | 207 | `20260917-032246-17988` |
| Seabed crawler | 1u | 51/51 | 492 k | 52 k | 37 k | 13 | 14 | 0 | 0 | 0 | 0 | 0 | 320 | `20260917-034728-20423` |
| Seabed crawler | 1u | 48/48 | 237 k | 39 k | 27 k | 9 | 8 | 0 | 0 | 0 | 0 | 0 | 247 | `20260917-041149-22890` |
| Seabed crawler | 5 | 49/49 | 699 k | 67 k | 41 k | 12 | 11 | 6 | 0 | 1 | 11 | 5 | 343 | `20260917-023346-13212` |
| Seabed crawler | 5 | 51/51 | 597 k | 64 k | 40 k | 10 | 9 | 6 | 0 | 0 | 9 | 1 | 330 | `20260917-025824-15690` |
| Seabed crawler | 5 | 55/55 | 614 k | 64 k | 40 k | 11 | 12 | 6 | 0 | 1 | 10 | 4 | 351 | `20260917-032558-18211` |
| Seabed crawler | 5 | 46/46 | 540 k | 61 k | 38 k | 10 | 11 | 6 | 0 | 0 | 10 | 3 | 322 | `20260917-035002-20637` |
| Seabed crawler | 5 | 46/46 | 597 k | 59 k | 36 k | 11 | 11 | 5 | 0 | 0 | 9 | 4 | 290 | `20260917-041326-23085` |
| Seabed crawler | 4u | 44/44 | 405 k | 54 k | 31 k | 8 | 7 | 5 | 0 | 0 | 7 | 0 | 283 | `20260917-023753-13443` |
| Seabed crawler | 4u | 51/51 | 611 k | 70 k | 45 k | 10 | 9 | 5 | 0 | 1 | 15 | 0 | 366 | `20260917-030158-15917` |
| Seabed crawler | 4u | 43/43 | 492 k | 61 k | 39 k | 9 | 8 | 4 | 0 | 0 | 11 | 0 | 323 | `20260917-032643-18404` |
| Seabed crawler | 4u | 50/50 | 381 k | 52 k | 32 k | 8 | 7 | 5 | 0 | 0 | 7 | 0 | 267 | `20260917-035320-20873` |
| Seabed crawler | 4u | 47/47 | 392 k | 53 k | 32 k | 8 | 7 | 4 | 0 | 0 | 6 | 0 | 268 | `20260917-041627-23306` |
| Seabed crawler | 6 | 47/47 | 594 k | 61 k | 36 k | 10 | 13 | 3 | 0 | 1 | 11 | 1 | 312 | `20260917-024002-13645` |
| Seabed crawler | 6 | 48/48 | 676 k | 63 k | 40 k | 11 | 12 | 4 | 0 | 1 | 10 | 25 | 329 | `20260917-030427-16129` |
| Seabed crawler | 6 | 41/41 | 520 k | 53 k | 32 k | 10 | 10 | 4 | 0 | 0 | 13 | 4 | 261 | `20260917-033221-18702` |
| Seabed crawler | 6 | 47/47 | 678 k | 57 k | 35 k | 12 | 13 | 6 | 0 | 1 | 9 | 21 | 294 | `20260917-035556-21097` |
| Seabed crawler | 6 | 51/51 | 686 k | 60 k | 38 k | 12 | 17 | 2 | 0 | 1 | 9 | 5 | 329 | `20260917-041849-23520` |
| Sims Hotels | 1u | 39/39 | 207 k | 39 k | 17 k | 7 | 8 | 0 | 0 | 0 | 0 | 0 | 143 | `20260917-024308-13878` |
| Sims Hotels | 1u | 41/41 | 370 k | 46 k | 24 k | 10 | 10 | 0 | 0 | 0 | 0 | 0 | 203 | `20260917-030836-16380` |
| Sims Hotels | 1u | 42/42 | 375 k | 46 k | 25 k | 11 | 14 | 0 | 0 | 0 | 0 | 0 | 213 | `20260917-033238-18850` |
| Sims Hotels | 1u | 39/39 | 283 k | 41 k | 19 k | 9 | 11 | 0 | 0 | 0 | 0 | 2 | 155 | `20260917-035819-21306` |
| Sims Hotels | 1u | 41/41 | 485 k | 48 k | 23 k | 13 | 16 | 0 | 0 | 0 | 0 | 0 | 200 | `20260917-042127-23742` |
| Sims Hotels | 5 | 39/39 | 748 k | 56 k | 24 k | 13 | 14 | 8 | 0 | 0 | 11 | 4 | 198 | `20260917-024547-14099` |
| Sims Hotels | 5 | 39/39 | 710 k | 56 k | 24 k | 12 | 15 | 5 | 0 | 2 | 12 | 0 | 216 | `20260917-031028-16596` |
| Sims Hotels | 5 | 39/39 | 826 k | 56 k | 25 k | 14 | 14 | 8 | 0 | 0 | 7 | 4 | 212 | `20260917-033645-19089` |
| Sims Hotels | 5 | 39/39 | 728 k | 52 k | 20 k | 13 | 14 | 5 | 0 | 2 | 9 | 3 | 170 | `20260917-040122-21599` |
| Sims Hotels | 5 | 39/39 | 486 k | 51 k | 21 k | 9 | 9 | 4 | 0 | 0 | 18 | 0 | 208 | `20260917-042450-23998` |
| Sims Hotels | 4u | 39/39 | 561 k | 51 k | 21 k | 11 | 14 | 4 | 0 | 0 | 11 | 0 | 171 | `20260917-024602-14241` |
| Sims Hotels | 4u | 40/40 | 617 k | 59 k | 27 k | 11 | 12 | 5 | 0 | 0 | 4 | 0 | 251 | `20260917-031233-16800` |
| Sims Hotels | 4u | 39/39 | 633 k | 52 k | 22 k | 12 | 13 | 6 | 0 | 0 | 16 | 0 | 180 | `20260917-033708-19251` |
| Sims Hotels | 4u | 40/40 | 586 k | 50 k | 20 k | 11 | 11 | 8 | 0 | 2 | 16 | 0 | 160 | `20260917-040124-21653` |
| Sims Hotels | 4u | 39/39 | 413 k | 52 k | 22 k | 8 | 7 | 6 | 0 | 0 | 5 | 0 | 216 | `20260917-042515-24164` |
| Sims Hotels | 6 | 39/39 | 758 k | 55 k | 22 k | 13 | 13 | 8 | 0 | 0 | 13 | 3 | 210 | `20260917-024928-14557` |
| Sims Hotels | 6 | 39/39 | 731 k | 55 k | 25 k | 12 | 12 | 5 | 0 | 2 | 11 | 0 | 248 | `20260917-031438-17007` |
| Sims Hotels | 6 | 39/39 | 746 k | 55 k | 22 k | 13 | 13 | 9 | 0 | 1 | 10 | 2 | 194 | `20260917-034043-19564` |
| Sims Hotels | 6 | 39/39 | 713 k | 53 k | 22 k | 12 | 12 | 5 | 0 | 2 | 12 | 0 | 225 | `20260917-040438-22001` |
| Sims Hotels | 6 | 39/39 | 691 k | 51 k | 20 k | 12 | 14 | 5 | 0 | 1 | 8 | 0 | 172 | `20260917-042853-24429` |

## Conclusion

**Rejected, with five same-day runs per cell, in all six comparisons.** LiveTyping against the
evaluate-only control costs 1.5 to 2.0 times the input-side tokens (+103, +52, +97 percent) and
against the same tools without LiveTyping 1.3 to 1.7 times (+46, +67, +25 percent), every delta
outside the 25 percent five runs resolve. Output tokens are up 2 to 48 percent, the Seabed
crawler carrying the large one. Correctness and design are the same in every cell: all given
tests pass in all 60 runs, the ifs are identical per exercise (8, 0, 3), mentor findings and
coverage within the spread, except that on the Seabed crawler every tools cell leaves fewer
findings than evaluate (36 to 46 against 69), the one effect 005 also saw.

**The LiveTyping tools were not called.** Across the 30 LiveTyping runs the type tools were
asked for three times in total (one `actual_implementors_of` that ran, two named with the client
prefix and refused); no `types_of_*` call, no `return_types`, no actual-scope refactoring except
one attempt per run in a few cell-6 runs, which the analysis counts as 0 to 1. The configuration
says to use the type information as much as possible and the decorators put the types into every
source the agent read; the agent read the same amount before its first change as its control
(12 vs 8, 9 vs 7, 9 vs 6 exploration calls) and refactored by hand (6 to 18 hand-made
refactorings per run, 0 to 2 refactoring tool calls). So the extra tokens buy the 62 to 68 KB
schema on every request (input per request 48 to 58 k against 30 to 34 k) and, in cell 6, more
calls (+40 and +86 percent on two exercises), with no type information consumed.

**A confound to record**: only in the LiveTyping cells did the agent name batch steps with the
client-side prefix `mcp__Cuis__...`, which the server refuses: 42 refused steps in the 15 runs
of cell 5 and 81 in cell 6 (up to 25 in one run), none in cells 1u and 4u. Each refusal is a
retried request. Why the LiveTyping schema triggers it is not known (the larger tool list, or
the configuration text); it accounts for part of cell 6's extra requests and should be fixed
server-side by accepting the prefixed names before this comparison is repeated.

The tools without LiveTyping (4u vs 1u) confirm 012 and 013: +66 and +58 percent input-side on
the two refactoring exercises, +3 percent on the implementing one, with fewer requests on the
latter; output within 5 percent except the Seabed crawler (+19).

Caveats: three exercises, all with the heuristics inlined (no unguided cell); the tools cells
carry the batch tool and used it (2 to 9 batches per run); the LiveTyping decorators are served
in every read of cells 5 and 6, so "not called" means the explicit tools, not the types the
agent saw in the sources it read; the prefixed-step refusals are counted as tool errors and
inflate cells 5 and 6.

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.

## Conclusion

(pending)

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
