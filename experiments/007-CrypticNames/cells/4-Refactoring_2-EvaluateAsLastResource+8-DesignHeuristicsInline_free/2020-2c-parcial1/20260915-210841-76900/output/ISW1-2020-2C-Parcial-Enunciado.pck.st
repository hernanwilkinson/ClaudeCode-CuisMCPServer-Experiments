'From Cuis7.9 [latest update: #8182] on 15 September 2026 at 9:14:20 pm'!
'Description '!
!provides: 'ISW1-2020-2C-Parcial-Enunciado' 1 0!
SystemOrganization addCategory: #'ISW1-2020-2C-Parcial-Enunciado'!
SystemOrganization addCategory: #'ISW1-2020-2C-Parcial-Enunciado-Tests'!


!classDefinition: #Backpack category: #'ISW1-2020-2C-Parcial-Enunciado'!
Object subclass: #Backpack
	instanceVariableNames: 'weightCapacity gamePointsCapacity container'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado'!
!classDefinition: 'Backpack class' category: #'ISW1-2020-2C-Parcial-Enunciado'!
Backpack class
	instanceVariableNames: ''!

!classDefinition: #DoorState category: #'ISW1-2020-2C-Parcial-Enunciado'!
Object subclass: #DoorState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado'!
!classDefinition: 'DoorState class' category: #'ISW1-2020-2C-Parcial-Enunciado'!
DoorState class
	instanceVariableNames: ''!

!classDefinition: #ClosedDoorState category: #'ISW1-2020-2C-Parcial-Enunciado'!
DoorState subclass: #ClosedDoorState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado'!
!classDefinition: 'ClosedDoorState class' category: #'ISW1-2020-2C-Parcial-Enunciado'!
ClosedDoorState class
	instanceVariableNames: ''!

!classDefinition: #KeyClosedDoorState category: #'ISW1-2020-2C-Parcial-Enunciado'!
ClosedDoorState subclass: #KeyClosedDoorState
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado'!
!classDefinition: 'KeyClosedDoorState class' category: #'ISW1-2020-2C-Parcial-Enunciado'!
KeyClosedDoorState class
	instanceVariableNames: ''!

!classDefinition: #OpenedDoorState category: #'ISW1-2020-2C-Parcial-Enunciado'!
DoorState subclass: #OpenedDoorState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado'!
!classDefinition: 'OpenedDoorState class' category: #'ISW1-2020-2C-Parcial-Enunciado'!
OpenedDoorState class
	instanceVariableNames: ''!

!classDefinition: #PlayableCharacter category: #'ISW1-2020-2C-Parcial-Enunciado'!
Object subclass: #PlayableCharacter
	instanceVariableNames: 'name backpack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado'!
!classDefinition: 'PlayableCharacter class' category: #'ISW1-2020-2C-Parcial-Enunciado'!
PlayableCharacter class
	instanceVariableNames: ''!

!classDefinition: #StageObject category: #'ISW1-2020-2C-Parcial-Enunciado'!
Object subclass: #StageObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado'!
!classDefinition: 'StageObject class' category: #'ISW1-2020-2C-Parcial-Enunciado'!
StageObject class
	instanceVariableNames: ''!

!classDefinition: #Door category: #'ISW1-2020-2C-Parcial-Enunciado'!
StageObject subclass: #Door
	instanceVariableNames: 'state'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado'!
!classDefinition: 'Door class' category: #'ISW1-2020-2C-Parcial-Enunciado'!
Door class
	instanceVariableNames: ''!

!classDefinition: #PortableObject category: #'ISW1-2020-2C-Parcial-Enunciado'!
StageObject subclass: #PortableObject
	instanceVariableNames: 'name weight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado'!
!classDefinition: 'PortableObject class' category: #'ISW1-2020-2C-Parcial-Enunciado'!
PortableObject class
	instanceVariableNames: ''!

!classDefinition: #NoPointsPortableObject category: #'ISW1-2020-2C-Parcial-Enunciado'!
PortableObject subclass: #NoPointsPortableObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado'!
!classDefinition: 'NoPointsPortableObject class' category: #'ISW1-2020-2C-Parcial-Enunciado'!
NoPointsPortableObject class
	instanceVariableNames: ''!

!classDefinition: #PointsPortableObject category: #'ISW1-2020-2C-Parcial-Enunciado'!
PortableObject subclass: #PointsPortableObject
	instanceVariableNames: 'points'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado'!
!classDefinition: 'PointsPortableObject class' category: #'ISW1-2020-2C-Parcial-Enunciado'!
PointsPortableObject class
	instanceVariableNames: ''!

