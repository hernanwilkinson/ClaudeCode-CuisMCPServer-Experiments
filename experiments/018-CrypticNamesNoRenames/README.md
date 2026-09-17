# 018-CrypticNamesNoRenames

## Hypothesis

Forbidden to rename, the agent refactoring cryptic code costs more and delivers a worse design than with good names, because in 007 and 017 it could rebuild the vocabulary first (and in 007 it did). Configuration 10-NoRenames tells it to keep every class, selector, instance variable and temporary name exactly as given and to improve the design by structure only. Two cells, scenario 4-Refactoring with 2-EvaluateAsLastResource + 8-DesignHeuristicsInline + 10-NoRenames, free, Opus 5 high: on the originals and on the level-2 cryptic twins of RobotWars (2021-1c-parcial1), Formula One (2022-1c-parcial1) and Adventure backpack (2020-2c-parcial1), 3 runs per exercise, two in parallel, interleaved. The same-day controls without the clause are the original and level-2 cells of experiment 017, run one hour earlier on the same images and configuration. Measured: tokens, requests, exploration before the first change, rename calls and names changed despite the clause, hand-made and tool refactorings, acceptance, ifs, mentor findings, coverage.

## Design

Started 2026-09-17. Model `claude-opus-5`, effort high, technique `free`,
3 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `4-Refactoring:2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames:free`

Exercises:
- `exercises/2021-1c-parcial1`
- `exercises/2021-1c-parcial1-cryptic`
- `exercises/2022-1c-parcial1`
- `exercises/2022-1c-parcial1-cryptic`
- `exercises/2020-2c-parcial1`
- `exercises/2020-2c-parcial1-cryptic`

## Results

Eighteen runs between 07:20 and 07:50 on 2026-09-17, all completed and all passing the given
tests. Medians of the three runs per exercise; [table.md](table.md) has every measure. The
controls are the original and level-2 cells of [017](../017-CrypticNamesHiddenDomain/README.md),
run between 06:30 and 07:19 the same morning with the same images and the same configuration
minus the no-renames clause.

| Exercise | Names | Clause | Input-side | Uncached input | Cache read | Output | Thinking | Requests | Calls | Exploration before first change | Refactoring calls | Rename calls | Hand-made | Seconds | Ifs | Mentor findings | Coverage % | Cryptic names left | Original names recovered |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| RobotWars | original | free to rename (017) | 331 k | 35 k | 296 k | 16 k | 7 k | 8 | 7 | 9 | 0 | 0 | 6 | 133 | 6 | 20 | 99.1 | - | - |
| RobotWars | original | no renames | 287 k | 35 k | 250 k | 16 k | 8 k | 7 | 7 | 10 | 0 | 0 | 5 | 138 | 6 | 19 | 94.2 | - | - |
| RobotWars | level 2 | free to rename (017) | 425 k | 46 k | 377 k | 22 k | 11 k | 10 | 10 | 11 | 0 | 0 | 5 | 210 | 8 | 19 | 97.9 | 0 | 16 |
| RobotWars | level 2 | no renames | 341 k | 37 k | 303 k | 20 k | 11 k | 8 | 8 | 7 | 0 | 0 | 6 | 178 | 6 | 18 | 94.7 | 53 | 11 |
| Formula One | original | free to rename (017) | 761 k | 60 k | 701 k | 31 k | 15 k | 13 | 12 | 8 | 0 | 0 | 7 | 253 | 5 | 52 | 96.5 | - | - |
| Formula One | original | no renames | 867 k | 62 k | 798 k | 34 k | 17 k | 14 | 13 | 8 | 0 | 0 | 13 | 275 | 5 | 49 | 94.3 | - | - |
| Formula One | level 2 | free to rename (017) | 546 k | 62 k | 484 k | 36 k | 20 k | 10 | 11 | 8 | 0 | 0 | 4 | 302 | 4 | 41 | 97.5 | 33 | 7 |
| Formula One | level 2 | no renames | 662 k | 55 k | 608 k | 30 k | 17 k | 12 | 11 | 7 | 5 | 0 | 11 | 261 | 4 | 37 | 95.6 | 81 | 1 |
| Backpack | original | free to rename (017) | 404 k | 37 k | 367 k | 12 k | 4 k | 9 | 9 | 6 | 1 | 0 | 4 | 101 | 7 | 46 | 78.8 | - | - |
| Backpack | original | no renames | 301 k | 37 k | 265 k | 12 k | 6 k | 7 | 7 | 5 | 1 | 0 | 3 | 108 | 7 | 46 | 77.4 | - | - |
| Backpack | level 2 | free to rename (017) | 269 k | 31 k | 240 k | 13 k | 7 k | 7 | 7 | 4 | 0 | 0 | 10 | 127 | 7 | 32 | 77.7 | 111 | 1 |
| Backpack | level 2 | no renames | 349 k | 30 k | 322 k | 12 k | 6 k | 9 | 10 | 4 | 1 | 0 | 11 | 111 | 7 | 34 | 78.2 | 117 | 1 |

