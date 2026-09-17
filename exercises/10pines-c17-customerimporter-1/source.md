# Source

- Origin: 10Pines course "C17 - TDD Avanzado" (`/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C17 - TDD Avanzado/`).
- Statement: English deck `Presentacion/C17-AdvancedTDD-OnLine.pdf` slides 102-104 (context), 105-107 (example),
  108-111 (Exercise - 1st iteration), 112-117 (refactorings). Spanish deck `Presentacion/C17-TDDAvanzado-OnLine.pdf`
  slides 94-99, 100-104, 105 (Ejercicio - 1ra Parte), 106; the Spanish deck has no equivalent of the English step list
  on slides 109-111. Spanish text in `spec-original.md`. Text extracted with PDFKit because the Read tool could not
  render the PDFs.
- `starting/10Pines-C17.st`: copy of `Cuis/CustomerImport/10Pines-C17.st` (the initial code of the course; 4 classes,
  36 methods).
- `solution/10Pines-C17-35.st`: copy of `Cuis/CustomerImport/Step1/10Pines-C17-35.st`, the last snapshot of step 1.
  `solution/steps/10Pines-C17-1.st` .. `-35.st`: copies of all 35 snapshots of `Step1/`, in the order they were taken in
  class (file number = order).
- `input.txt` is not available anywhere in the course folder (0-byte placeholders); see the umbrella exercise.
- Nothing was removed from the statement (no submission instructions on the slides).

# Verification (Cuis 7.9-8149 image `scenarios/2-ModelStructure+Package`, fresh copy per file)

| file | fileIn | tests in category `10Pines-C17` |
|---|---|---|
| `starting/10Pines-C17.st` | OK | 1 error: `ImportTest>>#test01Import` - `StandardFileStream>>open:forWrite:` sends `String>>asUtf8:`, which does not exist in this image (MessageNotUnderstood), with or without an `input.txt` next to the image |
| `solution/10Pines-C17-35.st` | OK | 1 passed, 0 failed, 0 errors |

Note: `test01Import` in the solution ends its first statement with `session..` (a double period, an empty statement);
Cuis compiles it without complaint. Intermediate snapshots were not run.
