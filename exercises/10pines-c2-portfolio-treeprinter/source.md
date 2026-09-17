# Source

- Origin: 10Pines training course "C2 - Diseño Avanzado de Software con Objetos II", directory
  `/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C2 - Diseño Avanzado de Software con Objetos II/`.
- Statement: `Presentacion/C2 - OnLine - Diseño Avanzado de Software con Objetos II.pdf`, slide 85 ("Ejercicio: Resolver el
  problema planteado en PortfolioTreePrinterExercise") and slide 86 (Visitor). In-person deck: slides 61-62. Spanish
  text in `spec-original.md`.
- `starting/PortfolioTreePrinter-Ejercicio.st`: copy of `Cuis/PortfolioTreePrinter-Ejercicio.st` (USB zip
  `C2-Patterns-PortfolioTreePrinter-Exercise.zip`; no `-Solution` zip for Cuis, the other languages have one).
- `solution/PortfolioTimeConsuming-Ejercicio.st`: copy of `Cuis/PortfolioTimeConsuming-Ejercicio.st`, the starting point of
  the time-consuming exercise, used here as the reference implementation (visitors, transfer legs, tree printers). It is
  not an exact solution of this starting file: its tests use `hasRegistered:` / `doesManage:`, replace `test21_01` (which
  expects `transactions first transfer`) by `test21_01`..`test21_03` on `depositLeg` / `withdrawLeg`, add `test30` and
  `test31`, and its `AccountSummary>>lines`, `InvestmentEarningVisitor>>value` and `InvestmentNetVisitor>>value` wait one
  second each on purpose.
- Doubts: the given `ReceptiveAccount>>balance` adds every transaction value, so the given test03 (`Withdraw register: 50`,
  balance 50 after a deposit of 100) fails until the student changes how withdraws affect the balance; the student must
  also write the six test-support methods, so the querying API is open.
- Nothing was removed from the statement.
