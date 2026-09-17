# Source

- Masked variant of `2024-2c-recuperatorio-parcial1` (the "For the 1st Midterm" scope of the Tetris prototype: actions 1 and 2, rules 1 to 4). The story and every name were changed so that the statement cannot be related to the famous game; the geometry of the five shapes, their ASCII drawings, the string representation (`*`, `-`, `#`), the anchor-position convention, the random-number mapping, the board minimum (4 columns x 5 rows) and the scope split are exactly those of the original, so the design problem is isomorphic. No numbers were changed. The full-scope variant (with the wall-hit extension) is `2024-2c-recuperatorio-parcial2-masked`.
- starting/: none, as in the original.
- solution/: `2024-2C-Recuperatorio.st`, copied **unchanged** from `2024-2c-recuperatorio-parcial1/solution/`. As in the original exercise it is the complete "do everything" solution, a superset of the reduced scope (tests 01 to 13 cover creation, piece representation, initial column, tick, moving left/right and not leaving the board).
- The reference solution uses the **original vocabulary** (`TetrisGame`, `Tetromino`, `TetrisTest`, `#tick`, `oIn:`/`tIn:`/`iIn:`/`zIn:`/`lIn:`, "row", "piece"). A solution of the masked statement is expected to use the Kiln Stacker vocabulary below; compare structure, not names.
- Discrepancy inherited from the original: the statement maps random number 4 to Hook (original L) and 5 to Step (original Z), but the reference solution creates the Z shape (Step) for 4 and the L shape (Hook) for 5 (`test07` uses `#(4)` and expects the Z shape, `test08` uses `#(5)` and expects the L shape). spec.md keeps the statement's mapping.
- Dropped from the masked statement: the tip about selecting a mono-spaced font in Cuis. The `Random` / `#nextInteger:` tip was kept.

## Mapping

### Story and names

| Original | Masked |
|---|---|
| ISW-Games, Pacman prototype | a pottery workshop planning how glazed tiles are stacked in a kiln |
| Tetris / Tetris game | Kiln Stacker / kiln simulator |
| board | kiln (a tall column) |
| piece / tetromino ("four equal squares") | cluster of glazed tiles ("four equal square tiles") |
| square (element of a piece) | tile |
| row | course |
| completed line / completed row | fired course |
| wall (`#`) | kiln wall (`#`) |
| `#tick` | `#advance` |
| "piece in play" | "cluster descending" |
| "reaches the end" | "reaches the bottom" |
| For the 1st Midterm / 2nd Midterm / 1st and 2nd Midterm | Reduced scope / Full scope / Full scope with extension |
| category `2024-2C-Recuperatorio` | package `KilnStacker` |

### Cluster names (geometry and drawings unchanged)

| Original | Masked | Shape |
|---|---|---|
| Tetromino O | Block | 2x2 square |
| Tetromino T | Fork | 3 on top, 1 below in the middle |
| Tetromino I | Rod | straight column of 4 |
| Tetromino Z | Step | 2 on top, 2 below shifted right |
| Tetromino L | Hook | 3 stacked, 1 to the right of the bottom one |

### Random number mapping (order kept)

| Number | Original | Masked |
|---|---|---|
| 1 | Tetromino O | Block |
| 2 | Tetromino T | Fork |
| 3 | Tetromino I | Rod |
| 4 | Tetromino L | Hook |
| 5 | Tetromino Z | Step |

### Words deliberately avoided in the masked statement

"Tetris", "tetromino", the letters O/T/I/Z/L as piece names, "Pacman", "ISW-Games", and "line" for a completed row.
