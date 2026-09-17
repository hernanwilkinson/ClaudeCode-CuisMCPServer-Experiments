# 013-BatchToolFiveRuns

## Hypothesis

Experiment 008 with five same-day runs per cell: with the batch tool (smalltalk_batch) the granular tools cost no more than evaluate alone. Three cells on the plain Cuis base: 1-Evaluate+TestRunning with no guidance (no batch tool in the image); 2-ModelStructure+Package with 9-BatchFirst; 4-Refactoring with 9-BatchFirst. Ada's Coffee (refactoring, 14 given tests) and BAJE card readers (greenfield, own tests), 5 runs per cell, Opus 5 high, free, two in parallel, interleaved, all on one day. Read against the within-day spread of 010 (CV 18 percent input-side, 7 percent output): two cells of five runs resolve about 25 percent on the input side and 10 percent on output.

## Design

Started 2026-09-17. Model `claude-opus-5`, effort high, technique `free`,
5 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `1-Evaluate+TestRunning:1-Empty:free`
- `2-ModelStructure+Package:9-BatchFirst:free`
- `4-Refactoring:9-BatchFirst:free`

Exercises:
- `exercises/2019-2c-parcial1`
- `exercises/2025-2c-parcial2`

## Results

Thirty runs between 01:48 and 02:27 on 2026-09-17, all completed; every Ada's Coffee run passes
its 14 given tests and every BAJE run its own tests (21 to 30 per run). Medians of the five runs
per cell; [table.md](table.md) has every measure, `scripts/cell-spread.py` the spread per cell.
`Calls` is what the agent sent (a batch counts once), `operations` what the image did.

| Exercise | Cell | Input-side | Uncached input | Cache read | Output | Thinking | Requests | Input per request | Calls | Operations | Batches | Steps per batch | Evaluate calls | Define calls / methods | Refactoring calls | Hand-made refactorings | Tool errors | Seconds | Ifs | Mentor findings | Coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Ada's Coffee | 1: evaluate only | 81 k | 17 k | 64 k | 9 k | 2 k | 6 | 14 k | 7 | 7 | 0 | - | 5 | 0 / 0 | 0 | 0 | 0 | 74 | 0 | 25 | 86.7 |
| Ada's Coffee | 2 + batch | 87 k | 24 k | 64 k | 10 k | 3 k | 5 | 17 k | 4 | 21 | 2 | 9.5 | 0 | 2 / 49 | 0 | 4 | 0 | 85 | 0 | 24 | 88.6 |
| Ada's Coffee | 4 + batch | 196 k | 24 k | 173 k | 10 k | 2 k | 6 | 33 k | 5 | 26 | 3 | 7.3 | 0 | 2 / 49 | 1 | 10 | 0 | 94 | 0 | 25 | 86.7 |
| BAJE | 1: evaluate only | 157 k | 24 k | 134 k | 19 k | 5 k | 12 | 14 k | 13 | 13 | 0 | - | 11 | 0 / 0 | 0 | 0 | 2 | 157 | 8 | 67 | 88.7 |
| BAJE | 2 + batch | 171 k | 32 k | 136 k | 22 k | 6 k | 9 | 17 k | 8 | 26 | 3 | 7.3 | 6 | 2 / 89 | 0 | 0 | 2 | 177 | 8 | 61 | 91.6 |
| BAJE | 4 + batch | 359 k | 34 k | 328 k | 23 k | 6 k | 11 | 33 k | 10 | 28 | 5 | 5.4 | 7 | 2 / 95 | 0 | 0 | 2 | 195 | 8 | 64 | 92.9 |

Against evaluate alone (medians), with the 008 result (4 runs, two days) beside it:

| Exercise | Cell | Input-side | Uncached input | Output | Requests | Calls | 008: input-side / output |
|---|---|---|---|---|---|---|---|
| Ada's Coffee | 2 + batch | +7% | +36% | +17% | -17% | -43% | +19% / +7% |
| Ada's Coffee | 4 + batch | +142% | +39% | +15% | +0% | -29% | +66% / +6% |
| BAJE | 2 + batch | +9% | +32% | +17% | -25% | -38% | +13% / +13% |
| BAJE | 4 + batch | +128% | +42% | +25% | -8% | -23% | +64% / +5% |

