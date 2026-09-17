# 011-ModelStructureToolsCleanRerun

## Hypothesis

Clean rerun of experiment 002 (its runs had the global CLAUDE.md injected): Claude Code uses fewer tokens with the model-structure and package tools, told to evaluate only as a last resort (2-ModelStructure+Package : 2-EvaluateAsLastResource), than with smalltalk_evaluate and the test-running tools alone (1-Evaluate+TestRunning : 1-Empty). Same design as 002: Ada's Coffee (2019-2c-parcial1) and Formula One (2022-1c-parcial1), both refactoring exercises with given tests, 3 runs per cell, Opus 5 high, free, two in parallel, interleaved. Differences from 002: working directory outside HOME (no memory injected), the MCP server of commit 9e990b0 (multi-item define and read tools), and the scenario 2 image now carries smalltalk_batch, which the configuration does not mention (batch calls are counted).

## Design

Started 2026-09-17. Model `claude-opus-5`, effort high, technique `free`,
3 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `1-Evaluate+TestRunning:1-Empty:free`
- `2-ModelStructure+Package:2-EvaluateAsLastResource:free`

Exercises:
- `exercises/2019-2c-parcial1`
- `exercises/2022-1c-parcial1`

## Results

Twelve runs between 00:58 and 01:17 on 2026-09-17, all completed, all passing the given tests
(Formula One agents merged or added given tests in three runs, 25, 27 and 28 of 26; the
statement allows it). Medians of the three runs per cell; [table.md](table.md) has every measure.

| Exercise | Cell | Input-side | Uncached input | Cache read | Output | Thinking | Requests | Input per request | Calls | Batch calls | Define calls / methods | Tool errors | Hand-made refactorings | Seconds | Ifs | Mentor findings | Coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Ada's Coffee | 1: evaluate + tests, no guidance | 79 k | 16 k | 62 k | 8 k | 2 k | 6 | 13 k | 7 | 0 | 0 / 0 | 0 | 0 | 66 | 0 | 25 | 86.7 |
| Ada's Coffee | 2: model structure + package, evaluate last | 120 k | 24 k | 98 k | 9 k | 2 k | 7 | 18 k | 6 | 4 | 2 / 45 | 2 | 3 | 71 | 0 | 22 | 88.6 |
| Formula One | 1: evaluate + tests, no guidance | 355 k | 44 k | 311 k | 26 k | 10 k | 12 | 30 k | 15 | 0 | 0 / 0 | 0 | 0 | 211 | 5 | 49 | 95.6 |
| Formula One | 2: model structure + package, evaluate last | 446 k | 56 k | 392 k | 31 k | 14 k | 11 | 41 k | 11 | 5 | 2 / 101 | 2 | 7 | 248 | 5 | 55 | 96.4 |

Second cell against the first (medians):

| Exercise | Input-side | Uncached input | Cache read | Output | Requests | Input per request | Calls | Seconds |
|---|---|---|---|---|---|---|---|---|
| Ada's Coffee | +52% | +44% | +56% | +10% | +17% | +34% | -14% | +8% |
| Formula One | +26% | +29% | +26% | +19% | -8% | +37% | -27% | +18% |

Every run:

