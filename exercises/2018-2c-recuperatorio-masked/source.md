# Source

- Masked variant of `2018-2c-recuperatorio` ("Super 4 en línea", a Connect Four variant). The story, every name and the board numbers were changed so that the statement cannot be related to the famous game, while the design problem stays isomorphic: a configurable and composable winning strategy, alternating players, a playing/won/draw life cycle, and detection of consecutive pieces over rows, columns and diagonals.
- starting/: none, as in the original.
- solution/: `Super4EnLinea.st`, copied **unchanged** from `2018-2c-recuperatorio/solution/`. It is a design reference only.

## Warning about the reference solution

The reference solution implements the **original** game: a 6-row by 7-column board, 21 chips per player and **four** consecutive chips to win, with the colours `#red` and `#yellow` (red plays first). The masked statement asks for an 8x8 rack, 32 beads per player and **five** consecutive beads. Therefore the tests of `Super4EnLinesTest` do **not** apply literally to a solution of the masked statement: every loop bound, column count, chip count and "4 in a line" threshold differs, and the concrete board positions used by the tests would need to be replayed on the larger rack. Compare structure and design decisions (strategy objects, state, traversal), not literal expected values.

## Mapping

### Story and names

| Original | Masked |
|---|---|
| Super 4 en línea / Super 4 in a Line / Connect Four variant | Cascade |
| board | rack (upright, with slots) |
| chip (ficha) | glass bead |
| insert a chip in a column, it falls to the lowest position | drop a bead into a column, it slides down to the lowest free slot |
| red / yellow | amber / teal |
| winning strategy | victory rule |
| horizontally / vertically / diagonally | along a row / along a column / along a diagonal |
| "align four consecutive chips" | "align five consecutive beads" |
| class category `ISW1-Super4EnLinea` | class category `Cascade` |

### Numbers

| Concept | Original | Masked |
|---|---|---|
| rows | 6 | 8 |
| columns | 7 | 8 |
| pieces per player | 21 | 32 |
| consecutive pieces to win | 4 | 5 |
| total slots | 42 | 64 |

### Vocabulary in the reference solution (original names)

`Super4EnLinea` (game), `Super4EnLinesTest`, `winningHorizontally` / `winningVertically` / `winningDiagonally` / `winningComposing:` (instance creation with the winning strategy), `addChipToColumn:`, `isRedAt:` / `isYellowAt:`, `hasRedWon` / `hasYellowWon`, `isOver`, `numberOfChipsInColumn:`, and the error descriptions `cannotPlayErrorDescription`, `columnIsFullErrorDescription`, `invalidColumnNumberErrorDescription`. A solution of the masked statement is expected to use the Cascade vocabulary (rack, bead, amber, teal, victory rule) instead.

### Words deliberately avoided in the masked statement

"four", "connect", "in a line", "en línea", "chips", "Super".