Spread inside each cell (five runs; 010 measured CV 18 percent input-side and 7 percent output
on ten runs of the evaluate cell):

| Exercise | Cell | Input-side min / median / max | CV % | Output min / max | CV % | Requests min / max |
|---|---|---|---|---|---|---|
| Ada's Coffee | 1: evaluate only | 79 / 81 / 107 k | 14 | 8 / 9 k | 5 | 6 / 7 |
| Ada's Coffee | 2 + batch | 67 / 87 / 112 k | 22 | 10 / 11 k | 6 | 4 / 6 |
| Ada's Coffee | 4 + batch | 154 / 196 / 246 k | 22 | 10 / 11 k | 5 | 5 / 7 |
| BAJE | 1: evaluate only | 145 / 157 / 312 k | 36 | 19 / 21 k | 5 | 10 / 18 |
| BAJE | 2 + batch | 137 / 171 / 192 k | 15 | 19 / 25 k | 9 | 8 / 11 |
| BAJE | 4 + batch | 271 / 359 / 429 k | 19 | 20 / 25 k | 9 | 8 / 13 |

Every run:

| Exercise | Cell | Tests | Input-side | Uncached | Output | Requests | Calls | Batches | Tool errors | Seconds | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Ada's Coffee | 1: evaluate only | 14/14 | 97 k | 17 k | 9 k | 7 | 7 | 0 | 1 | 74 | `20260917-014758-38084` |
| Ada's Coffee | 1: evaluate only | 14/14 | 79 k | 16 k | 8 k | 6 | 7 | 0 | 0 | 66 | `20260917-015442-39194` |
| Ada's Coffee | 1: evaluate only | 14/14 | 81 k | 18 k | 9 k | 6 | 8 | 0 | 0 | 93 | `20260917-020059-40342` |
| Ada's Coffee | 1: evaluate only | 14/14 | 81 k | 17 k | 9 k | 6 | 7 | 0 | 0 | 69 | `20260917-021053-41536` |
| Ada's Coffee | 1: evaluate only | 14/14 | 107 k | 19 k | 9 k | 7 | 8 | 0 | 0 | 78 | `20260917-021725-42566` |
| Ada's Coffee | 2 + batch | 14/14 | 67 k | 23 k | 10 k | 4 | 3 | 2 | 0 | 77 | `20260917-014758-38085` |
| Ada's Coffee | 2 + batch | 14/14 | 68 k | 25 k | 11 k | 4 | 3 | 2 | 0 | 89 | `20260917-015603-39466` |
| Ada's Coffee | 2 + batch | 14/14 | 112 k | 24 k | 10 k | 6 | 4 | 3 | 0 | 275 | `20260917-020248-40549` |
| Ada's Coffee | 2 + batch | 14/14 | 87 k | 23 k | 10 k | 5 | 4 | 3 | 0 | 76 | `20260917-021201-41711` |
| Ada's Coffee | 2 + batch | 14/14 | 89 k | 24 k | 10 k | 5 | 4 | 2 | 0 | 85 | `20260917-021859-42759` |
| Ada's Coffee | 4 + batch | 14/14 | 155 k | 44 k | 10 k | 5 | 4 | 3 | 0 | 87 | `20260917-014928-38451` |
| Ada's Coffee | 4 + batch | 14/14 | 235 k | 23 k | 10 k | 7 | 6 | 5 | 0 | 94 | `20260917-015604-39505` |
| Ada's Coffee | 4 + batch | 14/14 | 196 k | 24 k | 10 k | 6 | 5 | 3 | 0 | 90 | `20260917-020428-40757` |
| Ada's Coffee | 4 + batch | 14/14 | 246 k | 28 k | 10 k | 7 | 6 | 5 | 0 | 94 | `20260917-021217-41860` |
| Ada's Coffee | 4 + batch | 14/14 | 154 k | 24 k | 11 k | 5 | 4 | 2 | 0 | 98 | `20260917-022040-43031` |
| BAJE | 1: evaluate only | own 27/27 | 180 k | 24 k | 19 k | 13 | 14 | 0 | 2 | 155 | `20260917-014931-38535` |
| BAJE | 1: evaluate only | own 25/25 | 156 k | 24 k | 20 k | 10 | 9 | 0 | 0 | 170 | `20260917-015748-39805` |
| BAJE | 1: evaluate only | own 23/23 | 145 k | 24 k | 19 k | 11 | 11 | 0 | 0 | 157 | `20260917-020614-40993` |
| BAJE | 1: evaluate only | own 21/21 | 312 k | 27 k | 21 k | 18 | 20 | 0 | 4 | 211 | `20260917-021332-42040` |
| BAJE | 1: evaluate only | own 26/26 | 157 k | 24 k | 19 k | 12 | 13 | 0 | 2 | 157 | `20260917-022044-43108` |
| BAJE | 2 + batch | own 30/30 | 171 k | 35 k | 25 k | 9 | 8 | 3 | 2 | 194 | `20260917-015111-38757` |
| BAJE | 2 + batch | own 23/23 | 137 k | 31 k | 21 k | 8 | 7 | 2 | 1 | 170 | `20260917-015754-39904` |
| BAJE | 2 + batch | own 23/23 | 192 k | 32 k | 22 k | 11 | 10 | 3 | 4 | 177 | `20260917-020739-41171` |
| BAJE | 2 + batch | own 27/27 | 185 k | 32 k | 22 k | 11 | 10 | 3 | 3 | 181 | `20260917-021408-42203` |
| BAJE | 2 + batch | own 21/21 | 144 k | 29 k | 19 k | 8 | 7 | 3 | 1 | 161 | `20260917-022234-43301` |
| BAJE | 4 + batch | own 23/23 | 369 k | 35 k | 25 k | 11 | 10 | 3 | 2 | 201 | `20260917-015224-38951` |
| BAJE | 4 + batch | own 23/23 | 271 k | 37 k | 25 k | 8 | 7 | 6 | 2 | 198 | `20260917-020054-40249` |
| BAJE | 4 + batch | own 23/23 | 359 k | 31 k | 20 k | 11 | 10 | 4 | 2 | 157 | `20260917-020907-41354` |
| BAJE | 4 + batch | own 29/29 | 290 k | 34 k | 23 k | 9 | 8 | 5 | 2 | 186 | `20260917-021721-42489` |
| BAJE | 4 + batch | own 22/22 | 429 k | 33 k | 23 k | 13 | 12 | 5 | 6 | 195 | `20260917-022338-43468` |

