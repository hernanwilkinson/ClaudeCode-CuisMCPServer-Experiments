# 007-CrypticNames

## Hypothesis

Cryptic names make refactoring given code more expensive and worse: the same starting code with every author-chosen name replaced by a meaningless one (classes C1.., selectors m1:a1:.., instance variables v1.., temporaries t1.., test selectors test01.., symbols s1.., strings S1.., comments removed; level 2, obfuscate-exercise.py, renames.json in each twin) against the original, on RobotWars (2021-1c-parcial1), Formula One (2022-1c-parcial1) and Adventure backpack (2020-2c-parcial1). One cell, scenario 4-Refactoring with the refactoring tools, configuration 2-EvaluateAsLastResource + 8-DesignHeuristicsInline, free technique, Opus 5 high, one run per exercise and twin. The statement is the original with the names it quotes replaced the same way. Measured: cost, tokens, requests, exploration before the first change, acceptance by the given tests, mentor findings, rename tool calls, and how many cryptic names are left and how many original names come back in the delivered code.

## Design

Started 2026-09-15. Model `claude-opus-5`, effort high, technique `free`,
1 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `4-Refactoring:2-EvaluateAsLastResource+8-DesignHeuristicsInline:free`

Exercises:
- `exercises/2021-1c-parcial1`
- `exercises/2021-1c-parcial1-cryptic`
- `exercises/2022-1c-parcial1`
- `exercises/2022-1c-parcial1-cryptic`
- `exercises/2020-2c-parcial1`
- `exercises/2020-2c-parcial1-cryptic`

## Results

One run per exercise and twin, scenario 4-Refactoring, configurations 2-EvaluateAsLastResource
and 8-DesignHeuristicsInline, free technique, Opus 5 high. Six valid runs, all passing the
given tests. The first run of the Formula One original stalled in its own thinking (14 tool
calls in 40 minutes, 233 thinking turns, no change to the code) and hit the timeout; its image
then wedged on the save and the run is recorded with status `no-result`; the cell was rerun
and the rerun is the one below. [table.md](table.md) has every measure.

In a twin the agent renames the given test class too (it did, every time, back to a meaningful
name), so the acceptance there is every test class of the package, the given ones included.

Cost:

| Exercise | Names | Cost | Input-side tokens | Output | Thinking | API requests | Tool calls | Seconds |
|---|---|---|---|---|---|---|---|---|
| RobotWars (3 classes, 49 methods, 18 tests) | original | $2.71 | 1,748 k | 41 k | 28 k | 27 | 36 | 487 |
| RobotWars (3 classes, 49 methods, 18 tests) | cryptic | $2.58 | 1,484 k | 42 k | 29 k | 23 | 34 | 501 |
| Formula One (5 / 85 / 25) | original | $5.98 | 5,510 k | 81 k | 58 k | 53 | 62 | 976 |
| Formula One (5 / 85 / 25) | cryptic | $5.72 | 4,826 k | 87 k | 67 k | 48 | 47 | 1053 |
| Adventure backpack (10 / 102 / 27) | original | $2.01 | 1,544 k | 27 k | 18 k | 25 | 35 | 335 |
| Adventure backpack (10 / 102 / 27) | cryptic | $4.43 | 4,992 k | 49 k | 35 k | 66 | 66 | 657 |

Cryptic against original:

| Exercise | Cost | Input-side | Output | Requests | Tool calls | Exploration before first change | Mentor findings |
|---|---|---|---|---|---|---|---|
| RobotWars | -5% | -15% | +0% | -15% | -6% | 9 → 9 | 24 → 20 |
| Formula One | -4% | -12% | +6% | -9% | -24% | 13 → 9 | 48 → 38 |
| Adventure backpack | +120% | +223% | +79% | +164% | +89% | 6 → 10 | 40 → 23 |

Process:

| Exercise | Names | Exploration before first change | Refactoring tool calls | Rename tool calls | Hand-made refactorings | Given tests |
|---|---|---|---|---|---|---|
| RobotWars (3 classes, 49 methods, 18 tests) | original | 9 | 0 | 0 | 8 | 19/19 |
| RobotWars (3 classes, 49 methods, 18 tests) | cryptic | 9 | 0 | 0 | 5 | 18/18 |
| Formula One (5 / 85 / 25) | original | 13 | 2 | 2 | 9 | 27/27 |
| Formula One (5 / 85 / 25) | cryptic | 9 | 0 | 0 | 4 | 26/26 |
| Adventure backpack (10 / 102 / 27) | original | 6 | 1 | 0 | 11 | 27/27 |
| Adventure backpack (10 / 102 / 27) | cryptic | 10 | 14 | 14 | 12 | 27/27 |

