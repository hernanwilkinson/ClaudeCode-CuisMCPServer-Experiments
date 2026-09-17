# Source

- Origin: 10Pines training course "C2 - Diseño Avanzado de Software con Objetos II", directory
  `/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C2 - Diseño Avanzado de Software con Objetos II/`.
- Statement: `Presentacion/C2 - OnLine - Diseño Avanzado de Software con Objetos II.pdf`, slide 83 ("Ejercicio: Resolver el
  problema planteado en PortfolioExercise") and slide 84 (Composite). In-person deck: slides 59-60. Spanish text in
  `spec-original.md`.
- `starting/Portfolio-Ejercicio.st`: copy of `Cuis/Portfolio-Ejercicio.st` (USB zip `C2-Patterns-Portfolio-Exercise.zip`;
  no `-Solution` zip exists for Cuis, while Java, Python, Ruby, PHP and JavaScript have one).
- `solution/PortfolioTreePrinter-Ejercicio.st`: copy of `Cuis/PortfolioTreePrinter-Ejercicio.st`, the starting point of the
  tree-printer exercise, used here as the reference implementation of Portfolio. Differences with the exercise: selectors
  `manages:` / `registers:` instead of `doesManage:` / `hasRegistered:` (the exercise file is from 2021, the printer file
  keeps the 2011-2018 names), test20 uses `with:with:`, test21 is named `test20_01`, test08 appears twice, and the file
  also contains tests 21-29 and empty classes `Transfer` and `CertificateOfDeposit` for its own exercise.
- Doubts: test03 registers `Withdraw register: -50` while test03_01 and test06 register positive withdraws; with the given
  `ReceptiveAccount>>balance` (sum of values) only negative withdraws decrease the balance. The later files of the course
  fix this with `affectBalance:`.
- Nothing was removed from the statement.
