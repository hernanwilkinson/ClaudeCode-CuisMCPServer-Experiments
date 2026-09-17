'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:49:37 am'!
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

!Backpack methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
sumOf: aPortableObjectMeasure

	^ container inject: 0 into: [ :total :portableObject | total + (aPortableObjectMeasure value: portableObject) ]! !

!Backpack methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
totalPoints

	^ self sumOf: [ :portableObject | portableObject points ]! !

!Backpack methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
totalWeight

	^ self sumOf: [ :portableObject | portableObject weight ]! !

!Backpack methodsFor: 'assertions' stamp: 'FRT 12/Oct/2020, 5:12:36 pm (UTC)'!
assertPointsAdding: aPointsPortableObject

	(self totalPoints + aPointsPortableObject points) > gamePointsCapacity ifTrue: [ self signalMaxPointsExceeded ]! !

!Backpack methodsFor: 'assertions' stamp: 'FRT 15/Oct/2020, 3:22:34 pm (UTC)'!
assertWeightAdding: aPortableObject tolerating: aThreshold

	(self totalWeight + aPortableObject weight - weightCapacity) > aThreshold ifTrue: [ self signalMaxWeightExceeded ]! !

!Backpack methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
add: aPortableObject

	aPortableObject addTo: self! !

!Backpack methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
addNoPointsPortableObject: aNoPointsPortableObject

	self assertWeightAdding: aNoPointsPortableObject tolerating: 0.
	container add: aNoPointsPortableObject! !

!Backpack methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
addPointsPortableObject: aPointsPortableObject

	self assertWeightAdding: aPointsPortableObject tolerating: 5.
	self assertPointsAdding: aPointsPortableObject.
	container add: aPointsPortableObject! !

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

!DoorState methodsFor: 'door actions' stamp: 'FRT 13/Oct/2020, 5:47:14 pm (UTC)'!
close

	self subclassResponsibility! !

!DoorState methodsFor: 'door actions' stamp: 'FRT 13/Oct/2020, 5:47:36 pm (UTC)'!
open

	self subclassResponsibility! !

!DoorState methodsFor: 'door actions' stamp: 'FRT 13/Oct/2020, 5:47:48 pm (UTC)'!
openUsing: aKey

	self subclassResponsibility! !

!DoorState methodsFor: 'door actions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
use

	self subclassResponsibility! !

!DoorState methodsFor: 'testing' stamp: 'FRT 13/Oct/2020, 5:47:24 pm (UTC)'!
isOpen

	self subclassResponsibility! !

!ClosedDoorState methodsFor: 'door actions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
close

	self error: Door alreadyClosedErrorDescription! !

!ClosedDoorState methodsFor: 'door actions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
open

	^ OpenedDoorState new! !

!ClosedDoorState methodsFor: 'door actions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
openUsing: aKey

	self error: Door noNeedForAKeyErrorDescription! !

!ClosedDoorState methodsFor: 'door actions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
use

	^ self open! !

!ClosedDoorState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
isOpen

	^ false! !

!KeyClosedDoorState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
initializeLockedWith: aKey

	key := aKey! !

!KeyClosedDoorState methodsFor: 'door actions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
open

	self error: Door closedWithKeyErrorDescription! !

!KeyClosedDoorState methodsFor: 'door actions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
openUsing: aKey

	self assertIsOpenedBy: aKey.
	^ OpenedDoorState new! !

!KeyClosedDoorState methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
assertIsOpenedBy: aKey

	key = aKey ifFalse: [ self error: Door notCorrectKeyErrorDescription ]! !

!KeyClosedDoorState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
lockedWith: aKey

	^ self new initializeLockedWith: aKey! !

!OpenedDoorState methodsFor: 'door actions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
close

	^ ClosedDoorState new! !

!OpenedDoorState methodsFor: 'door actions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
open

	self error: Door alreadyOpenedErrorDescription! !

!OpenedDoorState methodsFor: 'door actions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
openUsing: aKey

	self error: Door alreadyOpenedErrorDescription! !

!OpenedDoorState methodsFor: 'door actions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
use

	^ self close! !

!OpenedDoorState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
isOpen

	^ true! !

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

!Door methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
isOpen

	^ state isOpen
! !

!Door methodsFor: 'initialization' stamp: 'FRT 13/Oct/2020, 5:28:44 pm (UTC)'!
initializeWith: aDoorState

	state := aDoorState
! !

!Door methodsFor: 'playable character reactions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
toBeClosedBy: aPlayableCharacter

	state := state close! !

!Door methodsFor: 'playable character reactions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
toBeOpenedBy: aPlayableCharacter

	state := state open! !

!Door methodsFor: 'playable character reactions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
toBeOpenedBy: aPlayableCharacter using: aKey

	state := state openUsing: aKey! !

