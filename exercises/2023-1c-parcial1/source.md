# Source

Original directory: `2023-1c/1erParcial/` in the parciales repository.

- Statement: `ISW1-2023-1C-1erParcial-ISW1-Perforaciones.pdf` (5 pages; copied as `spec-original.pdf`).
  Page 5 is only submission instructions.
- `starting/ISW1-2023-1C-Parcial-1.st`: the initial code given to the student (category
  `ISW1-2023-1C-Parcial-1`, authored by ARM/FRT/HAW between 4/27 and 5/8/2023, before the exam).
  It contains `TestDePerforación` (19 tests), `CapaDeSuelo` (symbol-typed layers) and
  `Perforadora` (the `darGolpeDeTaladro` method full of nested ifs, and the three "scan" methods
  written with `whileTrue:` loops).
- `solution/ISW1-2023-1C-Parcial-1-Solucion.st`: the teacher's solution (HAW, 5/22/2023) used in
  the solution video. It introduces the `CapaDeSuelo` hierarchy (`CapaDeSueloPeforable` with
  `CapaArenosa`, `CapaDeTierra`, `CapaDeConcreto`, plus `CapaConPiedras` for the stones at the
  bottom) and the `Mecha` hierarchy (`SinMecha`, `MechaRota`, `MechaFuncional` with `MechaSoft`,
  `MechaDeWidia`, `MechaDeDiamante`), and keeps `scan` and `esArenoso`/`esTierra`/`esConcreto`.
- `solution/ISW1-2023-1C-Parcial-1-SinScanNiEsnnn.st`: a variant of the same solution
  ("without scan nor esNnn") that removes the `scan` messages and the `esArenoso`, `esTierra`,
  `esConcreto` type-testing messages, using the layer classes themselves as the soil type.
- `solution/VideoDeSolucion-Comentarios.txt`: copied verbatim. Translated:

  > Video: https://www.youtube.com/watch?v=ljLpbLJ42LY
  >
  > Comments:
  > - Instead of having `MechaRota` it would have been better to represent whether the bit is
  >   broken or not with a state of the bit.
  > - The solution `ISW1-2023-1C-Parcial-1-SinScanNiEsnnn.st` removes the messages:
  >   - `scan`: they were there only for the sake of the exercise, but they are really not
  >     necessary to solve what is being done.
  >   - `esArenoso`, `esConcreto`, `esTierra`: these messages are not necessary when using the
  >     class as the soil type.

Removed from the statement: the "Entrega" section (page 5: file-out naming, changes file, e-mail
address and subject, repository upload instructions, "do not leave without the teachers' ok").
