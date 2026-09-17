# 002-LessTokensWithModelStructureTools

## Hypothesis

Claude Code uses fewer tokens when it has tools to manipulate the code (scenario
2-ModelStructure+Package with configuration 2-EvaluateAsLastResource) than when it only has
`smalltalk_evaluate` and the test-running tools (scenario 1-Evaluate+TestRunning with
configuration 1-Empty).

## Design

Run on 2026-09-10 with Claude Code 2.1.268. Model `claude-opus-5`, effort high, technique
`free`, 3 repetitions per cell, budget $15 and 1800 s per run, two runs in parallel, cells
interleaved (see `plan.txt`).

Cells (scenario:configuration):
- `1-Evaluate+TestRunning:1-Empty`
- `2-ModelStructure+Package:2-EvaluateAsLastResource`

Exercises (both refactoring exercises with given tests, acceptance = the given tests):
- `exercises/2019-2c-parcial1` Ada's Coffee
- `exercises/2022-1c-parcial1` Formula One

Note that the two cells differ in guidance as well as tools, so the tools and the "evaluate
as a last resort" clause are bundled; a cell `2-ModelStructure+Package:1-Empty` would
separate them.

## Results

All 12 runs passed their acceptance tests. Medians of the three runs per cell
([table.md](table.md) has every measure and every run; rebuild it with
`scripts/matrix-table.py experiments/002-LessTokensWithModelStructureTools`).

| Exercise | Cell | Cost | Input-side tokens | Cache reads | Output | API requests | Tool calls | Seconds |
|---|---|---|---|---|---|---|---|---|
| Ada's Coffee (2019-2c-parcial1) | 1: evaluate + tests, no guidance | $1.00 | 357 k | 320 k | 20 k | 14 | 17 | 230 |
| Ada's Coffee (2019-2c-parcial1) | 2: model-structure + package tools, evaluate as last resort | $1.53 | 917 k | 872 k | 26 k | 27 | 104 | 304 |
| Formula One (2022-1c-parcial1) | 1: evaluate + tests, no guidance | $3.56 | 1,585 k | 1,496 k | 67 k | 31 | 34 | 727 |
| Formula One (2022-1c-parcial1) | 2: model-structure + package tools, evaluate as last resort | $4.12 | 3,200 k | 3,094 k | 61 k | 47 | 207 | 691 |

Second cell against the first:

| Exercise | Cost | Input-side | Cache reads | Output | Requests | Input per request | Tool calls | Seconds |
|---|---|---|---|---|---|---|---|---|
| Ada's Coffee (2019-2c-parcial1) | +53% | +157% | +173% | +31% | +93% | +29% | +512% | +32% |
| Formula One (2022-1c-parcial1) | +16% | +102% | +107% | -8% | +52% | +4% | +509% | -5% |

Quality of what was produced (medians):

| Exercise | Cell | Passed | Ifs in model | Mentor findings | Coverage % | Tool errors |
|---|---|---|---|---|---|---|
| Ada's Coffee (2019-2c-parcial1) | 1: evaluate + tests, no guidance | 3/3 | 0 | 17 | 89.8 | 1 |
| Ada's Coffee (2019-2c-parcial1) | 2: model-structure + package tools, evaluate as last resort | 3/3 | 0 | 17 | 88.9 | 0 |
| Formula One (2022-1c-parcial1) | 1: evaluate + tests, no guidance | 3/3 | 5 | 30 | 95.6 | 2 |
| Formula One (2022-1c-parcial1) | 2: model-structure + package tools, evaluate as last resort | 3/3 | 5 | 46 | 96.4 | 0 |

Every run:

