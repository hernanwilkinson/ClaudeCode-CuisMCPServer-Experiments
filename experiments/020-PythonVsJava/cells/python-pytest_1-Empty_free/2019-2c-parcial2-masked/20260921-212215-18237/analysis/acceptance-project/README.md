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

## New version: repeated commands, sonar and guarded runs

The three improvements asked by the oceanographic institute were added on top of the translation
described above, keeping its style (one class per module, snake_case, method-category comments,
`RuntimeError` with an error-description method for each error).

### 1. Repeated commands

`process` no longer iterates the characters blindly: `process_commands` remembers the last command
and `process_command_or_repetition` decides, for each character, whether it is a command (processed
by the unchanged `process_command`) or a repetition digit. A digit repeats the last command
`int(a_digit) + 2` more times (`"a0"` advances 3 times: once for the `a` and twice for the `0`).
Only `a`, `t`, `h` and `g` are repeatable (`is_repeatable_command`); a digit that follows anything
else - another digit, `(`, `)` or nothing - is an invalid command. Each repetition goes through
`process_command` again, so every repeated movement is checked by the sonar on its own.

### 2. Sonar and ground types

- `Sonar` answers the `GroundType` of a position (`ground_type_at`). It is created with a map from
  `Point` to ground type: `Sonar.all_firm_sand()` for a seabed with no surprises and
  `Sonar.with_ground_types({...})` for the rest, where any position not in the map is firm sand.
  `SurveyCrawler.at_facing_with_sonar(a_position, a_facing_name, a_sonar)` is the new instance
  creation message; `at_facing` still exists and uses `Sonar.all_firm_sand()`.
- `GroundType` has three subclasses, `FirmSand`, `Boulder` and `Silt`, and two messages, so there is
  no conditional on the ground type anywhere:
  - `move_crawler_to(a_crawler, a_position, a_direction)`: `FirmSand` changes the position,
    `Boulder` signals the error, and `Silt` makes the crawler slide to the position plus
    `random.randrange(Silt.sliding_limit())` extra cells in the direction it was going (so it ends
    between 1 and 10 cells away, `sliding_limit` being 10).
  - `turn_crawler_with(a_crawler, a_turn)`: `FirmSand` and `Silt` evaluate the turn (silt does not
    affect turning), `Boulder` signals the error. `a_turn` is the block the crawler passes, the
    Python counterpart of the Smalltalk block.
- Movements ask the sonar for the ground of the position they are going to (`move_in_direction`),
  turns ask for the ground of the position the crawler is on (`turn_clockwise`,
  `turn_counter_clockwise`). `Silt` is created with a `random.Random` (`Silt.with_random`) so the
  tests can make the sliding predictable.

### 3. Guarded runs

The crawler is in one of two states, `CrawlerRun` subclasses, kept in `_run`:

- `FreeRun`: movements are not registered for undoing, `(` answers a new `GuardedRun`, `)` is an
  invalid command, the end of the sequence and any error need no action, and sliding on silt just
  changes the position.
- `GuardedRun`: every position and facing change is registered as an undo action, `(` signals the
  nested guarded run error, `)` answers a `FreeRun` again, the end of the sequence signals the
  unfinished guarded run error, and sliding on silt signals an error because it is unpredictable.
  When there is an error, `handle_error` puts the crawler back in a free run (so undoing does not
  register more undo actions) and evaluates the undo actions in reverse order.

`process` sets the free run, processes the sequence inside a `try` and, on any error, asks the
current run to handle it before passing the exception on with a bare `raise`. So only the movements
of the guarded run that is open when the error happens are undone: what happened before the `(`, or
in guarded runs already finished, is kept.

Undo actions are lambdas created where the change is made (`change_position_to`,
`change_facing_to`): each one takes the crawler back to the position/facing it had before that
single change, which is the opposite of the movement just made, and they never go through the sonar,
so undoing can not fail.

### Errors

`invalid_command_error_description` is reused for unknown characters, misplaced digits and a `)`
without its `(`. The new ones are `boulder_found_error_description`,
`silt_found_error_description`, `guarded_run_inside_guarded_run_error_description` and
`unfinished_guarded_run_error_description`.

### Tests

`tests/test_survey_crawler.py` keeps the original 16 tests unchanged (the new sonar is invisible to
them because firm sand behaves as before) and adds 41 more: repetitions (including
`"a9"`, repeating turns, and the invalid `"0"`, `"a00"` and `"(0)"`), the sonar (boulder in front,
behind and under the crawler, a boulder stopping a repetition, sliding on silt forwards and
backwards, the sliding limit, and turning on silt) and guarded runs (undoing movements, turns and
repetitions; silt, invalid commands, nested and unfinished guarded runs; several guarded runs in one
sequence; and what must *not* be undone). `FixedRandom` is the test double that makes sliding
predictable; `test37` uses a real `random.Random` to check the crawler always ends inside the
sliding limit.
