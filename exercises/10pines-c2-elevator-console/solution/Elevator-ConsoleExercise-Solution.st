!classDefinition: #ElevatorEmergency category: 'Elevator-ConsoleExercise-Solution'!
Error subclass: #ElevatorEmergency
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!


!classDefinition: #ElevatorTest category: 'Elevator-ConsoleExercise-Solution'!
TestCase subclass: #ElevatorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

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

!ElevatorTest methodsFor: 'tests 2' stamp: 'HAW 6/28/2021 10:55:34'!
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
	self deny: elevator isCabinDoorOpening.
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


!classDefinition: #ElevatorViewTest category: 'Elevator-ConsoleExercise-Solution'!
TestCase subclass: #ElevatorViewTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!ElevatorViewTest methodsFor: 'testing' stamp: 'HAW 6/28/2021 11:14:24'!
test01ElevatorControllerConsoleTracksDoorClosingState

	| elevator elevatorConsole readStream |
	
	elevator := Elevator new.
	elevatorConsole := ElevatorConsole of: elevator.
		
	elevator goUpPushedFromFloor: 1.
				
	readStream := elevatorConsole consoleReadStream.

	self assert: 'Puerta Cerrandose' = readStream nextLine.
	self assert: readStream atEnd! !

!ElevatorViewTest methodsFor: 'testing' stamp: 'HAW 6/28/2021 11:14:24'!
test02ElevatorControllerConsoleTracksCabinState

	| elevator elevatorConsole readStream |
	
	elevator := Elevator new.
	elevatorConsole := ElevatorConsole of: elevator.
		
	elevator goUpPushedFromFloor: 1.
	elevator cabinDoorClosed.
					
	readStream := elevatorConsole consoleReadStream.

	self assert: 'Puerta Cerrandose' = readStream nextLine.
	self assert: 'Puerta Cerrada' = readStream nextLine.
	self assert: 'Cabina Moviendose' = readStream nextLine.
	self assert: readStream atEnd
! !

!ElevatorViewTest methodsFor: 'testing' stamp: 'HAW 6/28/2021 11:14:24'!
test03ElevatorControllerConsoleTracksCabinAndDoorStateChanges

	| elevator elevatorConsole readStream |
	
	elevator := Elevator new.
	elevatorConsole := ElevatorConsole of: elevator.
		
	elevator goUpPushedFromFloor: 1.
	elevator cabinDoorClosed.
	elevator cabinOnFloor: 1.  
					
	readStream := elevatorConsole consoleReadStream.

	self assert: 'Puerta Cerrandose' = readStream nextLine.
	self assert: 'Puerta Cerrada' = readStream nextLine.
	self assert: 'Cabina Moviendose' = readStream nextLine.
	self assert: 'Cabina Detenida' = readStream nextLine.
	self assert: 'Puerta Abriendose' = readStream nextLine.
	self assert: readStream atEnd
! !

!ElevatorViewTest methodsFor: 'testing' stamp: 'HAW 6/28/2021 11:14:44'!
test04ElevatorControllerCanHaveMoreThanOneView
 
	| elevator elevatorConsole readStream elevatorStatusView |
	
	elevator := Elevator new.
	elevatorConsole := ElevatorConsole of: elevator.
	elevatorStatusView := ElevatorStatusView of: elevator.
		
	elevator goUpPushedFromFloor: 1.
	elevator cabinDoorClosed.
	elevator cabinOnFloor: 1.  
					
	readStream := elevatorConsole consoleReadStream.

	self assert: 'Puerta Cerrandose' = readStream nextLine.
	self assert: 'Puerta Cerrada' = readStream nextLine.
	self assert: 'Cabina Moviendose' = readStream nextLine.
	self assert: 'Cabina Detenida' = readStream nextLine.
	self assert: 'Puerta Abriendose' = readStream nextLine.
	self assert: readStream atEnd.

	self assert: 'Stopped' = elevatorStatusView cabinFieldModel.
	self assert: 'Opening' = elevatorStatusView cabinDoorFieldModel! !


!classDefinition: #ActiveVariable category: 'Elevator-ConsoleExercise-Solution'!
Object subclass: #ActiveVariable
	instanceVariableNames: 'subject observers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!ActiveVariable methodsFor: 'observing' stamp: 'HernanWilkinson 7/15/2011 18:41'!
