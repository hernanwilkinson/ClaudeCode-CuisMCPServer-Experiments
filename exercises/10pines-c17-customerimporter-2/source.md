# Source

- Origin: 10Pines course "C17 - TDD Avanzado" (`/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C17 - TDD Avanzado/`).
- Statement: English deck `Presentacion/C17-AdvancedTDD-OnLine.pdf` slides 118-120 (Exercise - 2nd Iteration); Spanish
  deck `Presentacion/C17-TDDAvanzado-OnLine.pdf` slide 107 (Ejercicio - 2da Parte), which lacks the suggested-sequence
  and robustness slides 119-120 of the English deck. Spanish text in `spec-original.md`.
- `starting/10Pines-C17-35.st`: copy of `Cuis/CustomerImport/Step1/10Pines-C17-35.st`, the solution of step 1
  (5 classes, 50 methods).
- `solution/10Pines-C17-60.st`: copy of `Cuis/CustomerImport/Step2/10Pines-C17-60.st`, the last snapshot of step 2.
  `solution/steps/10Pines-C17-36.st` .. `-60.st`: copies of all 25 snapshots of `Step2/`.
- Nothing was removed from the statement.

# Verification (Cuis 7.9-8149 image `scenarios/2-ModelStructure+Package`, fresh copy per file)

| file | fileIn | tests in category `10Pines-C17` |
|---|---|---|
| `starting/10Pines-C17-35.st` | OK | 1 passed (verified as the solution of step 1) |
| `solution/10Pines-C17-60.st` | OK | 9 passed, 0 failed, 0 errors |

Intermediate snapshots were not run.
