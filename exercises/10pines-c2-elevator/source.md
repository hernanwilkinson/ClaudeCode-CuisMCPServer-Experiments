# Source

- Origin: 10Pines training course "C2 - Diseño Avanzado de Software con Objetos II", directory
  `/Users/hernan/10Pines Dropbox/Hernan Wilkinson/10Pines-Capacitacion/C2 - Diseño Avanzado de Software con Objetos II/`.
- Statement: `Presentacion/C2 - OnLine - Diseño Avanzado de Software con Objetos II.pdf`, slide 78 ("Ejercicio: Resolver el
  problema planteado en ElevatorExercise") and slide 79 (State). The in-person deck `Presentacion/C2 - Diseño Avanzado de
  Software con Objetos II.pdf` has the same slides as 54 and 55 (their text extracts incompletely from that PDF). The
  Spanish text is in `spec-original.md`; the behaviour itself is only specified by the tests.
- `starting/Elevator-Exercise.st`: copy of `Cuis/Elevator-Exercise.st` (ElevatorEmergency, ElevatorTest with 25 tests,
  empty Elevator). The USB zip list names it `C2-Patterns-Elevator-Exercise.zip`; there is no `-Solution` zip for Cuis
  (there is one for Java, Python, Ruby, PHP and JavaScript, not read).
- `solution/Elevator-ConsoleExercise.st`: copy of `Cuis/Elevator-ConsoleExercise.st`, which is the starting point of the
  console exercise and contains the State-based Elevator implementation. It is the only Cuis implementation of the
  elevator in the source. Its `ElevatorTest` is identical to the exercise one except test07
  (`test07DoorMustBeOpenedWhenCabinIsStoppedAndClosingDoors`): the exercise (stamp 7/1/2021) asserts
  `elevator isCabinDoorOpening` after `openCabinDoor` while closing, the console file (stamp 6/28/2021) denies it, and
  the implementation in the console file does nothing on `openCabinDoorWhenWorking`, so it would fail the exercise's
  test07.
- Doubts: the statement mentions a 5-storey building, going down and refusing door opening while moving, but the tests
  only cover going up (floors 0-3) and ignoring the open-door button while moving; no test covers "does not accept
  requests to floors already passed".
- Nothing was removed from the statement (the slide has no submission instructions). The "Developed by 10Pines" license
  is not present in these files.