The clause against the free cell, and the twin against the original under the clause (medians):

| Exercise | Comparison | Input-side | Uncached input | Output | Requests | Calls | Seconds |
|---|---|---|---|---|---|---|---|
| RobotWars | original: no renames vs free | -13% | -0% | -2% | -12% | +0% | +4% |
| RobotWars | level 2: no renames vs free | -20% | -19% | -10% | -20% | -20% | -15% |
| Formula One | original: no renames vs free | +14% | +3% | +8% | +8% | +8% | +9% |
| Formula One | level 2: no renames vs free | +21% | -11% | -15% | +20% | +0% | -14% |
| Backpack | original: no renames vs free | -25% | -0% | +3% | -22% | -22% | +7% |
| Backpack | level 2: no renames vs free | +30% | -2% | -8% | +29% | +43% | -13% |
| RobotWars | level 2 vs original, both no renames | +19% | +5% | +23% | +14% | +14% | +29% |
| Formula One | level 2 vs original, both no renames | -24% | -12% | -10% | -14% | -15% | -5% |
| Backpack | level 2 vs original, both no renames | +16% | -18% | -0% | +29% | +43% | +3% |

Every run (names: classes · selectors · instance variables, each as cryptic left / original
recovered / meaningful built, of total delivered):

| Exercise | Names | Given tests | Input-side | Uncached | Output | Requests | Calls | Exploration | Rename calls | Hand-made | Ifs | Mentor | Seconds | Names delivered | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| RobotWars | original | 18/18 | 287 k | 37 k | 19 k | 7 | 6 | 11 | 0 | 5 | 6 | 19 | 156 | - | `20260917-072011-60988` |
| RobotWars | original | 18/18 | 281 k | 34 k | 16 k | 7 | 7 | 5 | 0 | 6 | 6 | 16 | 134 | - | `20260917-072957-62039` |
| RobotWars | original | 18/18 | 379 k | 35 k | 16 k | 9 | 9 | 10 | 0 | 4 | 6 | 28 | 138 | - | `20260917-074018-63192` |
| RobotWars | level 2 | 18/18 | 341 k | 37 k | 21 k | 8 | 8 | 7 | 0 | 4 | 6 | 13 | 190 | 2/0/5 of 7 · 42/8/29 of 86 · 9/0/0 of 9 | `20260917-072011-60987` |
| RobotWars | level 2 | 18/18 | 477 k | 39 k | 20 k | 11 | 13 | 7 | 0 | 6 | 6 | 18 | 178 | 2/0/5 of 7 · 42/11/45 of 94 · 7/0/0 of 7 | `20260917-073042-62217` |
| RobotWars | level 2 | 18/18 | 316 k | 32 k | 17 k | 8 | 8 | 7 | 0 | 6 | 8 | 20 | 155 | 2/0/0 of 7 · 50/11/37 of 96 · 9/0/0 of 9 | `20260917-074036-63358` |
| Formula One | original | 26/26 | 711 k | 62 k | 34 k | 12 | 12 | 8 | 0 | 13 | 5 | 50 | 273 | - | `20260917-072303-61292` |
| Formula One | original | 25/25 | 867 k | 69 k | 41 k | 14 | 13 | 7 | 0 | 14 | 4 | 47 | 312 | - | `20260917-073228-62399` |
| Formula One | original | 26/26 | 938 k | 60 k | 31 k | 16 | 15 | 8 | 0 | 12 | 5 | 49 | 275 | - | `20260917-074252-63551` |
| Formula One | level 2 | 25/25 | 896 k | 60 k | 34 k | 15 | 15 | 6 | 0 | 11 | 4 | 37 | 292 | 4/1/2 of 12 · 66/0/18 of 125 · 11/0/0 of 14 | `20260917-072337-61451` |
| Formula One | level 2 | 25/25 | 598 k | 55 k | 29 k | 11 | 10 | 7 | 0 | 13 | 4 | 34 | 252 | 4/1/1 of 13 · 65/1/22 of 125 · 12/0/0 of 15 | `20260917-073356-62598` |
| Formula One | level 2 | 25/25 | 662 k | 55 k | 30 k | 12 | 11 | 7 | 0 | 7 | 4 | 42 | 261 | 4/1/4 of 16 · 67/0/14 of 125 · 13/0/0 of 13 | `20260917-074327-63727` |
| Backpack | original | 27/27 | 294 k | 35 k | 12 k | 7 | 7 | 6 | 0 | 2 | 7 | 51 | 102 | - | `20260917-072756-61689` |
| Backpack | original | 27/27 | 360 k | 38 k | 14 k | 8 | 7 | 5 | 0 | 11 | 7 | 46 | 122 | - | `20260917-073758-62834` |
| Backpack | original | 27/27 | 301 k | 37 k | 12 k | 7 | 6 | 5 | 0 | 3 | 7 | 46 | 108 | - | `20260917-074746-63976` |
| Backpack | level 2 | 27/27 | 349 k | 27 k | 10 k | 9 | 9 | 4 | 0 | 8 | 7 | 38 | 97 | 8/0/3 of 11 · 98/0/5 of 127 · 11/0/0 of 11 | `20260917-072847-61855` |
| Backpack | level 2 | 27/27 | 405 k | 30 k | 12 k | 10 | 12 | 4 | 0 | 11 | 7 | 34 | 111 | 8/0/3 of 11 · 95/0/9 of 130 · 10/1/0 of 11 | `20260917-073827-62996` |
| Backpack | level 2 | 27/27 | 310 k | 30 k | 12 k | 8 | 10 | 6 | 0 | 11 | 7 | 32 | 115 | 8/0/3 of 11 · 99/0/10 of 127 · 10/1/0 of 11 | `20260917-074807-64140` |

