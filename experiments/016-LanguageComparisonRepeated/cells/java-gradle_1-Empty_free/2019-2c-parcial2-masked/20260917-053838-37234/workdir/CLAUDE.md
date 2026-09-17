

## Exercise solution (repetition, sonar, guarded runs)

- `SurveyCrawler.atFacing(...)` was replaced by `SurveyCrawler.atFacingUsing(aPosition, aFacingName, aSonar)`.
- `Sonar` returns a `GroundType` (`FirmSand`, `Silt`, `Boulder`) that decides how the crawler moves/turns.
  `Silt` owns the `Random` used for the slide (1 to 10 cells from the starting cell).
- `RunMode` (`UnguardedRun`, `GuardedRun`) handles `(`/`)`, records undo actions and undoes them on error.
- Tests use the test doubles `SonarSimulator` (firm sand unless told otherwise) and `FixedRandom`.
