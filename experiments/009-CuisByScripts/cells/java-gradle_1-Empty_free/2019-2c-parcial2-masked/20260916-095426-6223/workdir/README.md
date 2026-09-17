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
