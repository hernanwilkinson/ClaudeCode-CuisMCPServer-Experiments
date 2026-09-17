# Game of Life

## Statement

Model Conway's Game of Life.

The game is played on a rectangular board of cells. Each cell is either alive or dead. The board evolves in discrete generations: the next generation is computed from the current one by applying the following rules to every cell at the same time, where the neighbours of a cell are the eight cells adjacent to it (horizontally, vertically and diagonally):

1. A live cell with fewer than two live neighbours dies.
2. A live cell with two live neighbours stays alive.
3. A live cell with three live neighbours stays alive.
4. A live cell with more than three live neighbours dies.
5. A dead cell with exactly three live neighbours comes to life ("resurrects").

As the solution poses it:

- A game is created from the collection of its live cells and the size of the board: `GameOfLife withLiveCells: aCollectionOfPoints withSize: aPoint`. Cells are `Point`s (`x@y`); a cell is inside the board when `0 <= x <= size x` and `0 <= y <= size y` (so a `3@3` board has the cells `0@0` to `3@3`). Creating a game with a live cell outside the board must fail with the error message `'celda fuera de rango'` ("cell out of range").
- The game answers `isAliveAt: aCell` / `isDeadAt: aCell`, `numberOfAliveNeighboursOf: aCell`, `boardSize`, iterates its cells with `cellsDo:`, and advances with `nextGeneration`.

## Tests of the solution (`GameOfLifeTest`, category `GameOfLife`)

| Test | Board | Live cells | After `nextGeneration` |
|---|---|---|---|
| `test01AliveCellWithLessThanTwoAliveNeighDies` | `3@3` | `1@1` | `1@1` is dead |
| `test02AliveCellWithTwoAliveNeighStaysAlive` | `3@3` | `1@1 2@0 1@0` | `1@1` is not dead |
| `test03AliveCellWithThreeAliveNeighStaysAlive` | `3@3` | `1@1 2@0 1@0 1@2` | `1@1` is not dead |
| `test04AliveCellWithMoreThanThreeAliveNeighDies` | `3@3` | `1@1 2@0 1@0 1@2 0@1` | `1@1` is dead |
| `test05DeadCellWithThreeAliveNeighResurects` | `3@3` | `2@0 1@0 0@0` | `1@1` is not dead |
| `test06CreateCellOutsideBounds` | `3@3` | `2@0 1@0 1@4` | creation raises `Error` with message `'celda fuera de rango'` |

The tests use `should:raise:withExceptionDo:` with `Error - MessageNotUnderstood`.

## The solution's design (for reference)

`GameOfLife` keeps the live cells in a `Set` and the board size in a `Point`; `nextGeneration` is the union of the live cells that survive (`hasToSurvive:`: 2 or 3 live neighbours) and the dead cells that resurrect (`hasToResurrect:`: exactly 3), with `numberOfAliveNeighboursOf:` = size of the intersection of the cell's `eightNeighbors` with the live cells. The file also contains `GameOfLifeView`, an `ImageMorph` that draws the board (5 pixels per cell) and steps a generation every 500 ms, with the examples `openBlinker`, `openToad` and `openRandomOf: 100@100`; the view has no tests.