!classDefinition: #BackpackTest category: #'ISW1-2020-2C-Parcial-Enunciado-Tests'!
TestCase subclass: #BackpackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado-Tests'!
!classDefinition: 'BackpackTest class' category: #'ISW1-2020-2C-Parcial-Enunciado-Tests'!
BackpackTest class
	instanceVariableNames: ''!

!classDefinition: #DoorTest category: #'ISW1-2020-2C-Parcial-Enunciado-Tests'!
TestCase subclass: #DoorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2020-2C-Parcial-Enunciado-Tests'!
!classDefinition: 'DoorTest class' category: #'ISW1-2020-2C-Parcial-Enunciado-Tests'!
DoorTest class
	instanceVariableNames: ''!


!DoorState commentStamp: '<historical>' prior: 0!
I represent the state a Door is in. I know how the door reacts to being opened, closed or used: each of my state transition messages answers the state the reaction leaves the door in, or signals the error that makes that reaction impossible.!

!ClosedDoorState commentStamp: '<historical>' prior: 0!
I represent the state of a Door that is closed and can be opened without a key.!

!KeyClosedDoorState commentStamp: '<historical>' prior: 0!
I represent the state of a Door that is closed with a key. I know that key, and I only let the door be opened with it.!

!OpenedDoorState commentStamp: '<historical>' prior: 0!
I represent the state of a Door that is opened.!

!Door commentStamp: '<historical>' prior: 0!
I represent a door of a stage. I delegate to my state how I react to the actions of a playable character, and I keep the state each reaction leaves me in.!

!Backpack methodsFor: 'exceptions' stamp: 'FRT 8/Oct/2020, 9:02:29 pm (UTC)'!
signalMaxPointsExceeded

	self error: self class maxPointsExceededErrorDescription ! !

!Backpack methodsFor: 'exceptions' stamp: 'FRT 8/Oct/2020, 9:02:47 pm (UTC)'!
signalMaxWeightExceeded

	self error: self class maxWeightExceededErrorDescription ! !

!Backpack methodsFor: 'initialization' stamp: 'HAW 14/Oct/2020, 5:31:56 pm (UTC)'!
initializeContainingUpTo: aWeightCapacity limitingPointsTo: pointsCapacity

	weightCapacity := aWeightCapacity.
	gamePointsCapacity := pointsCapacity.
	
	container := OrderedCollection new.
	
	
	! !

!Backpack methodsFor: 'accessing' stamp: 'FRT 11/Oct/2020, 10:14:47 pm (UTC)'!
size

	^ container size.! !

!Backpack methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
totalOf: aQuantityToAdd

	^ container 
		inject: 0 
		into: [ :accumulatedTotal :aPortableObject | accumulatedTotal + (aQuantityToAdd value: aPortableObject) ]! !

!Backpack methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
totalPoints

	^ self totalOf: [ :aPortableObject | aPortableObject points ]! !

!Backpack methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
totalWeight

	^ self totalOf: [ :aPortableObject | aPortableObject weight ]! !

!Backpack methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
assertPointsAdding: aPortableObject

	self totalPoints + aPortableObject points > gamePointsCapacity 
		ifTrue: [ self signalMaxPointsExceeded ]! !

!Backpack methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
assertWeightAdding: aPortableObject tolerating: aToleratedWeightExcess

	self totalWeight + aPortableObject weight - weightCapacity > aToleratedWeightExcess 
		ifTrue: [ self signalMaxWeightExceeded ]! !

!Backpack methodsFor: 'adding' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
add: aPortableObject

	aPortableObject addTo: self! !

!Backpack methodsFor: 'adding' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
store: aPortableObject toleratingWeightExcessOf: aToleratedWeightExcess

	self assertWeightAdding: aPortableObject tolerating: aToleratedWeightExcess.
	self assertPointsAdding: aPortableObject.
	container add: aPortableObject! !

!Backpack methodsFor: 'testing' stamp: 'FRT 11/Oct/2020, 9:38:38 pm (UTC)'!
isEmpty

	^ container isEmpty.! !

!Backpack class methodsFor: 'error messages' stamp: 'FRT 11/Oct/2020, 9:27:33 pm (UTC)'!
invalidPointsCapacityErrorDescription

	^ 'Points capacity must be positive'! !

!Backpack class methodsFor: 'error messages' stamp: 'FRT 11/Oct/2020, 9:21:04 pm (UTC)'!
invalidWeightCapacityErrorDescription

	^ 'Weight capacity must be positive'! !

!Backpack class methodsFor: 'error messages' stamp: 'FRT 8/Oct/2020, 8:36:29 pm (UTC)'!
maxPointsExceededErrorDescription

	^ 'Maximum points has been exceeded'! !

