# Exercises

Fifty-seven exam exercises of the Ingeniería de Software 1 course (UBA, FCEN), imported on
2026-09-09 from the `UBA-FCEN-IngSoft1/Parciales` repository, plus `smoke`, a tiny task used to
test the pipeline. Every directory holds:

- `spec.md`: the statement translated to English, with the submission logistics removed.
  Review these; the translation was done by agents, one per semester, from the original
  statement kept next to it as `spec-original.<ext>`.
- `exercise.json`: name, kind, package (system category), starting and solution files, and
  design flags used for the table below.
- `starting/`: the code the student received, when there was any. Fourteen files that were
  ISO-8859-1 were re-encoded as UTF-8, and the five 2025 files that carried the course's
  exam-control instrumentation had it removed; `starting/original/` keeps the verbatim copies.
- `solution/`: every solution found (video solutions, alternatives, step-by-step zips, fixes).
- `source.md`: where each file came from, what was removed from the statement, and any doubt
  the importer had.

Regenerate the table with `python3 scripts/exercises-table.py exercises`.

## Recommended exercises per scenario

The tool scenarios are the ones in `scripts/scenarios.sh`; the configurations are the clauses in
`scripts/configs`. Sizes are classes and methods in the starting code.

**Refactoring of given code (tool scenarios 3 versus 4, configuration 4).** The first midterms
are all "make this working code good": symbols compared with ifs, `isKindOf:` chains, index
loops, duplicated tests. Best picks, smallest first:

| Exercise | Size | Why |
|---|---|---|
| 2019-2c-parcial1 Ada's Coffee | 13 / 48 | Product and customer kinds as symbols, test duplication; two reference solutions (minimal and maximal) |
| 2021-1c-parcial1 RobotWars | 6 / 49 | A 3 x 2 dispatch matrix of ifs on two symbol axes; double dispatch versus hierarchies |
| 2022-1c-parcial1 Formula One | medium | Turbo as boolean plus counter checked everywhere; index loops in Track and GrandPrix; duplicated fixtures |
| 2022-2c-parcial1 Pirate crew | medium | Nested `isKindOf:` x terrain symbols over a heterogeneous collection; index loops |
| 2020-1c-parcial1 I, Robot | medium | Robot status symbol used in two classes; Trailer loops to `inject:into:` and `select:` |
| 2024-1c-parcial1 Sims Hotels | 9 / 110 | Room state as nil-or-symbol to state objects; Hotel loops to Floor delegation; eight numbered tasks |
| 2023-1c-parcial1 Drilling | medium | 3 x 3 nested ifs on bit x layer symbols, heterogeneous soil array, duplicated constants, plus one new rule |

**Refactorings that need the extra tools (extract class, move method, insert superclass;
scenario 4, configuration 4).**

| Exercise | Why |
|---|---|
| 2023-2c-recuperatorio-parcial2 BattleField | Player and Team must be extracted from state scattered in MineField (18 / 119) before adding turns and fights |
| 2022-1c-recuperatorio-parcial2 CustomerImporter sales | The hints literally ask for Insert Superclass and Push Up to get a generic CSV importer |
| 2021-1c-recuperatorio Truco envido | A large given round model (8 / 129) to understand and extend |

**LiveTyping (scenarios 5 and 6, configurations 5 and 6).** Exercises where the concrete
classes flowing through variables are not obvious from the source:

| Exercise | Why |
|---|---|
| 2022-1c-recuperatorio-parcial1 CustomerImporter types | Zip code is an Integer or a String, identification a type string plus number; the ifs test types |
| 2022-2c-recuperatorio-parcial2 Qatar goals and offside | Players are keys of per-team Dictionaries with no Team object; kinds are dispatched by ifs |
| 2023-1c-recuperatorio Driving assistant V2 | Extends a DrivingMode hierarchy (12 / 116) with lane, signal and consumption axes |
| 2019-2c-parcial2 Mars Rover features | Three orthogonal features on a heading hierarchy; ground sensor and safe-mode state |
| 2021-2c-parcial1 iswCity | Zone and service kinds as symbols dispatched in City loops, Aconcagua units |

**Search tools (scenario 3, configuration 3).** Where the right collection message is the whole
point:

| Exercise | Why |
|---|---|
| 2020-2c-parcial1 Adventure backpack | `whileTrue:` index loops to `inject:into:` and `detect:` |
| 2024-1c-parcial2 SW-Project | Worksheet aggregation across a composite, per developer and day |
| 2025-2c-recuperatorio Aterrizar | Multi-leg search over `todasLasCombinaciones`, filters by weekday and availability |
| 2019-1c-parcial1 Parking lot | `do:` plus `ifTrue:` filters and three copy-pasted total loops; no solution in the repository |

**Debugger (scenario 7).** Feature tasks where the given tests break in non-obvious ways:

