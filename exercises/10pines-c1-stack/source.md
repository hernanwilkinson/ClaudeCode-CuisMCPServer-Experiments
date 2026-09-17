# Source

- Origin: 10Pines training course "C1 - Diseño Avanzado de Software con Objetos I", directory
  `/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C1 - Diseño Avanzado de Software con Objetos I/`.
- Presentation: `Presentacion/ C1-Diseño Avanzado de Software con Objetos I-actual-remoto.pdf` (120 pages, Dec 2023).
  **No slide of this PDF defines the Stack exercise** (nor do the local `-actual-remoto.pptx` and `-actual-presencial.pptx`
  decks, whose text and speaker notes were also searched for "Ejercicio", "Quiz", "Stack", "pila", "push", "pop", "Tarea").
  All 120 pages are course/theory slides. The exercise is handed out as code (the `hacerZipEjercicios` script zips
  `Smalltalk-Cuis/Stack-Exercise.st` as `C1-Stack-Exercise` and the four solution files as `C1-Stack-Exercise-Solution`),
  so the statement is the test class itself.
- Slides that motivate the exercise and were used for the hints in `spec.md`: 90-102 ("El problema del if", "if – Cómo sacarlo"
  steps 1-6, "If - Conclusiones") and heuristic H9 on slide 112. Their Spanish text is transcribed in `spec-original.md`.
- `starting/Stack-Exercise.st`: copy of `Smalltalk-Cuis/Stack-Exercise.st` (StackTest with 10 tests, an empty Stack class
  with only `Stack class>>stackEmptyErrorDescription`).
- `solution/`: copies of the four solution files, two lines of solution each with an intermediate and a final step:
  `Stack-Solution-with-States-intermedia.st` (OrderedCollection + `isEmpty ifTrue:` in `top`),
  `Stack-Solution-with-States-final.st` (StackState / EmptyStackState / NotEmptyStackState, double dispatch `topFor:`),
  `Stack-Solution-with-Recursion-intermedia.st` (linked PushedObject chain, `isNil` / `ifNil:` checks),
  `Stack-Solution-with-Recursion-final.st` (StackElement / PushedObject / StackBase null object, no conditionals).
  The tests in every solution file are identical to the exercise ones (only category and stamps differ).
- Not found: a written statement in Spanish; `Viejo/Cuis/*.st` and the older PDFs/pptx in `Presentacion/` and
  `ArchivosParaEntregar/` are Dropbox online-only placeholders of 0 bytes and were not opened.
- Nothing was removed from the statement because there is no written statement; the license header comment
  ("Developed by 10Pines SRL ... CC BY-NC-SA 3.0") present in every class comment was not transcribed.
