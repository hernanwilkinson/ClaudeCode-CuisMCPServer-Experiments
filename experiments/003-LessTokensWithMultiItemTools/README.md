# 003-LessTokensWithMultiItemTools

## Hypothesis

Claude Code uses fewer tokens with the model-structure tools (scenario 2-ModelStructure+Package, configuration 2-EvaluateAsLastResource) than with evaluate and the test tools alone (scenario 1-Evaluate+TestRunning, configuration 1-Empty). Clean rerun of experiment 002: working directory outside HOME so no user memory is injected, and the MCP server of 2026-09-11 whose reading and defining tools take several items per call (smalltalk_define_methods, smalltalk_class_source, multi-item method_source and delete tools). One repetition; Ada's Coffee (refactoring with given tests) and BAJE card readers 2025-2c-parcial2 (greenfield, no given tests).

## Design

Started 2026-09-11. Model `claude-opus-5`, effort high, technique `free`,
1 repetitions per cell, budget $15 and 1800 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration):
- `1-Evaluate+TestRunning:1-Empty`
- `2-ModelStructure+Package:2-EvaluateAsLastResource`

Exercises:
- `exercises/2019-2c-parcial1`
- `exercises/2025-2c-parcial2`

## Results

One run per cell, all four sessions completed within budget and time
([table.md](table.md) has every measure; rebuild with `scripts/matrix-table.py experiments/003-LessTokensWithMultiItemTools`).
Ada's Coffee is gated by its 14 given tests; the BAJE exercise has no given tests, so its "tests"
are the agent's own, all passing in both cells.

| Exercise | Cell | Cost | Input-side tokens | Cache reads | Output | API requests | Input per request | Tool calls | Define calls / methods defined | Seconds |
|---|---|---|---|---|---|---|---|---|---|---|
| Ada's Coffee (refactoring, 14 given tests) | 1: evaluate + test tools, no guidance | $0.71 | 169 k | 143 k | 15 k | 10 | 16,917 | 11 | 0 / 0 | 163 |
| Ada's Coffee (refactoring, 14 given tests) | 2: model-structure + package tools, evaluate last | $0.90 | 287 k | 249 k | 16 k | 11 | 26,115 | 27 | 2 / 48 | 177 |
| BAJE card readers (greenfield, TDD from nothing) | 1: evaluate + test tools, no guidance | $1.77 | 538 k | 489 k | 41 k | 20 | 26,921 | 29 | 0 / 0 | 450 |
| BAJE card readers (greenfield, TDD from nothing) | 2: model-structure + package tools, evaluate last | $3.12 | 2,084 k | 2,004 k | 53 k | 44 | 47,370 | 83 | 23 / 143 | 615 |

Second cell against the first:

| Exercise | Cost | Input-side | Cache reads | Output | Requests | Input per request | Tool calls | Seconds |
|---|---|---|---|---|---|---|---|---|
| Ada's Coffee (refactoring, 14 given tests) | +28% | +70% | +75% | +7% | +10% | +54% | +145% | +9% |
| BAJE card readers (greenfield, TDD from nothing) | +76% | +287% | +310% | +28% | +120% | +76% | +186% | +37% |

What was produced:

