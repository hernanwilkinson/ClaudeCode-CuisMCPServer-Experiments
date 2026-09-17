# 012-ToolsVersusGuidance

## Hypothesis

Separate the tools from the guidance: in every earlier comparison the model-structure cell carried a clause as well as the tools (evaluate as a last resort, or batch first), so the extra tokens could come from either. Four cells on the plain Cuis base, same exercises as 003 and 008: 1-Evaluate+TestRunning with no guidance (control); 2-ModelStructure+Package with no guidance (the tools offered, nothing said about them); 2-ModelStructure+Package with 2-EvaluateAsLastResource; 2-ModelStructure+Package with 9-BatchFirst. The scenario 2 image carries smalltalk_batch in every cell. Ada's Coffee (refactoring, 14 given tests) and BAJE card readers (greenfield, own tests), 3 runs per cell, Opus 5 high, free, same day. Expected: if the tools alone cost what 003 and 011 measured, the no-guidance tools cell is as expensive as the guided ones; if the clause drives the calls, it sits with the control.

## Design

Started 2026-09-17. Model `claude-opus-5`, effort high, technique `free`,
3 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `1-Evaluate+TestRunning:1-Empty:free`
- `2-ModelStructure+Package:1-Empty:free`
- `2-ModelStructure+Package:2-EvaluateAsLastResource:free`
- `2-ModelStructure+Package:9-BatchFirst:free`

Exercises:
- `exercises/2019-2c-parcial1`
- `exercises/2025-2c-parcial2`

## Results

Twenty-four runs between 01:17 and 01:47 on 2026-09-17, all completed; every Ada's Coffee run
passes its 14 given tests and every BAJE run passes its own tests (21 to 31 per run). Medians of
the three runs per cell; [table.md](table.md) has every measure. `Calls` is what the agent sent
(a batch counts once), `operations` what the image did (each batch step counts).

| Exercise | Cell | Input-side | Uncached input | Cache read | Output | Thinking | Requests | Input per request | Calls | Operations | Batches | Steps per batch | Evaluate calls | Define calls / methods | Hand-made refactorings | Tool errors | Seconds | Ifs | Mentor findings | Coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Ada's Coffee | 1: evaluate + tests, no guidance | 80 k | 17 k | 63 k | 8 k | 2 k | 6 | 13 k | 8 | 8 | 0 | - | 5 | 0 / 0 | 0 | 0 | 69 | 0 | 21 | 88.6 |
| Ada's Coffee | 2: tools, no guidance | 120 k | 25 k | 95 k | 11 k | 2 k | 6 | 20 k | 5 | 25 | 4 | 5.7 | 2 | 2 / 54 | 5 | 0 | 85 | 0 | 22 | 85.9 |
| Ada's Coffee | 2: tools, evaluate last | 133 k | 24 k | 107 k | 11 k | 3 k | 7 | 19 k | 6 | 26 | 5 | 5.0 | 0 | 2 / 48 | 3 | 2 | 84 | 0 | 25 | 88.9 |
| Ada's Coffee | 2: tools, batch first | 87 k | 23 k | 64 k | 10 k | 3 k | 5 | 17 k | 4 | 21 | 2 | 9.5 | 0 | 1 / 48 | 4 | 0 | 79 | 0 | 26 | 85.2 |
| BAJE | 1: evaluate + tests, no guidance | 259 k | 26 k | 233 k | 19 k | 4 k | 16 | 15 k | 16 | 16 | 0 | - | 14 | 0 / 0 | 0 | 2 | 160 | 8 | 57 | 92.4 |
| BAJE | 2: tools, no guidance | 198 k | 31 k | 167 k | 22 k | 6 k | 11 | 20 k | 10 | 29 | 5 | 5.2 | 7 | 2 / 97 | 0 | 3 | 183 | 8 | 61 | 86.2 |
| BAJE | 2: tools, evaluate last | 226 k | 33 k | 194 k | 22 k | 6 k | 10 | 23 k | 9 | 28 | 5 | 4.9 | 2 | 3 / 95 | 0 | 0 | 169 | 8 | 66 | 91.3 |
| BAJE | 2: tools, batch first | 183 k | 32 k | 152 k | 22 k | 5 k | 10 | 18 k | 9 | 25 | 3 | 6.3 | 6 | 2 / 87 | 0 | 2 | 180 | 8 | 60 | 94.6 |

