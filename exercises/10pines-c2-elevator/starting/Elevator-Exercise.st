!classDefinition: #ElevatorEmergency category: 'Elevator-Exercise'!
Error subclass: #ElevatorEmergency
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-Exercise'!


!classDefinition: #ElevatorTest category: 'Elevator-Exercise'!
TestCase subclass: #ElevatorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-Exercise'!

!ElevatorTest methodsFor: 'tests 1' stamp: 'HAW 6/28/2021 10:55:34'!
test01ElevatorStartsIdleWithDoorOpenOnFloorZero

	| elevator |

	elevator := Elevator new.

	self assert: elevator isIdle.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorOpened.
	self assert: elevator cabinFloorNumber = 0
! !

!ElevatorTest methodsFor: 'tests 1' stamp: 'HAW 6/28/2021 10:55:34'!
test02CabinDoorStartsClosingWhenElevatorGetsCalled

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor: 1.

	self deny: elevator isIdle.
	self assert: elevator isWorking.

	self assert: elevator isCabinStopped.
	self deny: elevator isCabinMoving.

	self deny: elevator isCabinDoorOpened.
	self deny: elevator isCabinDoorOpening.
	self assert: elevator isCabinDoorClosing.
	self deny: elevator isCabinDoorClosed.! !

!ElevatorTest methodsFor: 'tests 1' stamp: 'HAW 6/28/2021 10:55:34'!
test03CabinStartsMovingWhenDoorGetsClosed

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.

	self deny: elevator isIdle.
	self assert: elevator isWorking.

	self deny: elevator isCabinStopped.
	self assert: elevator isCabinMoving.

	self deny: elevator isCabinDoorOpened.
	self deny: elevator isCabinDoorOpening.
	self deny: elevator isCabinDoorClosing.
	self assert: elevator isCabinDoorClosed.! !

!ElevatorTest methodsFor: 'tests 1' stamp: 'HAW 6/28/2021 10:55:34'!
test04CabinStopsAndStartsOpeningDoorWhenGetsToDestination

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor: 1.
	elevator cabinDoorClosed.
	elevator cabinOnFloor: 1.

	self deny: elevator isIdle.
	self assert: elevator isWorking.

	self assert: elevator isCabinStopped.
	self deny: elevator isCabinMoving.

	self deny: elevator isCabinDoorOpened.
	self assert: elevator isCabinDoorOpening.
	self deny: elevator isCabinDoorClosing.
	self deny: elevator isCabinDoorClosed.

	self assert: elevator cabinFloorNumber = 1
! !

!ElevatorTest methodsFor: 'tests 1' stamp: 'HAW 6/28/2021 10:55:34'!
test05ElevatorGetsIdleWhenDoorGetOpened

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor: 1.
	elevator cabinDoorClosed.
	elevator cabinOnFloor: 1.
	elevator cabinDoorOpened.

	self assert: elevator isIdle.
	self deny: elevator isWorking.

	self assert: elevator isCabinStopped.
	self deny: elevator isCabinMoving.

	self assert: elevator isCabinDoorOpened.
	self deny: elevator isCabinDoorOpening.
	self deny: elevator isCabinDoorClosing.
	self deny: elevator isCabinDoorClosed.

	self assert: elevator cabinFloorNumber = 1! !


!ElevatorTest methodsFor: 'tests 2' stamp: 'HAW 6/28/2021 10:55:34'!
test06DoorKeepsOpenedWhenOpeningIsRequested

	| elevator |
	elevator := Elevator new.

	self assert: elevator isCabinDoorOpened.

	elevator openCabinDoor.

	self assert: elevator isCabinDoorOpened.! !

!ElevatorTest methodsFor: 'tests 2' stamp: 'HAW 7/1/2021 11:03:27'!
test07DoorMustBeOpenedWhenCabinIsStoppedAndClosingDoors

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.

	self assert: elevator isWorking.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorClosing.

	elevator openCabinDoor.
	self assert: elevator isWorking.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorOpening.
! !

