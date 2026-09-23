# SurveyCrawler (Java translation)

Java + JUnit 5 + Gradle translation of `starting/SurveyCrawler.st` (the Cuis Smalltalk
starting code of the exercise). The class hierarchy, method names, instance variables,
responsibilities, error strings and the 16 tests are the same as in the Smalltalk version.

## Second version

The crawler now understands repeated commands, has a sonar and supports guarded runs.

- **Repeated commands.** A digit after `a`, `t`, `h` or `g` repeats that command *digit + 2* more
  times (`"a0"` advances 3 times in total). `SurveyCrawler.repetitionsAddedToDigit()` is the 2.
  A digit that does not follow a repeatable command is an invalid command; this includes a digit
  after another digit (`"a00"`), after `(` or `)` (`"(a)0"`), at the beginning of the sequence
  (`"0"`) and at the beginning of a new `process:` (the last repeatable command is not remembered
  between sequences).
- **Sonar.** `CrawlerSonar` answers the `CrawlerGround` of a position. `FirmSandGround`,
  `SiltGround` and `BoulderGround` decide, polymorphically, what happens when the crawler moves to
  them (`moveCrawler`) and when it turns on them (`turnCrawler`): firm sand moves/turns normally,
  a boulder signals an error both for moving and for turning, and silt slides the crawler an
  unexpected number of cells (1 to `siltSlideLimit()`, i.e. the destination up to 9 cells beyond it)
  but does not affect turning. Only the ground of the destination of a movement is consulted, and
  the ground of the current position for turning.
  Two implementations are provided: `FirmSandSonar` (everything is firm sand, used by the original
  `atFacing` creation message, so the crawler behaves as in the first version) and
  `MappedGroundSonar` (a surveyed map of grounds, firm sand where nothing was surveyed).
- **Guarded runs.** `'('` starts one and `')'` ends it. `CrawlerRun` is the state of the current
  run: `CrawlerNormalRun` slides on silt and forgets movements, `CrawlerGuardedRun` remembers every
  `CrawlerMovement` made (`CrawlerDisplacement`, `CrawlerClockwiseTurn`,
  `CrawlerCounterClockwiseTurn`) and undoes them, in reverse order, when the sequence fails
  (`undoOn`), doing the opposite movement of each one. During a guarded run, moving to silt, starting
  another guarded run and reaching the end of the sequence without closing it are errors, and so is
  any invalid command. `')'` without a previous `'('` is an invalid command. After a failed sequence
  the crawler is left in a normal run, ready to process new sequences.

### Decisions worth mentioning

- The randomness of silt is injected (`atFacingSonarSlidingWith(position, facing, sonar, aRandom)`)
  so that sliding can be tested exactly; `atFacingSonar` uses a `new Random()`.
- Undoing movements uses primitives that do not consult the sonar (`applyDisplacement`,
  `applyTurnClockwise`, `applyTurnCounterClockwise`): the crawler is going back over ground it
  already went through, and undoing can not fail.
- A failing guarded run undoes only its own movements; movements made before it, or in previous
  guarded runs of the same sequence, are kept.
- Nested guarded runs and unfinished guarded runs return the crawler to the position and facing it
  had when the (only) guarded run started.
- The sliding limit example of the statement is taken literally: with silt at `1@3` and the crawler
  at `1@2` facing Up, `"a"` ends between `1@3` and `1@12`.

## Run the tests

```
gradle test
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
