# Source

Original directory: `2023-1c/Recuperatorio/` in the parciales repository.

- Statement: `ISW1-2023-1C-Recuperatorio-Enunciado.pdf` (4 pages, the 4th is blank; copied as
  `spec-original.pdf`). It is a single statement covering both midterms: students retaking only
  the first midterm had to implement the lane sensor part only, without the consumption mode.
  It was imported as one exercise (the full statement); that scoping sentence is kept in
  `spec.md`.
- `starting/ISW1-2023-1C-Recuperatorio-CodigoInicial.st`: the initial code ("CodigoInicial"),
  category `ISW1-2023-1C-Recuperatorio`. It is the teacher's solution to the second midterm
  (`2doParcial/ISW1-2023-1C-2doParcial.st`) re-categorized: `DrivingAssistant`, `DrivingMode`
  with `ManualMode`, `AutomaticMode`, `AssistedManualMode`, `DrivingSystem`, `SensorSystem` and
  `DrivingAssistantTest` with 21 tests.
- `solution/ISW1-2023-1C-Recuperatorio-SolucionAlumno.st`: a student's solution (TM, 7/17/2023).
  Per the Readme it only covers the first-midterm scope (lane sensor and turn signal), not the
  consumption mode; it adds a lane alignment sensor stream to `SensorSystem` and grows the test
  class to 40 tests. There is no teacher solution and no full solution.
- `solution/Readme.txt`: copied verbatim. Translated:

  > The student solution is by Tomás Mengoni, who retook the first midterm, so it does not
  > include the consumption mode part, and it is a nice solution, which is why we are sharing it.
  > Thanks Tomás for allowing us to upload it.

Removed from the statement: the "Entrega" section (page 3: file-out naming, changes file, e-mail
address and subject, repository upload instructions, "do not leave without the teachers' ok").