addObserver: aBlock
	
	observers add: aBlock ! !


!ActiveVariable methodsFor: 'changing' stamp: 'HernanWilkinson 7/15/2011 18:42'!
changeTo: newSubject

	subject := newSubject.
	self informChanged! !

!ActiveVariable methodsFor: 'changing' stamp: 'HernanWilkinson 7/15/2011 18:42'!
informChanged

	observers do: [ :anObserver | anObserver value: subject ]! !


!ActiveVariable methodsFor: 'system primitives' stamp: 'HernanWilkinson 7/15/2011 18:35'!
doesNotUnderstand: aMessage

	(subject respondsTo: aMessage selector) ifTrue: [ ^ aMessage sendTo: subject ].
	^ super doesNotUnderstand: aMessage   ! !


!ActiveVariable methodsFor: 'initialization' stamp: 'HernanWilkinson 7/15/2011 18:43'!
initialize

	super initialize.
	observers := OrderedCollection new.! !


!classDefinition: #CabinDoorState category: 'Elevator-ConsoleExercise-Solution'!
Object subclass: #CabinDoorState
	instanceVariableNames: 'elevatorController'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!CabinDoorState methodsFor: 'visitor accepting' stamp: 'HernanWilkinson 7/15/2011 19:01'!
accept: aCabinDoorVisitor

	self subclassResponsibility ! !


!CabinDoorState methodsFor: 'initialization' stamp: 'HernanWilkinson 7/15/2011 17:41'!
initializeOf: anElevatorController 
	
	elevatorController := anElevatorController ! !


!CabinDoorState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:45'!
isClosed

	^ false! !

!CabinDoorState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:45'!
isClosing

	^false! !

!CabinDoorState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:45'!
isOpened 

	^false! !

!CabinDoorState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:46'!
isOpening

	^ false! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CabinDoorState class' category: 'Elevator-ConsoleExercise-Solution'!
CabinDoorState class
	instanceVariableNames: ''!

!CabinDoorState class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/15/2011 17:41'!
of: anElevatorController 
	
	^ self new initializeOf: anElevatorController   ! !


!classDefinition: #CabinDoorClosedState category: 'Elevator-ConsoleExercise-Solution'!
CabinDoorState subclass: #CabinDoorClosedState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!CabinDoorClosedState methodsFor: 'visitor accepting' stamp: 'HernanWilkinson 7/15/2011 18:52'!
accept: aCabinDoorStateVisitor

	aCabinDoorStateVisitor visitCabinDoorClosed: self! !


!CabinDoorClosedState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:46'!
isClosed

	^ true! !


!classDefinition: #CabinDoorClosingState category: 'Elevator-ConsoleExercise-Solution'!
CabinDoorState subclass: #CabinDoorClosingState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!CabinDoorClosingState methodsFor: 'visitor accepting' stamp: 'HernanWilkinson 7/15/2011 18:44'!
accept: aCabinDoorStateVisitor

	aCabinDoorStateVisitor visitCabinDoorClosing: self! !


!CabinDoorClosingState methodsFor: 'cabin door events' stamp: 'HernanWilkinson 7/15/2011 17:55'!
cabinDoorClosedWhenWorkingAndCabinStopped
	
	^ elevatorController cabinDoorClosedWhenWorkingAndCabinStoppedAndCabinDoorStopped ! !


!CabinDoorClosingState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:46'!
isClosing 

	^true! !


!classDefinition: #CabinDoorOpenedState category: 'Elevator-ConsoleExercise-Solution'!
CabinDoorState subclass: #CabinDoorOpenedState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!CabinDoorOpenedState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:43'!
isOpened
	
	^ true! !


!classDefinition: #CabinDoorOpeningState category: 'Elevator-ConsoleExercise-Solution'!
CabinDoorState subclass: #CabinDoorOpeningState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!CabinDoorOpeningState methodsFor: 'visitor accepting' stamp: 'HernanWilkinson 7/15/2011 18:55'!
accept: aCabinDoorStateVisitor

	aCabinDoorStateVisitor visitCabinDoorOpening: self! !


