# Source

- Masked variant of `2024-2c-parcial2` (the Pacman prototype). The story and every name were changed so that the statement and the given code cannot be related to the famous game, while the design problem stays isomorphic: the same seven board characters with the same meanings (only the three actor letters changed), the same visitor protocol with the same seven `visit...At:` messages, the same validation rules and error texts, the same scores (1 and 2 points), lives (3), tick delays (4th and 5th tick), random mapping (1 to 5), collision rules and game-over conditions. No numbers were changed; every example board keeps its coordinates.
- starting/`StringOrchardBoard.st`: the original `starting/2024-2C-Parcial-2.st` renamed with the mapping below (class category `OrchardHarvester`). As in the original, `test10BoardTranslationExample` does not pass on purpose: `BoardTranslatorExample>>#visitHarvesterAt:` stores the string `'should be a harvester!!'` instead of `#harvester`. Its comment was translated to English while being renamed (the Spanish original named the pacman); the other two Spanish comments in `StringOrchardBoard` carry no vocabulary and were left as they are.
- solution/`2024-2C-Parcial-2-Solucion-masked.st` and `2024-2C-Parcial-2-Solucion-ConGhostOverPill-masked.st`: the two original solutions renamed with the same mapping extended to the game classes. `TomasRodriguezNadin-Fix-GhostOverPill-masked.cs.st` is the student's change set renamed the same way (it applies on top of the plain masked solution). The three original files (`2024-2C-Parcial-2-Solucion.st`, `2024-2C-Parcial-2-Solucion-ConGhostOverPill.st`, `TomasRodriguezNadin-Fix-GhostOverPill.cs.st`) and `Readme.txt` are copied **unchanged** for reference; they use the original vocabulary.
- The renaming was done by a Python script that applies the identifier mapping as case-sensitive substring replacement, longest key first, and then rewrites the board characters `B`, `C`, `p` to `R`, `W`, `h` only inside string literals composed exclusively of board characters (`# * - = B C p x`) and in the three character literals `$B`, `$C`, `$p`. Double-quoted comments are skipped by the literal scanner. A grep for `pacman|ghost|pill|blinky|clyde|clide|wall|maze|space` (case-insensitive) over the masked files finds nothing.
- Dropped from the masked statement: "ISW-Games"; the tip about selecting a mono-spaced font in Cuis; the sentence comparing the movement with the MarsRover exercise, replaced by a clarification that the harvester is given an absolute direction (left, right, up, down) and not relative turns, without naming any other exercise. The `Random` / `#nextInteger:` tip was kept.

## Verification (Cuis 7.9, scenario image `2-ModelStructure+Package`, fresh copy per run, filed in over the MCP server)

| Filed in | Test class | Result |
|---|---|---|
| `starting/StringOrchardBoard.st` | `StringOrchardBoardTest` | 9 passed, 1 error: `test10BoardTranslationExample` (expected; same profile as the original starting code, verified in the same way: 9 passed, 1 error) |
| `solution/2024-2C-Parcial-2-Solucion-masked.st` | `StringOrchardBoardTest` / `OrchardGameTest` | 10 passed / 23 passed, 0 failed, 0 errors |
| plain masked solution + `TomasRodriguezNadin-Fix-GhostOverPill-masked.cs.st` | `OrchardGameTest` | 24 passed, 0 failed, 0 errors |
| `solution/2024-2C-Parcial-2-Solucion-ConGhostOverPill-masked.st` | `StringOrchardBoardTest` / `OrchardGameTest` | 10 passed / 24 passed, 0 failed, 0 errors |

Classes created in category `OrchardHarvester` by the complete solution: `BareGround`, `BoardTranslatorExample`, `Drone`, `Fruit`, `Harvester`, `Hedge`, `OrchardActor`, `OrchardElement`, `OrchardGame`, `OrchardGameTest`, `StringOrchardBoard`, `StringOrchardBoardTest`.

## Mapping

### Story

