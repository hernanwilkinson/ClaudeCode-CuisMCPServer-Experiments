# Source

Masked variant of `exercises/2019-2c-parcial2/` (the "Mars Rover with Ground Sensor and Safe Movement" second midterm of 2019-2c). See that directory's `source.md` for the provenance of the original statement, starting code, solution and Readme.

## Why it is masked

The original exercise builds on a very well-known kata, so a language model can relate the statement and the given code to the kata and recall solutions instead of designing one. This variant tells a different story with different names and different command letters, while keeping every rule, number and structure isomorphic to the original: the same 16 given tests and 13 given classes, the same "digit + 2" repetition rule, the same three ground types with the same behaviour (sliding limit 10, turning unaffected on the sliding ground, exception on the blocking ground), the same parenthesized undo state with the same nested/unterminated error cases, and every example with the same coordinates. Only the story, the names and the command letters change.

The vocabulary is shared with `exercises/2018-1c-parcial2-masked/` (the first version of the same crawler), so the two masked exercises chain the same way the originals do.

## Files

- `starting/SurveyCrawler.st`: `starting/MarsRover-IS1-2Parcial-2c2019.st` with every identifier and literal renamed by the mapping below. Same 550 lines, same 13 classes, same 68 methods, same 16 tests.
- `solution/SurveyCrawler-Solution.st`: `solution/MarsRover-IS1-2Parcial-2c2019-Solucion-Video.st` renamed with the same mapping plus the ground, sonar and state vocabulary. Same 1544 lines, 16 classes, 47 tests. As the original Readme explains, this solution also makes turning on the sliding ground unpredictable (tests 31, 32 and 38), a requirement that was dropped from the statement; the masked statement drops it too, so the masked solution keeps that extra behaviour exactly as the original does.
- `solution/MarsRover-IS1-2Parcial-2c2019-Solucion-Video.st` and `solution/Readme.txt`: byte-for-byte copies of the original solution and its Readme, kept next to the renamed solution as the design reference in the original vocabulary.
- `spec.md`: the original `spec.md` rewritten in the masked vocabulary, same structure; the "useful messages" section is kept verbatim.
- `exercise.json`: the original one with `name`, `title`, `package`, `description`, package paths and the design `notes` rewritten, plus `"maskedFrom": "2019-2c-parcial2"`.

## How the renaming was done

A Python script applied three passes to each `.st` file:

1. The error message string literals (whole literals, listed at the end of the mapping).
2. The identifier mapping below, as one regular expression alternation with word boundaries, trying the longest name first at every position, so `MarsRoverHeadingNorth` is renamed before `MarsRoverHeading` and `MarsRover`, and `headNorth` is not touched by the `North` -> `Up` entry.
3. The command letters, only inside literals: the character literals `$f $b $l $r` and every string literal made exclusively of command characters (`f`, `b`, `l`, `r`, digits and parentheses), translated simultaneously with `f->a, b->t, l->g, r->h`. String literals containing any other character (`'x'`, method categories, time stamps, error messages) are untouched.

The result was then reviewed with a word-level diff of every distinct substitution and with `grep -i` for `mars, rover, north, south, east, west, heading, forward, backward, cardinal, rotat, safe, unsafe, earth, ice, rock, sensor`, which finds nothing in either renamed file.

## Mapping

Story and statement vocabulary:

| Original | Masked |
|---|---|
| space agency; remote exploration vehicle on a planet | oceanographic institute; remotely driven seabed survey crawler |
| plane with points | flat grid of the seabed with integer points |
| compass direction the vehicle points to | facing: one of the four walls of the crawler's cell |
| north / south / east / west (N, S, E, O) | Up / Down / Left / Right (U, D, L, R): north->Up, south->Down, east->Right, west->Left |
| ground sensor | sonar |
| ground types Earth (Tierra), Ice (Hielo), Rock (Roca) | firm sand, silt, boulder |
| "safe movement" state | "guarded run" |
| moving normally / unsafely | free run |
| stuck on a rock; slid on ice | stuck against a boulder; slid on silt |
| points slid (limit 10) | cells slid (limit 10) |

Command letters (statement and code literals):

| Original | Masked | Meaning |
|---|---|---|
| `f` | `a` | advance one cell in the facing direction |
| `b` | `t` | retreat one cell |
| `l` | `g` | turn 90 degrees counter-clockwise |
| `r` | `h` | turn 90 degrees clockwise |
| digits, `(`, `)` | unchanged | repetition (digit + 2), start and end of a guarded run |