!CabinDoorOpeningState methodsFor: 'cabin door events' stamp: 'HernanWilkinson 7/15/2011 18:17'!
cabinDoorClosedWhenWorkingAndCabinStopped
	
	^elevatorController cabinDoorClosedWhenWorkingAndCabinStoppedAndCabinDoorOpening! !


!CabinDoorOpeningState methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 18:15'!
closeCabinDoorWhenWorkingAndCabinStopped
	
	^elevatorController closeCabinDoorWhenWorkingAndCabinStoppedAndCabinDoorOpening! !


!CabinDoorOpeningState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:46'!
isOpening 

	^ true! !


!classDefinition: #CabinState category: 'Elevator-ConsoleExercise-Solution'!
Object subclass: #CabinState
	instanceVariableNames: 'elevatorController'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!CabinState methodsFor: 'visitor accepting' stamp: 'HernanWilkinson 7/15/2011 19:01'!
accept: aCabinStateVisitor

	self subclassResponsibility ! !


!CabinState methodsFor: 'initialization' stamp: 'HernanWilkinson 7/15/2011 17:44'!
initializeOf: anElevatorController 
	
	elevatorController := anElevatorController ! !


!CabinState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:46'!
isMoving

	^ false! !

!CabinState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:46'!
isStopped

	^ false! !

!CabinState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:46'!
isWaitingForPeople

	^ false! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CabinState class' category: 'Elevator-ConsoleExercise-Solution'!
CabinState class
	instanceVariableNames: ''!

!CabinState class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/15/2011 17:44'!
of: anElevatorController 
	
	^self new initializeOf: anElevatorController   ! !


!classDefinition: #CabinMovingState category: 'Elevator-ConsoleExercise-Solution'!
CabinState subclass: #CabinMovingState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!CabinMovingState methodsFor: 'visitor accepting' stamp: 'HernanWilkinson 7/15/2011 18:54'!
accept: aCabinStateVisitor

	aCabinStateVisitor visitCabinMoving: self! !


!CabinMovingState methodsFor: 'cabin door events' stamp: 'HernanWilkinson 7/15/2011 18:17'!
cabinDoorClosedWhenWorking
	
	^elevatorController cabinDoorClosedWhenWorkingAndCabinMoving! !


!CabinMovingState methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 18:13'!
closeCabinDoorWhenWorking

	^ elevatorController closeCabinDoorWhenWorkingAndCabinMoving! !


!CabinMovingState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:47'!
isMoving

	^true! !


!classDefinition: #CabinStoppedState category: 'Elevator-ConsoleExercise-Solution'!
CabinState subclass: #CabinStoppedState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!CabinStoppedState methodsFor: 'visitor accepting' stamp: 'HernanWilkinson 7/15/2011 18:55'!
accept: aCabinStateVisitor

	aCabinStateVisitor visitCabinStopped: self! !


!CabinStoppedState methodsFor: 'cabin door events' stamp: 'HernanWilkinson 7/15/2011 17:55'!
cabinDoorClosedWhenWorking
	
	^ elevatorController cabinDoorClosedWhenWorkingAndCabinStopped! !

!CabinStoppedState methodsFor: 'cabin door events' stamp: 'HernanWilkinson 7/15/2011 18:01'!
cabinDoorOpenedWhenWorking
	
	^elevatorController cabinDoorOpenedWhenWorkingAndCabinStopped! !


!CabinStoppedState methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 18:14'!
closeCabinDoorWhenWorking
	
	^elevatorController closeCabinDoorWhenWorkingAndCabinStopped! !


!CabinStoppedState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:43'!
isStopped
	
	^ true! !


!classDefinition: #CabinWaitingForPeopleState category: 'Elevator-ConsoleExercise-Solution'!
CabinState subclass: #CabinWaitingForPeopleState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!CabinWaitingForPeopleState methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 18:11'!
closeCabinDoorWhenWorking
	
	^ elevatorController closeCabinDoorWhenWorkingAndWaitingForPeople! !


!CabinWaitingForPeopleState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:47'!
isWaitingForPeople 

	^true! !


!CabinWaitingForPeopleState methodsFor: 'cabin events' stamp: 'HernanWilkinson 7/15/2011 18:08'!
waitForPeopleTimedOutWhenWorking
	
	^elevatorController waitForPeopleTimedOutWhenWorkingAndCabinWaitingForPeople! !


