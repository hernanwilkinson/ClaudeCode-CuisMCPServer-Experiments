# Elevator controller with states

## Statement

Exercise: solve the problem posed in ElevatorExercise.

It consists of modelling an automatic elevator (ascensor automático) with the following characteristics:

- It is for a 5-storey building.
- When it is going up it only accepts requests to go up to floors it has not yet reached.
- When it is going down it only accepts requests to go down to floors it has not yet reached.
- The elevator door cannot be opened while the elevator is moving.

## Pattern presented with the exercise

State:

- Allows changing the behaviour of an object when its "state" changes. It will look as if the object changed its class.
- The states "do not do".
- The states "decide what must be done"; the original object "does".
- Problem: who is in charge of performing the state transitions?
- Is it possible to model it abstractly with a finite automaton?

## Behaviour required by the given tests

The test class exercises only the "going up" part of the statement: every request is `goUpPushedFromFloor:` and the floors used are 0 to 3. Going down is not tested. The elevator is a controller that receives button events (`goUpPushedFromFloor:`, `openCabinDoor`, `closeCabinDoor`), sensor events (`cabinDoorClosed`, `cabinDoorOpened`, `cabinOnFloor:`, `waitForPeopleTimedOut`) and answers queries about three independent aspects: the controller (`isIdle` / `isWorking`), the cabin (`isCabinStopped` / `isCabinMoving` / `isCabinWaitingForPeople`, `cabinFloorNumber`) and the cabin door (`isCabinDoorOpened` / `isCabinDoorOpening` / `isCabinDoorClosing` / `isCabinDoorClosed`).

Tests 1 (basic cycle):

1. `Elevator new` is idle, with the cabin stopped, the door opened and the cabin on floor 0.
2. When the elevator gets called (`goUpPushedFromFloor: 1`) it becomes working (not idle), the cabin stays stopped and the door starts closing (not opened, not opening, not closed).
3. When the door sensor reports the door closed (`cabinDoorClosed`) the cabin starts moving and the door is closed.
4. When the cabin sensor reports the destination floor (`cabinOnFloor: 1`) the cabin stops, the door starts opening and `cabinFloorNumber` is 1.
5. When the door sensor reports the door opened (`cabinDoorOpened`) the elevator gets idle again with the cabin stopped and the door opened, still on floor 1.

Tests 2 (open-door button):

6. `openCabinDoor` on an idle elevator keeps the door opened.
7. `openCabinDoor` while the elevator is working, the cabin stopped and the door closing: the elevator keeps working with the cabin stopped and the door becomes opening (this test was updated on 7/1/2021; the older version, kept in `Elevator-ConsoleExercise.st`, denies `isCabinDoorOpening` instead).
8. `openCabinDoor` while the cabin is moving does nothing: still working, moving, door closed.
9. `openCabinDoor` while the door is already opening keeps it opening.

Tests 3 (requests while working, close-door button):

10. A second request received while the cabin is moving is enqueued: after `goUpPushedFromFloor: 1`, `cabinDoorClosed`, `cabinOnFloor: 1`, `goUpPushedFromFloor: 2`, `cabinDoorOpened`, the elevator is working, the cabin is waiting for people and the door is opened.
11. After that, `waitForPeopleTimedOut` makes the cabin stopped and the door closing.
12. `closeCabinDoor` while waiting for people stops the waiting: cabin stopped, door closing.
13. `closeCabinDoor` on an idle elevator does nothing (idle, stopped, door opened).
14. `closeCabinDoor` while the cabin is moving does nothing.
15. `closeCabinDoor` while the door is opening (cabin stopped, working) does nothing.

Tests 4 (emergencies, `ElevatorEmergency` is an `Error` subclass given in the file):

16. If the cabin is stopped on floor 1 and the sensor of another floor turns on (`cabinOnFloor: 0`), `ElevatorEmergency` is signaled with message text `'Sensor de cabina desincronizado'`.
17. The same if the cabin is falling (moving up from 1 towards 2 and the sensor reports floor 0).
18. The same if the cabin jumps floors (moving from 0 towards 3 and the sensor reports floor 3).
19. If the door closes by itself while idle (`cabinDoorClosed` on a new elevator), `ElevatorEmergency` is signaled with `'Sensor de puerta desincronizado'`.
20. The same if the closed-door sensor turns on when the door is already closed (cabin moving).
21. The same if the door closes while it is opening.

Tests 5 (several requests):

22. The cabin stops on the floors on its way: requests to 1 and then 2, when the cabin reaches floor 1 it stops and the door starts opening.
23. The elevator completes all requests: after stopping on 1, waiting for people, closing the door and reaching floor 2 it stops there and opens the door.
24. The cabin stops on the floors on its way no matter the order they were requested (2 first, then 1).
25. In that case it also waits for people on floor 1 and, when the wait times out, the door starts closing.

## What the given code contains

`Elevator-Exercise.st` (category `Elevator-Exercise`) defines:

- `ElevatorEmergency`, an `Error` subclass with no methods.
- `ElevatorTest`, a `TestCase` with the 25 tests above (`test01ElevatorStartsIdleWithDoorOpenOnFloorZero` ... `test24CabinHasToStopAndWaitForPeopleOnFloorsOnItsWayNoMatterHowTheyWellCalled`; there are two tests numbered 09), grouped in categories 'tests 1' to 'tests 5'. The tests use `should:raise:withExceptionDo:` for the emergencies.
- `Elevator`, an `Object` subclass with no instance variables and no methods.

No test passes with the given code: `Elevator new` does not understand `isIdle`. The whole controller must be written. The intended design is the State pattern: the naive implementation keeps booleans or symbols for the controller, cabin and door and decides with `ifTrue:`; the exercise is to model each of the three aspects with state objects that decide what the elevator does, and to decide who performs the transitions.

## Reference solution

There is no separate Cuis solution file for this exercise. The starting point of the next exercise, `Elevator-ConsoleExercise.st` (copied into `solution/`), contains a State implementation: `ElevatorState` (`ElevatorIdleState`, `ElevatorWorkingState`), `CabinState` (`CabinStoppedState`, `CabinMovingState`, `CabinWaitingForPeopleState`) and `CabinDoorState` (`CabinDoorOpenedState`, `CabinDoorOpeningState`, `CabinDoorClosingState`, `CabinDoorClosedState`). Each event is dispatched by the elevator to its current state, which calls back a method named after the situation (`cabinDoorClosedWhenWorkingAndCabinStoppedAndCabinDoorStopped`, `closeCabinDoorWhenWorkingAndWaitingForPeople`, ...), so the elevator "does" and the states "decide". Pending floors are kept in a `SortedCollection`. Note that in that implementation `openCabinDoorWhenWorking` does nothing, so it satisfies the older version of test 07 (`deny: elevator isCabinDoorOpening`) and not the version given here.