## Conclusion

**Not supported. Forced to keep the cryptic names, the agent refactored the twins for the same
tokens and to the same design as the originals.** Under the clause, level 2 against the original
is +19, -24 and +16 percent input-side and +23, -10 and 0 percent output, the same ifs (6, 4 to
5, 7), mentor findings within 4 to 12, coverage within 1 point, all given tests passing. The
clause was followed: no rename call in any of the 18 runs, every given instance variable still
cryptic (9 of 9, 11 to 13 of 13 to 15, 10 to 11 of 11), the given classes cryptic except the ones
the agent replaced by new ones, and the given selectors kept (the "meaningful" selectors in the
twins are the methods the agent added, which the clause allows it to name).

The clause itself changed the cost little and inconsistently: -13, +14 and -25 percent on the
originals and -20, +21 and +30 percent on the twins, all inside the spread of three runs. It did
not make the agent explore more (5 to 10 reads before the first change, as without it) or refactor
less (3 to 13 hand-made refactorings per run, as without it).

Across 007, 017 and 018 the picture of cryptic names is now: on the smallest exercise (RobotWars,
3 classes, 49 methods) the twin costs 20 to 35 percent more input-side and 20 to 35 percent more
output than the original whatever the agent may do with the names; on the two larger ones it costs
the same or less; and the design measures never separate them. The agent refactors structure
without needing the names, and when it does rename (007, one run of 017) that is where the extra
tokens go.

Caveats: three runs per cell; the controls come from the previous hour rather than the same
matrix; the twins' acceptance counts every test class of the package; the analysis counts a
selector as "recovered" when the agent names a new method with an original word, which is
allowed under the clause.

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