| Original | Masked |
|---|---|
| ISW-Games, Pacman prototype | a robotics company prototyping an orchard harvester |
| Pacman (the character) | the harvester bot |
| ghost | scarecrow drone |
| Blinky / Clyde | Rook / Wren |
| wall | hedge |
| Big Pill / Small Pill | Large Fruit / Small Fruit |
| space (what is left after eating) | bare ground (what is left after collecting) |
| eats a pill | collects a fruit |
| a ghost eats the Pacman | a drone catches the harvester |
| the Pacman can eat ghosts (not required) | the harvester can disable drones (not required) |
| the existence of the fruit (bonus, not required) | the existence of bonus items (not required) |
| passing to the next level | passing to the next orchard row |
| "2 ghosts instead of 4" | "2 scarecrow drones instead of 4" |
| MarsRover comparison | clarification about absolute directions, no other exercise named |
| category `2024-2C-Parcial-2` | category `OrchardHarvester` |

### Board characters (positions unchanged)

| Original | Masked | Meaning |
|---|---|---|
| `#` | `#` | wall -> hedge |
| `*` | `*` | big pill -> large fruit (2 points) |
| `-` | `-` | small pill -> small fruit (1 point) |
| `B` | `R` | Blinky -> Rook (starts left, from the 4th tick) |
| `C` | `W` | Clyde -> Wren (starts right, from the 5th tick) |
| `p` | `h` | Pacman -> harvester |
| `=` | `=` | space -> bare ground |

### Identifiers in the given code (`starting/`)

| Original | Masked |
|---|---|
| `StringPacmanBoard` | `StringOrchardBoard` |
| `StringPacmanBoardTest` | `StringOrchardBoardTest` |
| `BoardTranslatorExample` | `BoardTranslatorExample` (unchanged) |
| `aPacmanBoardVisitor` | `anOrchardBoardVisitor` |
| `visitWallAt:` / `visitSmallPillAt:` / `visitBigPillAt:` | `visitHedgeAt:` / `visitSmallFruitAt:` / `visitLargeFruitAt:` |
| `visitPacmanAt:` / `visitBlinkyAt:` / `visitClydeAt:` / `visitSpaceAt:` | `visitHarvesterAt:` / `visitRookAt:` / `visitWrenAt:` / `visitBareGroundAt:` |
| `wallCharacter` / `smallPillCharacter` / `bigPillCharacter` | `hedgeCharacter` / `smallFruitCharacter` / `largeFruitCharacter` |
| `pacmanCharacter` / `blinkyCharacter` / `clydeCharacter` / `spaceCharacter` | `harvesterCharacter` / `rookCharacter` / `wrenCharacter` / `bareGroundCharacter` |
| `pacmanName` / `blinkyName` / `clydeName` | `harvesterName` / `rookName` / `wrenName` |
| `#pacman` / `#blinky` / `#clyde` / `#wall` / `#smallPill` / `#bigPill` / `#space` | `#harvester` / `#rook` / `#wren` / `#hedge` / `#smallFruit` / `#largeFruit` / `#bareGround` |
| `isWall:` / `isSmalltPill:` (sic) / `isBigPill:` | `isHedge:` / `isSmallFruit:` / `isLargeFruit:` |
| `isPacman:` / `isBlinky:` / `isClyde:` / `isSpace:` | `isHarvester:` / `isRook:` / `isWren:` / `isBareGround:` |
| `$p` / `$B` / `$C` | `$h` / `$R` / `$W` |
| `test01CannotCreateABoardWithoutThePacman` | `test01CannotCreateABoardWithoutTheHarvester` |
| `test02CannotCreateABoardWithMoreThanOnePacman` | `test02CannotCreateABoardWithMoreThanOneHarvester` |
| `test03CannotCreateABoardWithoutBlinky` / `test04...MoreThanOneBlinky` | `test03CannotCreateABoardWithoutRook` / `test04...MoreThanOneRook` |
| `test05CannotCreateABoardWithoutClyde` / `test06...MoreThanOneClyde` | `test05CannotCreateABoardWithoutWren` / `test06...MoreThanOneWren` |
| `'Unknown pacman element type'` | `'Unknown orchard element type'` |
| `'debería ser un pacman!!'` | `'should be a harvester!!'` |
| comment of `test10BoardTranslationExample` (Spanish, names the pacman and `p`) | English, names the harvester and `h` |
| category `'2024-2C-Parcial-2'` | category `'OrchardHarvester'` |

