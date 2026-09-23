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

## New version: repetitions, sonar and guarded runs

### Repetition of commands

A digit after `a`, `t`, `h` or `g` repeats that command *digit + 2* extra times, so `"a0"`
advances 3 times (one for the `a`, two for the `0`) and `"a9"` advances 12 times. The digit
is parsed in `process`, which keeps the last repeatable command: `(`, `)` and a digit itself
reset it, so `"0"`, `"a00"`, `"(0a)"` and `"(a)0"` are invalid commands.

### Sonar and ground types

`Sonar` answers the `GroundType` of a position; `SeabedSonar` is a firm-sand seabed with the
exceptions given through `withBoulderAt`, `withSiltAt` and `withGroundTypeAt`. A crawler
created with `atFacing(...)` uses a fully firm seabed, so the original behaviour (and the
original 16 tests) is unchanged; `atFacingWithSonar(...)` takes a sonar.

`GroundType` (`FirmSand`, `Boulder`, `Silt`) decides what a movement and a turn do, instead of
the crawler asking the ground type what it is:

- moving: the sonar is asked for the ground type of the **destination** (`moveInDirection`).
  `FirmSand` moves one cell, `Boulder` signals, `Silt` slides.
- turning: the sonar is asked for the ground type of the **current** position, which is where
  the crawler ends up after turning. `Boulder` signals, `FirmSand` and `Silt` turn.

How much the crawler slides on silt is decided by a `SiltSlide`; `RandomSiltSlide` (the default)
answers `random.nextInt(10) + 1`. `cellsToSlide` is the *total* number of cells moved from the
starting position, so from `1@2` facing Up with silt at `1@3` the crawler ends anywhere from
`1@3` to `1@12`, as the statement requires. Tests inject a fixed slide (`() -> 4`) to be
deterministic.

Assumptions not covered by the statement:

- The ground type of the cells the crawler slides over, and of the cell it slides to, is not
  sensed again: the sonar answers the ground type of the position where the *command* ends.
  Otherwise silt after silt would slide forever.
- A boulder blocks the cell it is on, not the crawler standing on it: a crawler on a boulder
  cannot turn, but can move out of it (test 34).

### Guarded runs

`CrawlerRun` is the state of the crawler while processing a sequence: `NormalRun` or
`GuardedRun`. `(` and `)` are sent to the run, so the run decides what they mean: starting a
guarded run inside a guarded run signals, and ending a run that was not started signals.
`process` asks the run whether it is finished at the end of the sequence (`"a(aa"` signals) and,
on any error, gives the run the chance to handle it before passing the exception on.

Movements are undone, not restored: every movement registers in the run the opposite movement
(`moveBy(d)` registers `moveBy(-d)`, a clockwise turn registers a counter-clockwise one).
`NormalRun` ignores them, `GuardedRun` keeps them and, when there is an error, runs them in
reverse order. The undo actions use the primitive movements, so they neither ask the sonar
(the ground was already crossed, and silt would slide again) nor register new undo actions.

Silt during a guarded run signals instead of sliding, because the movement is unpredictable:
`Silt` asks the crawler to slide and the crawler asks its run, so `NormalRun` slides and
`GuardedRun` signals.
