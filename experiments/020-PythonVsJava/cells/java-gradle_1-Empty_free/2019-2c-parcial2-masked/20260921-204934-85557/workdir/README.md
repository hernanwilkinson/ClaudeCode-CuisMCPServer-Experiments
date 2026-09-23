# SurveyCrawler (Java translation)

Java + JUnit 5 + Gradle translation of `starting/SurveyCrawler.st` (the Cuis Smalltalk
starting code of the exercise). The class hierarchy, method names, instance variables,
responsibilities, error strings and the 16 tests are the same as in the Smalltalk version.

## Run the tests

```
cd exercises/2019-2c-parcial2-masked/java
/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/tools/gradle/bin/gradle test
```

## Translation decisions that are not one to one

- **Points.** Smalltalk `1@2` has no Java equivalent, so a small `Point` class was added
  (`x`, `y`, `plus`, value equality via `equals`/`hashCode`, `toString`). `1@2` is written
  `new Point(1, 2)`; `position + (1@0)` is written `position.plus(new Point(1, 0))`.
- **Facing names.** The symbols `#Up`, `#Right`, `#Down`, `#Left` become the `String`s
  `"Up"`, `"Right"`, `"Down"`, `"Left"`, compared with `equals`. The `CrawlerFacing`
  class hierarchy is kept as is.
- **Class-side polymorphism of `CrawlerFacing`.** In Smalltalk `facingName` and `isFor:` are
  class-side (abstract on `CrawlerFacing`, overridden in each subclass) and
  `CrawlerFacing class>>facing:` iterates `self subclasses`. Java static methods are neither
  abstract nor polymorphic and there is no `subclasses` reflection, so:
  - `facingName()` and `isFor(aFacingName)` are instance methods (`facingName()` abstract);
    `isFacing(aFacingName)` still delegates to `isFor(aFacingName)` as in the original.
  - `CrawlerFacing.facing(aFacingName)` iterates an explicit array of one instance of each
    subclass (`subclassInstances()`, same order as the file-out) instead of `self subclasses`.
    The `detect:ifFound:ifNone:` became an index loop plus a throw after it.
- **Instance creation and initialization.** `SurveyCrawler class>>at:facing:` became the
  static factory `SurveyCrawler.atFacing(aPosition, aFacingName)`; `initializeAt:facing:` became
  the (private) constructor `SurveyCrawler(Point, CrawlerFacing)` that the factory calls.
  `CrawlerFacing class>>facing:` became the static `CrawlerFacing.facing(aFacingName)`.
  `SurveyCrawler class>>invalidFacingErrorDescription` is the static
  `SurveyCrawler.invalidFacingErrorDescription()`.
- **Keyword selectors.** Multi-keyword selectors are concatenated: `isAt:facing:` is
  `isAtFacing(aPosition, aFacingName)`, `at:facing:` is `atFacing(...)`. Single-keyword ones keep
  their name (`process`, `processCommand`, `isAdvanceCommand`, `advance:`/`retreat:`/
  `turnClockwise:`/`turnCounterClockwise:` on the facings take the crawler as parameter).
- **Errors.** `self error: aString` is `throw new RuntimeException(aString)`; the message
  strings (`'Invalid command'`, `'Invalid facing'`) are unchanged. `should:raise:withExceptionDo:`
  is `assertThrows(RuntimeException.class, ...)` followed by the same assertions on the caught
  exception (`getMessage()` instead of `messageText`). Test 06 raised `Error - MessageNotUnderstood`
  in Smalltalk; in Java it simply expects `RuntimeException`.
- **Assertions.** `self assert: aBoolean` is `assertTrue(aBoolean)`; `assert:equals:` is
  `assertEquals(expected, actual)` (JUnit's argument order, so in test 06 the two arguments were
  swapped to put the expected description first).
- **Iteration.** `aSequenceOfCommands do: [...]` is `for (char aCommand :
  aSequenceOfCommands.toCharArray())`. Commands are `char`s compared with `==` instead of
  `Character`s compared with `=`.
- **Return values.** Smalltalk methods that only performed a side effect (and implicitly returned
  `self`, or returned the result of a side-effecting send such as `^aCrawler moveRight`) are
  `void` in Java.
- **Unused class-side instance variable.** `SurveyCrawler class` declared an unused class-side
  instance variable `facings`; it was not carried over.
- **Method categories** (`'moving'`, `'facing'`, ...) are kept only as comments inside each class.

## Second version: repetitions, sonar and guarded runs

The three new requirements were implemented on top of the v1 model. The 16 original tests are
unchanged and still pass; `SurveyCrawler.atFacing(aPosition, aFacingName)` keeps working as
before because it creates the crawler with a sonar that detects firm sand everywhere
(`FirmSandSonar`).

### Commands are objects (`CrawlerCommand` and subclasses)

`process` still interprets the sequence character by character (so, out of a guarded run, the
commands before an invalid one are executed, as in v1), but each character is turned into a
command object by `CrawlerCommand.commandFor(aCharacter)`:

- `CrawlerMovement` (`AdvanceCommand`, `RetreatCommand`, `TurnClockwiseCommand`,
  `TurnCounterClockwiseCommand`) are the commands that can be repeated and undone; `inverse()`
  answers the movement that undoes them.
- `RepeatLastCommand` is the command a digit creates; executing it repeats the last command
  `digit + 2` more times (so `"a0"` advances 3 times). Only `CrawlerMovement` knows how to be
  repeated, so a digit after `'('`, `')'` or after another digit is an invalid command.
- `StartGuardedRunCommand` and `EndGuardedRunCommand` change the run the crawler is in.
- `InvalidCommand` is the null object used both for unknown characters and for "the command
  before the first one", which is what makes a leading digit an invalid command.

### The seabed ground decides how a movement ends (`SeabedGround` and subclasses)

The crawler asks its `Sonar` for the `SeabedGround` of the position a command would end at, and
the ground answers the position the crawler really ends at:

- `FirmSand`: the expected position.
- `Silt`: the position after sliding 1 to `Silt.slideCellsLimit()` (10) cells in the direction of
  the movement. How many cells is decided by a `SlideDistance`; `RandomSlideDistance` is the one
  used by default and the tests inject a fixed one so the expected position is known.
- `Boulder`: signals `Boulder.boulderFoundErrorDescription()` and the crawler does not move.

Turning asks the ground of the position the crawler is standing on to `turn(aCrawlerTurn)`:
`TraversableGround` (firm sand and silt) performs the turn, `Boulder` signals the error, which is
why silt does not affect turning and a crawler standing on a boulder can not turn.

### Guarded runs are a state of the crawler (`CrawlerRun` and subclasses)

The crawler is always in a run, `NormalRun` or `GuardedRun`, and that state decides three things:

- Which movements are predictable: a `GuardedRun` asks the ground for the
  `predictablePositionAfterMovingFrom(...)`, which silt refuses with
  `Silt.unpredictableGroundErrorDescription()`.
- Which movements are remembered: a `GuardedRun` registers every movement made, a `NormalRun`
  ignores them because there is nothing to undo.
- What `'('`, `')'` and the end of the sequence mean: starting a guarded run inside a guarded run
  and finishing the sequence with a guarded run open are errors; `')'` out of a guarded run is an
  invalid command.

`process` catches any error, tells the failed run to undo itself (the inverse of each registered
movement, in reverse order, which makes the crawler physically go back instead of teleporting) and
re-signals the error, so a failing guarded run leaves the crawler where it was, facing where it
was facing, while the movements made before the guarded run - or by a guarded run that already
finished - are kept.
