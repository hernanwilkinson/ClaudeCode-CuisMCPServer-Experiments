# Source

- Origin: 10Pines course "C17 - TDD Avanzado" (`/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C17 - TDD Avanzado/`).
- Statement: English deck `Presentacion/C17-AdvancedTDD-OnLine.pdf` slides 125 (Exercise - 4th Iteration), 126
  (Supplier, Java entity), 127 (Supplier Import example; rendered to PNG to read the "Customers of the Supplier" /
  "Addresses of the Supplier" brackets), refactorings 128-130; Spanish deck `Presentacion/C17-TDDAvanzado-OnLine.pdf`
  slides 112-114 and refactorings 115-118 (the Spanish 116, "Extract Parameter Object + Move / + Generalize Declared
  Type", has no English equivalent). Spanish text in `spec-original.md`.
- `starting/10Pines-C17-76.st`: copy of `Cuis/CustomerImport/Step3/10Pines-C17-76.st`, the solution of step 3
  (11 classes, 112 methods).
- `solution/10Pines-C17-130.st`: copy of `Cuis/CustomerImport/Step4/10Pines-C17-130.st`, the last snapshot of step 4
  and the finished exercise. `solution/steps/10Pines-C17-77.st` .. `-130.st`: copies of all 54 snapshots of `Step4/`.
- Nothing was removed from the statement; the Java `Supplier` entity of slide 126 was kept as code and paraphrased.

# Verification (Cuis 7.9-8149 image `scenarios/2-ModelStructure+Package`, fresh copy per file)

| file | fileIn | tests in category `10Pines-C17` |
|---|---|---|
| `starting/10Pines-C17-76.st` | OK | 9 passed (verified as the solution of step 3, transient and persistent) |
| `solution/10Pines-C17-130.st` | OK | 40 passed, 0 failed, 0 errors (transient system, the default `DevelopmentEnvironment`) |
| `solution/10Pines-C17-130.st`, then `DevelopmentEnvironment class>>isCurrent` recompiled in the image to `^false` so that `Environment current` is an `IntegrationEnvironment` and the tests use `PersistentErpSystem` / `DataBaseSession` | OK | 40 passed |

The solution defines classes named `Environment` and `System` in category `10Pines-C17`; the Cuis 7.9 image has no
globals of those names, so nothing is overridden (checked after the fileIn). `PersistentSupplierSystem>>start` and
`>>stop` are empty methods written as `start! !` on one line. Intermediate snapshots were not run.