!classDefinition: #Elevator category: 'Elevator-ConsoleExercise-Solution'!
Object subclass: #Elevator
	instanceVariableNames: 'state cabinState cabinDoorState cabinFloorNumber floorsToGo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!Elevator methodsFor: 'cabin door events' stamp: 'HernanWilkinson 7/15/2011 17:54'!
cabinDoorClosed
	
	^state cabinDoorClosed ! !

!Elevator methodsFor: 'cabin door events' stamp: 'HernanWilkinson 7/15/2011 18:00'!
cabinDoorOpened
	
	^ state cabinDoorOpened ! !


!Elevator methodsFor: 'cabin door events by state' stamp: 'HernanWilkinson 7/15/2011 18:16'!
cabinDoorClosedWhenIdle
	
	ElevatorEmergency signal:  'Sensor de puerta desincronizado' ! !

!Elevator methodsFor: 'cabin door events by state' stamp: 'HernanWilkinson 7/15/2011 17:54'!
cabinDoorClosedWhenWorking
	
	^ cabinState cabinDoorClosedWhenWorking ! !

!Elevator methodsFor: 'cabin door events by state' stamp: 'HernanWilkinson 7/15/2011 18:17'!
cabinDoorClosedWhenWorkingAndCabinMoving
	
	ElevatorEmergency signal:  'Sensor de puerta desincronizado'   ! !

!Elevator methodsFor: 'cabin door events by state' stamp: 'HernanWilkinson 7/15/2011 17:55'!
cabinDoorClosedWhenWorkingAndCabinStopped
	
	^ cabinDoorState cabinDoorClosedWhenWorkingAndCabinStopped ! !

!Elevator methodsFor: 'cabin door events by state' stamp: 'HernanWilkinson 7/15/2011 18:18'!
cabinDoorClosedWhenWorkingAndCabinStoppedAndCabinDoorOpening
	
	ElevatorEmergency signal:  'Sensor de puerta desincronizado'   ! !

!Elevator methodsFor: 'cabin door events by state' stamp: 'HernanWilkinson 7/15/2011 18:27'!
cabinDoorClosedWhenWorkingAndCabinStoppedAndCabinDoorStopped
	
	self stopCabinDoorMotorWhenClosed.
	self startMovingCabin
	! !

!Elevator methodsFor: 'cabin door events by state' stamp: 'HernanWilkinson 7/15/2011 18:01'!
cabinDoorOpenedWhenWorking

	^ cabinState cabinDoorOpenedWhenWorking ! !

!Elevator methodsFor: 'cabin door events by state' stamp: 'HernanWilkinson 7/15/2011 18:28'!
cabinDoorOpenedWhenWorkingAndCabinStopped

	self stopCabinDoorMotorWhenOpened.
	self hasFloorToGo 
		ifTrue:  [ self waitForPeopleToCameInsideCabin ]
		ifFalse: [ self stopWorking ]! !


!Elevator methodsFor: 'cabin state' stamp: 'HernanWilkinson 7/15/2011 17:43'!
cabinFloorNumber
	
	^ cabinFloorNumber! !

!Elevator methodsFor: 'cabin state' stamp: 'HAW 6/28/2021 11:10:47'!
changeCabinStateTo: aCabinState

	cabinState changeTo: aCabinState ! !

!Elevator methodsFor: 'cabin state' stamp: 'HernanWilkinson 7/15/2011 17:48'!
isCabinMoving

	^ cabinState isMoving ! !

!Elevator methodsFor: 'cabin state' stamp: 'HernanWilkinson 7/15/2011 17:42'!
isCabinStopped

	^ cabinState isStopped! !

!Elevator methodsFor: 'cabin state' stamp: 'HernanWilkinson 7/15/2011 17:48'!
isCabinWaitingForPeople 

	^ cabinState isWaitingForPeople ! !

!Elevator methodsFor: 'cabin state' stamp: 'HAW 6/28/2021 11:09:57'!
startMovingCabin
	
	self changeCabinStateTo: (CabinMovingState of: self)! !

!Elevator methodsFor: 'cabin state' stamp: 'HAW 6/28/2021 11:10:10'!
stopCabin
	
	self changeCabinStateTo: (CabinStoppedState of: self)! !

