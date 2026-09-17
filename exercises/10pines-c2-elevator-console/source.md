# Source

- Origin: 10Pines training course "C2 - Diseño Avanzado de Software con Objetos II", directory
  `/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C2 - Diseño Avanzado de Software con Objetos II/`.
- Statement: `Presentacion/C2 - OnLine - Diseño Avanzado de Software con Objetos II.pdf`, slide 89 ("Ejercicio: Resolver el
  problema planteado en ElevatorControlPlanelExercise") and slides 90-91 (Observer, active variables). In-person deck:
  slides 65-67. Spanish text in `spec-original.md`.
- `starting/Elevator-ConsoleExercise.st`: copy of `Cuis/Elevator-ConsoleExercise.st` (USB zip
  `C2-Patterns-ElevatorConsole-Exercise.zip`): complete elevator with states, ElevatorTest (25 tests), ElevatorViewTest
  (4 tests), ElevatorConsole and ElevatorStatusView not yet connected to the elevator.
- `solution/Elevator-ConsoleExercise-Solution.st`: copy of `Cuis/Elevator-ConsoleExercise-Solution.st` (USB zip
  `C2-Patterns-ElevatorConsole-Exercise-Solution.zip`), category `Elevator-ConsoleExercise-Solution`. A diff with the
  starting file (categories and stamps normalized) shows only the additions described in `spec.md`: class
  `ActiveVariable`, `changeCabinStateTo:` / `changeCabinDoorStateTo:`, the two `add...Observer:` methods, and the
  `cabinStateChangedTo:` / `cabinDoorStateChangedTo:` methods plus the registration blocks in both views.
- Doubts: the slide asks to show the floor and the up/down direction, which no test covers; the tests only show cabin and
  door states. `CabinDoorOpenedState` and `CabinWaitingForPeopleState` have no `accept:`, also in the solution.
- Nothing was removed from the statement.
