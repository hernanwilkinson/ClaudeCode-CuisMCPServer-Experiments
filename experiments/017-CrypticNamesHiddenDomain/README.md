# 017-CrypticNamesHiddenDomain

## Hypothesis

Cryptic names cost when the statement does not give the domain back. In 007 the level-2 twins (every name replaced, literals coded, comments removed, but the statement's prose intact) cost the same as the originals on the two smaller exercises because the agent rebuilt the names from the prose before refactoring. Level-3 twins (obfuscate-exercise.py --level 3) also replace in the statement every word the author's names were made of (robot, weapon, attack, speed, weight, car, track, sector, backpack, door, ...), so the domain is hidden to the extent the code named it. One cell, scenario 4-Refactoring with configurations 2-EvaluateAsLastResource + 8-DesignHeuristicsInline, free, Opus 5 high, on the original, the level-2 twin and the level-3 twin of RobotWars (2021-1c-parcial1), Formula One (2022-1c-parcial1) and Adventure backpack (2020-2c-parcial1), 3 runs per exercise, two in parallel, interleaved, one day. Measured: tokens, requests, exploration before the first change, rename calls, cryptic names left and original names recovered in the delivered code, acceptance by the given tests, ifs and mentor findings.

## Design

Started 2026-09-17. Model `claude-opus-5`, effort high, technique `free`,
3 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `4-Refactoring:2-EvaluateAsLastResource+8-DesignHeuristicsInline:free`

Exercises:
- `exercises/2021-1c-parcial1`
- `exercises/2021-1c-parcial1-cryptic`
- `exercises/2021-1c-parcial1-cryptic3`
- `exercises/2022-1c-parcial1`
- `exercises/2022-1c-parcial1-cryptic`
- `exercises/2022-1c-parcial1-cryptic3`
- `exercises/2020-2c-parcial1`
- `exercises/2020-2c-parcial1-cryptic`
- `exercises/2020-2c-parcial1-cryptic3`

## Results

Twenty-seven runs between 06:30 and 07:19 on 2026-09-17, all completed and all passing the
given tests (in the twins the given test class is part of the package and may be renamed, so the
acceptance there is every test class of the package). Medians of the three runs per exercise;
[table.md](table.md) has every measure. Names: cryptic left / original name recovered /
meaningful name built from the statement's words, of the total delivered, for classes,
selectors and instance variables.

| Exercise | Names | Input-side | Uncached input | Cache read | Output | Thinking | Requests | Calls | Batches | Exploration before first change | Refactoring calls | Rename calls | Hand-made | Seconds | Ifs | Mentor findings | Coverage % | Cryptic names left | Original names recovered |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| RobotWars | original | 331 k | 35 k | 296 k | 16 k | 7 k | 8 | 7 | 5 | 9 | 0 | 0 | 6 | 133 | 6 | 20 | 99.1 | - | - |
| RobotWars | level 2 | 425 k | 46 k | 377 k | 22 k | 11 k | 10 | 10 | 5 | 11 | 0 | 0 | 5 | 210 | 8 | 19 | 97.9 | 0 | 16 |
| RobotWars | level 3 | 443 k | 38 k | 405 k | 21 k | 11 k | 11 | 10 | 5 | 7 | 0 | 0 | 6 | 184 | 6 | 14 | 94.4 | 55 | 0 |
| Formula One | original | 761 k | 60 k | 701 k | 31 k | 15 k | 13 | 12 | 8 | 8 | 0 | 0 | 7 | 253 | 5 | 52 | 96.5 | - | - |
| Formula One | level 2 | 546 k | 62 k | 484 k | 36 k | 20 k | 10 | 11 | 6 | 8 | 0 | 0 | 4 | 302 | 4 | 41 | 97.5 | 33 | 7 |
| Formula One | level 3 | 682 k | 63 k | 623 k | 34 k | 18 k | 12 | 12 | 6 | 8 | 11 | 9 | 4 | 297 | 5 | 31 | 96.9 | 41 | 4 |
| Backpack | original | 404 k | 37 k | 367 k | 12 k | 4 k | 9 | 9 | 5 | 6 | 1 | 0 | 4 | 101 | 7 | 46 | 78.8 | - | - |
| Backpack | level 2 | 269 k | 31 k | 240 k | 13 k | 7 k | 7 | 7 | 4 | 4 | 0 | 0 | 10 | 127 | 7 | 32 | 77.7 | 111 | 1 |
| Backpack | level 3 | 319 k | 31 k | 288 k | 12 k | 6 k | 8 | 9 | 5 | 6 | 1 | 0 | 12 | 117 | 7 | 33 | 76.3 | 115 | 1 |

Twins against the original (medians):

| Exercise | Comparison | Input-side | Uncached input | Output | Requests | Calls | Seconds |
|---|---|---|---|---|---|---|---|
| RobotWars | level 2 vs original | +28% | +31% | +34% | +25% | +43% | +58% |
| RobotWars | level 3 vs original | +34% | +7% | +26% | +38% | +43% | +38% |
| Formula One | level 2 vs original | -28% | +2% | +14% | -23% | -8% | +19% |
| Formula One | level 3 vs original | -10% | +4% | +10% | -8% | +0% | +17% |
| Backpack | level 2 vs original | -33% | -17% | +12% | -22% | -22% | +26% |
| Backpack | level 3 vs original | -21% | -15% | +6% | -11% | +0% | +16% |

Every run (names: classes / selectors / instance variables, each as cryptic left / original
recovered / meaningful built, of total):

| Exercise | Names | Given tests | Input-side | Uncached | Output | Requests | Calls | Exploration | Rename calls | Hand-made | Seconds | Names delivered | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| RobotWars | original | 18/18 | 428 k | 56 k | 16 k | 10 | 9 | 11 | 0 | 6 | 133 | - | `20260917-063036-55583` |
| RobotWars | original | 18/18 | 331 k | 35 k | 17 k | 8 | 7 | 9 | 0 | 7 | 151 | - | `20260917-064553-57360` |
| RobotWars | original | 18/18 | 283 k | 35 k | 16 k | 7 | 6 | 6 | 0 | 6 | 131 | - | `20260917-070157-59096` |
| RobotWars | level 2 | 18/18 | 425 k | 56 k | 22 k | 10 | 9 | 8 | 0 | 5 | 191 | 0/2/7 of 7 · 0/14/44 of 48 · 0/1/2 of 3 | `20260917-063036-55584` |
| RobotWars | level 2 | 18/18 | 416 k | 39 k | 22 k | 10 | 10 | 11 | 0 | 5 | 210 | 0/2/7 of 7 · 0/13/47 of 51 · 0/1/3 of 3 | `20260917-064709-57533` |
| RobotWars | level 2 | 18/18 | 528 k | 46 k | 26 k | 11 | 11 | 12 | 7 | 5 | 228 | 2/0/5 of 7 · 38/7/42 of 88 · 0/4/6 of 7 | `20260917-070232-59256` |
| RobotWars | level 3 | 18/18 | 443 k | 38 k | 21 k | 10 | 10 | 8 | 0 | 6 | 184 | 2/0/0 of 7 · 53/0/3 of 87 · 0/0/0 of 3 | `20260917-063305-55887` |
| RobotWars | level 3 | 18/18 | 439 k | 36 k | 20 k | 11 | 10 | 7 | 0 | 7 | 182 | 2/0/5 of 7 · 49/0/25 of 84 · 7/0/0 of 7 | `20260917-064840-57717` |
| RobotWars | level 3 | 18/18 | 487 k | 38 k | 22 k | 11 | 12 | 6 | 0 | 5 | 186 | 0/1/4 of 7 · 0/13/44 of 53 · 0/1/2 of 3 | `20260917-070423-59447` |
| Formula One | original | 27/27 | 927 k | 70 k | 38 k | 15 | 14 | 9 | 0 | 6 | 318 | - | `20260917-063403-56057` |
| Formula One | original | 25/25 | 761 k | 60 k | 31 k | 13 | 12 | 7 | 0 | 7 | 253 | - | `20260917-065054-57918` |
| Formula One | original | 26/26 | 558 k | 57 k | 30 k | 10 | 10 | 8 | 0 | 15 | 234 | - | `20260917-070636-59649` |
| Formula One | level 2 | 25/25 | 482 k | 59 k | 35 k | 9 | 8 | 8 | 0 | 4 | 302 | 4/1/3 of 14 · 29/1/46 of 121 · 0/5/6 of 11 | `20260917-063625-56267` |
| Formula One | level 2 | 26/26 | 546 k | 62 k | 38 k | 10 | 11 | 6 | 0 | 3 | 314 | 4/0/2 of 11 · 0/23/68 of 122 · 0/6/6 of 13 | `20260917-065157-58088` |
| Formula One | level 2 | 25/25 | 691 k | 62 k | 36 k | 12 | 13 | 8 | 0 | 8 | 298 | 4/0/2 of 9 · 29/0/36 of 110 · 0/5/5 of 11 | `20260917-070745-59822` |
| Formula One | level 3 | 27/27 | 819 k | 63 k | 34 k | 14 | 13 | 7 | 11 | 8 | 297 | 4/0/1 of 11 · 39/0/45 of 125 · 0/4/5 of 12 | `20260917-063939-56483` |
| Formula One | level 3 | 25/25 | 682 k | 59 k | 33 k | 12 | 12 | 8 | 9 | 4 | 284 | 4/0/1 of 10 · 37/0/40 of 118 · 0/3/4 of 12 | `20260917-065526-58326` |
| Formula One | level 3 | 29/29 | 661 k | 65 k | 39 k | 11 | 10 | 8 | 0 | 4 | 321 | 4/0/1 of 14 · 0/22/73 of 132 · 0/4/5 of 14 | `20260917-071049-60035` |
| Backpack | original | 27/27 | 357 k | 37 k | 12 k | 8 | 8 | 6 | 0 | 4 | 98 | - | `20260917-064146-56753` |
| Backpack | original | 27/27 | 447 k | 35 k | 12 k | 10 | 11 | 8 | 1 | 3 | 105 | - | `20260917-065729-58522` |
| Backpack | original | 27/27 | 404 k | 37 k | 12 k | 9 | 9 | 5 | 0 | 8 | 101 | - | `20260917-071300-60236` |
| Backpack | level 2 | 27/27 | 269 k | 29 k | 12 k | 7 | 7 | 4 | 0 | 10 | 112 | 8/0/3 of 11 · 98/0/11 of 131 · 10/1/0 of 11 | `20260917-064343-56990` |
| Backpack | level 2 | 27/27 | 228 k | 31 k | 13 k | 6 | 5 | 6 | 0 | 5 | 127 | 8/0/3 of 11 · 92/0/11 of 125 · 9/1/0 of 10 | `20260917-065933-58717` |
| Backpack | level 2 | 27/27 | 410 k | 31 k | 13 k | 10 | 12 | 4 | 0 | 12 | 134 | 8/0/3 of 11 · 94/0/9 of 127 · 9/2/1 of 11 | `20260917-071459-60454` |
| Backpack | level 3 | 27/27 | 319 k | 31 k | 12 k | 8 | 8 | 7 | 0 | 13 | 117 | 8/0/3 of 11 · 77/16/20 of 130 · 9/1/0 of 10 | `20260917-064454-57158` |
| Backpack | level 3 | 27/27 | 310 k | 29 k | 11 k | 8 | 9 | 4 | 0 | 12 | 107 | 8/0/3 of 11 · 97/0/8 of 129 · 10/1/0 of 11 | `20260917-070027-58908` |
| Backpack | level 3 | 27/27 | 373 k | 34 k | 14 k | 9 | 9 | 6 | 0 | 6 | 134 | 8/0/3 of 11 · 99/0/8 of 130 · 10/1/0 of 11 | `20260917-071629-60638` |

## Conclusion

**Not supported on cost: hiding the domain did not make the cryptic twins dearer than the
originals.** Level 3 against the original is +34, -10 and -21 percent input-side and +26, +10
and +6 percent output; level 2 is +28, -28 and -33 percent and +34, +14 and +12 percent. Only
RobotWars, the smallest, costs more with cryptic names, and level 3 costs about what level 2
costs on every exercise (within 15 percent input-side, within 8 percent output). Correctness
was the same everywhere (all given tests pass in the 27 runs) and the ifs left are the same
per exercise (6 to 8, 4 to 5, 7).

**What changed is what the agent did with the names, and it is not what 007 saw.** In 007
the agent's first move on every twin was to rename everything back. Today, with the same
configuration on the same images, it mostly did not: on the Backpack it left 92 to 99 of about
130 selectors and 8 of 11 classes cryptic in all six twin runs and made no rename call; on
Formula One it left 29 to 39 selectors cryptic in four of six runs and used the rename tool
in two level-3 runs only (9 and 11 calls); on RobotWars level 2 it rebuilt every name from the
prose (0 cryptic, 44 to 47 meaningful selectors of 48 to 51, 13 to 14 original selectors
recovered), and on level 3, where the prose is masked, two runs left 49 to 53 of 84 to 87
selectors cryptic and built 3 to 25 names, while the third rebuilt the vocabulary in full
(0 cryptic, 44 meaningful, 13 original selectors recovered) from what the masking leaves:
the tests' values, the genre words and the unmasked prose.

So the level-3 masking works where the code named the domain (RobotWars, 7 words, two runs of
three left the names cryptic) and costs nothing on the exercises the agent does not rename
anyway. And the renaming behaviour of 007 is not stable: the same agent, prompt and image
rename on one day and not on another, which makes "the cost of cryptic names" the cost of a
choice the agent may or may not make. Experiment 018 removes the choice.

Design followed the names. Mentor findings are lower on the twins (14 to 41 against 20 to 52),
partly because the naming heuristics have nothing to say about `m7:`; coverage fell 5 points
on RobotWars level 3 and 1 to 2 elsewhere; hand-made refactorings on the Backpack twins rose
to 10 to 13 per run against 3 to 8 on the original, at fewer tokens.

Caveats: three runs per exercise; the twins' acceptance counts every test class of the package;
the level-3 statement still carries the words the code never named (genre, company, the
tests' literal values), which is how one RobotWars run rebuilt everything; the same-day
originals are also this experiment's controls for 018.

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