!Elevator methodsFor: 'cabin state' stamp: 'HAW 6/28/2021 11:10:20'!
waitForPeopleToCameInsideCabin
	
	self changeCabinStateTo: (CabinWaitingForPeopleState of: self)! !


!Elevator methodsFor: 'cabin events' stamp: 'HernanWilkinson 7/15/2011 18:34'!
cabinOnFloor: aFloorNumber

	aFloorNumber<cabinFloorNumber ifTrue: [ ElevatorEmergency signal: 'Sensor de cabina desincronizado' ].
	cabinFloorNumber+1 = aFloorNumber ifFalse: [ ElevatorEmergency signal: 'Sensor de cabina desincronizado' ].
		
	cabinFloorNumber := aFloorNumber.
	floorsToGo first = aFloorNumber ifTrue: [ 
		floorsToGo removeFirst.
		self stopCabin.
		self startOpeningCabinDoor ]
! !

!Elevator methodsFor: 'cabin events' stamp: 'HernanWilkinson 7/15/2011 18:07'!
waitForPeopleTimedOut
	
	^ state waitForPeopleTimedOut ! !


!Elevator methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 18:09'!
closeCabinDoor
	
	^ state closeCabinDoor ! !

!Elevator methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 17:50'!
goUpPushedFromFloor: aFloorNumber

	^ state goUpPushedFromFloor: aFloorNumber   ! !

!Elevator methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 18:04'!
openCabinDoor

	^state openCabinDoor ! !


!Elevator methodsFor: 'button events by state' stamp: 'HernanWilkinson 7/15/2011 18:12'!
closeCabinDoorWhenIdle
	
	! !

!Elevator methodsFor: 'button events by state' stamp: 'HernanWilkinson 7/15/2011 18:10'!
closeCabinDoorWhenWorking
	
	^ cabinState closeCabinDoorWhenWorking ! !

!Elevator methodsFor: 'button events by state' stamp: 'HernanWilkinson 7/15/2011 18:13'!
closeCabinDoorWhenWorkingAndCabinMoving
	
	! !

!Elevator methodsFor: 'button events by state' stamp: 'HernanWilkinson 7/15/2011 18:14'!
closeCabinDoorWhenWorkingAndCabinStopped

	^ cabinDoorState closeCabinDoorWhenWorkingAndCabinStopped ! !

!Elevator methodsFor: 'button events by state' stamp: 'HernanWilkinson 7/15/2011 18:15'!
closeCabinDoorWhenWorkingAndCabinStoppedAndCabinDoorOpening
	
	! !

!Elevator methodsFor: 'button events by state' stamp: 'HernanWilkinson 7/15/2011 18:28'!
closeCabinDoorWhenWorkingAndWaitingForPeople
	
	self stopCabin.
	self startClosingDoor! !

!Elevator methodsFor: 'button events by state' stamp: 'HernanWilkinson 7/15/2011 18:29'!
goUpPushedFromFloorWhenIdle: aFloorNumber

		floorsToGo add: aFloorNumber.
		self startWorking.
		self startClosingDoor ! !

!Elevator methodsFor: 'button events by state' stamp: 'HernanWilkinson 7/15/2011 18:06'!
goUpPushedFromFloorWhenWorking: aFloorNumber

	floorsToGo add: aFloorNumber ! !

!Elevator methodsFor: 'button events by state' stamp: 'HernanWilkinson 7/15/2011 18:04'!
openCabinDoorWhenIdle

	! !

!Elevator methodsFor: 'button events by state' stamp: 'HernanWilkinson 7/15/2011 18:05'!
openCabinDoorWhenWorking
	! !


!Elevator methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 18:03'!
hasFloorToGo
	
	^ floorsToGo notEmpty ! !


!Elevator methodsFor: 'initialization' stamp: 'HAW 6/28/2021 11:09:23'!
initialize 

	cabinDoorState := ActiveVariable new.
	cabinState := ActiveVariable new.
	
	self stopWorking.
	self stopCabin.
	self stopCabinDoorMotorWhenOpened.
	cabinFloorNumber := 0.
	floorsToGo := SortedCollection new.! !


