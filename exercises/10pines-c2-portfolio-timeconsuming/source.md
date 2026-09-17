# Source

- Origin: 10Pines training course "C2 - Diseño Avanzado de Software con Objetos II", directory
  `/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C2 - Diseño Avanzado de Software con Objetos II/`.
- Statement: `Presentacion/C2 - OnLine - Diseño Avanzado de Software con Objetos II.pdf`, slide 87 ("Ejercicio: Resolver el
  problema planteado en TimeConsumingExercise") and slide 88 (Future). In-person deck: slides 63-64. Spanish text in
  `spec-original.md`.
- `starting/PortfolioTimeConsuming-Ejercicio.st`: copy of `Cuis/PortfolioTimeConsuming-Ejercicio.st` (USB zip
  `C2-Patterns-PortfolioTimeConsuming-Exercise.zip`), dated 6/28/2021.
- `solution/PortfolioTimeConsuming-FutureNoPolimorfico.st` and `solution/PortfolioTimeConsuming-FuturePolimorfico.st`:
  copies of the two solution files in `Cuis/` (USB zip `C2-Patterns-PortfolioTimeConsuming-Exercise-Solution.zip`), dated
  5/15/2018. A diff between them shows the only difference is the `Future` class (Object subclass used with explicit
  `value`, versus ProtoObject subclass with `doesNotUnderstand:`). A diff against the starting file shows the solutions
  predate the 2021 renaming of the tests (`manages:` / `registers:`, `assert:` with `=` instead of `assert:equals:`,
  `test20` with `with:with:`, no `test21_02` / `test21_03`, no `registerTransferOf:from:to:` support methods); they are
  self-contained and their 33 tests are consistent with their own code.
- Doubts: the solutions are older than the exercise file, so they are not a diff-able answer to it; the timing assertion
  (1100 ms for a 1-second delay) may be fragile on a slow machine.
- Nothing was removed from the statement.
