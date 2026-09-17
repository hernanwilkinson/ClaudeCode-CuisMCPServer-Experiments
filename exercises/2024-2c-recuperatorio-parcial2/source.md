# Source

- Original directory: `2024-2c/Recuperatorio/` in the parciales repository. The single statement covers three scopes ("For the 1st Midterm", "For the 2nd Midterm", "For the 1st and 2nd Midterm"); this exercise is the 2nd-midterm scope (everything) together with the both-midterms extension (rule 4 replaced by per-piece wall-hit behavior). The 1st-midterm scope is the exercise `2024-2c-recuperatorio-parcial1`.
- Statement: `2024-2C-Recuperatorio - Práctica.pdf` (copied as `spec-original.pdf`). `2024-2C-Recu - Teórica.pdf` is the theory exam and was skipped. The PDF shows a drawing of each tetromino; the drawings were transcribed to ASCII in spec.md (marked as an editor's note), using the solution's Tetromino definitions for the orientation of Z and L.
- No initial code: the statement does not tell the student to file anything in, and both `.st` files in the directory are complete solutions. Therefore there is no `starting/` directory.
- `solution/2024-2C-Recuperatorio.st`: the complete solution for the "do everything" (2nd midterm) scope: `TetrisTest` (22 tests), `TetrisGame`, `Tetromino`, category `2024-2C-Recuperatorio`.
- `solution/2024-2C-Recuperatorio-1erY2doParcial.st`: the complete solution for the "1st and 2nd midterm" scope: the same plus a `HitWallMover` hierarchy (`BounceMover`, `GoToInitialColunmMover`, `MoveToOtherSideMover`) and tests 23 to 30 for the wall-hit behavior.
- Discrepancy found: the statement maps random number 4 to Tetromino L and 5 to Tetromino Z, but both solutions create Z for 4 and L for 5 (`test07` uses `#(4)` and expects the Z shape, `test08` uses `#(5)` and expects the L shape). spec.md keeps the statement's mapping.
- No Readme and no video link were found in the directory.
- Removed from the statement: the "Entrega" section (file-out name and category, user.changes file, clean-image check, submission form, teacher ID, e-mail, autosave recommendation, closing times) and the page numbers.