Each tools cell against the evaluate-only control (medians):

| Exercise | Cell | Input-side | Uncached input | Output | Requests | Calls |
|---|---|---|---|---|---|---|
| Ada's Coffee | 2: tools, no guidance | +49% | +46% | +32% | +0% | -38% |
| Ada's Coffee | 2: tools, evaluate last | +66% | +45% | +27% | +17% | -25% |
| Ada's Coffee | 2: tools, batch first | +9% | +39% | +21% | -17% | -50% |
| BAJE | 2: tools, no guidance | -24% | +22% | +18% | -31% | -38% |
| BAJE | 2: tools, evaluate last | -13% | +27% | +15% | -38% | -44% |
| BAJE | 2: tools, batch first | -30% | +23% | +17% | -38% | -44% |

Every run:

| Exercise | Cell | Tests | Input-side | Uncached | Output | Requests | Calls | Batches | Tool errors | Seconds | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Ada's Coffee | 1: evaluate | 14/14 | 80 k | 17 k | 8 k | 6 | 7 | 0 | 0 | 69 | `20260917-011723-20580` |
| Ada's Coffee | 1: evaluate | 14/14 | 80 k | 17 k | 8 k | 6 | 8 | 0 | 0 | 67 | `20260917-012623-32475` |
| Ada's Coffee | 1: evaluate | 14/14 | 118 k | 17 k | 8 k | 8 | 9 | 0 | 1 | 73 | `20260917-013623-36258` |
| Ada's Coffee | 2: no guidance | 14/14 | 144 k | 25 k | 11 k | 7 | 6 | 5 | 0 | 85 | `20260917-011723-20579` |
| Ada's Coffee | 2: no guidance | 14/14 | 120 k | 25 k | 11 k | 6 | 5 | 3 | 0 | 92 | `20260917-012714-32642` |
| Ada's Coffee | 2: no guidance | 14/14 | 111 k | 24 k | 10 k | 6 | 5 | 4 | 0 | 81 | `20260917-013711-36427` |
| Ada's Coffee | 2: evaluate last | 14/14 | 67 k | 23 k | 10 k | 4 | 4 | 1 | 0 | 76 | `20260917-011850-21170` |
| Ada's Coffee | 2: evaluate last | 14/14 | 133 k | 26 k | 11 k | 7 | 6 | 5 | 2 | 84 | `20260917-012747-33051` |
| Ada's Coffee | 2: evaluate last | 14/14 | 154 k | 24 k | 11 k | 8 | 7 | 6 | 2 | 85 | `20260917-013752-36594` |
| Ada's Coffee | 2: batch first | 14/14 | 87 k | 23 k | 10 k | 5 | 4 | 3 | 0 | 77 | `20260917-011904-21387` |
| Ada's Coffee | 2: batch first | 14/14 | 90 k | 25 k | 11 k | 5 | 4 | 2 | 0 | 87 | `20260917-012902-35221` |
| Ada's Coffee | 2: batch first | 14/14 | 67 k | 23 k | 10 k | 4 | 3 | 2 | 0 | 79 | `20260917-013848-36799` |
| BAJE | 1: evaluate | own 25/25 | 259 k | 26 k | 19 k | 16 | 16 | 0 | 2 | 160 | `20260917-012022-25000` |
| BAJE | 1: evaluate | own 28/28 | 267 k | 26 k | 20 k | 18 | 18 | 0 | 6 | 171 | `20260917-012928-35381` |
| BAJE | 1: evaluate | own 29/29 | 232 k | 25 k | 19 k | 15 | 15 | 0 | 2 | 156 | `20260917-013933-36973` |
| BAJE | 2: no guidance | own 21/21 | 198 k | 31 k | 22 k | 10 | 9 | 5 | 1 | 180 | `20260917-012037-25160` |
| BAJE | 2: no guidance | own 27/27 | 183 k | 31 k | 22 k | 11 | 10 | 2 | 3 | 183 | `20260917-013046-35590` |
| BAJE | 2: no guidance | own 25/25 | 272 k | 34 k | 25 k | 13 | 12 | 5 | 7 | 197 | `20260917-014023-37149` |
| BAJE | 2: evaluate last | own 24/24 | 226 k | 32 k | 21 k | 10 | 9 | 5 | 0 | 164 | `20260917-012321-31906` |
| BAJE | 2: evaluate last | own 31/31 | 343 k | 47 k | 27 k | 12 | 11 | 7 | 6 | 211 | `20260917-013235-35812` |
| BAJE | 2: evaluate last | own 23/23 | 162 k | 33 k | 22 k | 8 | 8 | 3 | 0 | 169 | `20260917-014226-37363` |
| BAJE | 2: batch first | own 26/26 | 171 k | 33 k | 23 k | 8 | 7 | 4 | 1 | 182 | `20260917-012355-32228` |
| BAJE | 2: batch first | own 23/23 | 183 k | 31 k | 22 k | 10 | 9 | 3 | 3 | 169 | `20260917-013405-36019` |
| BAJE | 2: batch first | own 24/24 | 184 k | 32 k | 22 k | 10 | 9 | 3 | 2 | 180 | `20260917-014357-37574` |