Statement examples: `'f0'` -> `'a0'`; `'f'` -> `'a'`; `'(ff)'` -> `'(aa)'`; `'frf(fflb3)ff(rb)'` -> `'aha(aagt3)aa(ht)'`; `'ff(ff(rb)f)'` -> `'aa(aa(ht)a)'`; `'f(ff'` -> `'a(aa'`.

Category:

| Original | Masked |
|---|---|
| `MarsRover-IS1-2Parcial-2c2019` | `SurveyCrawler` |

Classes:

| Original | Masked |
|---|---|
| `MarsRoverTest` | `SurveyCrawlerTest` |
| `MarsRover` | `SurveyCrawler` |
| `MarsRoverHeading` | `CrawlerFacing` |
| `MarsRoverHeadingNorth` | `CrawlerFacingUp` |
| `MarsRoverHeadingSouth` | `CrawlerFacingDown` |
| `MarsRoverHeadingEast` | `CrawlerFacingRight` |
| `MarsRoverHeadingWest` | `CrawlerFacingLeft` |
| `MarsRoverState` (solution) | `CrawlerState` |
| `MoveSafelyState` (solution) | `GuardedRunState` |
| `MoveUnsafelyState` (solution) | `FreeRunState` |
| `GroundSensor` (solution) | `Sonar` |
| `AllwaysEarthGroundSensor` (solution) | `AlwaysFirmSandSonar` |
| `GrountType` (solution) | `GroundType` |
| `EarthGroundType` (solution) | `FirmSandGroundType` |
| `IceGroundType` (solution) | `SiltGroundType` |
| `RockType` (solution) | `BoulderGroundType` |

Symbols:

| Original | Masked |
|---|---|
| `#North` | `#Up` |
| `#South` | `#Down` |
| `#East` | `#Right` |
| `#West` | `#Left` |

Instance variables, class-side instance variables, temporaries, parameters and block arguments:

| Original | Masked |
|---|---|
| `head` | `facing` |
| `headings` (class side) | `facings` |
| `aHeading` | `aFacing` |
| `aCardinalPoint` | `aFacingName` |
| `marsRover` | `crawler` |
| `aMarsRover` | `aCrawler` |
| `aMarsRoverPositionClass` | `aCrawlerFacingClass` |
| `marsMap` (solution) | `seabedMap` |
| `groundSensor` (solution) | `sonar` |
| `aGroundSensor` (solution) | `aSonar` |
| `safelyExecutedCommands` (solution) | `guardedExecutedCommands` |

Selectors and keywords (a keyword entry renames every selector containing it, e.g. `at:heading:` -> `at:facing:`, `initializeAt:heading:` -> `initializeAt:facing:`, `isAt:heading:` -> `isAt:facing:`, `MarsRoverHeading class>>heading:` -> `CrawlerFacing class>>facing:`):