!Backpack class methodsFor: 'error messages' stamp: 'FRT 8/Oct/2020, 8:36:17 pm (UTC)'!
maxWeightExceededErrorDescription

	^ 'Maximum weight has been exceeded'! !

!Backpack class methodsFor: 'error messages' stamp: 'FRT 8/Oct/2020, 8:43:00 pm (UTC)'!
pointsCapacityMustBeIntegerErrorDescription

	^ 'Points capacity must be integer'! !

!Backpack class methodsFor: 'error messages' stamp: 'FRT 8/Oct/2020, 8:42:48 pm (UTC)'!
weightCapacityMustBeIntegerErrorDescription

	^ 'Weight capacity must be integer'! !

!Backpack class methodsFor: 'exceptions' stamp: 'FRT 11/Oct/2020, 9:27:16 pm (UTC)'!
signalInvalidPointsCapacity

	self error: self invalidPointsCapacityErrorDescription 
! !

!Backpack class methodsFor: 'exceptions' stamp: 'FRT 11/Oct/2020, 9:21:51 pm (UTC)'!
signalInvalidWeightCapacity

	self error: self invalidWeightCapacityErrorDescription 
! !

!Backpack class methodsFor: 'exceptions' stamp: 'FRT 8/Oct/2020, 8:41:06 pm (UTC)'!
signalPointsCapacityMustBeInteger

	self error: self pointsCapacityMustBeIntegerErrorDescription
! !

!Backpack class methodsFor: 'exceptions' stamp: 'FRT 8/Oct/2020, 8:40:47 pm (UTC)'!
signalWeightCapacityMustBeInteger

	self error: self weightCapacityMustBeIntegerErrorDescription
! !

!Backpack class methodsFor: 'instance creation' stamp: 'HAW 14/Oct/2020, 5:31:56 pm (UTC)'!
containingUpTo: aWeightCapacity limitingPointsTo: pointsCapacity

	aWeightCapacity strictlyPositive  ifFalse: [ self signalInvalidWeightCapacity ].
	pointsCapacity strictlyPositive ifFalse: [ self signalInvalidPointsCapacity ].
	
	aWeightCapacity isInteger ifFalse: [ self signalWeightCapacityMustBeInteger ].
	pointsCapacity isInteger ifFalse: [ self signalPointsCapacityMustBeInteger ].
	
	^ self new initializeContainingUpTo: aWeightCapacity limitingPointsTo: pointsCapacity.
! !

!DoorState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
isOpen

	self subclassResponsibility! !

!DoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterBeingUsed

	self subclassResponsibility! !

!DoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterClosing

	self subclassResponsibility! !

!DoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterOpening

	self subclassResponsibility! !

!DoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterOpeningUsing: aKey

	self subclassResponsibility! !

!ClosedDoorState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
isOpen

	^ false! !

!ClosedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterBeingUsed

	^ self afterOpening! !

!ClosedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterClosing

	Door signalAlreadyClosed! !

!ClosedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterOpening

	^ OpenedDoorState new! !

!ClosedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterOpeningUsing: aKey

	Door signalNoNeedForAKey! !

!KeyClosedDoorState methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
initializeClosedWith: aKey

	key := aKey! !

!KeyClosedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterOpening

	Door signalClosedWithKey! !

!KeyClosedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterOpeningUsing: aKey

	^ key = aKey
		ifTrue: [ OpenedDoorState new ]
		ifFalse: [ Door signalNotCorrectKey ]! !

!KeyClosedDoorState class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
closedWith: aKey

	^ self new initializeClosedWith: aKey! !

!OpenedDoorState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
isOpen

	^ true! !

!OpenedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterBeingUsed

	^ self afterClosing! !

!OpenedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterClosing

	^ ClosedDoorState new! !

!OpenedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterOpening

	Door signalAlreadyOpened! !

!OpenedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:12:32 am (UTC)'!
afterOpeningUsing: aKey

	Door signalAlreadyOpened! !

!PlayableCharacter methodsFor: 'actions' stamp: 'FRT 15/Oct/2020, 1:59:08 am (UTC)'!
close: aStageObject

	aStageObject toBeClosedBy: self.! !

!PlayableCharacter methodsFor: 'actions' stamp: 'FRT 15/Oct/2020, 1:59:35 am (UTC)'!
open: aStageObject

	aStageObject toBeOpenedBy: self.! !

!PlayableCharacter methodsFor: 'actions' stamp: 'FRT 15/Oct/2020, 2:00:42 am (UTC)'!
take: aPortableObject

	backpack add: aPortableObject.! !

!PlayableCharacter methodsFor: 'actions' stamp: 'FRT 15/Oct/2020, 1:59:51 am (UTC)'!
use: aStageObject

	aStageObject toBeUsedBy: self.! !

