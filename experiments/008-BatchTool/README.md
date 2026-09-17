# 008-BatchTool

## Hypothesis

With the batch tool (smalltalk_batch: several tool calls in one call, in order, one answer line per step), the granular tools cost no more than evaluate alone, because the round trips that made them expensive (experiments 002, 003) collapse into one call per step of work. Three cells on the plain Cuis base: 1-Evaluate+TestRunning with no guidance (evaluate and the test tools, no batch tool in the image); 2-ModelStructure+Package with the batch tool and configuration 9-BatchFirst (use the batch over calling tools one at a time or evaluating); 4-Refactoring with the batch tool and 9-BatchFirst. Exercises: Ada's Coffee (refactoring with given tests) and BAJE card readers (greenfield), the ones of experiment 003, so the results compare with the pre-batch runs. One run per cell, free technique, Opus 5 high.

## Design

Started 2026-09-16. Model `claude-opus-5`, effort high, technique `free`,
1 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `1-Evaluate+TestRunning:1-Empty:free`
- `2-ModelStructure+Package:9-BatchFirst:free`
- `4-Refactoring:9-BatchFirst:free`

Exercises:
- `exercises/2019-2c-parcial1`
- `exercises/2025-2c-parcial2`

## Results

Four runs per cell: one on 2026-09-15 and three appended on 2026-09-16, 24 runs, all completed,
all passing (Ada's Coffee its 14 given tests in every run; BAJE has no given tests and every
run's own tests pass). Medians below; [table.md](table.md) has every measure and run. `calls` is
what the agent sent (a batch counts once), `operations` what the image did (each step of a batch
counts).

| Exercise | Cell | Runs | Cost (median) | Costs of the runs | Input-side tokens | Uncached input | Output | API requests | Calls | Operations | Batches | Steps per batch | Tool errors | Seconds |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Ada's Coffee (refactoring, 14 given tests) | 1: evaluate only | 4 | $0.51 | 0.40, 0.45, 0.58, 1.16 | 117 k | 23 k | 10 k | 8 | 9 | 9 | 0 | - | 1 | 84 |
| Ada's Coffee (refactoring, 14 given tests) | 2 + batch | 4 | $0.64 | 0.46, 0.57, 0.71, 1.12 | 139 k | 33 k | 10 k | 7 | 6 | 26 | 4 | 5.4 | 1 | 90 |
| Ada's Coffee (refactoring, 14 given tests) | 4 + batch | 4 | $0.67 | 0.55, 0.56, 0.78, 1.39 | 195 k | 34 k | 10 k | 6 | 5 | 27 | 4 | 6.25 | 0 | 90 |
| BAJE card readers (greenfield, own tests) | 1: evaluate only | 4 | $0.87 | 0.79, 0.81, 0.93, 2.33 | 227 k | 27 k | 20 k | 15 | 16 | 16 | 0 | - | 2 | 174 |
| BAJE card readers (greenfield, own tests) | 2 + batch | 4 | $1.03 | 0.85, 1.00, 1.07, 2.41 | 257 k | 35 k | 23 k | 10 | 10 | 34 | 6 | 5.17 | 2 | 185 |
| BAJE card readers (greenfield, own tests) | 4 + batch | 4 | $1.02 | 0.93, 0.99, 1.05, 2.49 | 371 k | 32 k | 21 k | 10 | 10 | 29 | 4 | 5.325 | 2 | 177 |

Against evaluate alone (medians):

| Exercise | Comparison | Cost | Input-side | Uncached input | Output | Requests | Calls |
|---|---|---|---|---|---|---|---|
| Ada's Coffee | 2 + batch vs evaluate | +24% | +19% | +41% | +7% | -12% | -33% |
| Ada's Coffee | 4 + batch vs evaluate | +31% | +66% | +45% | +6% | -25% | -44% |
| BAJE | 2 + batch vs evaluate | +19% | +13% | +30% | +13% | -30% | -39% |
| BAJE | 4 + batch vs evaluate | +17% | +64% | +19% | +5% | -30% | -39% |

Where the money goes (medians, at Opus 5 list prices: output $25, input $5, cache write $6.25,
cache read $0.50 per million), with the size of what each request carries:

| Exercise | Cell | Output cost | Uncached input cost | Cache-read cost | Input per request | Tool answers (chars) | Schema | Evaluate calls | Hand-made refactorings | Ifs | Mentor findings | Coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Ada's Coffee | 1: evaluate only | $0.24 | $0.14 | $0.05 | 15 k | 13 k | 3 KB | 6 | 0 | 0 | 21 | 88.2 |
| Ada's Coffee | 2 + batch | $0.26 | $0.20 | $0.05 | 20 k | 21 k | 20 KB | 2 | 7 | 0 | 20 | 89.2 |
| Ada's Coffee | 4 + batch | $0.26 | $0.21 | $0.08 | 32 k | 22 k | 69 KB | 0 | 3 | 0 | 20 | 87.6 |
| BAJE | 1: evaluate only | $0.51 | $0.17 | $0.10 | 15 k | 4 k | 3 KB | 14 | 0 | 8 | 64 | 89.2 |
| BAJE | 2 + batch | $0.57 | $0.22 | $0.11 | 24 k | 15 k | 20 KB | 6 | 0 | 8 | 59 | 92.2 |
| BAJE | 4 + batch | $0.53 | $0.20 | $0.17 | 35 k | 13 k | 69 KB | 6 | 0 | 8 | 52 | 94.0 |

Every run:

| Exercise | Cell | Day | Cost | Input-side | Output | Requests | Calls | Operations | Batches | Errors | Tests | Seconds |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Ada's Coffee | 1: evaluate only | 2026-09-15 | $1.16 | 611 k | 21 k | 26 | 25 | 25 | 0 | 6 | 14/14 | 255 |
| Ada's Coffee | 1: evaluate only | 2026-09-16 | $0.58 | 125 k | 10 k | 8 | 9 | 9 | 0 | 1 | 14/14 | 88 |
| Ada's Coffee | 1: evaluate only | 2026-09-16 | $0.40 | 110 k | 7 k | 8 | 9 | 9 | 0 | 1 | 14/14 | 73 |
| Ada's Coffee | 1: evaluate only | 2026-09-16 | $0.45 | 87 k | 9 k | 6 | 8 | 8 | 0 | 0 | 14/14 | 81 |
| Ada's Coffee | 2 + batch | 2026-09-15 | $1.12 | 456 k | 19 k | 15 | 14 | 35 | 7 | 4 | 14/14 | 211 |
| Ada's Coffee | 2 + batch | 2026-09-16 | $0.71 | 135 k | 10 k | 7 | 6 | 25 | 5 | 2 | 14/14 | 92 |
| Ada's Coffee | 2 + batch | 2026-09-16 | $0.46 | 65 k | 9 k | 4 | 3 | 18 | 2 | 0 | 14/14 | 71 |
| Ada's Coffee | 2 + batch | 2026-09-16 | $0.57 | 143 k | 11 k | 7 | 6 | 26 | 4 | 0 | 14/14 | 88 |
| Ada's Coffee | 4 + batch | 2026-09-15 | $1.39 | 650 k | 21 k | 15 | 14 | 44 | 13 | 4 | 14/14 | 252 |
| Ada's Coffee | 4 + batch | 2026-09-16 | $0.78 | 198 k | 11 k | 6 | 5 | 27 | 4 | 0 | 14/14 | 93 |
| Ada's Coffee | 4 + batch | 2026-09-16 | $0.56 | 192 k | 10 k | 6 | 5 | 25 | 4 | 0 | 14/14 | 86 |
| Ada's Coffee | 4 + batch | 2026-09-16 | $0.55 | 190 k | 9 k | 6 | 5 | 27 | 4 | 0 | 14/14 | 79 |
| BAJE | 1: evaluate only | 2026-09-15 | $2.33 | 1,360 k | 43 k | 35 | 45 | 45 | 0 | 3 | own 82/82 | 503 |
| BAJE | 1: evaluate only | 2026-09-16 | $0.93 | 283 k | 21 k | 17 | 19 | 19 | 0 | 2 | own 31/31 | 176 |
| BAJE | 1: evaluate only | 2026-09-16 | $0.79 | 116 k | 20 k | 9 | 9 | 9 | 0 | 2 | own 26/26 | 171 |
| BAJE | 1: evaluate only | 2026-09-16 | $0.81 | 171 k | 20 k | 13 | 12 | 12 | 0 | 4 | own 23/23 | 170 |
| BAJE | 2 + batch | 2026-09-15 | $2.41 | 971 k | 50 k | 24 | 23 | 65 | 14 | 7 | own 46/46 | 535 |
| BAJE | 2 + batch | 2026-09-16 | $1.07 | 338 k | 22 k | 12 | 11 | 40 | 7 | 1 | own 27/27 | 181 |
| BAJE | 2 + batch | 2026-09-16 | $1.00 | 175 k | 23 k | 9 | 8 | 27 | 4 | 2 | own 26/26 | 189 |
| BAJE | 2 + batch | 2026-09-16 | $0.85 | 162 k | 20 k | 8 | 7 | 28 | 5 | 1 | own 22/22 | 156 |
| BAJE | 4 + batch | 2026-09-15 | $2.49 | 1,070 k | 51 k | 21 | 20 | 59 | 13 | 5 | own 38/38 | 541 |
| BAJE | 4 + batch | 2026-09-16 | $1.05 | 459 k | 21 k | 12 | 11 | 33 | 5 | 1 | own 21/21 | 172 |
| BAJE | 4 + batch | 2026-09-16 | $0.93 | 251 k | 21 k | 8 | 7 | 24 | 4 | 2 | own 22/22 | 168 |
| BAJE | 4 + batch | 2026-09-16 | $0.99 | 283 k | 22 k | 9 | 8 | 25 | 3 | 2 | own 22/22 | 182 |

## Conclusion

**With four runs per cell the batch tool closes most of the gap but not all of it: the granular
cells cost 17 to 31 percent more than evaluate alone**, against +27 and +76 percent without the
batch in experiment 003 and +53 to +76 percent in the tools-first cells of 004 and 005. The first
day's single runs, which showed parity, were the high end of the spread: every cell cost about
twice as much on 2026-09-15 as on 2026-09-16 (evaluate on Ada's Coffee $1.16 against $0.40 to
$0.58), so the day, not the cell, made yesterday's numbers.

The batch does what it was built for. Told to use it, the agent sends 4 to 6 batches of 5 to 6
steps per run and makes 33 to 44 percent fewer calls and 12 to 30 percent fewer requests than
the evaluate agent. What it does not do is make each request cheaper. Three things stay:

- **Output tokens are the largest cost and the batch adds to them** (+5 to +13 percent). A batch
  body is JSON around the same method sources evaluate carries as Smalltalk, plus the tool names
  and argument keys of every step; and at $25 per million output tokens, the 700 to 2,600 extra
  output tokens cost more than the requests saved.
- **Tool answers are bigger.** A batch answers one line per step and the reading tools answer
  structured JSON: 21 K characters of answers on Ada's Coffee against 13 K for evaluate, and
  15 K against 4 K on BAJE, all uncached input on arrival.
- **The schema rides on every request**: 20 KB in scenario 2 and 69 KB in scenario 4 against
  3.4 KB, mostly as cache reads. Cheap per token, but it is why the refactoring cell's cache-read
  cost is double the evaluate cell's and why its input per request is more than twice as large
  while it makes the fewest requests.

Quality was equal across cells: the same ifs (0 and 8), coverage within 4 points, mentor
findings within 12. Evaluate did not define code in any batch cell; it was used 2 to 6 times
per run for probing units and dates and for class comments. The refactoring cell again made
no refactoring calls in any of its 8 runs, refactoring by hand 3 times per run on Ada's Coffee:
without the refactoring-first clause the tools are not used, batch or not.

What would close the rest: a terser batch answer (a status per step, the full answer only on
failure or on request), reading tools that answer source instead of JSON around source, and a
smaller schema for the cells that carry the refactoring tools. Or the comparison stops being
evaluate versus tools and becomes what the tools buy in safety and traceability at a 20 percent
premium.

Caveats: four runs per cell, two exercises, one of them without given tests; the batch-first
clause bundles "batch" with "tools over evaluate"; the agent named 2 to 4 batch steps per run with
the client-side prefix `mcp__Cuis__...`, which the server refused, counted in the tool errors.

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
