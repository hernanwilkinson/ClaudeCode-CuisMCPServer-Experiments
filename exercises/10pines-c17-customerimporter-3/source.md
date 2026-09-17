# Source

- Origin: 10Pines course "C17 - TDD Avanzado" (`/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C17 - TDD Avanzado/`).
- Statement: English deck `Presentacion/C17-AdvancedTDD-OnLine.pdf` slide 121 (Exercise - 3rd iteration), refactorings
  122-124, related slides 90 (bad smell: slow tests), 97 (TearDown), 99-100 (fixtures); Spanish deck
  `Presentacion/C17-TDDAvanzado-OnLine.pdf` slide 111 (Ejercicio - 3ra Parte), refactorings 108-110, related 82, 89,
  91-92. Spanish text in `spec-original.md`.
- `starting/10Pines-C17-60.st`: copy of `Cuis/CustomerImport/Step2/10Pines-C17-60.st`, the solution of step 2
  (5 classes, 86 methods).
- `solution/10Pines-C17-76.st`: copy of `Cuis/CustomerImport/Step3/10Pines-C17-76.st`, the last snapshot of step 3.
  `solution/steps/10Pines-C17-61.st` .. `-76.st`: copies of all 16 snapshots of `Step3/`.
- Nothing was removed from the statement.

# Verification (Cuis 7.9-8149 image `scenarios/2-ModelStructure+Package`, fresh copy per file)

| file | fileIn | tests in category `10Pines-C17` |
|---|---|---|
| `starting/10Pines-C17-60.st` | OK | 9 passed (verified as the solution of step 2) |
| `solution/10Pines-C17-76.st` | OK | 9 passed, 0 failed, 0 errors (transient system, the default `DevelopmentEnvironment`) |
| `solution/10Pines-C17-76.st`, then `DevelopmentEnvironment class>>isCurrent` recompiled in the image to `^false` so that `Environment current` is an `IntegrationEnvironment` and the tests use `PersistentCustomerSystem` / `DataBaseSession` | OK | 9 passed |

The solution defines a class named `Environment` in category `10Pines-C17`; the Cuis 7.9 image has no global of that
name, so nothing is overridden. Intermediate snapshots were not run.
