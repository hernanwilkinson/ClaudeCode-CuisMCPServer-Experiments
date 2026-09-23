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
above. The 16 original tests are unchanged and still pass; the suite now has 55 tests
(`tests/test_survey_crawler.py`).

### Commands are objects (`Command` and its subclasses)

`SurveyCrawler>>process_command` and its `is...Command:` predicates were replaced by one class per
command: `AdvanceCommand` (`'a'`), `RetreatCommand` (`'t'`), `TurnClockwiseCommand` (`'h'`) and
`TurnCounterClockwiseCommand` (`'g'`). `Command.for_character(a_character)` looks the command up
the same way `CrawlerFacing.facing(...)` looks a facing up (iterating `cls.__subclasses__()` and
signalling `Invalid command` when none is for the character), so the if-chain is gone.

Each command knows how to `execute_on` a crawler and how to `undo_on` it (`a` undoes as one cell
backwards, `h` undoes as a turn counter-clockwise, ...), which is what a guarded run needs. Undoing
is ground-unaware on purpose (`move_one_cell_backward`, `turn_clockwise_ignoring_ground`): the
crawler is retracing cells it already occupied, so the sonar must not stop it.

`NoCommand` is the null object used as "the last command" when there is none; executing it signals
`Invalid command`, which is how `"0"`, `"a00"`, `"(0)"` and `"(a)0"` are rejected without any
`None` checks.

### Command repetition

A digit is not a command: it repeats the last one. `Run>>repeat_last_command` executes the last
command `number_of_repetitions_of(a_digit)` (`a_digit + 2`) more times, so `"a0"` advances 3 times
in total. Before repeating, the last command is set to `NoCommand`, which makes a digit after a
digit invalid (a repetition is a single digit). Since the only commands are `a`, `t`, `h` and `g`,
"the repetition can only be applied to those" needs no extra check.

### Sonar and grounds

`SurveyCrawler.at_facing_with_sonar(a_position, a_facing_name, a_sonar)` is the new creation
message; `at_facing` keeps working and uses a `FirmSandSonar` (everything is firm sand), which is
why the original tests did not change. `GroundMapSonar.with_grounds_at(a_dictionary)` is the sonar
used by the tests: it answers the ground of the positions in the dictionary and `FirmSand` for the
rest.

A `Ground` (`FirmSand`, `Silt`, `Boulder`) answers two messages, so no `if` asks for the ground
type:

- `move_crawler_towards(a_crawler, a_direction)`, sent to the ground of the position the crawler
  would end at: `FirmSand` moves it one cell, `Silt` slides it (`a_crawler.slide_towards(...)`) and
  `Boulder` signals `Can not move nor turn on a boulder`.
- `assert_can_be_occupied()`, sent to the ground the crawler is standing on before turning:
  `FirmSand` and `Silt` do nothing (silt does not affect turning) and `Boulder` signals.

`Silt` holds the random it slides with (`Silt.with_random(a_random)` in the tests, a real
`random.Random` by default) and slides `randrange(slide_limit()) + 1` cells, that is, between 1 and
10 cells from where the crawler was, which is the range of the statement's example
(`Point(1, 3)` .. `Point(1, 12)`).

### Runs (`Run`, `NormalRun`, `GuardedRun`)

`SurveyCrawler>>process` creates a `NormalRun` and sends `process(a_character)` to the crawler's
current run for each character, then `finish()`. The run is the state of the command
interpretation, and it is polymorphic:

- `'('`: `NormalRun` changes the crawler's run to a `GuardedRun`; `GuardedRun` signals
  `Can not start a guarded run during a guarded run`.
- `')'`: `GuardedRun` goes back to a `NormalRun`; `NormalRun` signals `Invalid command`.
- `finish()`: `NormalRun` does nothing; `GuardedRun` undoes and signals
  `The guarded run was not finished`.
- `GuardedRun>>process` wraps the whole character processing in a `try`/`except`, so *any* problem
  (boulder, silt, invalid command, nested guarded run) undoes the commands executed so far, in
  reverse order, and re-raises. Because the last command of a run is per run, a digit never crosses
  a parenthesis.
- Silt is the one behaviour that depends on the run: `Silt` sends `slide_towards` to the crawler,
  the crawler forwards it to its run, and `NormalRun` slides while `GuardedRun` signals
  `Can not move on silt during a guarded run` (double dispatch instead of asking whether the
  crawler is in a guarded run).

`process` resets the crawler's run to a `NormalRun` in a `finally`, so a crawler whose guarded run
failed keeps working.

Error descriptions live in the class that signals them (`Boulder`, `GuardedRun`), following the
`invalid_command_error_description` convention of `SurveyCrawler`; both are class methods so the
tests can ask either the class or an instance.

### Changes to the original classes

- `CrawlerFacing` subclasses answer a `direction()` (`Point(0, 1)`, ...) and `advance`/`retreat` are
  implemented once in `CrawlerFacing` as `a_crawler.move_towards(self.direction())` and
  `move_towards(self.opposite_direction())`. `SurveyCrawler`'s `move_up`/`move_down`/`move_left`/
  `move_right` are therefore gone, replaced by `move_cells_towards(a_number_of_cells, a_direction)`
  (the sliding on silt needs to move more than one cell).
- `Point` answers `times(a_number)`, used for `opposite_direction` and for sliding.
- `turn_clockwise`/`turn_counter_clockwise` first ask the current ground whether it can be occupied.
- The tests add two helpers (`crawler_at_facing_with_grounds`, `silt_sliding`) and a `RandomStub`,
  so the sliding on silt is deterministic and the sonar is easy to set up.
