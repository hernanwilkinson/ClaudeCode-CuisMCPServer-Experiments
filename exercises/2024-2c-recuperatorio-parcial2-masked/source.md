# Source

- Masked variant of `2024-2c-recuperatorio-parcial2` (the "For the 2nd Midterm" scope of the Tetris prototype, everything, together with the "For the 1st and 2nd Midterm" extension that replaces rule 4 with per-piece wall-hit behaviour). The story and every name were changed so that the statement cannot be related to the famous game; the geometry of the five shapes, their ASCII drawings, the string representation (`*`, `-`, `#`), the anchor-position convention, the random-number mapping, the board minimum (4 columns x 5 rows), the 10 points per completed row, the game-over rule and the wall-hit extension are exactly those of the original, so the design problem is isomorphic. No numbers were changed. The reduced-scope variant is `2024-2c-recuperatorio-parcial1-masked`.
- starting/: none, as in the original.
- solution/: both files copied **unchanged** from `2024-2c-recuperatorio-parcial2/solution/`:
  - `2024-2C-Recuperatorio.st`: the complete solution for the full scope: `TetrisTest` (22 tests), `TetrisGame`, `Tetromino`, category `2024-2C-Recuperatorio`.
  - `2024-2C-Recuperatorio-1erY2doParcial.st`: the complete solution for the full scope with extension: the same plus a `HitWallMover` hierarchy (`BounceMover`, `GoToInitialColunmMover`, `MoveToOtherSideMover`) and tests 23 to 30 for the wall-hit behaviour.
- The reference solutions use the **original vocabulary** (`TetrisGame`, `Tetromino`, `TetrisTest`, `#tick`, `oIn:`/`tIn:`/`iIn:`/`zIn:`/`lIn:`, `HitWallMover`, "row", "piece"). A solution of the masked statement is expected to use the Kiln Stacker vocabulary below; compare structure, not names.
- Discrepancy inherited from the original: the statement maps random number 4 to Hook (original L) and 5 to Step (original Z), but both reference solutions create the Z shape (Step) for 4 and the L shape (Hook) for 5 (`test07` uses `#(4)` and expects the Z shape, `test08` uses `#(5)` and expects the L shape). spec.md keeps the statement's mapping.
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

### Wall-hit extension

| Original | Masked | Behaviour (reference solution class) |
|---|---|---|
| Tetromino O and T | Block and Fork | reappear on the other side, same row/course (`MoveToOtherSideMover`) |
| Tetromino I and L | Rod and Hook | bounce 2 columns (`BounceMover`) |
| Tetromino Z | Step | return to the initial column, same row/course (`GoToInitialColunmMover`) |

### Words deliberately avoided in the masked statement

"Tetris", "tetromino", the letters O/T/I/Z/L as piece names, "Pacman", "ISW-Games", and "line" for a completed row.