!ElevatorTest methodsFor: 'tests 2' stamp: 'HAW 6/28/2021 10:55:33'!
test08CanNotOpenDoorWhenCabinIsMoving

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.

	self assert: elevator isWorking.
	self assert: elevator isCabinMoving.
	self assert: elevator isCabinDoorClosed.

	elevator openCabinDoor.
	self assert: elevator isWorking.
	self assert: elevator isCabinMoving.
	self assert: elevator isCabinDoorClosed.! !

!ElevatorTest methodsFor: 'tests 2' stamp: 'HAW 6/28/2021 10:55:33'!
test09DoorKeepsOpeneingWhenItIsOpeneing

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.
	elevator cabinOnFloor:1.

	self assert: elevator isWorking.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorOpening.

	elevator openCabinDoor.
	self assert: elevator isWorking.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorOpening.! !


!ElevatorTest methodsFor: 'tests 3' stamp: 'HAW 6/28/2021 10:55:34'!
test09RequestToGoUpAreEnqueueWhenRequestedWhenCabinIsMoving

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.
	elevator cabinOnFloor:1.
	elevator goUpPushedFromFloor:2.
	elevator cabinDoorOpened.

	self assert: elevator isWorking.
	self assert: elevator isCabinWaitingForPeople.
	self assert: elevator isCabinDoorOpened.! !

!ElevatorTest methodsFor: 'tests 3' stamp: 'HAW 6/28/2021 10:55:34'!
test10CabinDoorStartClosingAfterWaitingForPeople

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.
	elevator cabinOnFloor:1.
	elevator goUpPushedFromFloor:2.
	elevator cabinDoorOpened.
	elevator waitForPeopleTimedOut.

	self assert: elevator isWorking.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorClosing.! !

!ElevatorTest methodsFor: 'tests 3' stamp: 'HAW 6/28/2021 10:55:34'!
test11StopsWaitingForPeopleIfCloseDoorIsPressed

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.
	elevator cabinOnFloor:1.
	elevator goUpPushedFromFloor:2.
	elevator cabinDoorOpened.

	self assert: elevator isWorking.
	self assert: elevator isCabinWaitingForPeople.
	self assert: elevator isCabinDoorOpened.

	elevator closeCabinDoor.

	self assert: elevator isWorking.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorClosing.
! !

!ElevatorTest methodsFor: 'tests 3' stamp: 'HAW 6/28/2021 10:55:34'!
test12CloseDoorDoesNothingIfIdle

	| elevator |
	elevator := Elevator new.

	elevator closeCabinDoor.

	self assert: elevator isIdle.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorOpened.! !

!ElevatorTest methodsFor: 'tests 3' stamp: 'HAW 6/28/2021 10:55:34'!
test13CloseDoorDoesNothingWhenCabinIsMoving

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.

	self assert: elevator isWorking.
	self assert: elevator isCabinMoving.
	self assert: elevator isCabinDoorClosed.

	elevator closeCabinDoor.

	self assert: elevator isWorking.
	self assert: elevator isCabinMoving.
	self assert: elevator isCabinDoorClosed.! !

!ElevatorTest methodsFor: 'tests 3' stamp: 'HAW 6/28/2021 10:55:34'!
test14CloseDoorDoesNothingWhenOpeningTheDoorToWaitForPeople

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.
	elevator cabinOnFloor:1.

	self assert: elevator isWorking.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorOpening.

	elevator closeCabinDoor.

	self assert: elevator isWorking.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorOpening.! !


!ElevatorTest methodsFor: 'tests 4' stamp: 'HAW 6/28/2021 10:55:34'!
test15ElevatorHasToEnterEmergencyIfStoppedAndOtherFloorSensorTurnsOn

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.
	elevator cabinOnFloor:1.
	self
		should: [ elevator cabinOnFloor:0 ]
		raise: ElevatorEmergency
		withExceptionDo: [ :elevatorEmergency | self assert: elevatorEmergency messageText = 'Sensor de cabina desincronizado' ]! !

!ElevatorTest methodsFor: 'tests 4' stamp: 'HAW 6/28/2021 10:55:34'!
test16ElevatorHasToEnterEmergencyIfFalling

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:2.
	elevator cabinDoorClosed.
	elevator cabinOnFloor:1.
	self
		should: [ elevator cabinOnFloor:0 ]
		raise: ElevatorEmergency
		withExceptionDo: [ :elevatorEmergency | self assert: elevatorEmergency messageText = 'Sensor de cabina desincronizado'. ]! !