| Exercise | Scenario | Acceptance | Cost | Input-side | Output | Requests | Tool calls | Seconds | Run |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 14/14 | $1.01 | 357 k | 19 k | 14 | 17 | 231 | `20260910-192329-84725` |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 14/14 | $1.00 | 361 k | 20 k | 14 | 17 | 221 | `20260910-202352-30225` |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 14/14 | $1.00 | 318 k | 20 k | 13 | 15 | 230 | `20260910-212414-32844` |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 14/14 | $1.70 | 980 k | 28 k | 27 | 106 | 320 | `20260910-192329-84724` |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 14/14 | $1.53 | 917 k | 26 k | 28 | 104 | 304 | `20260910-202353-30261` |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 14/14 | $1.48 | 819 k | 26 k | 25 | 99 | 298 | `20260910-212415-32884` |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 26/26 | $3.83 | 2,326 k | 67 k | 32 | 34 | 727 | `20260910-195340-9250` |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 26/26 | $3.56 | 1,503 k | 74 k | 23 | 28 | 803 | `20260910-205402-32009` |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 26/26 | $3.16 | 1,585 k | 61 k | 31 | 35 | 692 | `20260910-215424-33684` |
| 2022-1c-parcial1 | 2-ModelStructure+Package | 25/25 | $3.94 | 2,890 k | 61 k | 45 | 200 | 691 | `20260910-195340-9276` |
| 2022-1c-parcial1 | 2-ModelStructure+Package | 26/26 | $4.85 | 3,830 k | 73 k | 49 | 215 | 836 | `20260910-205402-32035` |
| 2022-1c-parcial1 | 2-ModelStructure+Package | 25/25 | $4.12 | 3,200 k | 61 k | 47 | 207 | 691 | `20260910-215425-33727` |

## Validity: contaminated, rerun needed

Found on 2026-09-11 from the call logs: every one of the 12 runs had `~/.claude/CLAUDE.md`
(the global instructions, which name the design-heuristics skill and the path of the
heuristics file) injected into its context, although the runner passes
`--setting-sources project`. Claude Code auto-updated from 2.1.212 to 2.1.267/268 on
2026-09-10 between the pipeline checks and this matrix; from 2.1.267 on, a session whose
working directory is anywhere under `$HOME` gets `~/.claude/CLAUDE.md` as *project* memory,
which that flag keeps (2.1.212 did not; runs made with it are clean). Following those
instructions, 10 of the 12 agents read the 8.5 KB heuristics file (about 2,100 tokens) through
`smalltalk_evaluate`: in scenario 1 always as the first or second call, so it sat in the
context of every later request; in scenario 2 in 4 of 6 runs, at calls 4 to 23; two scenario 2
runs never read it. So both cells worked under the design heuristics, unevenly, and neither is
the "no guidance" condition the design states. The token comparison is probably not overturned
by 2,100 extra tokens per request, but the quality measures (0 ifs, mentor findings) reflect
the heuristics, not the cells. The runner now places the working directory under
`/private/tmp` (verified clean on 2026-09-11); this matrix must be rerun as a new experiment.

## Conclusion (from the contaminated runs)

**Rejected.** With the code-manipulation tools the agent consumed 2 to 2.6 times the
input-side tokens and 16 to 53 percent more money, for the same outcome.

The tokens are not in the code written: output tokens are about equal. They are in the number
of API requests. Every tool call is a request, and every request re-reads the whole
conversation, which is why cache reads are 90 to 97 percent of the input side. Scenario 2 made
six times the tool calls, because it defines one method per call (48 to 120 `define_method`
calls per run) and reads sources in 12 to 21 calls. Scenario 1 batches: a single evaluate
compiled up to 21 methods at once and read several sources in one expression. The context per
request is also larger in scenario 2 (bigger tool schemas, longer exchange).

The extra tokens bought nothing measurable: same conditionals left in the model, same
coverage, similar mentor findings, same amount of work (methods added, changed and removed).
Scenario 1 had one to three failed evaluate expressions per run; scenario 2 almost none. Two
Formula One runs in scenario 2 finished with 25 given tests instead of 26 (the agent merged
one, which the statement allows when removing test duplication).

Caveats: three runs per cell; the two cells differ in guidance as well as tools; the
hand-made-refactoring detector only sees `define_method` calls, so scenario 1 shows zero by
construction.

Suggestion for the server: the cost lever is calls, not verbosity. Tools that do more per call
(define several methods at once, answer a whole class's sources in one go) would let scenario
2 keep its precision without paying a request per method.

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log (`mcp-calls.jsonl`), output package and
saved image; `logs/` has the runner output per run, `plan.txt` the order they were planned in
and `runs.txt` the order they finished in.