!PlayableCharacter methodsFor: 'initialization' stamp: 'FRT 8/Oct/2020, 10:44:29 pm (UTC)'!
initializeNamed: aName using: aBackpack

	name := aName.
	backpack := aBackpack.! !

!PlayableCharacter class methodsFor: 'instance creation' stamp: 'FRT 8/Oct/2020, 10:43:11 pm (UTC)'!
named: aName using: aBackpack

	^ self new initializeNamed: aName using: aBackpack! !

!StageObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:23:07 am (UTC)'!
toBeClosedBy: aPlayableCharacter

	self subclassResponsibility! !

!StageObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:23:25 am (UTC)'!
toBeOpenedBy: aPlayableCharacter

	self subclassResponsibility! !

!StageObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:23:51 am (UTC)'!
toBeOpenedBy: aPlayableCharacter using: aKey

	self subclassResponsibility! !

!StageObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:23:39 am (UTC)'!
toBeUsedBy: aPlayableCharacter

	self subclassResponsibility! !

!Door methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
isOpen

	^ state isOpen! !

!Door methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
initializeInState: aDoorState

	state := aDoorState! !

!Door methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
toBeClosedBy: aPlayableCharacter

	state := state afterClosing! !

!Door methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
toBeOpenedBy: aPlayableCharacter

	state := state afterOpening! !

!Door methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
toBeOpenedBy: aPlayableCharacter using: aKey

	state := state afterOpeningUsing: aKey! !

!Door methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
toBeUsedBy: aPlayableCharacter

	state := state afterBeingUsed! !

!Door class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
closed

	^ self inState: ClosedDoorState new! !

!Door class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
closedWith: aKey

	^ self inState: (KeyClosedDoorState closedWith: aKey)! !

!Door class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
inState: aDoorState

	^ self new initializeInState: aDoorState! !

!Door class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
opened

	^ self inState: OpenedDoorState new! !

!Door class methodsFor: 'error messages' stamp: 'FRT 11/Oct/2020, 10:50:28 pm (UTC)'!
alreadyClosedErrorDescription

	^ 'The door is already closed'! !

!Door class methodsFor: 'error messages' stamp: 'FRT 11/Oct/2020, 11:15:28 pm (UTC)'!
alreadyOpenedErrorDescription

	^ 'The door is already opened'! !

!Door class methodsFor: 'error messages' stamp: 'FRT 12/Oct/2020, 1:15:06 am (UTC)'!
closedWithKeyErrorDescription

	^ 'The door is closed with key'! !

!Door class methodsFor: 'error messages' stamp: 'FRT 12/Oct/2020, 1:26:32 am (UTC)'!
noNeedForAKeyErrorDescription

	^ 'The door is not key-closed'! !

!Door class methodsFor: 'error messages' stamp: 'FRT 12/Oct/2020, 1:31:16 am (UTC)'!
notCorrectKeyErrorDescription

	^ 'Not the correct key!!'! !

!Door class methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
signalAlreadyClosed

	self error: self alreadyClosedErrorDescription! !

!Door class methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
signalAlreadyOpened

	self error: self alreadyOpenedErrorDescription! !

!Door class methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
signalClosedWithKey

	self error: self closedWithKeyErrorDescription! !

!Door class methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
signalNoNeedForAKey

	self error: self noNeedForAKeyErrorDescription! !

!Door class methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:12:41 am (UTC)'!
signalNotCorrectKey

	self error: self notCorrectKeyErrorDescription! !

!PortableObject methodsFor: 'adding' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
addTo: aBackpack

	aBackpack store: self toleratingWeightExcessOf: self toleratedWeightExcess! !

!PortableObject methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
points

	self subclassResponsibility! !

!PortableObject methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
toleratedWeightExcess

	self subclassResponsibility! !

!PortableObject methodsFor: 'accessing' stamp: 'FRT 11/Oct/2020, 9:53:51 pm (UTC)'!
weight

	^ weight! !

!PortableObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:27:01 am (UTC)'!
toBeClosedBy: aPlayableCharacter

	self subclassResponsibility! !

!PortableObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:27:14 am (UTC)'!
toBeOpenedBy: aPlayableCharacter

	self subclassResponsibility! !

!PortableObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:27:27 am (UTC)'!
toBeOpenedBy: aPlayableCharacter using: aKey

	self subclassResponsibility! !

!PortableObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:27:39 am (UTC)'!
toBeUsedBy: aPlayableCharacter

	self subclassResponsibility! !

!NoPointsPortableObject methodsFor: 'initialization' stamp: 'HAW 14/Oct/2020, 5:34:36 pm (UTC)'!
initializeNamed: aName weighing: aWeight
	
	name := aName.
	weight := aWeight.! !

!NoPointsPortableObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:27:59 am (UTC)'!
toBeClosedBy: aPlayableCharacter

	"No implementado en 1er Parcial"! !

!NoPointsPortableObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:28:14 am (UTC)'!
toBeOpenedBy: aPlayableCharacter

	"No implementado en 1er Parcial"! !

!NoPointsPortableObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:28:24 am (UTC)'!
toBeOpenedBy: aPlayableCharacter using: aKey

	"No implementado en 1er Parcial"! !

!NoPointsPortableObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:28:34 am (UTC)'!
toBeUsedBy: aPlayableCharacter

	"No implementado en 1er Parcial"! !

!NoPointsPortableObject methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
points

	^ 0! !

!NoPointsPortableObject methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
toleratedWeightExcess

	^ 0! !

!NoPointsPortableObject class methodsFor: 'instance creation' stamp: 'HAW 14/Oct/2020, 5:34:36 pm (UTC)'!
named: aName weighing: aWeight
	
	^ self new initializeNamed: aName weighing: aWeight. ! !

!PointsPortableObject methodsFor: 'initialization' stamp: 'HAW 14/Oct/2020, 5:36:26 pm (UTC)'!
initializeNamed: aName weighing: aWeight worth: gamePoints
	
	name := aName.
	weight := aWeight.
	points := gamePoints.! !

!PointsPortableObject methodsFor: 'accessing' stamp: 'FRT 11/Oct/2020, 10:06:57 pm (UTC)'!
points

	^ points! !

!PointsPortableObject methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:11:49 am (UTC)'!
toleratedWeightExcess

	^ 5! !

!PointsPortableObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:28:49 am (UTC)'!
toBeClosedBy: aPlayableCharacter

	"No implementado en 1er Parcial"! !

!PointsPortableObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:28:59 am (UTC)'!
toBeOpenedBy: aPlayableCharacter

	"No implementado en 1er Parcial"! !

!PointsPortableObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:29:14 am (UTC)'!
toBeOpenedBy: aPlayableCharacter using: aKey

	"No implementado en 1er Parcial"! !

!PointsPortableObject methodsFor: 'playable character reactions' stamp: 'FRT 13/Oct/2020, 2:29:25 am (UTC)'!
toBeUsedBy: aPlayableCharacter

	"No implementado en 1er Parcial"! !

!PointsPortableObject class methodsFor: 'instance creation' stamp: 'HAW 14/Oct/2020, 5:36:26 pm (UTC)'!
named: aName weighing: aWeight worth: gamePoints
	
	^ self new initializeNamed: aName weighing: aWeight worth: gamePoints.! !

!BackpackTest methodsFor: 'adding' stamp: 'HAW 16/Sep/2026, 12:13:13 am (UTC)'!
test07ShouldNotAddNoPointsPortableObjectIfWeightExceeded

	self assertMaximumWeightIsExceededAdding: 
		(NoPointsPortableObject named: 'help-wanted sign' weighing: self weightCapacity + 1)! !

!BackpackTest methodsFor: 'adding' stamp: 'HAW 16/Sep/2026, 12:13:13 am (UTC)'!
test08ShouldNotAddPointsPortableObjectIfWeightExceeded

	self assertMaximumWeightIsExceededAdding: 
		(PointsPortableObject named: 'left-handed hammer' weighing: self weightCapacity + 6 worth: 5)! !

!BackpackTest methodsFor: 'adding' stamp: 'HAW 16/Sep/2026, 12:13:13 am (UTC)'!
test09ShouldAddPortableObjectsIfWeightUnderMaxWeightCapacity

	| aBackpack |
	aBackpack := self backpackContainingHammerAndSign.
	
	self assert: aBackpack size equals: 2.
	self assert: aBackpack totalWeight equals: 41.
	self assert: aBackpack totalPoints equals: 5.! !

!BackpackTest methodsFor: 'adding' stamp: 'HAW 16/Sep/2026, 12:13:13 am (UTC)'!
test10ShouldAddPortableObjectsIfWeightEqualsMaxWeightCapacity

	| aBackpack |
	aBackpack := self backpackContainingHammerAndSign.
	aBackpack add: (PointsPortableObject named: 'letter' weighing: 1 worth: 5).
	
	self assert: aBackpack size equals: 3.
	self assert: aBackpack totalWeight equals: 42.
	self assert: aBackpack totalPoints equals: 10.! !

!BackpackTest methodsFor: 'creating' stamp: 'HAW 14/Oct/2020, 5:31:04 pm (UTC)'!
test01CanNotCreateBackpackWithZeroMaxWeight

	self
		should: [ Backpack containingUpTo: 0 limitingPointsTo: 100 ]
		raise: Error
		withMessageText: Backpack invalidWeightCapacityErrorDescription.