What was produced:

| Exercise | Names | Classes / methods | Ifs | Mentor findings | Findings per method | Coverage % |
|---|---|---|---|---|---|---|
| RobotWars (3 classes, 49 methods, 18 tests) | original | 7 / 58 | 7 | 24 | 0.41 | 99.8 |
| RobotWars (3 classes, 49 methods, 18 tests) | cryptic | 7 / 48 | 5 | 20 | 0.42 | 99.4 |
| Formula One (5 / 85 / 25) | original | 12 / 94 | 5 | 48 | 0.51 | 96.8 |
| Formula One (5 / 85 / 25) | cryptic | 13 / 92 | 4 | 38 | 0.41 | 95.1 |
| Adventure backpack (10 / 102 / 27) | original | 11 / 96 | 7 | 40 | 0.42 | 79.3 |
| Adventure backpack (10 / 102 / 27) | cryptic | 11 / 81 | 7 | 23 | 0.28 | 81.7 |

What happened to the names in the twins (cryptic left / original name given back / meaningful name
built from the statement's words, of the total delivered):

| Exercise | Classes | Selectors | Instance variables |
|---|---|---|---|
| RobotWars | 0 / 2 / 7 of 7 | 0 / 5 / 41 of 48 | 0 / 1 / 3 of 3 |
| Formula One | 0 / 2 / 5 of 13 | 0 / 17 / 35 of 92 | 0 / 6 / 8 of 13 |
| Adventure backpack | 8 / 0 / 3 of 11 | 58 / 18 / 40 of 113 | 0 / 6 / 8 of 10 |

## Conclusion

**The names did not decide the cost or the correctness; the size of the code did, because the
agent renamed everything first, and renaming a large package is what cost.** RobotWars and
Formula One came out equal or slightly cheaper with cryptic names (-5 and -4 percent), all
tests passing, the same number of ifs left; the Backpack twin cost 2.2 times its original (+120
percent, 3.2 times the tokens, 66 requests against 25), also with all tests passing.

The agent's first move on every twin was to rebuild the vocabulary. The statement keeps the
domain prose even at level 2 (robots, weapons, weight, speed, backpack, door), so from it and
from the tests the agent named the cryptic classes and selectors again: `Robot`, `Weapon`,
`HeavyRobot`, `attack:ownedBy:` on RobotWars; `Car`, `Track`, `Sector`, `Turbo`, `ActivatedTurbo`
on Formula One; `ClosedDoorState`, `LockedDoorState` on the Backpack. On the two smaller
exercises it renamed every class, selector and variable and ended with zero cryptic names,
recovering 2 of the original class names and 5 and 17 of the original selectors exactly, and
building meaningful names for almost all the rest. On the Backpack, the largest and the only
one where it used the rename tool (14 calls), it ran out of budget of attention: 8 of its 11
delivered classes and 58 of its 113 selectors are still `C1`, `m7:`, and it spent its calls
renaming instead of refactoring.

Design followed the same line. Ifs left were 7/5, 5/4 and 7/7 (original/cryptic), coverage
equal, mentor findings equal or fewer on the twins, with the "no class-name prefix" heuristic
the one the twins tripped on when they did invent names. The agent did not produce worse
designs from cryptic code; it produced the same designs at the same cost when it could afford
to rename first, and at twice the cost when it could not.

Two things to take from this for the study. Level 2 does not hide the domain: as long as the
statement describes it, the agent reconstructs the names, so "cryptic names" is really
"cryptic names plus a renaming task", and the cost difference measures the renaming. And the
agent's reflex is right for a human reader but expensive for the run: it renames before it
refactors, one rename per request.

Caveats: one run per cell; the Formula One original needed a rerun after a stall in thinking,
so that pair has one selected run; the acceptance of the twins counts all test classes, since
the given class is renamed; `exploration before first change` counts the first rename as a
change.

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
