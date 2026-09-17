# Elevator status console (Observer)

## Statement

Exercise: solve the problem posed in ElevatorControlPanelExercise.

It consists of making a status board (tablero de estado) for the elevator:

- Show which floor the elevator is on.
- Show whether it is going up or going down.
- Show whether the door is open or closed.

## Pattern presented with the exercise

Observer:

- Inform objects (observers) about changes produced in another object (the observed one). It defines a decoupled relationship between the observed object and the observers.
- The observers must not "modify" the observed object, to avoid infinite loops.
- Asynchronous notification mechanisms can be defined.
- Implementation by means of "active variables".
- Why are variables not objects?
- How could we solve the problem?

## Behaviour required by the given tests

The four tests of `ElevatorViewTest` narrow the statement to the cabin state and the cabin door state (the floor number and the direction are not shown by the views in the tests):

1. An `ElevatorConsole of: elevator` tracks the door closing state: after `goUpPushedFromFloor: 1` its `consoleReadStream` contains exactly one line, `'Puerta Cerrandose'`.
2. It tracks the cabin state: after `goUpPushedFromFloor: 1` and `cabinDoorClosed` the lines are `'Puerta Cerrandose'`, `'Puerta Cerrada'`, `'Cabina Moviendose'`, and nothing else.
3. It tracks both cabin and door changes: adding `cabinOnFloor: 1` the lines are `'Puerta Cerrandose'`, `'Puerta Cerrada'`, `'Cabina Moviendose'`, `'Cabina Detenida'`, `'Puerta Abriendose'`.
4. The elevator can have more than one view at the same time: with an `ElevatorConsole of: elevator` and an `ElevatorStatusView of: elevator`, after the same three events the console shows the five lines above, `elevatorStatusView cabinFieldModel` is `'Stopped'` and `elevatorStatusView cabinDoorFieldModel` is `'Opening'`.

Every state change of the cabin and of the door must therefore be reported, in order, to every view, without the elevator knowing the views.

## What the given code contains

`Elevator-ConsoleExercise.st` (category `Elevator-ConsoleExercise`) defines 23 classes:

- `ElevatorEmergency` and `ElevatorTest` (25 tests, all passing) from the elevator exercise.
- The complete State-based solution of the elevator: `Elevator` (instance variables `state cabinState cabinDoorState cabinFloorNumber floorsToGo`), `ElevatorState` with `ElevatorIdleState` / `ElevatorWorkingState`, `CabinState` with `CabinStoppedState` / `CabinMovingState` / `CabinWaitingForPeopleState`, and `CabinDoorState` with `CabinDoorOpenedState` / `CabinDoorOpeningState` / `CabinDoorClosingState` / `CabinDoorClosedState`. The elevator changes state by direct assignment in `startMovingCabin`, `stopCabin`, `waitForPeopleToCameInsideCabin`, `startClosingDoor`, `startOpeningCabinDoor`, `stopCabinDoorMotorWhenClosed` and `stopCabinDoorMotorWhenOpened`.
- The state classes already accept a visitor: `CabinDoorClosedState`, `CabinDoorClosingState` and `CabinDoorOpeningState` implement `accept:` sending `visitCabinDoorClosed:`, `visitCabinDoorClosing:` and `visitCabinDoorOpening:`; `CabinMovingState` and `CabinStoppedState` send `visitCabinMoving:` and `visitCabinStopped:`. `CabinDoorOpenedState` and `CabinWaitingForPeopleState` do not implement `accept:` (the tests never reach those states with a view attached, but a complete solution should consider them).
- `ElevatorConsole` (instance variable `stream`): `of:` / `initializeOf:` creates a `WriteStream` and ignores the elevator; `consoleReadStream` answers a `ReadStream` on the stream contents; the five `visit...:` methods write the Spanish lines `'Puerta Cerrada'`, `'Puerta Cerrandose'`, `'Puerta Abriendose'`, `'Cabina Moviendose'`, `'Cabina Detenida'` followed by `cr`.
- `ElevatorStatusView` (instance variables `cabinDoorFieldModel cabinFieldModel`): `initializeOf:` is empty; the `visit...:` methods set `cabinDoorFieldModel` to `'Closed'`, `'Closing'`, `'Opening'` and `cabinFieldModel` to `'Moving'`, `'Stopped'`.
- `ElevatorViewTest` with the 4 tests above, all failing with the given code because the views are never told about the changes.

The work is to connect the views to the elevator: the views must observe the cabin state and the cabin door state, be notified on each change and dispatch on the new state through the existing `accept:` / `visit...:` protocol.

## Reference solution

`Elevator-ConsoleExercise-Solution.st` adds one class, `ActiveVariable` (instance variables `subject observers`): `addObserver:` stores a block, `changeTo:` assigns the subject and evaluates every observer block with it, and `doesNotUnderstand:` forwards to the subject any message it responds to, so the active variable is polymorphic with the state it holds. `Elevator>>initialize` makes `cabinState` and `cabinDoorState` active variables, the seven transition methods send `changeCabinStateTo:` / `changeCabinDoorStateTo:` (which send `changeTo:`), and `Elevator` offers `addCabinStateObserver:` / `addCabinDoorStateObserver:`. Both views register in `initializeOf:` two blocks that send `cabinStateChangedTo:` / `cabinDoorStateChangedTo:` to the view, which do `aState accept: self`. The other classes are unchanged.