!Door methodsFor: 'playable character reactions' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
toBeUsedBy: aPlayableCharacter

	state := state use! !

!Door class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
closed

	^ self with: ClosedDoorState new! !

!Door class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
closedWith: aKey

	^ self with: (KeyClosedDoorState lockedWith: aKey)! !

!Door class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
opened

	^ self with: OpenedDoorState new! !

!Door class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:49:10 am (UTC)'!
with: aDoorState

	^ self new initializeWith: aDoorState! !

!Door class methodsFor: 'error messages' stamp: 'FRT 11/Oct/2020, 10:50:28 pm (UTC)'!
alreadyClosedErrorDescription

	^ 'The door is already closed'! !

!Door class methodsFor: 'error messages' stamp: 'FRT 11/Oct/2020, 11:15:28 pm (UTC)'!
alreadyOpenedErrorDescription

	^ 'The door is already opened'! !

!Door class methodsFor: 'error messages' stamp: 'FRT 12/Oct/2020, 1:15:06 am (UTC)'!
closedWithKeyErrorDescription

	^ 'The door is closed with key'! !

!Door class methodsFor: 'error messages' stamp: 'FRT 11/Oct/2020, 10:50:40 pm (UTC)'!
keyClosedErrorDescription

	^ 'The door is closed with a key'! !

!Door class methodsFor: 'error messages' stamp: 'FRT 12/Oct/2020, 1:26:32 am (UTC)'!
noNeedForAKeyErrorDescription

	^ 'The door is not key-closed'! !

!Door class methodsFor: 'error messages' stamp: 'FRT 12/Oct/2020, 1:31:16 am (UTC)'!
notCorrectKeyErrorDescription

	^ 'Not the correct key!!'! !

!PortableObject methodsFor: 'adding' stamp: 'FRT 8/Oct/2020, 9:38:17 pm (UTC)'!
addTo: aBackpack

	self subclassResponsibility	! !

!PortableObject methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
points

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

!NoPointsPortableObject methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
points

	^ 0! !

!NoPointsPortableObject methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
addTo: aBackpack

	aBackpack addNoPointsPortableObject: self! !

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

!PointsPortableObject methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
addTo: aBackpack

	aBackpack addPointsPortableObject: self! !

!PointsPortableObject class methodsFor: 'instance creation' stamp: 'HAW 14/Oct/2020, 5:36:26 pm (UTC)'!
named: aName weighing: aWeight worth: gamePoints
	
	^ self new initializeNamed: aName weighing: aWeight worth: gamePoints.! !

!BackpackTest methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
test07ShouldNotAddNoPointsPortableObjectIfWeightExceeded

	self assertAddingExceedsMaxWeight: (NoPointsPortableObject named: 'help-wanted sign' weighing: 42 + 1)
! !

!BackpackTest methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
test08ShouldNotAddPointsPortableObjectIfWeightExceeded

	self assertAddingExceedsMaxWeight: (PointsPortableObject named: 'left-handed hammer' weighing: 42 + 6 worth: 5)
! !

!BackpackTest methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
test09ShouldAddPortableObjectsIfWeightUnderMaxWeightCapacity

	| aBackpack |
	aBackpack := self backpackWithHammerAndSign.
	
	self assert: aBackpack size equals: 2.
	self assert: aBackpack totalWeight equals: 41.
	self assert: aBackpack totalPoints equals: 5.
! !

!BackpackTest methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
test10ShouldAddPortableObjectsIfWeightEqualsMaxWeightCapacity

	| aBackpack |
	aBackpack := self backpackWithHammerAndSign.
	aBackpack add: (PointsPortableObject named: 'letter' weighing: 1 worth: 5).
	
	self assert: aBackpack size equals: 3.
	self assert: aBackpack totalWeight equals: 42.
	self assert: aBackpack totalPoints equals: 10.
! !

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

!BackpackTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
assertAddingExceedsMaxWeight: aPortableObject

	| aBackpack |
	aBackpack := self backpack.

	self
		should: [ aBackpack add: aPortableObject ]
		raise: Error
		withMessageText: Backpack maxWeightExceededErrorDescription.
		
	self assert: aBackpack isEmpty! !

!BackpackTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
backpack

	^ Backpack containingUpTo: 42 limitingPointsTo: 100! !

!BackpackTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:49:24 am (UTC)'!
backpackWithHammerAndSign

	| aBackpack |
	aBackpack := self backpack.
	aBackpack add: (PointsPortableObject named: 'left-handed hammer' weighing: 40 worth: 5).
	aBackpack add: (NoPointsPortableObject named: 'help-wanted sign' weighing: 1).
	^ aBackpack! !

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
