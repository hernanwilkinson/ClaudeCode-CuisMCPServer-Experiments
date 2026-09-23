# SurveyCrawler (Python)

Second version of the seabed survey crawler. The crawler processes a sequence of commands
(`a` advance, `t` retreat, `h` turn clockwise, `g` turn counter clockwise) and, on top of the
first version, it now understands

- **repeated commands**: a digit after `a`, `t`, `h` or `g` repeats that command the value of the
  digit plus two times (`"a0"` advances three times: once for the `a` and twice for the `0`),
- **grounds detected by a sonar**: firm sand (normal movement), boulder (the crawler can neither
  move to it nor turn while standing on it) and silt (the crawler slides an unpredictable number
  of positions in the direction it was going),
- **guarded runs**: the commands between `(` and `)`; if anything goes wrong inside them, the
  crawler undoes what it did and returns to the position and facing it had when the run started.

The code is in `src/surveycrawler/` (one module per class) and the tests are the class
`SurveyCrawlerTest` in `tests/test_survey_crawler.py`. Standard library only.

## Run the tests

```
python3 -m pytest
```

`pyproject.toml` sets `pythonpath = ["src"]` and makes pytest collect the plain class
`SurveyCrawlerTest` (`python_classes = ["*Test"]`) and its `test*` methods.

## Design

`SurveyCrawler` knows its position, its facing, its sonar and the run it is processing. It does
not decide anything by itself about grounds, commands or guarded runs: it asks the object whose
responsibility that is, and that object sends it back a message saying what to do.

- **`CrawlerFacing`** (`CrawlerFacingUp`, `Down`, `Left`, `Right`) knows the `advance_direction()`
  of the crawler as a `Point` and how to turn. `retreat_direction()` is the negated advance
  direction, so each subclass only defines one direction. Movement is expressed as a direction and
  not as `move_up`/`move_down`/... (as in the first version) because the crawler has to be able to
  slide *several* positions in the direction it was going, which is `a_direction.times(a_distance)`.

- **`Ground`** answers what happens when the crawler tries to move to it or to turn on it:
  - `FirmSand` displaces the crawler one position,
  - `Boulder` signals the error, both for moving and for turning,
  - `Silt` asks the crawler to slide, and inherits turning from `TraversableGround`, the ground the
    crawler can stand on and therefore turn on.

  There is no `if` asking for the type of ground anywhere: `move_towards` asks the sonar for the
  ground of the position it wants to move to and tells it `move_crawler_towards`; `turn_clockwise`
  asks the sonar for the ground of the position the crawler is standing on and tells it
  `turn_crawler_clockwise`.

- **`Sonar`** answers `ground_at(a_position)`. `FirmSandSonar` is the one used by
  `SurveyCrawler.at_facing(...)`, so the first version's behaviour (firm sand everywhere) is kept;
  `SurveyCrawler.at_facing_with_sonar(...)` takes any other sonar. The tests use a `SonarSimulator`
  built from a map of positions to grounds, and a `RandomSimulator` for `Silt`, so the sliding is
  predictable in the tests while `Silt()` uses `random.Random` in production.

- **`CrawlerCommand`** (`AdvanceCommand` `a`, `RetreatCommand` `t`, `TurnClockwiseCommand` `h`,
  `TurnCounterClockwiseCommand` `g`) knows how to `execute` itself on a crawler, how to `undo` that
  execution and how to `repeat` itself. `CrawlerCommand.for_character` finds the command class of a
  character among its subclasses (the same solution `CrawlerFacing.facing` already used) and
  signals `Invalid command` when there is none. `NoCommand` is the null object used as "last
  command" when there is nothing to repeat: repeating it signals `Invalid command`, which is what
  makes `"0"`, `"a00"` and `"(0)"` invalid.

- **`CrawlerRun`** is the state of the crawler while it processes a sequence of commands, and it is
  what tells free commands from guarded ones apart:
  - `FreeRun` executes each command and keeps whatever the crawler did; sliding on silt is done
    with the distance the silt answers.
  - `GuardedRun` remembers every command it executed and, if any error is signalled, undoes them in
    reverse order and passes the exception on (`raise` inside the `except`). Moving to silt during a
    guarded run signals `Can not move over silt during a guarded run`, because an unpredictable
    movement can not be guaranteed to be undone; starting a guarded run signals
    `Can not start a guarded run inside another guarded run`; and reaching the end of the sequence
    without a `)` signals `Guarded run was not finished`.

  The sequence of commands is processed as a *stream* of characters shared by the runs: when
  `FreeRun` finds a `(` it hands the stream to a new `GuardedRun`, which consumes it until its `)`
  and gives control back. That is why several guarded runs can appear in one sequence and why a
  nested `(` is just a message the `GuardedRun` answers differently than the `FreeRun`. Processing
  character by character (instead of parsing the whole sequence first) also keeps the first
  version's behaviour: the commands before an invalid one are executed.

  The crawler holds its current run so that `Silt` can be told "slide" and the run decides what
  that means. Runs are stacked and restored with `begin_run` in a `finally`, so an error never
  leaves the crawler inside a guarded run.

- **Undoing** is done with the opposite movement of each movement made, in reverse order:
  `undo_advance` displaces the crawler in the retreat direction, `undo_turn_clockwise` turns it
  counter clockwise, and so on. Undoing never asks the sonar, because the crawler is retracing a
  path it already walked; asking again could stop it on ground it can not move to (for instance,
  the silt it was standing on when the guarded run started).

## Decisions taken where the requirements did not say

- **Sliding distance.** The example in the requirements says that a crawler at `1@2` that advances
  to silt at `1@3` can end up at `1@3` up to `1@12`, and that "the sliding limit on silt is 10
  cells", so the crawler moves between 1 and 10 positions counting the commanded one:
  `a_direction.times(random.randrange(10) + 1)`.
- **Sliding does not look at the ground it slides over or lands on.** The sonar answers the ground
  of the position a command would move the crawler to; what the slide finds afterwards is not
  checked (checking the landing position would make the slide restart, with no obvious end).
- **A digit can only follow `a`, `t`, `h` or `g`.** The requirements say the repetition applies to
  those four commands and is a single digit, so a digit after another digit, after `(`, after `)`
  or at the beginning of the sequence is an invalid command. A guarded run is not a command either,
  so `"a(h)0"` is invalid and `"(a)"` does not remember the `a` of a previous sequence.
- **`)` without `(`** is an invalid command, as any other character that is not a command.
- **Errors** are `RuntimeError` with a description, as in the first version, and every error the
  crawler signals has a description method in `SurveyCrawler` so the tests do not repeat the
  strings.
- **The crawler can be created on a boulder or on silt** (nothing forbids it): it can not turn
  while it is on the boulder, but it can move away from it, since only the ground of the position
  it moves to stops the movement.
