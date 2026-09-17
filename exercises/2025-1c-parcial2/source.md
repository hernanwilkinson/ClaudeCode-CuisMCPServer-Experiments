# Source

- Original directory: `2025-1c/2doParcial/` in the parciales repository.
- Statement: `2025-1C-Parcial 2 - Práctica.pdf` (copied as `spec-original.pdf`). `2025-1C-Parcial 2 - Teórica.pdf` is the theory exam and was skipped.

## Files in the original directory

- `2025-1C-Parcial-2.st` (158 bytes): only `Feature require: 'WebClient'!` and the creation of the class category `2025-1C-Parcial-2`. Not copied (it is a subset of the file below).
- `2025-1C-Parcial-22.st` and `2025-1C-Parcial-2.st copy 2` (11 KB, byte-identical): the file that students had to file in before reading the statement. It creates the category `2025-1C-Parcial-2` and contains **no domain classes**: the rest of the file recompiles `SystemOrganizer>>fileOutCategory:` and `UniFileStream>>fileIn` (sources encoded as byte arrays) so that file-ins and file-outs are logged and the file-out is stamped with image/host identification. It is the exam-day submission-control mechanism, not model code. It was copied as `starting/2025-1C-Parcial-2.st` as instructed, but it is not needed to solve the exercise: a fresh category named `2025-1C-Parcial-2` is enough. Loading it in a work image is not recommended because it patches system methods.
- `2025-1C-Parcial-2-Solucion.st`: the course's solution (copied to `solution/`): `Pintor`, `Pared`, `HistorialDeAcciones`, `AcciónDePintor` with `PintorAgregar`, `PintorSeleccionar`, `PintorAlinear` (`PintorAlinearAIzquierda`, `PintorAlinearADerecha`), and `PintorTest`.
- `Readme.txt` (copied to `solution/`). Translated verbatim:
  > Link to the solution video: https://youtu.be/P3DxOg_119s
  > IMPORTANT: Keep in mind that the video is about a more complex statement, with more actions

## Removed from the statement

The "BEFORE READING THE STATEMENT" box (file-in/file-out/form/initial submission code), the "Entrega" section (fileout name, user.changes, clean-image check, submission form/email, autosave recommendation, image-handling assumption), the closing-time warnings and the note about penalties for name/format errors.

- `starting/2025-1C-Parcial-2.st` had the course's exam-control instrumentation appended (a `Feature require: 'WebClient'`, patches to `SystemOrganizer>>fileOutCategory:` and `UniFileStream>>fileIn`, and a `Smalltalk saveImage`). That block was removed so the file can be filed into a run image; the verbatim copy is `starting/original/2025-1C-Parcial-2.st`.

- After removing the instrumentation, `starting/2025-1C-Parcial-2.st` only creates the system category, so `startingPackages` is empty: the runner creates the category through the prompt. The file is kept for the record.