!Elevator methodsFor: 'cabin door state' stamp: 'HAW 6/28/2021 11:11:58'!
changeCabinDoorStateTo: aCabinDoorState

	cabinDoorState changeTo: aCabinDoorState ! !

!Elevator methodsFor: 'cabin door state' stamp: 'HernanWilkinson 7/15/2011 17:48'!
isCabinDoorClosed
	
	^ cabinDoorState isClosed ! !

!Elevator methodsFor: 'cabin door state' stamp: 'HernanWilkinson 7/15/2011 17:48'!
isCabinDoorClosing
	
	^ cabinDoorState isClosing ! !

!Elevator methodsFor: 'cabin door state' stamp: 'HernanWilkinson 7/15/2011 17:43'!
isCabinDoorOpened
	
	^ cabinDoorState isOpened! !

!Elevator methodsFor: 'cabin door state' stamp: 'HernanWilkinson 7/15/2011 17:47'!
isCabinDoorOpening
	
	^ cabinDoorState isOpening ! !

!Elevator methodsFor: 'cabin door state' stamp: 'HAW 6/28/2021 11:11:12'!
startClosingDoor
	
	self changeCabinDoorStateTo: (CabinDoorClosingState of: self)! !

!Elevator methodsFor: 'cabin door state' stamp: 'HAW 6/28/2021 11:11:21'!
startOpeningCabinDoor
	
	self changeCabinDoorStateTo: (CabinDoorOpeningState of: self)! !

!Elevator methodsFor: 'cabin door state' stamp: 'HAW 6/28/2021 11:11:34'!
stopCabinDoorMotorWhenClosed
	
	self changeCabinDoorStateTo: (CabinDoorClosedState of: self)! !

!Elevator methodsFor: 'cabin door state' stamp: 'HAW 6/28/2021 11:11:44'!
stopCabinDoorMotorWhenOpened
	
	self changeCabinDoorStateTo: (CabinDoorOpenedState of: self)! !


!Elevator methodsFor: 'controller state' stamp: 'HernanWilkinson 7/15/2011 17:42'!
isIdle
	
	^ state isIdle ! !

!Elevator methodsFor: 'controller state' stamp: 'HernanWilkinson 7/15/2011 17:48'!
isWorking
	
	^ state isWorking ! !

!Elevator methodsFor: 'controller state' stamp: 'HAW 6/28/2021 10:56:26'!
startWorking
	
	state := ElevatorWorkingState of: self! !

!Elevator methodsFor: 'controller state' stamp: 'HAW 6/28/2021 10:56:17'!
stopWorking
	
	state := ElevatorIdleState of: self! !


!Elevator methodsFor: 'cabin events by state' stamp: 'HernanWilkinson 7/15/2011 18:08'!
waitForPeopleTimedOutWhenWorking
	
	cabinState waitForPeopleTimedOutWhenWorking ! !

!Elevator methodsFor: 'cabin events by state' stamp: 'HernanWilkinson 7/15/2011 18:28'!
waitForPeopleTimedOutWhenWorkingAndCabinWaitingForPeople

	self stopCabin.
	self startClosingDoor! !


!Elevator methodsFor: 'as yet unclassified' stamp: 'HAW 6/28/2021 11:13:37'!
addCabinDoorStateObserver: anObserver

	cabinDoorState addObserver: anObserver ! !

!Elevator methodsFor: 'as yet unclassified' stamp: 'HAW 6/28/2021 11:13:17'!
addCabinStateObserver: anObserver

	cabinState addObserver: anObserver ! !


!classDefinition: #ElevatorConsole category: 'Elevator-ConsoleExercise-Solution'!
Object subclass: #ElevatorConsole
	instanceVariableNames: 'stream'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!ElevatorConsole methodsFor: 'observing' stamp: 'HernanWilkinson 7/15/2011 18:44'!
cabinDoorStateChangedTo: aCabinDoorState 
	
	^ aCabinDoorState accept: self ! !

!ElevatorConsole methodsFor: 'observing' stamp: 'HernanWilkinson 7/15/2011 18:53'!
cabinStateChangedTo: aCabinState 

	aCabinState accept: self
	
	! !


!ElevatorConsole methodsFor: 'accessing' stamp: 'HernanWilkinson 7/15/2011 18:46'!
consoleReadStream
	
	^ ReadStream on: stream contents ! !


