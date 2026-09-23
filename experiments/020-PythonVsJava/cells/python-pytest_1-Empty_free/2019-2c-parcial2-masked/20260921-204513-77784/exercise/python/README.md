# SurveyCrawler (Python translation)

Python + pytest translation of `starting/SurveyCrawler.st` (the Cuis Smalltalk starting code of
the exercise), done as a faithful port of the Java translation in `../java` so that the two can be
compared. The class hierarchy (`SurveyCrawler`, `CrawlerFacing` and its four subclasses, `Point`),
method names (in snake_case), instance variables, responsibilities, conditionals, error strings,
method-category comments and the 16 tests are the same as in the Java version. Where Java had to
add something only because the language forced it, the Python follows the Smalltalk original
instead (see below).

Layout: one module per Java class in `src/surveycrawler/` (`survey_crawler.py`,
`crawler_facing.py`, `crawler_facing_right.py`, `crawler_facing_up.py`, `crawler_facing_down.py`,
`crawler_facing_left.py`, `point.py`); the tests are the class `SurveyCrawlerTest` in
`tests/test_survey_crawler.py`. Standard library only.

## Run the tests

```
cd exercises/2019-2c-parcial2-masked/python
python3 -m pytest -q
```

`pyproject.toml` sets `pythonpath = ["src"]` and makes pytest collect the plain class
`SurveyCrawlerTest` (`python_classes = ["*Test"]`) and its `test*` methods.

## Translation decisions that are not one to one

- **Names.** Java camelCase method names are snake_case (`isAtFacing` is `is_at_facing`,
  `processCommand` is `process_command`, `invalidCommandErrorDescription` is
  `invalid_command_error_description`, ...), and so are parameter names (`aCrawler` is
  `a_crawler`). Class names are unchanged. Multi-keyword Smalltalk selectors stay concatenated as
  in Java (`isAt:facing:` is `is_at_facing`, `at:facing:` is `at_facing`). Test names are the
  snake_case of the Java names (`test02aWhenFacingUpIncrementsY` is
  `test02a_when_facing_up_increments_y`).
- **Private fields.** Java `private` instance variables are Python attributes with a leading
  underscore: `SurveyCrawler` has `_position` and `_facing`, `Point` has `_x` and `_y` (in `Point`
  the underscore is also needed because the accessors `x()` and `y()` use the plain names).
- **Class-side polymorphism of `CrawlerFacing` (closer to Smalltalk than Java).** Python class
  methods are polymorphic and classes know their subclasses, so the Java workaround is not needed:
  - `facing_name()` and `is_for(a_facing_name)` are `@classmethod`s, as they are class-side in
    Smalltalk; `facing_name` is overridden in each subclass. `is_facing(a_facing_name)` is still an
    instance method written `self.is_for(a_facing_name)`, as in Java; because `is_for` is a class
    method, that call runs on the receiver's class, which is what Smalltalk's
    `^self class isFor: aFacingName` does.
  - `CrawlerFacing.facing(a_facing_name)` iterates `cls.__subclasses__()` like
    `self subclasses detect:ifFound:ifNone:` and answers a new instance of the found class. Java's
    `subclassInstances()` helper (an explicit array of one instance of each subclass) therefore does
    not exist in Python. `__subclasses__()` answers the subclasses in definition order, which is the
    import order in `survey_crawler.py`: Right, Up, Down, Left (the same order as the Java array and
    the file-out). The `ifNone:` is a `raise` after the loop, as in Java.
- **Abstract methods.** Java `abstract` declarations (`facingName`, `turnCounterClockwise`,
  `turnClockwise`, `retreat`, `advance`) are methods that `raise NotImplementedError()`, the
  Python counterpart of Smalltalk's `self subclassResponsibility`. `abc` is not used, so, as in
  Smalltalk, `CrawlerFacing` is a plain class.
- **Circular reference `CrawlerFacing` -> `SurveyCrawler`.** `CrawlerFacing.facing` needs
  `SurveyCrawler.invalid_facing_error_description()` while `survey_crawler.py` imports the facing
  modules; to avoid a circular import at load time, `facing` imports `SurveyCrawler` inside the
  method body.
- **Instance creation and initialization.** `SurveyCrawler class>>at:facing:` (Java static factory
  `atFacing`) is the `@classmethod` `SurveyCrawler.at_facing(a_position, a_facing_name)`, which does
  `cls(a_position, CrawlerFacing.facing(a_facing_name))` (Smalltalk `self new initializeAt:facing:`).
  `initializeAt:facing:` (Java private constructor) is `__init__(self, a_position, a_facing)`;
  Python cannot make it private. `SurveyCrawler.invalid_facing_error_description()` is also a
  `@classmethod` (Java `static`, Smalltalk class-side).
- **Points.** As in Java, a small `Point` class replaces Smalltalk `1@2`: `Point(1, 2)`, `x()`,
  `y()`, `plus(a_point)`. Java `equals`/`hashCode` are `__eq__` (same `isinstance` check, value
  equality) and `__hash__` (same `31 * x + y`). Java `toString` (`"1@2"`) is `__repr__`, so pytest
  failure messages and `str()` both show `1@2`.
- **Facing names.** As in Java, the symbols `#Up`, `#Right`, `#Down`, `#Left` are the strings
  `"Up"`, `"Right"`, `"Down"`, `"Left"`, compared with `==`.
- **Commands and iteration.** Java `char`s are one-character strings (`'a'`, `'t'`, `'g'`, `'h'`)
  compared with `==`; `for (char aCommand : aSequenceOfCommands.toCharArray())` is
  `for a_command in a_sequence_of_commands`.
- **`process_command`.** Kept as the Java sequence of `if`s, each followed by a bare `return`
  (the `^ self advance` early returns of the original), and the final `signal_invalid_command()`.
- **Errors.** Java `throw new RuntimeException(aString)` (Smalltalk `self error:`) is
  `raise RuntimeError(a_string)`; the message strings (`'Invalid command'`, `'Invalid facing'`) are
  unchanged.
- **Assertions.** `assertTrue(aBoolean)` is `assert a_boolean`; `assertThrows(RuntimeException.class,
  ...)` is `with pytest.raises(RuntimeError) as an_error:`; `assertEquals(expected,
  anError.getMessage())` is `assert expected == str(an_error.value)`, keeping the Java argument order.
- **Test class.** `SurveyCrawlerTest` is a plain class (not `unittest.TestCase`), collected by
  pytest through `python_classes`. The Java test class has no `@BeforeEach` and no helpers, so
  neither does the Python one.
- **Return values.** Methods that are `void` in Java return `None` implicitly.
- **Unused class-side instance variable.** As in Java, the unused Smalltalk class-side instance
  variable `facings` of `SurveyCrawler class` was not carried over.
- **Method categories** (`'moving'`, `'facing'`, ...) are kept only as comments inside each class,
  in the same places as in Java.