| Exercise | Why |
|---|---|
| 2025-1c-recuperatorio Fleet Escape | New ship states layered on an existing double dispatch; two independent solutions |
| 2020-1c-recuperatorio-parcial2 Vehicles carrying vehicles | Two recursive composites with fall-through and failure counters |
| 2020-2c-recuperatorio-parcial2 Doors between rooms | A door lives in two rooms and intercepts movement |

**Greenfield with the tests given (configurations 7 and 8, technique factor).** The model is
built to make fixed tests pass, so correctness is measured by those tests and the only variable
is design; two of them ship a with-ifs and a without-ifs solution:

| Exercise | Tests given | Solutions |
|---|---|---|
| 2023-2c-parcial1 Penalty shoot-out | 34 | nested ifs on symbols, then triple dispatch |
| 2025-2c-parcial1 Marine ROV | 16 | with ifs, and with Ambiente / Brazo / Especimen / Estado hierarchies |
| 2025-1c-parcial1 Smugglers Run | 20 | Spanish practice solution plus English historical versions including a ConIf step |
| 2024-2c-parcial1 Monsters and Adventurers | 12 | solution plus a step-by-step zip |
| 2021-1c-parcial2 Truco round | card model given | four alternative designs |

**Greenfield with TDD from nothing (scenarios 1 and 2, technique factor).** Medium size and no
starting code:

2022-1c-parcial2 Ladders and Slides 3D, 2023-2c-parcial2 MineField, 2021-2c-parcial2
SmartBuilding, 2023-1c-parcial2 Driving assistant, 2022-2c-parcial2 Qatar football,
2024-2c-recuperatorio-parcial2 Tetris. Small ones for pilots: 2018-2c-recuperatorio Super 4,
2019-1c-recuperatorio Fast food hours. Avoid 2018-1c-parcial2 Mars Rover as a measurement task:
it is a well-known kata and the model has seen it.

**Long-horizon sequences (experiment E5).** The staff solution of one exam is the starting code
of the next, which gives natural increment chains:

- 2020-1c: parcial1 (I, Robot) -> parcial2 tema1 or tema2 (shipping) -> recuperatorio-parcial2
- 2020-2c: parcial1 (backpack) -> parcial2 (rooms) -> recuperatorio-parcial1 (hole) and -parcial2 (doors)
- 2022-2c: parcial2 (Qatar) -> recuperatorio-parcial1 (kick) -> recuperatorio-parcial2 (offside)
- 2023-1c: parcial2 (driving assistant) -> recuperatorio (V2)
- 2023-2c: parcial2 (MineField) -> recuperatorio-parcial1 -> recuperatorio-parcial2 (BattleField)
- 2024-1c: parcial2 (SW-Project) -> recuperatorio (2.0, three cumulative iterations)
- 2025-1c: parcial1 (Smugglers) -> recuperatorio (Fleet Escape); parcial2 (Painter) -> recuperatorio-segundo

## Masked variants

Six exercises are famous katas or games, so a model may recall published solutions. Each has a
masked twin, isomorphic in every rule and number unless noted, with a new story, new names and,
where the student receives code, that code renamed identically and re-verified in a scenario
image. The masked directories keep no copy of the original statement; `source.md` holds the
complete mapping. Use the masked twin for measurement and the original only for reference.

| Original | Masked | What changed | Verified |
|---|---|---|---|
| 2018-1c-parcial2 Mars Rover | [2018-1c-parcial2-masked](2018-1c-parcial2-masked/spec.md) Seabed Survey Crawler | Story, facings U/D/L/R, commands a/t/g/h | no code given |
| 2019-2c-parcial2 Mars Rover features | [2019-2c-parcial2-masked](2019-2c-parcial2-masked/spec.md) Crawler: sonar and guarded runs | Same vocabulary plus firm sand / silt / boulder; 124 identifiers renamed in starting code and solution | 16/16 starting tests, 47/47 solution tests |
| 2018-2c-recuperatorio Super 4 | [2018-2c-recuperatorio-masked](2018-2c-recuperatorio-masked/spec.md) Cascade | Beads in a rack; 8 x 8 board, 32 beads, five in a line (numbers changed, solution is for the original) | no code given |
| 2024-2c-recuperatorio-parcial1 Tetris (reduced) | [2024-2c-recuperatorio-parcial1-masked](2024-2c-recuperatorio-parcial1-masked/spec.md) Kiln Stacker (reduced) | Tile clusters Block/Fork/Rod/Step/Hook, courses instead of rows | no code given |
| 2024-2c-recuperatorio-parcial2 Tetris | [2024-2c-recuperatorio-parcial2-masked](2024-2c-recuperatorio-parcial2-masked/spec.md) Kiln Stacker | Same | no code given |
| 2024-2c-parcial2 Pacman | [2024-2c-parcial2-masked](2024-2c-parcial2-masked/spec.md) Orchard Harvester | Harvester, fruit, hedges, drones Rook and Wren; board letters R/W/h; starting code and two solutions renamed | 9/10 given tests (test10 fails by design, as in the original), 23/23 and 24/24 solution tests |

Two 10Pines exercises below are also famous katas (Game of Life, Roman numbers) and would need
the same treatment before being used for measurement.