!ElevatorTest methodsFor: 'tests 4' stamp: 'HAW 6/28/2021 10:55:34'!
test17ElevatorHasToEnterEmergencyIfJumpsFloors

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:3.
	elevator cabinDoorClosed.
	self
		should: [ elevator cabinOnFloor: 3 ]
		raise: ElevatorEmergency
		withExceptionDo: [ :elevatorEmergency | self assert: elevatorEmergency messageText = 'Sensor de cabina desincronizado'. ]! !

!ElevatorTest methodsFor: 'tests 4' stamp: 'HAW 6/28/2021 10:55:34'!
test18ElevatorHasToEnterEmergencyIfDoorClosesAutomatically
	| elevator |
	elevator := Elevator new.

	self
		should: [ elevator cabinDoorClosed.]
		raise: ElevatorEmergency
		withExceptionDo: [ :elevatorEmergency | self assert: elevatorEmergency messageText = 'Sensor de puerta desincronizado' ]! !

!ElevatorTest methodsFor: 'tests 4' stamp: 'HAW 6/28/2021 10:55:34'!
test19ElevatorHasToEnterEmergencyIfDoorClosedSensorTurnsOnWhenClosed

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.
	self
		should: [elevator cabinDoorClosed.]
		raise: ElevatorEmergency
		withExceptionDo: [ :elevatorEmergency | self assert: elevatorEmergency messageText = 'Sensor de puerta desincronizado'. ]! !

!ElevatorTest methodsFor: 'tests 4' stamp: 'HAW 6/28/2021 10:55:34'!
test20ElevatorHasToEnterEmergencyIfDoorClosesWhenOpening
	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.
	elevator cabinOnFloor:1.
	self
		should: [elevator cabinDoorClosed.]
		raise: ElevatorEmergency
		withExceptionDo: [ :elevatorEmergency | self assert: elevatorEmergency messageText = 'Sensor de puerta desincronizado'.]! !


!ElevatorTest methodsFor: 'tests 5' stamp: 'HAW 6/28/2021 10:55:33'!
test21CabinHasToStopOnTheFloorsOnItsWay
	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.
	elevator goUpPushedFromFloor:2.
	elevator cabinOnFloor:1.

	self assert: elevator isWorking.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorOpening.! !

!ElevatorTest methodsFor: 'tests 5' stamp: 'HAW 6/28/2021 10:55:34'!
test22ElevatorCompletesAllTheRequests
	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:1.
	elevator cabinDoorClosed.
	elevator goUpPushedFromFloor:2.
	elevator cabinOnFloor:1.
	elevator cabinDoorOpened.
	elevator waitForPeopleTimedOut.
	elevator cabinDoorClosed.
	elevator cabinOnFloor:2.

	self assert: elevator isWorking.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorOpening.! !

!ElevatorTest methodsFor: 'tests 5' stamp: 'HAW 6/28/2021 10:55:34'!
test23CabinHasToStopOnFloorsOnItsWayNoMatterHowTheyWellCalled

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:2.
	elevator cabinDoorClosed.
	elevator goUpPushedFromFloor:1.
	elevator cabinOnFloor:1.

	self assert: elevator isWorking.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorOpening.! !

!ElevatorTest methodsFor: 'tests 5' stamp: 'HAW 6/28/2021 10:55:34'!
test24CabinHasToStopAndWaitForPeopleOnFloorsOnItsWayNoMatterHowTheyWellCalled

	| elevator |
	elevator := Elevator new.

	elevator goUpPushedFromFloor:2.
	elevator cabinDoorClosed.
	elevator goUpPushedFromFloor:1.
	elevator cabinOnFloor:1.
	elevator cabinDoorOpened.
	elevator waitForPeopleTimedOut.

	self assert: elevator isWorking.
	self assert: elevator isCabinStopped.
	self assert: elevator isCabinDoorClosing.! !


!classDefinition: #Elevator category: 'Elevator-Exercise'!
Object subclass: #Elevator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-Exercise'!