| Exercise | Cell | Given tests | Input-side | Uncached | Output | Requests | Calls | Batches | Tool errors | Seconds | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Ada's Coffee | 1 | 14/14 | 79 k | 16 k | 8 k | 6 | 7 | 0 | 0 | 66 | `20260917-005838-10403` |
| Ada's Coffee | 1 | 14/14 | 78 k | 16 k | 8 k | 6 | 6 | 0 | 0 | 65 | `20260917-010407-12475` |
| Ada's Coffee | 1 | 14/14 | 100 k | 17 k | 9 k | 7 | 8 | 0 | 1 | 76 | `20260917-010916-14248` |
| Ada's Coffee | 2 | 14/14 | 109 k | 28 k | 8 k | 6 | 5 | 3 | 0 | 69 | `20260917-005838-10404` |
| Ada's Coffee | 2 | 14/14 | 123 k | 24 k | 10 k | 7 | 6 | 5 | 2 | 80 | `20260917-010430-12706` |
| Ada's Coffee | 2 | 14/14 | 120 k | 22 k | 9 k | 7 | 6 | 4 | 2 | 71 | `20260917-011049-15081` |
| Formula One | 1 | 25/25 | 355 k | 44 k | 27 k | 12 | 15 | 0 | 0 | 226 | `20260917-010000-10829` |
| Formula One | 1 | 25/25 | 283 k | 41 k | 24 k | 10 | 11 | 0 | 0 | 207 | `20260917-010530-13071` |
| Formula One | 1 | 27/27 | 376 k | 46 k | 26 k | 12 | 15 | 0 | 1 | 211 | `20260917-011050-15113` |
| Formula One | 2 | 25/25 | 456 k | 56 k | 31 k | 11 | 11 | 5 | 2 | 248 | `20260917-010003-10905` |
| Formula One | 2 | 28/28 | 401 k | 62 k | 34 k | 10 | 9 | 6 | 2 | 263 | `20260917-010607-13362` |
| Formula One | 2 | 25/25 | 446 k | 54 k | 30 k | 11 | 12 | 4 | 0 | 238 | `20260917-011218-19221` |

The tools the scenario 2 agents used (operations, batch steps counted): `define_class` 7 to 14
per run (one per class, and again per instance-variable change), `delete_method` 5 to 7,
`define_methods` 2 (45 to 101 methods in those two calls), `classes_in_category` 2 to 3,
`class_source` 1 to 2, `run_test_class` 2 to 3, `classify_methods` up to 6, and `evaluate` 0
to 1. Every scenario 2 run put most of that inside 3 to 6 `smalltalk_batch` calls without
being told the batch tool existed. The tool errors are the ones seen in 008: in two Ada's
Coffee runs the agent named a batch step `mcp__Cuis__smalltalk_classes_in_category` and the
server refused it; in two Formula One runs a `define_class` with a bad argument and a
`method_source` of a missing method.

## Conclusion

**Rejected, for the third time and on clean same-day runs, by a smaller margin than before.**
With the model-structure tools and the evaluate-last clause the agent used 52 percent more
input-side tokens on Ada's Coffee and 26 percent more on Formula One, and 10 and 19 percent
more output tokens, for the same result (all tests passing, the same ifs, coverage within 2
points, mentor findings within 6). Experiment 002 measured +157 and +102 percent input-side,
003 measured +70 percent on Ada's Coffee.

Two things changed since 002 and explain the smaller gap. The multi-item tools: 45 and 101
methods went in 2 `define_methods` calls per run against 48 to 120 single-method calls in 002.
And the batch tool, present in the scenario 2 image though the configuration says nothing
about it: the agent found it in the schema and used it in every run, 3 to 6 batches per run,
so scenario 2 made fewer calls than scenario 1 (6 vs 7, 11 vs 15) and about the same number of
requests (7 vs 6, 11 vs 12). What remains of the gap is per request: 34 to 37 percent more
input per request (the 20 KB schema and the larger structured answers), 44 and 29 percent more
uncached input, and more output (the JSON around the sources and the `define_class` calls that
evaluate does not need). Against the within-day spread of 010 (1.7x max to min on the input
side over ten runs, CV 18 percent), +52 percent on three runs is at the edge and +26 percent is
inside it; the direction is consistent across all six pairs, and the output and uncached-input
differences (CV 7 percent in 010) are clearer than the input-side one.

Formula One cost a quarter of what it cost in 002 on the same cell (355 k against 1,585 k
input-side, 26 k against 67 k output), with the same Claude Code version and model: the day
effect and the absence of the injected heuristics file.

Caveats: three runs per cell; scenario 2's cell still bundles the tools with the evaluate-last
clause, and now with an unmentioned batch tool the agent used on its own (experiment 012
separates these); given-test counts on Formula One differ by run because agents merge tests.

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