| Original | Masked |
|---|---|
| `heading:` | `facing:` |
| `isHeading:` | `isFacing:` |
| `cardinalPoint` | `facingName` |
| `invalidCardinalPointErrorDescription` | `invalidFacingErrorDescription` |
| `headNorth` / `headSouth` / `headEast` / `headWest` | `faceUp` / `faceDown` / `faceRight` / `faceLeft` |
| `moveNorth` / `moveSouth` / `moveEast` / `moveWest` | `moveUp` / `moveDown` / `moveRight` / `moveLeft` |
| `moveForward`, `moveForward:` | `advance`, `advance:` |
| `moveBackward`, `moveBackward:` | `retreat`, `retreat:` |
| `rotateLeft`, `rotateLeft:` | `turnCounterClockwise`, `turnCounterClockwise:` |
| `rotateRight`, `rotateRight:` | `turnClockwise`, `turnClockwise:` |
| `isForwardCommand:` | `isAdvanceCommand:` |
| `isBackwardCommand:` | `isRetreatCommand:` |
| `isRotateLeftCommand:` | `isTurnCounterClockwiseCommand:` |
| `isRotateRightCommand:` | `isTurnClockwiseCommand:` |
| `sensoringGroundWith:` (solution) | `soundingWith:` |
| `rotate:doing:` (solution) | `turn:doing:` |
| `rotateWhenAtEarthDoing:` | `turnWhenAtFirmSandDoing:` |
| `rotateWhenAtIceDoing:` | `turnWhenAtSiltDoing:` |
| `rotateWhenAtRockDoing:` | `turnWhenAtBoulderDoing:` |
| `rotateSafelyWhenAtIceDoing:` | `turnGuardedWhenAtSiltDoing:` |
| `rotateUnsafelyWhenAtIceDoing:` | `turnFreeWhenAtSiltDoing:` |
| `moveWhenReachingEarthAdding:` | `moveWhenReachingFirmSandAdding:` |
| `moveWhenReachingIceAdding:` | `moveWhenReachingSiltAdding:` |
| `moveWhenReachingRockAdding:` | `moveWhenReachingBoulderAdding:` |
| `moveSafelyIntoIceAdding:` | `moveGuardedIntoSiltAdding:` |
| `moveUnsafelyWhenReacingIceAdding:` | `moveFreeWhenReachingSiltAdding:` (the original's "Reacing" typo is corrected) |
| `enterSafeState` | `startGuardedRun` |
| `isEnterInSafeState:` | `isStartOfGuardedRun:` |
| `isLeaveSafeState:` | `isEndOfGuardedRun:` |
| `processCommandSafely:` | `processCommandGuarded:` |
| `processCommandUnsafely:` | `processCommandFree:` |
| `finishProcessingSafely` | `finishProcessingGuarded` |
| `finishProcessingUnsafely` | `finishProcessingFree` |
| `undoSafelyExecutedCommands` | `undoGuardedExecutedCommands` |
| `canNotEndInSafeStateErrorDescription` | `canNotEndInGuardedRunErrorDescription` |
| `canNotGoIntoSafeStateWhenAtSafeStateErrorDescription` | `canNotStartGuardedRunWhenInGuardedRunErrorDescription` |
| `canNotGoIntoUnsafeStateWhenAtUnsafeStateErrorDescription` | `canNotEndGuardedRunWhenInFreeRunErrorDescription` |
| `canNotMoveIntoRockErrorDescription` | `canNotMoveIntoBoulderErrorDescription` |
| `canNotMoveSafelyIntoIceErrorDescription` | `canNotMoveGuardedIntoSiltErrorDescription` |
| `canNotRepeatEnterIntoSafeStateErrorDescription` | `canNotRepeatStartOfGuardedRunErrorDescription` |
| `canNotRepeatLeavingSafeStateErrorDescription` | `canNotRepeatEndOfGuardedRunErrorDescription` |
| `canNotRotateSafelyIntoIceErrorDescription` | `canNotTurnGuardedOnSiltErrorDescription` |
| `canNotRotateWhenAtRockErrorDescription` | `canNotTurnWhenAtBoulderErrorDescription` |

Method categories:

| Original | Masked |
|---|---|
| `heading` | `facing` |
| `heading - private` | `facing - private` |
| `cardinal point` | `facing name` |
| `rotating` | `turning` |

Test selectors (the `testNN` prefix is always preserved; the command letter that follows the number is translated like the literals):

| Original | Masked |
|---|---|
| `test02fWhenHeadingNorthIncrementsY` | `test02aWhenFacingUpIncrementsY` |
| `test03bWhenHeadingNorthDecrementsY` | `test03tWhenFacingUpDecrementsY` |
| `test04rWhenHeadingNorthMakesMarsRoverPointToEast` | `test04hWhenFacingUpMakesCrawlerFaceRight` |
| `test05lWhenHeadingNorthMakesMarsRovePointToWest` | `test05gWhenFacingUpMakesCrawlerFaceLeft` |
| `test08fWhenHeadingEastIncrementsX` | `test08aWhenFacingRightIncrementsX` |
| `test09bWhenHeadingEastDecrementsX` | `test09tWhenFacingRightDecrementsX` |
| `test10rWhenHeadingEastMakesMarsRoverPointToSouth` | `test10hWhenFacingRightMakesCrawlerFaceDown` |
| `test11lWhenHeadingEastMakesMarsRoverPointToNorth` | `test11gWhenFacingRightMakesCrawlerFaceUp` |
| `test12fbrAreProcessedCorrectlyWhenHeadingSouth` | `test12athAreProcessedCorrectlyWhenFacingDown` |
| `test13lWhenHeadingSouthMakesMarsRoverPointToEast` | `test13gWhenFacingDownMakesCrawlerFaceRight` |
| `test14fbrAreProcessedCorrectlyWhenHeadingWest` | `test14athAreProcessedCorrectlyWhenFacingLeft` |
| `test15lWhenHeadingWestMakesMarsRoverPointToSouth` | `test15gWhenFacingLeftMakesCrawlerFaceDown` |
| `test16CanNotCreateAMarsRoverWithAnInvalidHeading` | `test16CanNotCreateACrawlerWithAnInvalidFacing` |
| `test17ForwardCanBeRepeated` | `test17AdvanceCanBeRepeated` |
| `test21MovesForwardWithEarthGroundType` | `test21AdvancesWithFirmSandGroundType` |
| `test22CanNotMoveNorthIntoRock` | `test22CanNotMoveUpIntoBoulder` |
| `test23CanNotMoveSouthIntoRock` | `test23CanNotMoveDownIntoBoulder` |
| `test24CanNotMoveEastIntoRock` | `test24CanNotMoveRightIntoBoulder` |
| `test25CanNotMoveWestIntoRock` | `test25CanNotMoveLeftIntoBoulder` |
| `test26CanNotPointToSouthWhenAtRock` | `test26CanNotFaceDownWhenAtBoulder` |
| `test27CanNotPointToNorthWhenAtRock` | `test27CanNotFaceUpWhenAtBoulder` |
| `test28CanNotPointToEastWhenAtRock` | `test28CanNotFaceRightWhenAtBoulder` |
| `test29CanNotPointToWestWhenAtRock` | `test29CanNotFaceLeftWhenAtBoulder` |
| `test30MovingIntoIceIsUnpredictable` | `test30MovingIntoSiltIsUnpredictable` |
| `test31RotatingRightOnIceIsUnpredictable` | `test31TurningClockwiseOnSiltIsUnpredictable` |
| `test32RotatingLeftOnIceIsUnpredictable` | `test32TurningCounterClockwiseOnSiltIsUnpredictable` |
| `test33WhenThereAreNoErrorMovingSafelyMovesRoverNormally` | `test33WhenThereAreNoErrorGuardedRunMovesCrawlerNormally` |
| `test34ReturnsToOriginalPositionWhenReachingARockMovingForwardInSafeState` | `test34ReturnsToOriginalPositionWhenReachingABoulderAdvancingInGuardedRun` |
| `test35ReturnsToOriginalPositionWhenReachingARockMovingForwardMoreThanOnceInSafeState` | `test35ReturnsToOriginalPositionWhenReachingABoulderAdvancingMoreThanOnceInGuardedRun` |
| `test36ReturnsToOriginalPositionWhenReachingARockMovingBackwardInSafeState` | `test36ReturnsToOriginalPositionWhenReachingABoulderRetreatingInGuardedRun` |
| `test37ReturnsToOriginalPositionWhenReachingIceInSafeState` | `test37ReturnsToOriginalPositionWhenReachingSiltInGuardedRun` |
| `test38ReturnsToOriginalPositionWhenRotatingOnIceOnSafeStateInSafeState` | `test38ReturnsToOriginalPositionWhenTurningOnSiltInGuardedRun` |
| `test39CanNotEnterSafeStateWhenOnSafeState` | `test39CanNotStartGuardedRunWhenInGuardedRun` |
| `test40CanNotLeaveSafeStateWhenAtUnsafeState` | `test40CanNotEndGuardedRunWhenInFreeRun` |
| `test41CanProcessManySafeStates` | `test41CanProcessManyGuardedRuns` |
| `test42CanNotRepeatLeavingSafeState` | `test42CanNotRepeatEndOfGuardedRun` |
| `test43CanNotRepeatEnterIntoSafeState` | `test43CanNotRepeatStartOfGuardedRun` |
| `test44CanNotEndInSafeState` | `test44CanNotEndInGuardedRun` |
| `test45RotateRightIsUndoneCorrectly` | `test45TurnClockwiseIsUndoneCorrectly` |
| `test46RotateLeftIsUndoneCorrectly` | `test46TurnCounterClockwiseIsUndoneCorrectly` |

Error message texts:

| Original | Masked |
|---|---|
| `'Invalid cardinal point'` | `'Invalid facing'` |
| `'Can not end in safe state'` | `'Can not end in guarded run'` |
| `'Can not go into safe state when at safe state'` | `'Can not start a guarded run when in a guarded run'` |
| `'Can not go into unsafe state when at unsafe state'` | `'Can not end a guarded run when in a free run'` |
| `'Can not move into rock'` | `'Can not move into boulder'` |
| `'Can not move safely into ice'` | `'Can not move guarded into silt'` |
| `'Can not repeat enter into safe state'` | `'Can not repeat start of guarded run'` |
| `'Can not repeat leaving safe state'` | `'Can not repeat end of guarded run'` |
| `'Can not rotate safely into ice'` | `'Can not turn guarded on silt'` |
| `'Can not ratate when at rock'` | `'Can not turn when at boulder'` |

Character and string literals in the tests and in `undoCommandOf:`: `$f $b $l $r` -> `$a $t $g $h`; `'f'`, `'b'`, `'r'`, `'l'`, `'ff'`, `'ffbr'`, `'f0'`, `'b0'`, `'b00'`, `'(f)'`, `'(ff)'`, `'(bb)'`, `'(r)'`, `'(f('`, `'(f)(f)'`, `'(f)0'`, `'(f'`, `'(rf)'`, `'(lf)'` -> `'a'`, `'t'`, `'h'`, `'g'`, `'aa'`, `'aath'`, `'a0'`, `'t0'`, `'t00'`, `'(a)'`, `'(aa)'`, `'(tt)'`, `'(h)'`, `'(a('`, `'(a)(a)'`, `'(a)0'`, `'(a'`, `'(ha)'`, `'(ga)'`. `''`, `'x'`, `'0'`, `'(0)'`, `')'` and `$x` are unchanged.

## What was not renamed

- Vocabulary-neutral names, kept as they are: `position`, `aPosition`, `anOffset`, `aClosure`, `aCommand`, `aSequenceOfCommands`, `lastCommand`, `state`, `random`, `randomInteger`, `process:`, `processCommand:`, `isAt:`, `isFor:`, `moveAdding:`, `groundTypeAt:` ("ground" is not part of the masked vocabulary), `randomizingWith:`, `initializeRandomizingWith:`, `for:`, `initializeFor:`, `finishProcessing`, `repeatLastCommand:`, `isRepeatCommand:`, `assertCanRepeatCommand`, `hasExecutedCommand`, `undoCommandOf:`, `invalidCommandErrorDescription`, `signalInvalidCommand`, `canNotRepeatNotExecutedCommandErrorDescription`, the method categories `tests`, `simulation`, `exceptions`, `initialization`, `testing`, `moving`, `moving - private`, `processing`, `processing - private`, `command processing`, `sensing`, `state`, `instance creation`, `as yet unclassified`, and the `stamp: 'HAW ...'` time stamps.
- Original typos that carry no masked vocabulary, kept verbatim so the code stays isomorphic: `canNotRepeatAReapeatCommandErrorDescription` and its text `'Can not repeat a reapeat command'`; `hasExecutedCommand` answering `lastCommand isNil` (inverted meaning in the original). The typo in `moveUnsafelyWhenReacingIceAdding:` was corrected in its renamed form since the selector had to be renamed anyway, and the typo in the test name `MarsRove` disappears with the rename.
- The author initials in the stamps (`HAW`) are kept; they do not relate the code to the kata.

## Verification

Both renamed files were filed into a fresh copy of the `scenarios/2-ModelStructure+Package` image (Cuis 7.9 with the MCP server), started with the VM named in its `manifest.json`, using `scripts/mcp-client.py`; the copy was discarded afterwards without saving.

- `starting/SurveyCrawler.st`: file-in answered `'OK'`; `smalltalk_run_test_class` on `SurveyCrawlerTest` answered `{"passedCount": 16, "failedCount": 0, "errorCount": 0}`; the category `SurveyCrawler` contained `CrawlerFacing`, `CrawlerFacingDown`, `CrawlerFacingLeft`, `CrawlerFacingRight`, `CrawlerFacingUp`, `SurveyCrawler`, `SurveyCrawlerTest`.
- `solution/SurveyCrawler-Solution.st` (in a second, fresh copy of the image): file-in answered `'OK'`; `SurveyCrawlerTest` answered `{"passedCount": 47, "failedCount": 0, "errorCount": 0}`; the category contained the 7 classes above plus `AlwaysFirmSandSonar`, `BoulderGroundType`, `CrawlerState`, `FirmSandGroundType`, `FreeRunState`, `GroundType`, `GuardedRunState`, `SiltGroundType`, `Sonar`.

Both counts match the original files (16 and 47 tests).