## Cryptic twins

Made on 2026-09-15 with `scripts/obfuscate-exercise.py <exercise> <twin> <package> --level 2`
for the names experiment (007): the same starting code with every name the exercise's author
chose replaced by a meaningless one, using the image's refactoring engine so the tests keep
passing. Classes become `C1..`, selectors `m1`, `m2:a2:`, instance variables `v1..`,
temporaries and arguments `t1..`, test selectors `test01..`; at level 2 symbols become `s1..`
and strings `S1..`; comments are removed, method categories become `x`, the class category
becomes the twin's package. Selectors that override base protocol (`initialize`, `=`,
`printOn:`) keep their names, and so does a selector a base class also implements when
renaming it breaks the tests (`add:`, `includes:`, `size`). `renames.json` in the twin holds the
whole table; the spec is the original with the names it quotes and the symbol words replaced
the same way, so the domain prose stays and the identifiers do not.

Level 3 twins (`-cryptic3`, made on 2026-09-17 with `--level 3` for experiment 017) go one step
further: the words the author's names were made of (the camelCase parts of the class, selector,
variable and symbol names and of the title, minus stop words) are replaced in the statement's
prose too, by `w1`, `w2`, ... with their plural and verb forms, outside code spans. "Robots have
a life time, a speed and a maximum weight of weapons" reads "W5s have a w7 time, a w6 and a
maximum w4 of w3s". Words of the prose that never appear in a name stay (the game's genre, the
company), so the domain is hidden to the extent the code named it; `renames.json` has the word
table under `words`. Twins: `2021-1c-parcial1-cryptic3`, `2022-1c-parcial1-cryptic3`,
`2020-2c-parcial1-cryptic3` (packages Task1, Task2, Task3).

| Twin | Of | Package | Renamed |
|---|---|---|---|
| `2021-1c-parcial1-cryptic` | RobotWars | Task1 | 3 classes, 48 selectors, 9 instance variables, 74 temporaries, 6 symbols, 9 strings |
| `2022-1c-parcial1-cryptic` | Formula One | Task2 | 5 classes, 81 selectors, 14 instance variables, 156 temporaries, 3 symbols, 12 strings |
| `2020-2c-parcial1-cryptic` | Adventure backpack | Task3 | 10 classes, 81 selectors, 11 instance variables, 107 temporaries, 3 symbols, 18 strings |

## 10Pines training exercises

Exercises from the 10Pines courses in `~/10Pines Dropbox/.../10Pines-Capacitacion`, named
`10pines-<course>-<exercise>`. Their definitions are not in the slides for the most part: the
C1 deck and most of the C6 deck are theory, and the exercises are handed out as code, so the
importers wrote each `spec.md` from the given test class and the slides that motivate it, and
said so in `source.md`.

| Course | Exercises | State |
|---|---|---|
| C1 Diseño Avanzado I | 10pines-c1-stack, 10pines-c1-numero, 10pines-c1-idiom | complete: starting code and solutions |
| C6 TDD | 10pines-c6-tuslibros and -iteracion1..4, -gameoflife, -holidaycalendar, -romannumbers | complete: TusLibros statement is the V3 translation, every iteration's starting and final file verified green in a scenario image (8, 12, 14 and 33 tests); Game of Life and Holiday Calendar files are solutions, so those two have no starting code; Roman Numbers extracted from Monticello and verified (21 tests) |
| C2 Diseño Avanzado II | 10pines-c2-elevator, -elevator-console, -portfolio, -portfolio-treeprinter, -portfolio-timeconsuming, -visitor-rule | complete: each exercise's starting code is given; the next exercise's starting file stands in as the solution where the course has none (elevator, portfolio, treeprinter); visitor-rule has no starting code |
| C17 TDD Avanzado | 10pines-c17-customerimporter and -1 to -4 | complete: every step's final solution verified green in a scenario image (1, 9, 9 and 40 tests); the original initial test cannot run in Cuis 7.9 (its file open sends a missing message), see source.md |

Caveats: the TusLibros iteration scopes were corrected against the 78 snapshots (iteration 2 has
no Merchant Processor, iteration 3 is the Merchant Processor simulation, iteration 4 is the object
facade with sessions and a manual clock; no snapshot implements the string protocol, HTTP or batch
files that the statement describes); no slide defines Game of Life, so its spec was derived from
the solution file; the C2 elevator, portfolio and tree-printer exercises have no solution of their
own, the next exercise's starting file stands in; 10pines-c2-visitor-rule has no starting code and
may be dropped.

## Things to know before using an exercise

- **The specs carry no method guidance.** On 2026-09-11 every `spec.md` was stripped of its
  mentions of TDD, of the design heuristics (and the grading criteria that list them), of
  slides and course material, and of the `Original:` provenance line and the attached-file
  references. The statement of the problem is what remains; the technique and the heuristics
  are experiment conditions (`scripts/techniques`, `scripts/configs`). Provenance stays in
  each exercise's `source.md` and `spec-original.*`. Runs made before that date carry the old
  spec in their `prompt.md`, and the exam specs of most second midterms said "using TDD and
  the design heuristics" until then.

