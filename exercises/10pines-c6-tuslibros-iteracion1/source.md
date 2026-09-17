# Source

- Course: `10Pines-Capacitacion/C6 - Construccion de Software Seguro usando Test Driven Development` (Dropbox), directory `Smalltalk/C6-TusLibros-Iteracion1`.
- Statement: `TusLibros/EjercicioTusLibrosV3.pdf`, restricted to this iteration's scope in `spec.md` (full translation and version notes in `exercises/10pines-c6-tuslibros`); `spec-original.md` holds the Spanish paragraphs of the statement that belong to this iteration (identical in V2 and V3).
- Slides: none defines it; slide 8 lists TusLibros as the course's complex problem.
- Iteration boundary: determined from `TusLibros-18.st` (the last snapshot of the directory) and from `TusLibros-19.st` (the first of the next directory, which adds an empty `Cashier` and `CashierTest`). The instructor's notes `TusLibros/Resolucion de TusLibros.doc` ("Primer conjunto de tests") match it.
- Starting code: none (greenfield).
- `solution/TusLibros-18.st`: copy of the last snapshot (2 classes `Cart` and `CartTest`, 23 methods, category `TusLibros`). `solution/steps/TusLibros-1.st` .. `-18.st`: copies of the whole sequence, one per TDD step, as built in class (Squeak/Pharo chunk format, CR line endings, stamps 2013-06-17).
- Verification (2026-09-10): `TusLibros-18.st` filed into a fresh copy of `scenarios/2-ModelStructure+Package` (Cuis 7.9) with `FileEntry ... fileIn` -> `'OK'`; `smalltalk_run_tests_in_category` `TusLibros`: 8 tests run, 8 passed, 0 failed, 0 errors (CartTest 8). Nothing missing in the image.
- Removed from the statement: nothing.
