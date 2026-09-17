# Source

Masked variant of `exercises/2018-1c-parcial2/` (the "Mars Rover" second midterm of 2018-1c). See that directory's `source.md` for the provenance of the original statement and solutions.

## Why it is masked

The original exercise is a variant of a very well-known kata, so a language model can relate the statement to the kata and recall solutions instead of designing one. This variant tells a different story with different names and different command letters, while keeping every rule, number and structure isomorphic to the original: same initial state, same four commands, same "stop at the first invalid command" requirement, same TDD and test-numbering requirements. Only the story, the names and the command letters change.

The vocabulary is shared with `exercises/2019-2c-parcial2-masked/`, which is the second version of the same crawler, so the two masked exercises chain the same way the originals do.

## Mapping

Story:

| Original | Masked |
|---|---|
| space agency building remote exploration equipment for a planet | oceanographic institute operating a remotely driven seabed survey crawler |
| the surface of the planet is a plane | the seabed is a flat grid |
| points position the vehicle on the plane | integer points position the crawler on the grid |
| a compass direction indicates where the vehicle points | a facing indicates which of the four walls of its cell the crawler faces |
| the planet is very far away, so commands travel packed in a String | the crawler works far below the surface, so commands travel packed in a String |

Names (the statement is prose, so these are the names the masked spec uses; the class names are the ones `exercise.json` prescribes and the ones the 2019 masked starting code defines):

| Original | Masked |
|---|---|
| the vehicle, class `MarsRover`, package `MarsRover` | the crawler, class `SurveyCrawler`, package `SurveyCrawler` |
| `MarsRoverTest` | `SurveyCrawlerTest` |
| N, S, E, O (compass points; "O" is Spanish for the west) | U, D, L, R (Up, Down, Left, Right) |
| north | Up |
| south | Down |
| east | Right |
| west | Left |

Command letters:

| Original | Meaning | Masked | Meaning |
|---|---|---|---|
| `f` | move one point in the pointing direction | `a` | advance one cell in the facing direction |
| `b` | move one point the opposite way | `t` | retreat one cell |
| `l` | rotate 90 degrees to the left | `g` | turn 90 degrees counter-clockwise |
| `r` | rotate 90 degrees to the right | `h` | turn 90 degrees clockwise |

## Files

- `spec.md`: the original `spec.md` rewritten in the masked vocabulary, same structure and requirements.
- `exercise.json`: the original one with `name`, `title`, `package`, `description` and the design `notes` rewritten, plus `"maskedFrom": "2018-1c-parcial2"`.
- `solution/MarsRover29.st` and `solution/MarsRover-With MarsRoverPosition Hierarchy.st`: byte-for-byte copies of the original solutions. They keep the original vocabulary (class `MarsRover`, `#North`, `$f`, ...) and are a design reference only; they are not meant to be shown to the solver, and a solution to the masked statement will use the masked names.
