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

# Second version: repeated commands, sonar and guarded runs

The three new requirements were added keeping the original classes and tests untouched
(tests 01 to 16 still pass as they were).

## Design

- **Ground types (`Ground` hierarchy).** The sonar answers *objects*, not symbols, so nobody
  asks "which kind of ground is this?". Each ground knows how it affects the crawler:
  - `FirmSand` moves the crawler one cell.
  - `Silt` makes the crawler slide `1` to `Silt.maximumSlide()` (10) cells in the direction it
    was going (`random.nextInt(10) + 1`). The `java.util.Random` is injected, so the tests can
    make the slide deterministic.
  - `Boulder` signals an error for moving *and* for turning.
  - `FirmSand` and `Silt` share `TraversableGround`, which implements turning normally; `Boulder`
    is the only `Ground` that is not traversable, and it overrides all three messages.
- **`Sonar`.** A one-message interface (`groundAt(aPosition)`). `FirmSandSonar` answers firm sand
  everywhere (used by `SurveyCrawler.atFacing(...)`, so the original protocol keeps working) and
  `GroundMapSonar` maps positions to grounds, defaulting to firm sand.
  The sonar is asked for the ground of the position the crawler *would end up on*: the destination
  for `a`/`t`, and the current position for `h`/`g`.
- **Runs (`CrawlerRun` hierarchy).** The crawler is either in a `NormalRun` or in a `GuardedRun`,
  and that state decides what happens when a movement is made:
  - `NormalRun` does not register movements, lets the crawler slide on silt, starts a guarded run
    and signals an error if one is ended or is left unfinished... (it has nothing to undo).
  - `GuardedRun` registers every movement, signals an error when a silt slide is attempted (it is
    unpredictable, so it could not be undone), signals an error if another guarded run is started,
    and knows how to undo what was registered.
  There are no `if`s about "am I in a guarded run?"; the run state answers by polymorphism.
- **Undo (`CrawlerMovement` hierarchy).** Each movement made inside a guarded run is registered as
  the object that knows its opposite: a `Displacement` (undone by displacing in the inverted
  direction) or a `ClockwiseTurn`/`CounterClockwiseTurn` (undone by turning the other way).
  Undoing does not consult the sonar and does not register anything. `process` catches any error,
  tells the current run to undo its movements, goes back to a normal run and re-throws, so only the
  movements of the guarded run are undone and the crawler is usable afterwards.
- **Repetition (`CommandToRepeat` hierarchy).** Instead of a nullable "last command", the crawler
  holds a `LastCommandToRepeat` (which re-executes its command `digit + 2` times) or a
  `NoCommandToRepeat` (which signals *Invalid command*), avoiding a null check.

## New errors

| Situation | Description |
| --- | --- |
| Moving to or turning on a boulder | `Can not move to nor turn on a boulder` |
| Moving on silt inside a guarded run | `Can not move on silt during a guarded run` |
| `(` inside a guarded run | `Can not start a guarded run inside a guarded run` |
| `)` with no guarded run started | `Can not end a guarded run that was not started` |
| Sequence that ends with a guarded run open | `Guarded run was not finished` |
| A digit with no command to repeat | `Invalid command` |

## Decisions about cases the statement does not specify

- **A digit can not be repeated.** `"a00"` is invalid: the statement says the repetition "is a
  single digit" and that it applies to `a`, `t`, `h` and `g`. Same for a digit after `(` or `)`
  (`"(0)"`, `"(a)0"`): there is no command to repeat, so it is an *Invalid command*.
- **`)` without `(`** (`"a)"`) signals *Guarded run was not finished*'s counterpart,
  `Can not end a guarded run that was not started`, instead of being silently ignored.
- **Errors abort the whole sequence.** As in the first version, the error is re-thrown to the
  sender of `process`, so the commands after the failing one are not processed. Only the movements
  of the guarded run that was running are undone; everything done before it is kept
  (`"a(aa)"` against a boulder leaves the crawler one cell ahead of where it started).
- **The crawler does not re-check the ground after sliding on silt.** The sonar is asked about the
  position the command would take the crawler to; where the slide ends is, by definition,
  unpredictable and out of the crawler's control.
- **Undo order.** Movements are undone in reverse order (the natural undo semantics), although with
  displacements stored as absolute directions the final position and facing are the same in any
  order, so no test can tell the difference.