| Exercise | Cell | Tests passed | Model classes / methods | Ifs in model | Mentor findings | Coverage % | Hand-made refactorings | Methods redefined |
|---|---|---|---|---|---|---|---|---|
| Ada's Coffee (refactoring, 14 given tests) | 1: evaluate + test tools, no guidance | 14/14 | 14 / 68 | 0 | 20 | 84.3 | 0 | {} |
| Ada's Coffee (refactoring, 14 given tests) | 2: model-structure + package tools, evaluate last | 14/14 | 14 / 67 | 0 | 21 | 88.9 | 3 | {} |
| BAJE card readers (greenfield, TDD from nothing) | 1: evaluate + test tools, no guidance | 80/80 | 19 / 123 | 8 | 96 | 97.4 | 0 | {} |
| BAJE card readers (greenfield, TDD from nothing) | 2: model-structure + package tools, evaluate last | 32/32 | 17 / 103 | 8 | 77 | 97.3 | 13 | {'BAJECard>>payTripOn:from:to:at:': 4, 'MeansOfTransport class>>stops:fareTable:': 1, 'CardReaderTest>>setUp': 2, 'MeansOfTransportTest>>assertCanNotCreateWithStops:': 1, 'BAJECard>>initializeWithBalance:': 1, 'Trip>>endAt:': 1, 'CardReaderTest>>test13TrainRefundsOnExitTheDifferenceWithTheFareOfTheTripMade': 2, 'Trip>>cost': 1, 'BAJECard class>>withoutDiscountWithBalance:': 1, 'BAJECard>>fareProportionForTripAt:': 1, 'CardReaderTest>>createSubwayD': 1, 'CardReaderTest>>createMitre': 1, 'CardReaderTest>>test08SubwayChargesAFixedFareWhateverTheDirection': 1, 'CardReaderTest>>test09SubwayCanNotChargeTowardsAStopThatIsNotTheHeadOrTheEndOfTheLine': 1, 'CardReaderTest>>test12TrainChargesOnEntryTheFareToTheStopOfTheDirection': 1, 'CardReaderTest>>test14TrainCanNotChargeTowardsAStopThatIsNotTheHeadOrTheEndOfTheLine': 1, 'CardReaderTest>>test15ATripWithinTwoHoursOfTheStartOfTheLastOneIsATransferThatPaysHalfTheFare': 1, 'CardReaderTest>>test16ATripJustTwoHoursAfterTheStartOfTheLastOneIsATransfer': 1, 'CardReaderTest>>test17ATripMoreThanTwoHoursAfterTheStartOfTheLastOneIsNotATransfer': 1, 'CardReaderTest>>test18TransfersAreCountedFromTheStartOfTheLastTrip': 1, 'CardReaderTest>>test19TransfersCanBeMadeFromTheTripOfThePreviousDay': 1, 'CardReaderTest>>test23StudentsDoNotAddTheTransferDiscountToTheirDiscount': 1, 'CardReaderTest>>test24StudentsGetTheTransferDiscountOnWeekends': 1, 'CardReaderTest>>test25RetireesTravelForFreeTheFirstTwoTripsOfTheDay': 1, 'CardReaderTest>>test26RetireesHaveTwoFreeTripsEachDay': 1, 'CardReaderTest>>test27RetireesGetTheTransferDiscountOnceTheyHaveNoFreeTripsLeft': 1, 'CardReaderTest>>test28TrainRefundsOnExitTheDifferenceOfTheDiscountedFare': 1, 'CardReaderTest>>test29TrainRefundsOnExitTheDifferenceOfTheTransferFare': 1, 'CardReaderTest>>test30TrainRefundsNothingOnExitOfAFreeTrip': 1} |

## Conclusion

**Rejected again, on clean runs.** With the model-structure tools the agent spent 27 percent more
on Ada's Coffee and 76 percent more on the BAJE exercise, with 1.7 and 3.9 times the input-side
tokens. The mechanism is the one experiment 002 showed: tool calls are API requests, and every
request re-reads the conversation (cache reads are 84 to 96 percent of the input side). Output
tokens moved little (+7 and +28 percent).

The multi-item tools did what they were meant to. On Ada's Coffee the scenario 2 agent defined
48 methods in 2 `define_methods` calls (24 per call) and read the whole model with 2
`class_source` calls: 27 tool calls against 104 in experiment 002, and the cost gap to scenario 1
shrank from +53 to +27 percent. On the greenfield exercise it defined 143 methods in 23 calls
(6 per call) but also made 23 `define_class` calls, one per class and per instance-variable
change, ran the tests 21 times and redefined 29 methods while reshaping the design by hand (13
extractions, moves and inlinings done with define calls; no refactoring tools exist in this
scenario). Scenario 1 built the same exercise in 29 calls: 20 evaluates, each compiling a batch,
and 9 test runs, with 80 tests to scenario 2's 32.

Quality was the same on Ada's Coffee (0 ifs, 20 vs 21 mentor findings, coverage 84 vs 89
percent). On BAJE both left 8 ifs and 97 percent coverage; scenario 1 wrote more methods and
tests and collected more mentor findings (96 vs 77), mostly the keyword-message layout and
method-complexity heuristics, which neither cell was told about.

Caveats: one run per cell, so these are point estimates. The two cells still bundle tools and
the "evaluate as a last resort" clause. The BAJE scenario 1 run had one failed evaluate.

## Recovery of the two BAJE runs

Both BAJE sessions completed normally, but the runner instances crashed right after them
because `2-runCell.sh` was edited while they were executing it (bash resumed at a shifted
offset), and the EXIT trap killed the images before they were saved. Each run was recovered by
restarting its pre-session image and replaying the agent's logged calls from `mcp-calls.jsonl`
in order (`mcp-calls-recovery.jsonl` in the run; 28 of 29 and 83 of 83 answers identical to the
session's), saving, and completing the collection with `--finish`. Their `manifest.json` carries
a `recovery` field saying so; status, exit code and elapsed time were set from the stream.

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