## Conclusion

**The clause is not what costs; the tools cost by themselves, and only on the refactoring
exercise. On the greenfield exercise the tools, with or without a clause, used fewer input-side
tokens than evaluate alone.** With nothing said about them the model-structure tools took +49
percent input-side on Ada's Coffee and -24 percent on BAJE; the evaluate-last clause made both
a little worse (+66 and -13 percent) and the batch-first clause made both better (+9 and -30
percent). Output and uncached input went up in every tools cell on both exercises (+15 to +32
percent output, +22 to +46 percent uncached), which is the JSON around the sources, the
`define_class` calls and the larger structured answers.

Two things the earlier experiments did not show:

- **The agent batches without being told.** In every scenario 2 run of every cell, 2 to 7
  `smalltalk_batch` calls, 5 to 6 steps each; the batch-first clause only raises the steps per
  batch (9.5 on Ada's Coffee) and lowers the count. Told nothing, the agent still made 38
  percent fewer calls than the evaluate agent. The batch tool, offered in the image since
  commit 9e990b0, is what makes the 002 and 003 gaps (+70 to +287 percent) shrink to this.
- **The sign depends on the task.** Ada's Coffee is a small refactoring the evaluate agent
  finishes in 6 requests; there the schema (20 KB against 3 KB per request) and the answers
  dominate, and the tools cost 9 to 66 percent more. BAJE is greenfield: the evaluate agent
  makes 15 to 18 requests writing and running tests, the tools agent 8 to 13 with batches of
  definitions and test runs, and the requests saved outweigh the heavier context, 13 to 30
  percent fewer input-side tokens for 15 to 27 percent more output.

Where evaluate went: the no-guidance tools cell still used it 2 (Ada's Coffee) and 7 (BAJE)
times per run, the evaluate-last cell 0 and 2, the batch-first cell 0 and 6. The evaluate-last
clause does what it says, and it is the most expensive of the three ways to have the tools.

Quality was the same across the four cells: 0 ifs on Ada's Coffee and 8 on BAJE in every
cell, mentor findings within 5 and 9, coverage within 4 and 8 points. The tools cells did
their Ada's Coffee refactorings by hand (3 to 5 per run with define and delete; scenario 2 has
no refactoring tools).

Against 010's spread (CV 18 percent input-side, 7 percent output): the Ada's Coffee no-guidance
and evaluate-last deltas (+49, +66 percent) and the BAJE batch-first delta (-30 percent) are
outside it; the Ada's Coffee batch-first (+9) and BAJE evaluate-last (-13) deltas are inside
it. The output deltas (+15 to +32 percent) are all outside the 7 percent band and all in the
same direction.

Caveats: three runs per cell; the batch tool is in the image in every scenario 2 cell, so "no
guidance" means "tools and batch offered, nothing said", not "granular tools alone"; BAJE has
no given tests, so its correctness is the agent's own tests; tool errors in the tools cells are
mostly batch steps named with the `mcp__Cuis__` prefix, which the server refuses.

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
