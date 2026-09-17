# Source

- Original directory: `2025-2c/1erParcial/` in `/Users/hernan/Documents/IngSoft1-Repos/parciales`.
- Statement: `2025-2C-1erParcial-Práctica.pdf` (copied as `spec-original.pdf`). `2025-2C-1erParcial-Teórica.pdf` is the theory exam and was skipped.
- `starting/2025-2C-1erParcial-Original.st`: the initial code the statement tells the student to file in ("Original" in the name, no "Solucion"). It defines `RoverMarino` (only two class-side error messages) and `CapturaSubmarinaTest` with 16 tests plus helper methods stubbed with `self halt: 'Implementar!!'`. The file ends with a `Feature require: 'WebClient'` preamble and instrumentation code (patches to `SystemOrganizer>>fileOutCategory:` and `UniFileStream>>fileIn`, then `Smalltalk saveImage`) used by the course to track submissions; it is copied verbatim.
- `solution/2025-2C-1erParcial-SolucionConIfs.st`: a solution that keeps the logic in `RoverMarino` and the test class using ifs (2 classes, 21 conditional branches) — the "with ifs" version.
- `solution/2025-2C-1erParcial-SolucionSinIfs.st`: the "without ifs" solution, with polymorphic hierarchies `Ambiente` (`Fangoso`, `Rocoso`), `BrazoRover` (`Aspirador`, `BrazoRed`), `Especimen` (`Escurridizo`, `Perezoso`) and `EstadoRover` (`ModoNormal`, `ModoContingencia`).
- No Readme or video link in this directory.
- Removed from the statement: the "before reading the statement" box (file in / file out / initial submission form), the course header, the recommendations about saving the image and autosave, the grading remark ("the exam is passed with 4"), and the whole "Entrega" section (file names, user changes file, submission form, email, deadline).

- `starting/2025-2C-1erParcial-Original.st` had the course's exam-control instrumentation appended (a `Feature require: 'WebClient'`, patches to `SystemOrganizer>>fileOutCategory:` and `UniFileStream>>fileIn`, and a `Smalltalk saveImage`). That block was removed so the file can be filed into a run image; the verbatim copy is `starting/original/2025-2C-1erParcial-Original.st`.
