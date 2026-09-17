# Source

- Origin: 10Pines training course "C1 - Diseño Avanzado de Software con Objetos I", directory
  `/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C1 - Diseño Avanzado de Software con Objetos I/`.
- Presentation: `Presentacion/ C1-Diseño Avanzado de Software con Objetos I-actual-remoto.pdf` (120 pages, Dec 2023).
  **No slide of this PDF defines the Numero exercise** (nor do the local `-actual-remoto.pptx` and `-actual-presencial.pptx`
  decks, whose text and speaker notes were also searched for "Ejercicio", "Quiz", "Numero", "Número", "Entero", "Fraccion",
  "Tarea"). All 120 pages are course/theory slides. The exercise is handed out as code (the `hacerZipEjercicios` script zips
  `Smalltalk-Cuis/Numero-Exercise.st` as `C1-Numero-Exercise` and the two solution files as `C1-Numero-Exercise-Solution`),
  so the statement is the test class itself, whose Spanish comments are transcribed in `spec-original.md`.
- Slides that motivate the exercise and were used for the hints in `spec.md`: 90-102 ("El problema del if", "if – Cómo
  sacarlo" steps 1-6, "If - Conclusiones") and heuristics H9, H11 and H12 (slides 112, 114, 115).
- `starting/Numero-Exercise.st`: copy of `Smalltalk-Cuis/Numero-Exercise.st` (NumeroTest with 26 tests and setUp, Numero,
  Entero, Fraccion).
- `solution/Numero-Solution-intermedia.st`: first solution, makes all tests pass with `isKindOf:` checks in `+`, `*`, `/`.
  `solution/Numero-Solution-final.st`: final solution, the checks replaced by double dispatch
  (`masEntero:`/`masFraccion:`, `porEntero:`/`porFraccion:`, `divididoEntero:`/`divididoFraccion:`).
  The tests in both solution files are identical to the exercise ones (only category and stamps differ).
- Not found: a written statement in Spanish; `Viejo/Cuis/Numero-*.st` and the older PDFs/pptx are Dropbox online-only
  placeholders of 0 bytes and were not opened.
- Nothing was removed from the statement because there is no written statement; the license header comment
  ("Developed by 10Pines SRL ... CC BY-NC-SA 3.0") present in every class comment was not transcribed.
