# Source

- Origin: 10Pines training course "C17 - TDD Avanzado", directory
  `/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C17 - TDD Avanzado/`.
- Statement: the slides. English deck `Presentacion/C17-AdvancedTDD-OnLine.pdf` (140 slides, Nov 2022): context 102-104,
  example 105-107, 1st iteration 108-111, refactorings 112-117, 2nd iteration 118-120, 3rd iteration 121, refactorings
  122-124, 4th iteration 125-127, refactorings 128-130; related bad smells 90 and 97, fixtures 99-100. Spanish deck
  `Presentacion/C17-TDDAvanzado-OnLine.pdf` (128 slides, May 2021): 94-99, refactorings 100-104, 1ra parte 105, 106,
  2da parte 107, 108-110, 3ra parte 111, 4ta parte 112-114, 115-118. The English deck has three extra slides for the 1st
  iteration (109-111, the suggested sequence of steps) and one for the 2nd (119-120) that the Spanish deck lacks; the
  Spanish 1ra parte mentions importing "using sockets" where the English says "other types of input". The Read tool
  could not render the PDFs; text was extracted with PDFKit (Swift) and slides 105, 126 and 127 were rendered to PNG to
  read the callout labels ("Customers" / "Customer's addresses", "Customers of the Supplier" / "Addresses of the Supplier").
  `spec-original.md` transcribes the Spanish slides. `Pasos de refactor de Customer Import.pdf` is a 0-byte placeholder
  and was skipped.
- `starting/10Pines-C17.st`: copy of `Cuis/CustomerImport/10Pines-C17.st`, the initial code handed to students
  (ImportTest with one assertion-less test, Address, Customer with the god method `Customer class>>importCustomers`,
  DataBaseSession simulating a slow database). 4 classes, 36 methods, category `10Pines-C17`.
- `solution/10Pines-C17-130.st`: copy of `Cuis/CustomerImport/Step4/10Pines-C17-130.st`, the last snapshot of the
  fourth iteration (the finished exercise). The per-step exercises `10pines-c17-customerimporter-1` .. `-4` hold every
  intermediate snapshot (`Step1/` 1-35, `Step2/` 36-60, `Step3/` 61-76, `Step4/` 77-130).
- The file `input.txt` that the initial `importCustomers` opens is not available: every `input.txt` in the course folder
  (`ArchivosParaTarjetaUSB/C17/Smalltalk/Cuis/input.txt`, `Pharo/input.txt`, the Java/Kotlin/Go/PHP/Python ones) is a
  0-byte Dropbox online-only placeholder; its content is the five lines of slide 105.
- Nothing was removed from the statement: the slides have no submission instructions. The Java `Supplier` entity of slide
  126 was kept as code and paraphrased.

# Verification (Cuis 7.9-8149 image `scenarios/2-ModelStructure+Package`, fresh copy per file, fileIn then
`smalltalk_run_tests_in_category` on `10Pines-C17`)

| file | fileIn | tests |
|---|---|---|
| `starting/10Pines-C17.st` | OK | 1 error: `ImportTest>>#test01Import` (see below) |
| `solution/10Pines-C17-130.st` | OK | 40 passed, 0 failed, 0 errors |
| `solution/10Pines-C17-130.st` with `DevelopmentEnvironment class>>isCurrent` recompiled to `^false` in the image so that `Environment current` is `IntegrationEnvironment` and the tests use `PersistentErpSystem`/`DataBaseSession` | OK | 40 passed |

- The initial test errors because `Customer class>>importCustomers` evaluates
  `StandardFileStream new open: 'input.txt' forWrite: false`, and in this Cuis 7.9 image `StandardFileStream>>open:forWrite:`
  sends `String>>asUtf8:`, which no longer exists: `MessageNotUnderstood: String>>asUtf8:` (receiver `'input.txt'`). The
  error is the same with and without an `input.txt` (built from slide 105) placed next to the image; note also that in
  this image a relative file name resolves against `<image directory>-UserFiles/`, not the image directory. The image
  therefore lacks a working `StandardFileStream>>open:forWrite:`; the initial code was left untouched. The test asserts
  nothing, so on an image where the file API works it would pass (with the two deliberate bugs unnoticed).
- The tests of the solution take about 5-6 seconds when run against the persistent system because `DataBaseSession`
  sleeps 100 ms per `persist:`/`select:`; with the default `DevelopmentEnvironment` they run in memory.