!ElevatorConsole methodsFor: 'initialization' stamp: 'HernanWilkinson 7/15/2011 18:45'!
initializeOf: anElevatorController 
	
	stream := WriteStream on: String new.
	anElevatorController addCabinStateObserver: [ :aCabinState | self cabinStateChangedTo: aCabinState ].
	anElevatorController addCabinDoorStateObserver: [ :aCabinDoorState | self cabinDoorStateChangedTo: aCabinDoorState ].
! !


!ElevatorConsole methodsFor: 'visiting' stamp: 'HernanWilkinson 7/15/2011 18:56'!
visitCabinDoorClosed: aCabinDoorClosedState 

	stream 
		nextPutAll: 'Puerta Cerrada';
		cr! !

!ElevatorConsole methodsFor: 'visiting' stamp: 'HernanWilkinson 7/15/2011 18:47'!
visitCabinDoorClosing: aCabinDoorClosingState 
	
	stream 
		nextPutAll: 'Puerta Cerrandose';
		cr! !

!ElevatorConsole methodsFor: 'visiting' stamp: 'HernanWilkinson 7/15/2011 18:57'!
visitCabinDoorOpening: aCabinDoorOpeningState 

	stream 
		nextPutAll: 'Puerta Abriendose'  ;
		cr! !

!ElevatorConsole methodsFor: 'visiting' stamp: 'HernanWilkinson 7/15/2011 18:54'!
visitCabinMoving: aCabinMovingState 
	
	stream 
		nextPutAll: 'Cabina Moviendose'  ;
		cr! !

!ElevatorConsole methodsFor: 'visiting' stamp: 'HernanWilkinson 7/15/2011 18:56'!
visitCabinStopped: aCabinStoppedState 
	
	stream 
		nextPutAll: 'Cabina Detenida' ;
		cr! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ElevatorConsole class' category: 'Elevator-ConsoleExercise-Solution'!
ElevatorConsole class
	instanceVariableNames: ''!

!ElevatorConsole class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/15/2011 18:39'!
of: anElevatorController 

	^ self new initializeOf: anElevatorController   ! !


!classDefinition: #ElevatorState category: 'Elevator-ConsoleExercise-Solution'!
Object subclass: #ElevatorState
	instanceVariableNames: 'elevatorController'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!ElevatorState methodsFor: 'initialization' stamp: 'HernanWilkinson 7/15/2011 17:44'!
initializeOf: anElevatorController 
	
	elevatorController := anElevatorController ! !


!ElevatorState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:47'!
isIdle

	^false! !

!ElevatorState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:47'!
isWorking

	^false! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ElevatorState class' category: 'Elevator-ConsoleExercise-Solution'!
ElevatorState class
	instanceVariableNames: ''!

!ElevatorState class methodsFor: 'accessing class hierarchy' stamp: 'HernanWilkinson 7/15/2011 17:44'!
of: anElevatorController 
	
	^self new initializeOf: anElevatorController ! !


!classDefinition: #ElevatorIdleState category: 'Elevator-ConsoleExercise-Solution'!
ElevatorState subclass: #ElevatorIdleState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!ElevatorIdleState methodsFor: 'cabin door events' stamp: 'HernanWilkinson 7/15/2011 18:16'!
cabinDoorClosed
	
	^elevatorController cabinDoorClosedWhenIdle! !


!ElevatorIdleState methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 18:12'!
closeCabinDoor
	
	^elevatorController closeCabinDoorWhenIdle! !

!ElevatorIdleState methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 17:51'!
goUpPushedFromFloor: aFloorNumber 

	^ elevatorController goUpPushedFromFloorWhenIdle: aFloorNumber ! !

!ElevatorIdleState methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 18:04'!
openCabinDoor
	
	^ elevatorController openCabinDoorWhenIdle! !


!ElevatorIdleState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:42'!
isIdle
	
	^true! !


!classDefinition: #ElevatorWorkingState category: 'Elevator-ConsoleExercise-Solution'!
ElevatorState subclass: #ElevatorWorkingState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!ElevatorWorkingState methodsFor: 'cabin door events' stamp: 'HernanWilkinson 7/15/2011 17:54'!
cabinDoorClosed
	
	^ elevatorController cabinDoorClosedWhenWorking! !

