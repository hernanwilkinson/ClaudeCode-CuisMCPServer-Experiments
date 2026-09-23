# SurveyCrawler (Python translation)

Python + pytest translation of `starting/SurveyCrawler.st` (the Cuis Smalltalk starting code of
the exercise), done as a faithful port of the Java translation in `../java` so that the two can be
compared. The class hierarchy (`SurveyCrawler`, `CrawlerFacing` and its four subclasses, `Point`),
method names (in snake_case), instance variables, responsibilities, conditionals, error strings,
method-category comments and the 16 tests are the same as in the Java version. Where Java had to
add something only because the language forced it, the Python follows the Smalltalk original
instead (see below).

It now also implements the **second version** of the crawler (repeated commands, sonar and
guarded runs); see "Second version" below.

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


## Second version

The three new requirements are solved without adding conditionals to the movement code: each one
got its own polymorphic hierarchy, and the existing objects (`SurveyCrawler`, `CrawlerFacing`,
`Point`) only grew the messages the new objects need.

### Ground types and the sonar

- `Ground` is the abstract class of `FirmSand`, `Silt` and `Boulder`. It understands
  `move_crawler_towards(a_crawler, a_direction)` (what happens when the crawler tries to move onto
  that ground) and `assert_crawler_can_turn(a_crawler)` (what happens when the crawler tries to
  turn on it). `FirmSand` moves the crawler one cell and lets it turn, `Boulder` signals the error
  in both cases, and `Silt` makes the crawler slide but lets it turn.
- `Sonar` answers `ground_at(a_position)`: `Sonar.with_grounds(a_ground_by_position)` takes a dict
  of the known grounds and answers `FirmSand()` for every other position, so
  `Sonar.all_firm_sand()` is the sonar of a seabed without obstacles. `SurveyCrawler.at_facing`
  keeps working (it uses `Sonar.all_firm_sand()`) and `SurveyCrawler.at_facing_sonar` adds the
  sonar, which is the Smalltalk `at:facing:sonar:`.
- `SurveyCrawler.move_towards(a_direction)` asks the sonar for the ground of the *destination* and
  sends it `move_crawler_towards`, so `move_up`/`move_down`/`move_left`/`move_right` (and therefore
  the four `CrawlerFacing` subclasses, which did not change) go through the sonar.
  `turn_clockwise`/`turn_counter_clockwise` ask the ground of the *current* position whether the
  crawler can turn.
- The number of cells slid on silt is `Silt`'s responsibility: `number_of_cells_to_slide()` is
  `random.randrange(max_number_of_cells_to_slide()) + 1`, that is between 1 and 10. The random is
  injected (`Silt.sliding_with(a_random)`, `Silt.sliding_randomly()`) so the tests use a
  `FixedRandom` test double and are deterministic.

### Guarded runs

- `CrawlerRun` is the abstract class of `NormalRun` and `GuardedRun`, and it is the state of the
  crawler while a sequence of commands is being processed (`SurveyCrawler._current_run`). It
  handles `'('` and `')'` and delegates every other command to the crawler, so the three
  differences between both runs are polymorphic, not `if`s:
  - starting/finishing a run: `NormalRun` starts a `GuardedRun` on `'('` and signals an error on
    `')'`; `GuardedRun` signals an error on `'('` (no nested guarded runs) and goes back to a
    `NormalRun` on `')'`. `assert_is_finished` (sent at the end of `process`) signals the
    unfinished guarded run error only in `GuardedRun`.
  - moving onto silt (`slide_crawler_towards`): `NormalRun` slides the crawler the number of cells
    the silt answers, `GuardedRun` signals an error because the movement is unpredictable.
  - remembering what has to be undone (`register_movement`): `NormalRun` ignores it, `GuardedRun`
    pushes it on a stack.
- `CrawlerMovement` is the abstract class of what a guarded run has to undo: `CrawlerDisplacement`
  (undone by moving the opposite displacement) and `CrawlerClockwiseTurn` /
  `CrawlerCounterClockwiseTurn` (undone by the opposite turn). `undo_movements` pops the stack and
  sends `undo(a_crawler)` to each one, so the movements are undone in the opposite order, and it
  uses `move_by`/`turn_facing_clockwise`/`turn_facing_counter_clockwise`, which change the crawler
  without asking the sonar and without registering anything (the way back was already travelled).
- `process` starts a `NormalRun`, processes the commands, sends `assert_is_finished` and, in the
  `except`, sends `undo_movements` (a no-op in a `NormalRun`, so an error outside a guarded run
  leaves the crawler where it got to, as in the first version) and re-raises the error with a bare
  `raise`.

### Repeated commands

`process_movement_command` is the entry point the run uses: if the command `isdigit()` it repeats
the last repeatable command `digit + number_of_repetitions_added_to_digit()` (2) more times,
otherwise it processes the command (the original `process_command`) and remembers it. Anything
that is not `a`, `t`, `h` or `g` forgets it (`forget_last_repeatable_command`), so a digit after an
invalid command, after another digit or after a parenthesis is an invalid command.

### Errors

As in the first version, every error is a `RuntimeError` whose description is a message of
`SurveyCrawler` (`boulder_found_error_description`,
`can_not_slide_during_guarded_run_error_description`,
`guarded_run_already_started_error_description`, `guarded_run_not_started_error_description`,
`unfinished_guarded_run_error_description`), signalled by a `signal_...` message, so the tests
never hardcode a string.
