# Source

- Original directory: `2025-1c/1erParcial/` in the parciales repository.
- Statement: `2025-1C-Parcial1-Práctica.pdf` (copied as `spec-original.pdf`). `2025-1C-Parcial 1-Teórica.pdf` is the theory exam and was skipped.

## starting/

- `starting/ISW-Parcial1-1C25.st` is a copy of `usarEstaVersionParaPracticar/ISW-Parcial1-1C25.st`. The subdirectory name means "use this version to practice", so it is the initial code to use. It contains only the test class `EscapeDeFlotaTests` (20 tests plus creation helpers `nuevoCruceroPesadoConImpulsoEstandar`, `nuevaNaveContrabandistaCon...`, `nuevoSector...ConGravedad:yRadiacion:`, `propulsoresDe...`) and the class `EscapeDeFlota` with only its four error-description class methods; the whole model is left for the student.
- Note: this practice version is written in Spanish (`EscapeDeFlota`, `NaveEspacial`, `Propulsores`, `SectorEspacial`, ...) while the statement uses the English ship/sector names of the original exam (Heavy Cruiser, Planetary Sector, ...). It is the same domain; the Spanish version is also the base of the 2025-1c recuperatorio.

## solution/

- `solution/ISW-Parcial1-1C25-Solu.st`: solution of the practice version (Spanish names): `EscapeDeFlota`, `NaveEspacial`, `Propulsores` with `Gravitones`/`ImpulsoEstandar`/`VelocidadLuz`, `SectorEspacial` with `Asteroides`/`Nebulosa`/`Planetario`.
- `solution/historicas/` holds the older (English) versions kept in `1erParcial/historicas/`, copied as instructed:
  - `ISW-Parcial1-1C25.st`: the original initial code as given in the exam, in English (`FleetRunTests` with 18 tests, `FleetRun`, `SpaceShip` skeleton).
  - `ISW-Parcial1-1C25-ConIf.st`: an intermediate solution "with ifs" (`FleetRun`, `SpaceShip`, `SpaceSector` with `AsteroidsSystem`/`NebulaCloud`/`PlanetarySector`, but thrusters not yet modelled as objects), useful to show the state before replacing conditionals with polymorphism.
  - `ISW-Parcial1-1C25-Solucion.st`: the full English solution, adding `Thruster` with `Gravitons`/`Impulse`/`Warp`.
  These are not the versions to practice with (the tests differ slightly from the practice version: 18 vs 20 tests, different names), but they document the history of the exercise.

## Readme / video

No Readme and no video link in this directory.

## Removed from the statement

Course header/footer, the "Entrega" section (fileout name, user.changes file, clean-image check, submission form/email), and the recommendations about saving the image/autosave and about handing in an unfinished model with its passing grade.
