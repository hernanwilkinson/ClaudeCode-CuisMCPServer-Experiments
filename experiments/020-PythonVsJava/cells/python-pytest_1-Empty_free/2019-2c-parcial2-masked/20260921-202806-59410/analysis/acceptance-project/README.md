# SurveyCrawler (Python translation)

> **This is the second version of the crawler** (repeated commands, sonar and guarded runs). Its
> design and its decisions are described in [Second version](#second-version) at the end of this
> file. The sections in between describe the first version, the starting point it grew from.

Python + pytest translation of `starting/SurveyCrawler.st` (the Cuis Smalltalk starting code of
the exercise), done as a faithful port of the Java translation in `../java` so that the two can be
compared. The class hierarchy (`SurveyCrawler`, `CrawlerFacing` and its four subclasses, `Point`),
method names (in snake_case), instance variables, responsibilities, conditionals, error strings,
method-category comments and the first 16 tests are the same as in the Java version. Where Java had to
add something only because the language forced it, the Python follows the Smalltalk original
instead (see below).

Layout: one class per module in `src/surveycrawler/` (`survey_crawler.py`,
`crawler_facing.py`, `crawler_facing_right.py`, `crawler_facing_up.py`, `crawler_facing_down.py`,
`crawler_facing_left.py`, `point.py`, plus the modules added by the second version); the tests are
the class `SurveyCrawlerTest` in `tests/test_survey_crawler.py`. Standard library only.

## Run the tests

```
cd exercises/2019-2c-parcial2-masked/python
python3 -m pytest -q
```

`pyproject.toml` sets `pythonpath = ["src"]` and makes pytest collect the plain class
`SurveyCrawlerTest` (`python_classes = ["*Test"]`) and its `test*` methods.

## Translation decisions that are not one to one

- **Names.** Java camelCase method names are snake_case (`isAtFacing` is `is_at_facing`,
  `signalInvalidCommand` is `signal_invalid_command`, `invalidCommandErrorDescription` is
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

Three features were added: **repeated commands** (a digit after `a`, `t`, `h` or `g`), a **sonar**
that answers the ground the crawler is about to step on (firm sand, silt or a boulder) and
**guarded runs** (`(`...`)`), which undo everything they did when something goes wrong.

### Objects

| Class | Module | Responsibility |
| --- | --- | --- |
| `SurveyCrawler` | `survey_crawler.py` | Knows its position, its facing, its sonar and its current run; interprets the command sequence |
| `CrawlerFacing` + 4 subclasses | `crawler_facing*.py` | Answer the `advance_direction()` (`retreat_direction()` is its inverse) and turn the crawler |
| `Point` | `point.py` | Position and direction; `plus`, `times`, `inverted` |
| `Sonar` | `sonar.py` | Answers the `Ground` at a position (`Sonar.with_grounds(...)`, `Sonar.on_firm_sand()`) |
| `Ground`, `FirmSand`, `Boulder`, `Silt` | `ground.py`, `firm_sand.py`, `boulder.py`, `silt.py` | Move and turn the crawler the way each ground does |
| `CrawlerCommand` + 7 subclasses | `crawler_command.py`, `*_command.py` | Know their character, `execute` themselves and `repeat` themselves |
| `CrawlerTurn`, `ClockwiseTurn`, `CounterClockwiseTurn` | `crawler_turn.py`, `*_turn.py` | Apply a turn to the crawler and answer the `inverted()` turn (used to undo it) |
| `CrawlerRun`, `NormalRun`, `GuardedRun` | `crawler_run.py`, `normal_run.py`, `guarded_run.py` | The state of the crawler while it processes commands: whether movements are undoable, what happens on silt and what happens when a guarded run starts, ends or fails |

There is no `if` on the type of ground, on the command character or on "am I in a guarded run":
each of those is an object that knows what to do. The only conditional in the interpreter is
`a_character.isdigit()`, which separates a repetition from a command.

### How the three features work

- **Repetitions.** `SurveyCrawler.interpret` remembers the last `CrawlerCommand` it created. When
  it reads a digit it sends `repeat(number_of_repetitions_of(a_digit), self)` to it, where
  `number_of_repetitions_of` is `int(a_digit) + 2` *extra* executions (`"a0"` advances 3 times, as
  in the requirement). `CrawlerCommand.repeat` executes the command that many times;
  `StartGuardedRunCommand`, `EndGuardedRunCommand` and `InvalidCommand` override it to signal an
  invalid command, so only `a`, `t`, `h` and `g` can be repeated.
- **Sonar and grounds.** `move_towards(a_direction)` asks the sonar for the ground at
  `position + direction` and tells that ground to `move_crawler_towards(self, a_direction)`:
  `FirmSand` moves one cell, `Boulder` signals `"Boulder found"`, and `Silt` asks the crawler to
  slide. Turning asks the ground *under* the crawler to `turn_crawler(self, a_turn)`: only
  `Boulder` refuses. A `Silt` answers `number_of_cells_to_slide()` as
  `randomizer.randrange(10) + 1`, so the crawler ends between 1 and 10 cells away from where it
  was (`Point(1, 3)` to `Point(1, 12)` in the requirement's example). The randomizer is injected
  (`Silt(a_randomizer)`) so the tests are deterministic; by default it is a `random.Random()`.
- **Guarded runs.** `(` puts the crawler in a `GuardedRun` and `)` puts it back in a `NormalRun`.
  Every movement and every turn registers its own undo action in the current run (`NormalRun`
  ignores them, `GuardedRun` keeps them in order). `process` catches any `RuntimeError`, sends
  `handle_error` to the current run and re-raises it; `GuardedRun.handle_error` runs the undo
  actions in reverse order, so the crawler retreats each advance and turns back each turn until it
  is at the position and facing it had when `(` was read. Undoing does not consult the sonar (it
  goes back through cells it already visited) and does not register new undo actions. A
  `GuardedRun` also refuses to start another guarded run, refuses to move on silt (unpredictable)
  and refuses to end the command sequence before `)` was read.

### Decisions where the requirement does not say

- A digit can only follow `a`, `t`, `h` or `g`, so a repetition is a single digit: `"a00"`, `"0"`,
  `"(0)"` and `"(a)0"` are invalid commands. `"a(0)"` is invalid too: `(` and `)` clear the last
  command, so a repetition never crosses the boundary of a guarded run (its undo could not know
  about the commands processed before it started).
- `)` without a previous `(` is an invalid command.
- The sonar is only asked about the cell the crawler is going to step on, not about the cells it
  crosses while sliding on silt: sliding is unpredictable by definition and the requirement says
  the sonar answers "the type of ground it will end up on when executing a command".
- Being *on* a boulder only stops the crawler from turning; it can still advance or retreat away
  from it (the exception is about where it is going, and a crawler on a boulder would be stuck
  forever otherwise).
- Silt does not affect turning even inside a guarded run: a turn is not a movement, so nothing
  unpredictable happens.
- The same error description, `"Boulder found"`, is used when a boulder stops a movement and when
  it stops a turn.
- What a failing guarded run undoes is the guarded run, not the whole command sequence: commands
  processed before `(` and previous guarded runs that already finished are kept. After the
  exception the crawler is back in a normal run, so it can be used again.
- The nested `(` and the unfinished guarded run signal their own errors
  (`"Can not start a guarded run during a guarded run"`, `"Guarded run not finished"`) and undo the
  guarded run, as the requirement asks.

### Tests

`tests/test_survey_crawler.py` has 58 tests: the original 16, plus repetitions (17-28), grounds
(29-42) and guarded runs (43-58). `RandomizerStub` answers a fixed number and remembers the limits
it was asked for, so the tests pin the exact cell the crawler slides to and check that the limit
asked is `Silt.max_number_of_cells_to_slide()`; test 42 uses a seeded `random.Random` to check that
every slide ends between 1 and 10 cells away.
