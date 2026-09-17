# Source

- Original directory: `2025-1c/Recuperatorio-2do/` in the parciales repository.
- Statement: `2025-1C-2doRecuperatorio - Práctica.pdf` (copied as `spec-original.pdf`). There is no Teórica PDF in this directory.

## starting/

- `starting/2025-1C-Recuperatorio-2-Original.st`: the initial code, i.e. the course's solution of the 2025-1c second midterm (Pintor) re-categorized as `2025-1C-Recuperatorio-2`. Apart from the category name and whitespace it is identical to `2025-1c-parcial2/solution/2025-1C-Parcial-2-Solucion.st`: `Pintor`, `Pared`, `HistorialDeAcciones`, `AcciónDePintor` with `PintorAgregar`, `PintorSeleccionar`, `PintorAlinear` (`PintorAlinearAIzquierda`, `PintorAlinearADerecha`) and `PintorTest`.

## solution/

No solution file exists in the original directory, so there is no `solution/`.

## Readme / video

No Readme and no video link in this directory.

## Notes

- The statement's "Work to do" says to implement in category `2025-1C-Parcial-2` while the submission instructions and the initial file use `2025-1C-Recuperatorio-2`; the initial file's category (`2025-1C-Recuperatorio-2`) was kept as the package name.
- The three example pictures of movement lines were described in prose in spec.md; see spec-original.pdf for the images.

## Removed from the statement

The "BEFORE READING THE STATEMENT" box (file-in/file-out/form/initial submission code), the passing-grade rule ("must get 5 or more"), the "Entrega" section (fileout name, user.changes, clean-image check, submission form, autosave recommendation, image-handling assumption) and the penalty/leaving notes.

- `starting/2025-1C-Recuperatorio-2-Original.st` had the course's exam-control instrumentation appended (a `Feature require: 'WebClient'`, patches to `SystemOrganizer>>fileOutCategory:` and `UniFileStream>>fileIn`, and a `Smalltalk saveImage`). That block was removed so the file can be filed into a run image; the verbatim copy is `starting/original/2025-1C-Recuperatorio-2-Original.st`.