- **Files reclassified by the importers.** Several `.st` files the repository presents next to a
  greenfield statement are complete staff solutions (stamps after the exam, tests for every
  rule), so they went to `solution/` and the exercise has no starting code: 2018-2c-recuperatorio,
  2021-2c-parcial2, 2022-1c-parcial2, 2022-2c-parcial2, 2023-1c-parcial2, 2023-2c-parcial2,
  2024-1c-parcial2. Each `source.md` gives the evidence; move a file to `starting/` if you
  disagree.
- **No solution in the repository:** 2018-1c-recuperatorio, 2019-1c-parcial1,
  2020-1c-recuperatorio-parcial1, 2020-2c-recuperatorio-parcial1 and -parcial2,
  2025-1c-recuperatorio-segundo, the two 2019-1c "extendido" variants and 2020-1c-parcial2-tema2
  (only Tema 1 solutions exist). 2021-2c-recuperatorio-parcial1's solution removes the test
  duplication but keeps the ifs.
- **Statement versus solution discrepancies** are recorded in `source.md`: 2024-2c Tetris maps
  random 4 and 5 to different pieces than the solutions; 2019-2c-parcial2's solution keeps a
  dropped ice-rotation rule; 2022-2c make-up leaves the "passed towards the goal" condition
  informal.
- **Shared statements.** One PDF covers both make-ups in 2021-2c, 2022-1c, 2022-2c, 2023-2c and
  2024-2c; each exercise's `spec.md` holds only its part.
- **Package names.** `package` is the system category of the starting code, which sometimes
  differs from the category the exam asked students to deliver in (noted per exercise). The
  runner tells the agent to work in that category and files it out from there.
- **Dependencies.** 2021-2c-parcial1, 2024-2c-parcial1 and several 2021 to 2025 exercises need
  Aconcagua; some solutions use Chalten dates. Both are in every scenario image.
- **Figures.** Where a PDF had pictures (Monaco track, tetrominoes, movement lines, the drill),
  the translator described them in prose or ASCII and said so in the spec.
- **Contamination.** The statements are public on GitHub, in Spanish. Older and more famous
  domains (Mars Rover, Connect Four) are the likeliest to be recalled; the domain-specific ones
  with given tests are the safest.

## Inventory

