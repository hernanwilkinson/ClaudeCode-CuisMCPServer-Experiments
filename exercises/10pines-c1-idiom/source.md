# Source

- Origin: 10Pines training course "C1 - Diseño Avanzado de Software con Objetos I", directory
  `/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C1 - Diseño Avanzado de Software con Objetos I/`.
- Presentation: `Presentacion/ C1-Diseño Avanzado de Software con Objetos I-actual-remoto.pdf` (120 pages, Dec 2023).
  **No slide of this PDF defines the Idiom exercise** (nor do the local `-actual-remoto.pptx` and `-actual-presencial.pptx`
  decks, whose text and speaker notes were also searched for "Ejercicio", "Quiz", "Idiom", "CustomerBook", "Customer",
  "Tarea"; the only "Customer" hits are the Java `selectedCustomers` example of the duplicated-code slides). All 120 pages
  are course/theory slides. The exercise is handed out as code (the `hacerZipEjercicios` script zips
  `Smalltalk-Cuis/Idiom-Exercise.st` as `C1-Idiom-Exercise` and `Idiom-Solution.st` as `C1-Idiom-Exercise-Solution`),
  so the statement is the test class itself.
- Slides that motivate the exercise and were used for the hints in `spec.md`: 64 and 80 (closures), 81-89 ("Cómo sacar
  Código Repetido": copy to one place, parametrise what changes, use a closure, name it) and heuristic H10 (slide 113).
  Their Spanish text is transcribed in `spec-original.md`.
- `starting/Idiom-Exercise.st`: copy of `Smalltalk-Cuis/Idiom-Exercise.st` (NotFound, IdiomTest with 4 tests and the
  `emptyCustomerBook` factory, CustomerBook).
- `solution/Idiom-Solution.st`: copy of the reference solution. Only IdiomTest changes: the four tests now use
  `assertExecuting:doesNotTakeMoreThan:` and `assert:raises:andVerify:`; NotFound and CustomerBook are unchanged.
- Not found: a written statement in Spanish; `Viejo/Cuis/Idiom-Exercise*.st` and the older PDFs/pptx are Dropbox
  online-only placeholders of 0 bytes and were not opened.
- Nothing was removed from the statement because there is no written statement; the license header comment
  ("Developed by 10Pines SRL ... CC BY-NC-SA 3.0") present in every class comment was not transcribed.