Unchanged because they carry no vocabulary: `representedAs:`, `visitElementsWith:`, `visit:at:with:`, `extent`, `allowedCharacters`, `asserltAllActorsAreIn:` (sic), `assertActorIsCorrect:in:`, `assert:isAllowed:`, `assertAllRowsHaveSameSizeIn:`, `elementCharacterCountOf:`, `characterIsMissingErrorDescriptionFor:`, `shouldBeUniqueErrorDescriptionFor:`, `notAllowCharaterErrorDescriptionFor:` (sic), `rowsMustHaveSameSizeErrorDescription`, `stringRepresentationOfBoard`, `representationOfRowNumber:`, `characterRepresentationOf:`, `initializeOn:`, `on:`, `test07AllRowsHaveSameSize`, `test08VisitElementsWithRightPosition`, `test09InvalidCharactersAreNotAllowed`, `test10BoardTranslationExample`, the error texts `' is missing'`, `'There should be only one '`, `'Character ... is not allowed'`, `'Rows must have same number of columns'`, and the author stamps.

Note that `assertActorIsCorrect:in:` builds the character selector by concatenation (`aCharacterName, #Character`), so `harvesterName`/`rookName`/`wrenName` must keep answering `#harvester`/`#rook`/`#wren` and the class-side `harvesterCharacter`/`rookCharacter`/`wrenCharacter` must exist; the mapping preserves this.

### Additional identifiers in the solutions

| Original | Masked |
|---|---|
| `PacmanGame` / `PacmanGameTest` | `OrchardGame` / `OrchardGameTest` |
| `PacmanElement` / `PacmanActor` | `OrchardElement` / `OrchardActor` |
| `Pacman` / `Ghost` / `Pill` / `Wall` / `Space` (classes) | `Harvester` / `Drone` / `Fruit` / `Hedge` / `BareGround` |
| `aPacmanGame` / `aPacmanElement` / `aGhost` / `aPill` / `aWall` / `aSpace` | `anOrchardGame` / `anOrchardElement` / `aDrone` / `aFruit` / `aHedge` / `aBareGround` |
| instance variables `pacman blinky clyde` | `harvester rook wren` |
| `Pill bigPill` / `Pill smallPill` | `Fruit largeFruit` / `Fruit smallFruit` |
| `pointsToAddWhenEated:charRepresentation:` / `initializePointsToAddWhenEated:charRepresentation:` | `pointsToAddWhenCollected:charRepresentation:` / `initializePointsToAddWhenCollected:charRepresentation:` |
| `Ghost blinkyLocatedAt:` / `Ghost clydeLocatedAt:` | `Drone rookLocatedAt:` / `Drone wrenLocatedAt:` |
| `startMovingPacmanLeft/Right/Up/Down` | `startMovingHarvesterLeft/Right/Up/Down` |
| `pacmanLives` | `harvesterLives` |
| `movePacman` / `tryToMovePacman` / `tryToMoveGhost:` / `tryToMoveGhosts` | `moveHarvester` / `tryToMoveHarvester` / `tryToMoveDrone:` / `tryToMoveDrones` |
| `pacmanWantsToMoveIntoIn:` / `pacmanWantsToMoveIntoPill:` / `pacmanWantsToMoveIntoSpace` / `pacmanWantsToMoveIntoWall` | `harvesterWantsToMoveIntoIn:` / `harvesterWantsToMoveIntoFruit:` / `harvesterWantsToMoveIntoBareGround` / `harvesterWantsToMoveIntoHedge` |
| `ghost:wantsToMoveIntoIn:` / `ghost:wantsToMoveIntoPill:` / `ghost:wantsToMoveIntoSpace:` / `ghost:wantsToMoveIntoWall:` | `drone:wantsToMoveIntoIn:` / `drone:wantsToMoveIntoFruit:` / `drone:wantsToMoveIntoBareGround:` / `drone:wantsToMoveIntoHedge:` |
| `ghostWantsToMoveIntoPacman:` | `droneWantsToMoveIntoHarvester:` |
| `isPill` / `isOnPill` / `isOrIsOnPill` / `areThereNoPills` | `isFruit` / `isOnFruit` / `isOrIsOnFruit` / `areThereNoFruits` |
| method categories `'pacman moving'` / `'ghost moving'` | `'harvester moving'` / `'drone moving'` |
| `test01PacmanStartsMovingLeft` | `test01HarvesterStartsMovingLeft` |
| `test02AddsOnePointWhenEatingSmallPill` / `test03AddsTwoPointsWhenEatingBigPill` | `test02AddsOnePointWhenCollectingSmallFruit` / `test03AddsTwoPointsWhenCollectingLargeFruit` |
| `test05PacmanCannotMoveIntoWall` / `test06PacmanCanMoveIntoSpace` | `test05HarvesterCannotMoveIntoHedge` / `test06HarvesterCanMoveIntoBareGround` |
| `test07PacmanMovesCorrecltyMoreThanOneTick` / `test08PacmanCanMoveRight` / `test09PacmanCanMoveUp` / `test10PacmanCanMoveDown` | `test07HarvesterMovesCorrecltyMoreThanOneTick` / `test08HarvesterCanMoveRight` / `test09HarvesterCanMoveUp` / `test10HarvesterCanMoveDown` |
| `test11BlinkyStartsMovingLeftOnFourthTick` / `test12ClideStartsMovingRightOnFifthTick` (sic) | `test11RookStartsMovingLeftOnFourthTick` / `test12WrenStartsMovingRightOnFifthTick` |
| `test13GhostLeavePreviousElementWhenMoving` / `test14GhostCanEatPacman` | `test13DroneLeavePreviousElementWhenMoving` / `test14DroneCanCatchHarvester` |
| `test15GhostKeepsBigPill` / `test16GhostKeepsSpace` | `test15DroneKeepsLargeFruit` / `test16DroneKeepsBareGround` |
| `test17..20GhostMoves...WhenHitsAWall...` | `test17..20DroneMoves...WhenHitsAHedge...` |
| `test21GameIsOverWhenPacmanHasNoLives` / `test22GameIsOverWhenThereNoMorePills` | `test21GameIsOverWhenHarvesterHasNoLives` / `test22GameIsOverWhenThereNoMoreFruits` |
| `test24GameIsNotOverWhenGhostsHoverOverPills` | `test24GameIsNotOverWhenDronesHoverOverFruits` |