!ElevatorWorkingState methodsFor: 'cabin door events' stamp: 'HernanWilkinson 7/15/2011 18:01'!
cabinDoorOpened
	
	^ elevatorController cabinDoorOpenedWhenWorking! !


!ElevatorWorkingState methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 18:09'!
closeCabinDoor
	
	^ elevatorController closeCabinDoorWhenWorking! !

!ElevatorWorkingState methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 18:06'!
goUpPushedFromFloor: aFloorNumber

	^ elevatorController goUpPushedFromFloorWhenWorking: aFloorNumber    ! !

!ElevatorWorkingState methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 18:05'!
openCabinDoor
	
	^ elevatorController openCabinDoorWhenWorking! !

!ElevatorWorkingState methodsFor: 'button events' stamp: 'HernanWilkinson 7/15/2011 18:07'!
waitForPeopleTimedOut
	
	^elevatorController waitForPeopleTimedOutWhenWorking! !


!ElevatorWorkingState methodsFor: 'testing' stamp: 'HernanWilkinson 7/15/2011 17:47'!
isWorking 

	^true! !


!classDefinition: #ElevatorStatusView category: 'Elevator-ConsoleExercise-Solution'!
Object subclass: #ElevatorStatusView
	instanceVariableNames: 'cabinDoorFieldModel cabinFieldModel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Elevator-ConsoleExercise-Solution'!

!ElevatorStatusView methodsFor: 'accessing' stamp: 'HernanWilkinson 7/15/2011 19:00'!
cabinDoorFieldModel
	
	^ cabinDoorFieldModel! !

!ElevatorStatusView methodsFor: 'accessing' stamp: 'HernanWilkinson 7/15/2011 19:00'!
cabinFieldModel
	
	^ cabinFieldModel! !


!ElevatorStatusView methodsFor: 'observing' stamp: 'HernanWilkinson 7/15/2011 18:58'!
cabinDoorStateChangedTo: aCabinDoorState 
	
	^ aCabinDoorState accept: self ! !

!ElevatorStatusView methodsFor: 'observing' stamp: 'HernanWilkinson 7/15/2011 18:58'!
cabinStateChangedTo: aCabinState 

	aCabinState accept: self
	
	! !


!ElevatorStatusView methodsFor: 'initialization' stamp: 'HernanWilkinson 7/15/2011 18:59'!
initializeOf: anElevatorController 
	
	anElevatorController addCabinStateObserver: [ :aCabinState | self cabinStateChangedTo: aCabinState ].
	anElevatorController addCabinDoorStateObserver: [ :aCabinDoorState | self cabinDoorStateChangedTo: aCabinDoorState ].
! !


!ElevatorStatusView methodsFor: 'visiting' stamp: 'HernanWilkinson 7/15/2011 18:59'!
visitCabinDoorClosed: aCabinDoorClosedState 

	cabinDoorFieldModel := 'Closed'! !

!ElevatorStatusView methodsFor: 'visiting' stamp: 'HernanWilkinson 7/15/2011 18:59'!
visitCabinDoorClosing: aCabinDoorClosingState 
	
	cabinDoorFieldModel := 'Closing'! !

!ElevatorStatusView methodsFor: 'visiting' stamp: 'HernanWilkinson 7/15/2011 18:59'!
visitCabinDoorOpening: aCabinDoorOpeningState 

	cabinDoorFieldModel := 'Opening'! !

!ElevatorStatusView methodsFor: 'visiting' stamp: 'HernanWilkinson 7/15/2011 18:59'!
visitCabinMoving: aCabinMovingState 
	
	cabinFieldModel := 'Moving'! !

!ElevatorStatusView methodsFor: 'visiting' stamp: 'HernanWilkinson 7/15/2011 18:59'!
visitCabinStopped: aCabinStoppedState 
	
	cabinFieldModel := 'Stopped'! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ElevatorStatusView class' category: 'Elevator-ConsoleExercise-Solution'!
ElevatorStatusView class
	instanceVariableNames: ''!

!ElevatorStatusView class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/15/2011 18:58'!
of: anElevatorController 

	^ self new initializeOf: anElevatorController   ! !
