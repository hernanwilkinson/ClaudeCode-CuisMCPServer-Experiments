# SurveyCrawler (Java translation)

Java + JUnit 5 + Gradle translation of `starting/SurveyCrawler.st` (the Cuis Smalltalk
starting code of the exercise). The class hierarchy, method names, instance variables,
responsibilities, error strings and the original 16 tests are the same as in the Smalltalk version.

## Second version: repeated commands, sonar and guarded runs

The three improvements asked by the oceanographic institute are implemented on top of the
translation described below.

### Repeated commands

A digit after `a`, `t`, `h` or `g` repeats that command *the digit plus two* more times, so
`"a0"` advances three times (once for the `a` and twice for the `0`) and `"a9"` advances
twelve times. `CommandInterpreter` is the object that knows the syntax of a sequence of
commands (digits, `(` and `)`); `SurveyCrawler` keeps knowing only the four basic commands
(`processCommand`). The command a digit applies to is modelled with the `LastCommand`
hierarchy: `RepeatableLastCommand` repeats it, `NoLastCommand` signals an invalid command,
so a digit that follows anything but `a`, `t`, `h` or `g` (another digit, a parenthesis or
nothing) is rejected without asking `null`.

### Sonar and ground types

`SurveyCrawler` is created with a `Sonar` (`atFacingWithSonar(aPosition, aFacingName, aSonar)`);
`atFacing(aPosition, aFacingName)` keeps working and uses a `FirmSandSonar`, a sonar that
reports firm sand everywhere. `GroundMapSonar` is a sonar built out of a map of positions to
grounds, firm sand by default (`withBoulderAt:`, `withSiltAt:`).

A `Ground` (`FirmSand`, `Silt`, `Boulder`) decides what happens when the crawler moves to it
and when the crawler turns on it, so there is no `if` on the ground type:

- moving consults the ground of the **destination** position, turning consults the ground of
  the position the crawler is **standing on**;
- `Boulder` signals `canNotMoveToBoulderErrorDescription` / `canNotTurnOnBoulderErrorDescription`
  and the crawler does not move nor turn;
- `Silt` slides the crawler between 1 and `RandomSiltSlide.maximumCellsToSlide()` (10) cells in
  the direction it was going, and turns as firm sand does. How many cells it slides is a
  `SiltSlide`; `RandomSiltSlide` is the random one used by default and the tests use a fixed one
  to be deterministic (plus two tests over the random one to check its limits and that it varies).

Nothing is checked on the cells the crawler slides over: the requirements only say it ends up
an unpredictable number of cells further away.

### Guarded runs

`'('` starts a guarded run and `')'` ends it. The crawler holds a `CrawlerRun`:

- `UnguardedRun` does not remember movements and lets the crawler slide on silt;
- `GuardedRun` remembers the facing it started with and every movement made, signals
  `canNotSlideDuringGuardedRunErrorDescription` when the crawler reaches silt (its movement
  would be unpredictable) and `canNotStartGuardedRunDuringGuardedRunErrorDescription` when a
  guarded run is started during a guarded run.

When anything fails inside the parentheses (a boulder, silt, an invalid command, a nested
guarded run or a sequence that ends without `')'`), `CommandInterpreter` asks the crawler to
undo the guarded run - the opposite movement of each movement made, in reverse order, and the
facing it had before the run - and passes the exception on to the caller. Undoing does not
consult the sonar: the crawler comes back over cells it already walked on, and a crawler that
had slid onto silt before the guarded run started must not slide again while returning to it.

Decisions taken where the requirements say nothing:

- a digit does not cross a parenthesis: `"a(0)"` and `"(a)0"` are invalid commands;
- a `')'` with no guarded run started is an invalid command;
- an empty guarded run, `"()"`, does nothing;
- a guarded run that finishes is never undone by a later error: `"(aa)x"` keeps the two advances.


## Run the tests

```
gradle test
```

## Translation decisions of the first version that are not one to one

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