! !

!BackpackTest methodsFor: 'creating' stamp: 'HAW 14/Oct/2020, 5:31:04 pm (UTC)'!
test02CanNotCreateBackpackWithNegativeMaxWeight

	self
		should: [ Backpack containingUpTo: -1 limitingPointsTo: 100 ]
		raise: Error
		withMessageText: Backpack invalidWeightCapacityErrorDescription.! !

!BackpackTest methodsFor: 'creating' stamp: 'HAW 14/Oct/2020, 5:31:04 pm (UTC)'!
test03CanNotCreateBackpackWithZeroMaxPoints

	self
		should: [ Backpack containingUpTo: 10 limitingPointsTo: 0 ]
		raise: Error
		withMessageText: Backpack invalidPointsCapacityErrorDescription.
! !

!BackpackTest methodsFor: 'creating' stamp: 'HAW 14/Oct/2020, 5:31:04 pm (UTC)'!
test04CanNotCreateBackpackWithNegativeMaxPoints

	self
		should: [ Backpack containingUpTo: 10 limitingPointsTo: -1 ]
		raise: Error
		withMessageText: Backpack invalidPointsCapacityErrorDescription.! !

!BackpackTest methodsFor: 'creating' stamp: 'HAW 14/Oct/2020, 5:31:04 pm (UTC)'!
test05CanNotCreateBackpackWithNoIntegerMaxWeight

	self
		should: [ Backpack containingUpTo: 1.0 limitingPointsTo: 100 ]
		raise: Error
		withMessageText: Backpack weightCapacityMustBeIntegerErrorDescription.
! !

!BackpackTest methodsFor: 'creating' stamp: 'HAW 14/Oct/2020, 5:31:04 pm (UTC)'!
test06CanNotCreateBackpackWithNoIntegerMaxPoints

	self
		should: [ Backpack containingUpTo: 100 limitingPointsTo: 1.0 ]
		raise: Error
		withMessageText: Backpack pointsCapacityMustBeIntegerErrorDescription.
! !

!BackpackTest methodsFor: 'accessing' stamp: 'HAW 14/Oct/2020, 5:49:20 pm (UTC)'!
test11ShouldAddZeroWeightWhenEmpty

	| aBackpack |
	aBackpack := Backpack containingUpTo: 42 limitingPointsTo: 100.

	self assert: aBackpack totalWeight equals: 0.
	self assert: aBackpack isEmpty
! !

!BackpackTest methodsFor: 'accessing' stamp: 'HAW 14/Oct/2020, 5:35:57 pm (UTC)'!
test12ShouldAddWeightWhenAddingPortableObjects

	| aBackpack |
	aBackpack := Backpack containingUpTo: 42 limitingPointsTo: 100.

	aBackpack add: (PointsPortableObject named: 'left-handed hammer' weighing: 10 worth: 5).
	aBackpack add: (NoPointsPortableObject named: 'help-wanted sign' weighing: 10).
	
	self assert: aBackpack size equals: 2.
	self assert: aBackpack totalWeight equals: 20.

! !

!BackpackTest methodsFor: 'accessing' stamp: 'HAW 14/Oct/2020, 5:49:31 pm (UTC)'!
test13ShouldAddZeroPointsWhenEmpty

	| aBackpack |
	aBackpack := Backpack containingUpTo: 42 limitingPointsTo: 100.

	self assert: aBackpack totalPoints equals: 0.
	self assert: aBackpack isEmpty.
! !

!BackpackTest methodsFor: 'accessing' stamp: 'HAW 14/Oct/2020, 5:35:57 pm (UTC)'!
test14ShouldAddPointsWhenAddingPointsPortableObjects

	| aBackpack |
	aBackpack := Backpack containingUpTo: 42 limitingPointsTo: 100.

	aBackpack add: (PointsPortableObject named: 'left-handed hammer' weighing: 10 worth: 5).
	aBackpack add: (PointsPortableObject named: 'car key' weighing: 10 worth: 20).
	
	self assert: aBackpack size equals: 2.
	self assert: aBackpack totalPoints equals: 25.

! !

!BackpackTest methodsFor: 'accessing' stamp: 'HAW 14/Oct/2020, 5:35:57 pm (UTC)'!
test15ShouldNotAddPointsWhenAddingNoPointsPortableObjects

	| aBackpack |
	aBackpack := Backpack containingUpTo: 42 limitingPointsTo: 100.

	aBackpack add: (PointsPortableObject named: 'left-handed hammer' weighing: 10 worth: 5).
	aBackpack add: (NoPointsPortableObject named: 'help-wanted sign' weighing: 10).
	aBackpack add: (NoPointsPortableObject named: 'help-wanted sign' weighing: 10).
	
	self assert: aBackpack size equals: 3.
	self assert: aBackpack totalPoints equals: 5.