| Exercise | Title | Kind | Starting code | Design traits | Fits |
|---|---|---|---|---|---|
| [10pines-c1-idiom](10pines-c1-idiom/spec.md) | CustomerBook test idioms | refactoring | 4 classes, 20 methods | refactor, duplication | 4-Refactoring |
| [10pines-c1-numero](10pines-c1-numero/spec.md) | Numero: Entero and Fraccion arithmetic | feature | 7 classes, 58 methods | refactor, feature, ifs→poly, types | 4-Refactoring, 5-LiveTyping, 6-LiveTypingRefactoring |
| [10pines-c1-stack](10pines-c1-stack/spec.md) | Stack without ifs | greenfield | 3 classes, 12 methods | scratch, ifs→poly, states | 1/2 greenfield |
| [10pines-c17-customerimporter](10pines-c17-customerimporter/spec.md) | Customer Importer (Advanced TDD, four iterations) | refactoring | 4 classes, 36 methods | refactor, feature, duplication, types | 4-Refactoring, 5-LiveTyping, 6-LiveTypingRefactoring |
| [10pines-c17-customerimporter-1](10pines-c17-customerimporter-1/spec.md) | Customer Importer 1: test it and decouple it from the file | refactoring | 4 classes, 36 methods | refactor, duplication | 4-Refactoring |
| [10pines-c17-customerimporter-2](10pines-c17-customerimporter-2/spec.md) | Customer Importer 2: make it understandable and robust | refactoring | 5 classes, 50 methods | refactor, feature, duplication | 4-Refactoring |
| [10pines-c17-customerimporter-3](10pines-c17-customerimporter-3/spec.md) | Customer Importer 3: decouple the tests from the database | refactoring | 5 classes, 86 methods | refactor, types | 4-Refactoring, 5-LiveTyping, 6-LiveTypingRefactoring |
| [10pines-c17-customerimporter-4](10pines-c17-customerimporter-4/spec.md) | Customer Importer 4: supplier import with TDD | feature | 11 classes, 112 methods | refactor, feature, duplication, types | 4-Refactoring, 5-LiveTyping, 6-LiveTypingRefactoring |
| [10pines-c2-elevator](10pines-c2-elevator/spec.md) | Elevator controller with states | greenfield | 3 classes, 25 methods | scratch, ifs→poly, types, states | 5-LiveTyping, 1/2 greenfield |
| [10pines-c2-elevator-console](10pines-c2-elevator-console/spec.md) | Elevator status console (Observer) | feature | 23 classes, 145 methods | refactor, feature, types, states | 4-Refactoring, 5-LiveTyping, 6-LiveTypingRefactoring, 7-Debug |
| [10pines-c2-portfolio](10pines-c2-portfolio/spec.md) | Portfolio of accounts (Composite) | feature | 11 classes, 48 methods | feature, collections, types | 3-Search, 5-LiveTyping |
| [10pines-c2-portfolio-timeconsuming](10pines-c2-portfolio-timeconsuming/spec.md) | Account summary with a time-consuming calculation (Future) | feature | 39 classes, 175 methods | refactor, feature | 4-Refactoring |
| [10pines-c2-portfolio-treeprinter](10pines-c2-portfolio-treeprinter/spec.md) | Portfolio transfers, certificates of deposit and tree printer (Visitor) | feature | 13 classes, 73 methods | feature, ifs→poly, collections, types | 3-Search, 5-LiveTyping |
| [10pines-c2-visitor-rule](10pines-c2-visitor-rule/spec.md) | Visitor implementation rule (metaprogramming) | greenfield | none | scratch, collections | 3-Search, 1/2 greenfield |
| [10pines-c6-gameoflife](10pines-c6-gameoflife/spec.md) | Conway's Game of Life | greenfield | none | scratch, collections, states | 3-Search, 1/2 greenfield |
| [10pines-c6-holidaycalendar](10pines-c6-holidaycalendar/spec.md) | Holiday Calendar | greenfield | none | scratch, ifs→poly, collections, types | 3-Search, 5-LiveTyping, 1/2 greenfield |
| [10pines-c6-romannumbers](10pines-c6-romannumbers/spec.md) | Roman Numbers | greenfield | none | scratch, duplication, collections | 4-Refactoring, 3-Search, 1/2 greenfield |
| [10pines-c6-tuslibros](10pines-c6-tuslibros/spec.md) | TusLibros.com On-line Bookstore | greenfield | none | scratch, collections, types, states | 3-Search, 5-LiveTyping, 1/2 greenfield |
| [10pines-c6-tuslibros-iteracion1](10pines-c6-tuslibros-iteracion1/spec.md) | TusLibros Iteration 1: Shopping Cart | greenfield | none | scratch, collections | 3-Search, 1/2 greenfield |
| [10pines-c6-tuslibros-iteracion2](10pines-c6-tuslibros-iteracion2/spec.md) | TusLibros Iteration 2: Cashier, Credit Card and Sales Book | feature | 2 classes, 23 methods | feature, collections | 3-Search |
| [10pines-c6-tuslibros-iteracion3](10pines-c6-tuslibros-iteracion3/spec.md) | TusLibros Iteration 3: Merchant Processor Simulation | feature | 8 classes, 50 methods | feature, collections, types | 3-Search, 5-LiveTyping |
| [10pines-c6-tuslibros-iteracion4](10pines-c6-tuslibros-iteracion4/spec.md) | TusLibros Iteration 4: System Facade, Sessions and Time | feature | 7 classes, 56 methods | feature, collections, types, states | 3-Search, 5-LiveTyping, 7-Debug |
| [2018-1c-parcial2](2018-1c-parcial2/spec.md) | Mars Rover | greenfield | none | scratch, ifs→poly, states | 1/2 greenfield |
| [2018-1c-parcial2-masked](2018-1c-parcial2-masked/spec.md) | Seabed Survey Crawler (masked) | greenfield | none | scratch, ifs→poly, states | 1/2 greenfield |
| [2018-1c-recuperatorio](2018-1c-recuperatorio/spec.md) | Garage Reservation | greenfield | none | scratch, ifs→poly, collections, states | 3-Search, 1/2 greenfield |
| [2018-2c-parcial2](2018-2c-parcial2/spec.md) | ISW1COIN Fintech | greenfield | none | scratch, ifs→poly, collections, types, states | 3-Search, 5-LiveTyping, 1/2 greenfield |
| [2018-2c-recuperatorio](2018-2c-recuperatorio/spec.md) | Super 4 in a Line | greenfield | none | scratch, ifs→poly, collections, states | 3-Search, 1/2 greenfield |
| [2018-2c-recuperatorio-masked](2018-2c-recuperatorio-masked/spec.md) | Cascade (masked) | greenfield | none | scratch, ifs→poly, collections, states | 3-Search, 1/2 greenfield |
| [2019-1c-parcial1](2019-1c-parcial1/spec.md) | Parking Lot Slots | refactoring | 6 classes, 64 methods | refactor, feature, ifs→poly, duplication, collections, types, states | 4-Refactoring, 3-Search, 5-LiveTyping, 6-LiveTypingRefactoring, 7-Debug |
| [2019-1c-parcial2](2019-1c-parcial2/spec.md) | Personal and Team Calendars | greenfield | none | scratch, ifs→poly, collections, types | 3-Search, 5-LiveTyping, 1/2 greenfield |
| [2019-1c-parcial2-extendido](2019-1c-parcial2-extendido/spec.md) | Personal and Team Calendars (extended) | greenfield | none | scratch, ifs→poly, collections, types | 3-Search, 5-LiveTyping, 1/2 greenfield |
| [2019-1c-recuperatorio](2019-1c-recuperatorio/spec.md) | Fast Food Store Working Hours | greenfield | none | scratch, ifs→poly, collections | 3-Search, 1/2 greenfield |
| [2019-1c-recuperatorio-extendido](2019-1c-recuperatorio-extendido/spec.md) | Fast Food Store Working Hours (extended) | greenfield | none | scratch, ifs→poly, collections | 3-Search, 1/2 greenfield |
| [2019-2c-parcial1](2019-2c-parcial1/spec.md) | Ada's Coffee Shop Rewards | refactoring | 13 classes, 48 methods | refactor, ifs→poly, duplication, types | 4-Refactoring, 5-LiveTyping, 6-LiveTypingRefactoring |
| [2019-2c-parcial2](2019-2c-parcial2/spec.md) | Mars Rover with Ground Sensor and Safe Movement | feature | 13 classes, 68 methods | feature, ifs→poly, types, states | 5-LiveTyping, 7-Debug |
| [2019-2c-parcial2-masked](2019-2c-parcial2-masked/spec.md) | Seabed Survey Crawler: Repeated Commands, Sonar and Guarded Runs (masked) | feature | 13 classes, 68 methods | feature, ifs→poly, types, states | 5-LiveTyping, 7-Debug |
| [2019-2c-recuperatorio](2019-2c-recuperatorio/spec.md) | The Towers Game | greenfield | none | scratch, ifs→poly, collections, states | 3-Search, 1/2 greenfield |
| [2020-1c-parcial1](2020-1c-parcial1/spec.md) | I, Robot – warehouse robots, cashier and trailers | refactoring | 14 classes, 89 methods | refactor, ifs→poly, duplication, collections, states | 4-Refactoring, 3-Search |
| [2020-1c-parcial2-tema1](2020-1c-parcial2-tema1/spec.md) | Warehouse robots – cleaning trailers and product shipping (Tema 1) | feature | 21 classes, 117 methods | feature, ifs→poly, collections, types | 3-Search, 5-LiveTyping |
| [2020-1c-parcial2-tema2](2020-1c-parcial2-tema2/spec.md) | Warehouse robots – packing trailers and product shipping (Tema 2) | feature | 21 classes, 117 methods | feature, ifs→poly, collections, types | 3-Search, 5-LiveTyping |
| [2020-1c-recuperatorio-parcial1](2020-1c-recuperatorio-parcial1/spec.md) | Locomotive automatic and manual control | refactoring | 7 classes, 30 methods | refactor, ifs→poly, duplication, states | 4-Refactoring |
| [2020-1c-recuperatorio-parcial2](2020-1c-recuperatorio-parcial2/spec.md) | Warehouse shipping – vehicles carrying vehicles and mountable trailers | feature | 35 classes, 179 methods | feature, ifs→poly, collections, types | 3-Search, 5-LiveTyping |
| [2020-2c-parcial1](2020-2c-parcial1/spec.md) | Adventure Games: Backpack and Door refactoring | refactoring | 16 classes, 102 methods | refactor, ifs→poly, duplication, collections, types, states | 4-Refactoring, 3-Search, 5-LiveTyping, 6-LiveTypingRefactoring |
| [2020-2c-parcial2](2020-2c-parcial2/spec.md) | Adventure Games II: Rooms and taking objects | feature | 14 classes, 87 methods | feature, ifs→poly, collections, types | 3-Search, 5-LiveTyping |
| [2020-2c-recuperatorio-parcial1](2020-2c-recuperatorio-parcial1/spec.md) | Adventure Games III: Hole prototype refactoring | refactoring | 22 classes, 188 methods | refactor, ifs→poly, duplication, collections, types | 4-Refactoring, 3-Search, 5-LiveTyping, 6-LiveTypingRefactoring |
| [2020-2c-recuperatorio-parcial2](2020-2c-recuperatorio-parcial2/spec.md) | Adventure Games III: Doors between rooms | feature | 19 classes, 151 methods | feature, ifs→poly, types, states | 5-LiveTyping, 7-Debug |
| [2021-1c-parcial1](2021-1c-parcial1/spec.md) | RobotWars: robots and weapons refactoring | refactoring | 6 classes, 49 methods | refactor, ifs→poly, duplication, collections, types | 4-Refactoring, 3-Search, 5-LiveTyping, 6-LiveTypingRefactoring |
| [2021-1c-parcial2](2021-1c-parcial2/spec.md) | Truco: a round of two players | greenfield | 3 classes, 69 methods | scratch, states | 1/2 greenfield |
| [2021-1c-recuperatorio](2021-1c-recuperatorio/spec.md) | Truco: envido and a game of several rounds | feature | 8 classes, 129 methods | feature, collections, types, states | 3-Search, 5-LiveTyping, 7-Debug |
| [2021-2c-parcial1](2021-2c-parcial1/spec.md) | iswCity: zones and services refactoring | refactoring | 8 classes, 52 methods | refactor, ifs→poly, duplication, collections, types | 4-Refactoring, 3-Search, 5-LiveTyping, 6-LiveTypingRefactoring |
| [2021-2c-parcial2](2021-2c-parcial2/spec.md) | SmartBuilding: construction teams budget | greenfield | none | scratch, ifs→poly, collections | 3-Search, 1/2 greenfield |
| [2021-2c-recuperatorio-parcial1](2021-2c-recuperatorio-parcial1/spec.md) | SmartBuilding: team mood refactoring | refactoring | 17 classes, 74 methods | refactor, ifs→poly, duplication | 4-Refactoring |
| [2021-2c-recuperatorio-parcial2](2021-2c-recuperatorio-parcial2/spec.md) | ISW-Prop: real estate sales and deposits | greenfield | none | scratch, ifs→poly, collections, states | 3-Search, 1/2 greenfield |
| [2022-1c-parcial1](2022-1c-parcial1/spec.md) | ISW1-F1 Formula One Simulator | refactoring | 9 classes, 85 methods | refactor, ifs→poly, duplication, collections, types, states | 4-Refactoring, 3-Search, 5-LiveTyping, 6-LiveTypingRefactoring |
| [2022-1c-parcial2](2022-1c-parcial2/spec.md) | Ladders & Slides 3D | greenfield | none | scratch, ifs→poly, collections, states | 3-Search, 1/2 greenfield |
| [2022-1c-recuperatorio-parcial1](2022-1c-recuperatorio-parcial1/spec.md) | CustomerImporter: Types, types, types | refactoring | 16 classes, 160 methods | refactor, ifs→poly, duplication, types | 4-Refactoring, 5-LiveTyping, 6-LiveTypingRefactoring |
| [2022-1c-recuperatorio-parcial2](2022-1c-recuperatorio-parcial2/spec.md) | CustomerImporter: The Return (Sales Import) | feature | 16 classes, 112 methods | refactor, feature, ifs→poly, duplication, types, states | 4-Refactoring, 5-LiveTyping, 6-LiveTypingRefactoring, 7-Debug |
| [2022-2c-parcial1](2022-2c-parcial1/spec.md) | Ahoy! Pirate Crew | refactoring | 13 classes, 44 methods | refactor, ifs→poly, duplication, collections, types | 4-Refactoring, 3-Search, 5-LiveTyping, 6-LiveTypingRefactoring |
| [2022-2c-parcial2](2022-2c-parcial2/spec.md) | Qatar OnLine Football | greenfield | none | scratch, ifs→poly, states | 1/2 greenfield |
| [2022-2c-recuperatorio-parcial1](2022-2c-recuperatorio-parcial1/spec.md) | Qatar OnLine: Kick at Goal | feature | 7 classes, 100 methods | feature, ifs→poly, types, states | 5-LiveTyping, 7-Debug |
| [2022-2c-recuperatorio-parcial2](2022-2c-recuperatorio-parcial2/spec.md) | Qatar OnLine: Goals and Offside | feature | 7 classes, 100 methods | feature, ifs→poly, collections, types, states | 3-Search, 5-LiveTyping, 7-Debug |
| [2023-1c-parcial1](2023-1c-parcial1/spec.md) | Drilling simulator: bits, soil layers and sonar | refactoring | 5 classes, 55 methods | refactor, feature, ifs→poly, duplication, collections, types | 4-Refactoring, 3-Search, 5-LiveTyping, 6-LiveTypingRefactoring |
| [2023-1c-parcial2](2023-1c-parcial2/spec.md) | Driving assistant with manual, automatic and assisted-manual modes | greenfield | none | scratch, ifs→poly | 1/2 greenfield |
| [2023-1c-recuperatorio](2023-1c-recuperatorio/spec.md) | Driving assistant V2: lane sensor, turn signal and fuel consumption mode | feature | 12 classes, 116 methods | feature, ifs→poly, types, states | 5-LiveTyping, 7-Debug |
| [2023-2c-parcial1](2023-2c-parcial1/spec.md) | Penalty shoot-out (Penales) | greenfield | 6 classes, 37 methods | scratch, ifs→poly, duplication, types | 4-Refactoring, 5-LiveTyping, 1/2 greenfield |
| [2023-2c-parcial2](2023-2c-parcial2/spec.md) | MineField | greenfield | none | scratch, ifs→poly, collections, types, states | 3-Search, 5-LiveTyping, 1/2 greenfield |
| [2023-2c-recuperatorio-parcial1](2023-2c-recuperatorio-parcial1/spec.md) | BattleField, reduced scope (teams of bayonet soldiers) | feature | 18 classes, 119 methods | refactor, feature, collections, types, states | 4-Refactoring, 3-Search, 5-LiveTyping, 6-LiveTypingRefactoring, 7-Debug |
| [2023-2c-recuperatorio-parcial2](2023-2c-recuperatorio-parcial2/spec.md) | BattleField (two teams on the MineField) | feature | 18 classes, 119 methods | refactor, feature, ifs→poly, collections, types, states | 4-Refactoring, 3-Search, 5-LiveTyping, 6-LiveTypingRefactoring, 7-Debug |
| [2024-1c-parcial1](2024-1c-parcial1/spec.md) | Sims Hotels | refactoring | 9 classes, 110 methods | refactor, ifs→poly, duplication, collections, types, states | 4-Refactoring, 3-Search, 5-LiveTyping, 6-LiveTypingRefactoring |
| [2024-1c-parcial2](2024-1c-parcial2/spec.md) | SW-Project | greenfield | none | scratch, ifs→poly, collections, types | 3-Search, 5-LiveTyping, 1/2 greenfield |
| [2024-1c-recuperatorio](2024-1c-recuperatorio/spec.md) | SW-Project 2.0 | feature | 13 classes, 65 methods | feature, ifs→poly, collections, types | 3-Search, 5-LiveTyping |
| [2024-2c-parcial1](2024-2c-parcial1/spec.md) | Monsters and Adventurers | greenfield | 2 classes, 21 methods | scratch, ifs→poly, duplication, collections, types | 4-Refactoring, 3-Search, 5-LiveTyping, 1/2 greenfield |
| [2024-2c-parcial2](2024-2c-parcial2/spec.md) | Pacman Prototype | greenfield | 5 classes, 68 methods | feature, scratch, ifs→poly, duplication, collections, types, states | 4-Refactoring, 3-Search, 5-LiveTyping, 1/2 greenfield, 7-Debug |
| [2024-2c-parcial2-masked](2024-2c-parcial2-masked/spec.md) | Orchard Harvester (masked) | greenfield | 5 classes, 68 methods | feature, scratch, ifs→poly, duplication, collections, types, states | 4-Refactoring, 3-Search, 5-LiveTyping, 1/2 greenfield, 7-Debug |
| [2024-2c-recuperatorio-parcial1](2024-2c-recuperatorio-parcial1/spec.md) | Tetris Prototype (pieces and movement) | greenfield | none | scratch, ifs→poly, duplication, collections | 4-Refactoring, 3-Search, 1/2 greenfield |
| [2024-2c-recuperatorio-parcial1-masked](2024-2c-recuperatorio-parcial1-masked/spec.md) | Kiln Stacker (reduced scope) (masked) | greenfield | none | scratch, ifs→poly, duplication, collections | 4-Refactoring, 3-Search, 1/2 greenfield |
| [2024-2c-recuperatorio-parcial2](2024-2c-recuperatorio-parcial2/spec.md) | Tetris Prototype | greenfield | none | scratch, ifs→poly, duplication, collections, types, states | 4-Refactoring, 3-Search, 5-LiveTyping, 1/2 greenfield |
| [2024-2c-recuperatorio-parcial2-masked](2024-2c-recuperatorio-parcial2-masked/spec.md) | Kiln Stacker (masked) | greenfield | none | scratch, ifs→poly, duplication, collections, types, states | 4-Refactoring, 3-Search, 5-LiveTyping, 1/2 greenfield |
| [2025-1c-parcial1](2025-1c-parcial1/spec.md) | The Smugglers Run! (Escape de Flota) | greenfield | 3 classes, 35 methods | scratch, ifs→poly, duplication, collections, types | 4-Refactoring, 3-Search, 5-LiveTyping, 1/2 greenfield |
| [2025-1c-parcial2](2025-1c-parcial2/spec.md) | Painter (Pintor) | greenfield | none | scratch, duplication, collections | 4-Refactoring, 3-Search, 1/2 greenfield |
| [2025-1c-recuperatorio](2025-1c-recuperatorio/spec.md) | Fleet Escape! (Escape de Flota!) | feature | 14 classes, 105 methods | feature, ifs→poly, duplication, collections, types, states | 4-Refactoring, 3-Search, 5-LiveTyping, 7-Debug |
| [2025-1c-recuperatorio-segundo](2025-1c-recuperatorio-segundo/spec.md) | Painter Reloaded (Pintor Recargado) | feature | 16 classes, 80 methods | feature, duplication, collections | 4-Refactoring, 3-Search |
| [2025-2c-parcial1](2025-2c-parcial1/spec.md) | Marine ROV specimen capture | greenfield | 3 classes, 31 methods | scratch, ifs→poly, duplication, collections, types, states | 4-Refactoring, 3-Search, 5-LiveTyping, 1/2 greenfield |
| [2025-2c-parcial2](2025-2c-parcial2/spec.md) | BAJE public transport card readers | greenfield | 1 classes, 0 methods | scratch, ifs→poly, collections, types, states | 3-Search, 5-LiveTyping, 1/2 greenfield |
| [2025-2c-recuperatorio](2025-2c-recuperatorio/spec.md) | Aterrizar.com flight search | greenfield | 1 classes, 7 methods | scratch, ifs→poly, duplication, collections, types | 4-Refactoring, 3-Search, 5-LiveTyping, 1/2 greenfield |
| [smoke](smoke/spec.md) | Bounded stack | greenfield | none | - | - |