Unchanged: `die`, `lives`, `move`, `nextPosition`, `position`, `displacement`, `startMovingLeft/Right/Up/Down` (on the actors), `moveWithPreviousElement:`, `previousElement`, `characterRepresentation`, `charRepresentation`, `pointsToAdd`, `locatedAt:`, `locatedAt:representedWith:`, `initializeLocatedAt:...`, `on:randomizingWith:`, `initializeOn:randomizingWith:`, `tick`, `ticks`, `points`, `isOver`, `assertGameIsNotOver`, `gameIsOverErrorDescription` (`'Game is over'`), `nextInteger:`, `nextIntegers`, `assertCannotDo:in:`, `test04GameStartsWithCeroPoints` (sic), `test23CannotPlayIfGameIsOver`, and every stamp.

### Words deliberately avoided in the masked statement and code

"Pacman", "ghost", "pill", "Blinky", "Clyde", "maze", "ISW-Games", "MarsRover", "eat", "wall", "space".

## Leftovers

- The masked solution file names keep the original base names (`...-ConGhostOverPill-masked.st`, `TomasRodriguezNadin-Fix-GhostOverPill-masked.cs.st`), as requested, so the words "Ghost" and "Pill" appear in the solution/ directory listing and in `exercise.json`'s `solutionPackages`. The solution directory is not part of what the student sees; if it ever is, rename those files.
- `solution/Readme.txt` and the three unchanged original solution files are in the original vocabulary (Spanish / Pacman) by design.
- `spec-original.pdf` was not copied (it is the unmasked statement).
- `StringOrchardBoard` still contains two Spanish comments ("No hay necesidad de generar un error ...", and the "- Hernan" notes); they name no game vocabulary. The typos `isSmalltPill:` (now `isSmallFruit:`, corrected because the mapping names it explicitly), `asserltAllActorsAreIn:`, `notAllowCharaterErrorDescriptionFor:`, `Correclty`, `Displacment`, `Cero` and `Clide` (now `Wren`) were otherwise kept as in the original.
- Verification was done by filing the `.st` files into a fresh scenario image and running the test classes over the MCP server; no image or package was saved.