! !

!BackpackTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:13:13 am (UTC)'!
backpackContainingHammerAndSign

	| aBackpack |
	
	aBackpack := self emptyBackpack.
	aBackpack add: (PointsPortableObject named: 'left-handed hammer' weighing: 40 worth: 5).
	aBackpack add: (NoPointsPortableObject named: 'help-wanted sign' weighing: 1).
	
	^ aBackpack! !

!BackpackTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:13:13 am (UTC)'!
emptyBackpack

	^ Backpack containingUpTo: self weightCapacity limitingPointsTo: self pointsCapacity! !

!BackpackTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:13:13 am (UTC)'!
pointsCapacity

	^ 100! !

!BackpackTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:13:13 am (UTC)'!
weightCapacity

	^ 42! !

!BackpackTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:13:13 am (UTC)'!
assertMaximumWeightIsExceededAdding: aPortableObject

	| aBackpack |
	
	aBackpack := self emptyBackpack.

	self
		should: [ aBackpack add: aPortableObject ]
		raise: Error
		withMessageText: Backpack maxWeightExceededErrorDescription.
		
	self assert: aBackpack isEmpty! !

!DoorTest methodsFor: 'opening' stamp: 'HAW 14/Oct/2020, 5:43:48 pm (UTC)'!
test01ADoorOpenedCanNotBeOpenedAgain
	
	| mainCharacter aDoor |
	
	mainCharacter := PlayableCharacter named: 'Bernard' using: (Backpack containingUpTo: 100 limitingPointsTo: 100).
	aDoor := Door opened.
	
	self 
		should: [ aDoor toBeOpenedBy: mainCharacter ]
		raise: Error
		withMessageText: Door alreadyOpenedErrorDescription.
		
	self assert: aDoor isOpen.! !

!DoorTest methodsFor: 'opening' stamp: 'HAW 14/Oct/2020, 5:44:18 pm (UTC)'!
test04ADoorClosedCanBeOpened
	
	| mainCharacter aDoor |
	
	mainCharacter := PlayableCharacter named: 'Bernard' using: (Backpack containingUpTo: 100 limitingPointsTo: 100).
	aDoor := Door closed.
	
	self deny: aDoor isOpen.
	aDoor toBeOpenedBy: mainCharacter.
	self assert: aDoor isOpen.! !

!DoorTest methodsFor: 'opening' stamp: 'HAW 14/Oct/2020, 5:44:30 pm (UTC)'!
test05ADoorClosedCanNotBeOpenedWithAKey
	
	| mainCharacter aDoor oldKey |
	
	mainCharacter := PlayableCharacter named: 'Bernard' using: (Backpack containingUpTo: 100 limitingPointsTo: 100).
	aDoor := Door closed.
	oldKey := (PointsPortableObject named: 'old-rusty key' weighing: 2 worth: 1000).
	
	self 
		should: [ aDoor toBeOpenedBy: mainCharacter using: oldKey ]
		raise: Error
		withMessageText: Door noNeedForAKeyErrorDescription.
		
	self deny: aDoor isOpen.! !

!DoorTest methodsFor: 'opening' stamp: 'HAW 14/Oct/2020, 5:47:44 pm (UTC)'!
test07ADoorKeyClosedCanNotBeOpenedWithoutAKey
	
	| mainCharacter aDoor oldKey |
	
	mainCharacter := PlayableCharacter named: 'Bernard' using: (Backpack containingUpTo: 100 limitingPointsTo: 100).
	oldKey := (PointsPortableObject named: 'old-rusty key' weighing: 2 worth: 1000).
	aDoor := Door closedWith: oldKey.
	
	self 
		should: [ aDoor toBeOpenedBy: mainCharacter ]
		raise: Error
		withMessageText: Door closedWithKeyErrorDescription.
		
	self deny: aDoor isOpen! !

!DoorTest methodsFor: 'opening' stamp: 'HAW 14/Oct/2020, 5:47:52 pm (UTC)'!
test08ADoorKeyClosedCanNotBeOpenWithAnyKey
	
	| mainCharacter aDoor oldKey |
	
	mainCharacter := PlayableCharacter named: 'Bernard' using: (Backpack containingUpTo: 100 limitingPointsTo: 100).
	oldKey := (PointsPortableObject named: 'old-rusty key' weighing: 2 worth: 1000).
	aDoor := Door closedWith: oldKey.
	
	self 
		should: [ aDoor toBeOpenedBy: mainCharacter using: (PointsPortableObject named: 'car key' weighing: 2 worth: 1000) ]
		raise: Error
		withMessageText: Door notCorrectKeyErrorDescription.
		
	self deny: aDoor isOpen ! !