## Conclusion

**Supported for the model-structure tools, rejected for the refactoring tools.** With five
same-day runs per cell, scenario 2 with the batch tool costs the same input-side tokens as
evaluate alone (+7 and +9 percent, inside the 25 percent that five runs resolve) with 17 to 25
percent fewer requests and 38 to 43 percent fewer calls; scenario 4 with the batch tool costs
2.3 and 2.4 times the input side (+142 and +128 percent), which is the 69 KB refactoring schema
riding on every request: its input per request is 33 k against 14 k, with the same number of
requests as evaluate. Output tokens are 15 to 25 percent higher in every tools cell (the JSON
bodies), outside the 10 percent five runs resolve.

Against 008 the picture is cleaner and more polarized. 008's four runs, two of them on the
expensive day, gave +19 / +66 percent on Ada's Coffee and +13 / +64 percent on BAJE; the same-day
five runs give +7 / +142 and +9 / +128. The scenario 2 gap closed further because today's agent
batches more (9.5 and 7.3 steps per batch, 2 to 3 batches per run, 3 to 4 calls in total on
Ada's Coffee); the scenario 4 gap widened because the evaluate baseline is now cheap (81 k and
157 k input-side) and the schema cost is fixed per request, so as a proportion it grows.

The refactoring tools were again hardly used: one `remove_instance_variable` call in four of the
five Ada's Coffee runs, none on BAJE, while the Ada's Coffee refactorings were done by hand (9 to
13 per run with define and delete calls). The batch-first clause says nothing about refactoring;
015 adds the refactoring-first clause to see whether the tools get used and what that costs.

Quality equal across cells: 0 ifs on Ada's Coffee and 8 on BAJE in every run, mentor findings
within 6, coverage within 4 points.

Caveats: two exercises; BAJE's correctness is the agent's own tests; the scenario 2 cell's
spread on Ada's Coffee (67 to 112 k) is as wide as the difference between cells, so +7 percent
means "not distinguishable", not "equal"; the one 275-second run of scenario 2 was a slow API
period, not more work (its tokens are median).

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