!DoorTest methodsFor: 'opening' stamp: 'HAW 14/Oct/2020, 5:48:03 pm (UTC)'!
test09ADoorKeyClosedCanBeOpenWithTheCorrectKey
	
	| mainCharacter aDoor oldKey |
	
	mainCharacter := PlayableCharacter named: 'Bernard' using: (Backpack containingUpTo: 100 limitingPointsTo: 100).
	oldKey := (PointsPortableObject named: 'old-rusty key' weighing: 2 worth: 1000).
	aDoor := Door closedWith: oldKey.
	
	self deny: aDoor isOpen.
	aDoor toBeOpenedBy: mainCharacter using: oldKey.
	self assert: aDoor isOpen! !

!DoorTest methodsFor: 'closing' stamp: 'HAW 14/Oct/2020, 5:43:40 pm (UTC)'!
test02ADoorOpenedCanBeClosed
	
	| mainCharacter aDoor |
	
	mainCharacter := PlayableCharacter named: 'Bernard' using: (Backpack containingUpTo: 100 limitingPointsTo: 100).
	aDoor := Door opened.
	
	self assert: aDoor isOpen.
	aDoor toBeClosedBy: mainCharacter.
	self deny: aDoor isOpen.
	! !

!DoorTest methodsFor: 'closing' stamp: 'HAW 14/Oct/2020, 5:48:16 pm (UTC)'!
test03ADoorClosedCanNotBeClosedAgain
	
	| mainCharacter aDoor |
	
	mainCharacter := PlayableCharacter named: 'Bernard' using: (Backpack containingUpTo: 100 limitingPointsTo: 100).
	aDoor := Door closed.
	
	self 
		should: [ aDoor toBeClosedBy: mainCharacter ]
		raise: Error
		withMessageText: Door alreadyClosedErrorDescription.
		
	self deny: aDoor isOpen! !

!DoorTest methodsFor: 'closing' stamp: 'HAW 14/Oct/2020, 5:48:25 pm (UTC)'!
test06ADoorKeyClosedCanNotBeClosedAgain
	
	| mainCharacter aDoor oldKey |
	
	mainCharacter := PlayableCharacter named: 'Bernard' using: (Backpack containingUpTo: 100 limitingPointsTo: 100).
	oldKey := (PointsPortableObject named: 'old-rusty key' weighing: 2 worth: 1000).
	aDoor := Door closedWith: oldKey.
	
	self 
		should: [ aDoor toBeClosedBy: mainCharacter ]
		raise: Error
		withMessageText: Door alreadyClosedErrorDescription.
		
	self deny: aDoor isOpen! !

!DoorTest methodsFor: 'using' stamp: 'HAW 14/Oct/2020, 5:48:39 pm (UTC)'!
test10WhenUsingADoorClosedGetsOpened
	
	| mainCharacter aDoor |
	
	mainCharacter := PlayableCharacter named: 'Bernard' using: (Backpack containingUpTo: 100 limitingPointsTo: 100).
	aDoor := Door closed.
	
	self deny: aDoor isOpen.
	aDoor toBeUsedBy: mainCharacter.	
	self assert: aDoor isOpen ! !

!DoorTest methodsFor: 'using' stamp: 'HAW 14/Oct/2020, 5:48:50 pm (UTC)'!
test11WhenUsingADoorOpenedGetsClosed
	
	| mainCharacter aDoor |
	
	mainCharacter := PlayableCharacter named: 'Bernard' using: (Backpack containingUpTo: 100 limitingPointsTo: 100).
	aDoor := Door opened.
	
	self assert: aDoor isOpen.
	aDoor toBeUsedBy: mainCharacter.	
	self deny: aDoor isOpen.! !

!DoorTest methodsFor: 'using' stamp: 'HAW 14/Oct/2020, 5:49:01 pm (UTC)'!
test12WhenUsingADoorKeyClosedCanNotBeOpened
	
	| mainCharacter aDoor oldKey |
	
	mainCharacter := PlayableCharacter named: 'Bernard' using: (Backpack containingUpTo: 100 limitingPointsTo: 100).
	oldKey := (PointsPortableObject named: 'old-rusty key' weighing: 2 worth: 1000).
	aDoor := Door closedWith: oldKey.
	
	self 
		should: [ aDoor toBeUsedBy: mainCharacter ]
		raise: Error
		withMessageText: Door closedWithKeyErrorDescription.
		
	self deny: aDoor isOpen! !
