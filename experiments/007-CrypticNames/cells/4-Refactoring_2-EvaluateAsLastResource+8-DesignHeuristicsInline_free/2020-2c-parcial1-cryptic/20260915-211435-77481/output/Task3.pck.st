'From Cuis7.9 [latest update: #8182] on 15 September 2026 at 9:25:36 pm'!
'Description '!
!provides: 'Task3' 1 2!
SystemOrganization addCategory: #Task3!


!classDefinition: #C1 category: #Task3!
Object subclass: #C1
	instanceVariableNames: 'maximumWeight maximumGamePoints elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'C1 class' category: #Task3!
C1 class
	instanceVariableNames: ''!

!classDefinition: #C2 category: #Task3!
Object subclass: #C2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'C2 class' category: #Task3!
C2 class
	instanceVariableNames: ''!

!classDefinition: #ClosedDoorState category: #Task3!
C2 subclass: #ClosedDoorState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'ClosedDoorState class' category: #Task3!
ClosedDoorState class
	instanceVariableNames: ''!

!classDefinition: #LockedDoorState category: #Task3!
C2 subclass: #LockedDoorState
	instanceVariableNames: 'key'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'LockedDoorState class' category: #Task3!
LockedDoorState class
	instanceVariableNames: ''!

!classDefinition: #OpenDoorState category: #Task3!
C2 subclass: #OpenDoorState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'OpenDoorState class' category: #Task3!
OpenDoorState class
	instanceVariableNames: ''!

!classDefinition: #C3 category: #Task3!
Object subclass: #C3
	instanceVariableNames: 'name backpack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'C3 class' category: #Task3!
C3 class
	instanceVariableNames: ''!

!classDefinition: #C4 category: #Task3!
Object subclass: #C4
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'C4 class' category: #Task3!
C4 class
	instanceVariableNames: ''!

!classDefinition: #C6 category: #Task3!
C4 subclass: #C6
	instanceVariableNames: 'state'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'C6 class' category: #Task3!
C6 class
	instanceVariableNames: ''!

!classDefinition: #C8 category: #Task3!
C4 subclass: #C8
	instanceVariableNames: 'name weight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'C8 class' category: #Task3!
C8 class
	instanceVariableNames: ''!

!classDefinition: #C10 category: #Task3!
C8 subclass: #C10
	instanceVariableNames: 'gamePoints'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'C10 class' category: #Task3!
C10 class
	instanceVariableNames: ''!

!classDefinition: #C9 category: #Task3!
C8 subclass: #C9
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'C9 class' category: #Task3!
C9 class
	instanceVariableNames: ''!

!classDefinition: #C5 category: #Task3!
TestCase subclass: #C5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'C5 class' category: #Task3!
C5 class
	instanceVariableNames: ''!

!classDefinition: #C7 category: #Task3!
TestCase subclass: #C7
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'C7 class' category: #Task3!
C7 class
	instanceVariableNames: ''!


!C1 methodsFor: 'adding' stamp: 'HAW 16/Sep/2026, 12:22:18 am (UTC)'!
add: aPortableElement

	self assertCanCarryWeightOf: aPortableElement.
	self assertCanCarryGamePointsOf: aPortableElement.
	
	elements add: aPortableElement! !

!C1 methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:22:18 am (UTC)'!
assertCanCarryGamePointsOf: aPortableElement

	self m6 + aPortableElement gamePoints > maximumGamePoints
		ifTrue: [ self error: self class m11 ]! !

!C1 methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:22:18 am (UTC)'!
assertCanCarryWeightOf: aPortableElement

	self m7 + aPortableElement weight > (maximumWeight + aPortableElement toleratedWeightExcess)
		ifTrue: [ self error: self class m12 ]! !

!C1 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:24:50 am (UTC)'!
isEmpty

	^ elements isEmpty! !

!C1 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:22:18 am (UTC)'!
m6

	^ self totalOf: [ :aPortableElement | aPortableElement gamePoints ]! !

!C1 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:22:18 am (UTC)'!
m7

	^ self totalOf: [ :aPortableElement | aPortableElement weight ]! !

!C1 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:24:50 am (UTC)'!
size

	^ elements size! !

!C1 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:22:18 am (UTC)'!
totalOf: aQuantityBlock

	^ elements sum: aQuantityBlock ifEmpty: [ 0 ]! !

!C1 methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:24:50 am (UTC)'!
initializeMaximumWeight: aMaximumWeight maximumGamePoints: aMaximumGamePoints

	maximumWeight := aMaximumWeight.
	maximumGamePoints := aMaximumGamePoints.
	elements := OrderedCollection new! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:22:18 am (UTC)'!
m8: aMaximumWeight a8: aMaximumGamePoints

	self assertIsValidMaximumWeight: aMaximumWeight.
	self assertIsValidMaximumGamePoints: aMaximumGamePoints.
	
	^ self new 
		initializeMaximumWeight: aMaximumWeight 
		maximumGamePoints: aMaximumGamePoints! !

!C1 class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:22:18 am (UTC)'!
assertIsValidMaximumGamePoints: aMaximumGamePoints

	aMaximumGamePoints strictlyPositive ifFalse: [ self error: self m9 ].
	aMaximumGamePoints isInteger ifFalse: [ self error: self m13 ]! !

!C1 class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:22:18 am (UTC)'!
assertIsValidMaximumWeight: aMaximumWeight

	aMaximumWeight strictlyPositive ifFalse: [ self error: self m10 ].
	aMaximumWeight isInteger ifFalse: [ self error: self m18 ]! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:43 pm (UTC)'!
m10

	^ 'S1'! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m11

	^ 'S2'! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m12

	^ 'S3'! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m13

	^ 'S4'! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m18

	^ 'S5'! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m9

	^ 'S6'! !

!C2 methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
close

	self subclassResponsibility! !

!C2 methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
open

	self subclassResponsibility! !

!C2 methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
openWith: aKey

	self subclassResponsibility! !

!C2 methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
use

	self subclassResponsibility! !

!C2 methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
isOpen

	self subclassResponsibility! !

!ClosedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
close

	self error: C6 m38! !

!ClosedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
open

	^ OpenDoorState new! !

!ClosedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
openWith: aKey

	self error: C6 m44! !

!ClosedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
use

	^ self open! !

!ClosedDoorState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
isOpen

	^ false! !

!LockedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
close

	self error: C6 m38! !

!LockedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
open

	self error: C6 m42! !

!LockedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
openWith: aKey

	^ key = aKey
		ifTrue: [ OpenDoorState new ]
		ifFalse: [ self error: C6 m45 ]! !

!LockedDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
use

	^ self open! !

!LockedDoorState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
isOpen

	^ false! !

!LockedDoorState methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
initializeOpenableWith: aKey

	key := aKey! !

!LockedDoorState class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
openableWith: aKey

	^ self new initializeOpenableWith: aKey! !

!OpenDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
close

	^ ClosedDoorState new! !

!OpenDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
open

	self error: C6 m39! !

!OpenDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
openWith: aKey

	self error: C6 m39! !

!OpenDoorState methodsFor: 'state transitions' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
use

	^ self close! !

!OpenDoorState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:23:06 am (UTC)'!
isOpen

	^ true! !

!C3 methodsFor: 'scene interactions' stamp: 'HAW 16/Sep/2026, 12:24:37 am (UTC)'!
m25: aSceneElement

	aSceneElement m31: self.! !

!C3 methodsFor: 'scene interactions' stamp: 'HAW 16/Sep/2026, 12:24:37 am (UTC)'!
m27: aSceneElement

	aSceneElement m32: self.! !

!C3 methodsFor: 'scene interactions' stamp: 'HAW 16/Sep/2026, 12:24:37 am (UTC)'!
m28: aPortableElement

	backpack add: aPortableElement.! !

!C3 methodsFor: 'scene interactions' stamp: 'HAW 16/Sep/2026, 12:24:37 am (UTC)'!
m29: aSceneElement

	aSceneElement m34: self.! !

!C3 methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:24:50 am (UTC)'!
initializeName: aName backpack: aBackpack

	name := aName.
	backpack := aBackpack! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:24:50 am (UTC)'!
m30: aName a30: aBackpack

	^ self new initializeName: aName backpack: aBackpack! !

!C4 methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:24:36 am (UTC)'!
m31: aPlayableCharacter

	self subclassResponsibility! !

!C4 methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:24:36 am (UTC)'!
m32: aPlayableCharacter

	self subclassResponsibility! !

!C4 methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:24:36 am (UTC)'!
m33: aPlayableCharacter a33: aPortableElement

	self subclassResponsibility! !

!C4 methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:24:36 am (UTC)'!
m34: aPlayableCharacter

	self subclassResponsibility! !

!C6 methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:23:21 am (UTC)'!
m31: aPlayableCharacter

	state := state close! !

!C6 methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:23:21 am (UTC)'!
m32: aPlayableCharacter

	state := state open! !

!C6 methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:23:21 am (UTC)'!
m33: aPlayableCharacter a33: aKey

	state := state openWith: aKey! !

!C6 methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:23:21 am (UTC)'!
m34: aPlayableCharacter

	state := state use! !

!C6 methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:23:21 am (UTC)'!
m37

	^ state isOpen! !

!C6 methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:23:21 am (UTC)'!
initializeWith: aDoorState

	state := aDoorState! !

!C6 class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:23:21 am (UTC)'!
m40

	^ self withState: ClosedDoorState new! !

!C6 class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:23:21 am (UTC)'!
m41: aKey

	^ self withState: (LockedDoorState openableWith: aKey)! !

!C6 class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:23:21 am (UTC)'!
m46

	^ self withState: OpenDoorState new! !

!C6 class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:23:21 am (UTC)'!
withState: aDoorState

	^ self new initializeWith: aDoorState! !

!C6 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:48 pm (UTC)'!
m38

	^ 'S11'! !

!C6 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
m39

	^ 'S12'! !

!C6 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
m42

	^ 'S13'! !

!C6 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
m43

	^ 'S14'! !

!C6 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
m44

	^ 'S15'! !

!C6 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
m45

	^ 'S16'! !

!C8 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:22:24 am (UTC)'!
gamePoints

	self subclassResponsibility! !

!C8 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:22:24 am (UTC)'!
toleratedWeightExcess

	self subclassResponsibility! !

!C8 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:21:34 am (UTC)'!
weight

	^ weight! !

!C8 methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:22:24 am (UTC)'!
m31: aPlayableCharacter

	! !

!C8 methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:22:24 am (UTC)'!
m32: aPlayableCharacter

	! !

!C8 methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:22:24 am (UTC)'!
m33: aPlayableCharacter a33: aPortableElement

	! !

!C8 methodsFor: 'playable character reactions' stamp: 'HAW 16/Sep/2026, 12:22:24 am (UTC)'!
m34: aPlayableCharacter

	! !

!C10 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:21:36 am (UTC)'!
gamePoints

	^ gamePoints! !

!C10 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:22:24 am (UTC)'!
toleratedWeightExcess

	^ 5! !

!C10 methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:24:50 am (UTC)'!
initializeName: aName weight: aWeight gamePoints: aGamePointsAmount

	name := aName.
	weight := aWeight.
	gamePoints := aGamePointsAmount! !

!C10 class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:24:51 am (UTC)'!
m54: aName a54: aWeight b54: aGamePointsAmount

	^ self new initializeName: aName weight: aWeight gamePoints: aGamePointsAmount! !

!C9 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:22:24 am (UTC)'!
gamePoints

	^ 0! !

!C9 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:22:24 am (UTC)'!
toleratedWeightExcess

	^ 0! !

!C9 methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:24:50 am (UTC)'!
initializeName: aName weight: aWeight

	name := aName.
	weight := aWeight! !

!C9 class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:24:50 am (UTC)'!
m51: aName a51: aWeight

	^ self new initializeName: aName weight: aWeight! !

!C5 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:46 pm (UTC)'!
test01

	self
		should: [ C1 m8: 0 a8: 100 ]
		raise: Error
		withMessageText: C1 m10.
! !

!C5 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:46 pm (UTC)'!
test02

	self
		should: [ C1 m8: -1 a8: 100 ]
		raise: Error
		withMessageText: C1 m10.! !

!C5 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:46 pm (UTC)'!
test03

	self
		should: [ C1 m8: 10 a8: 0 ]
		raise: Error
		withMessageText: C1 m9.
! !

!C5 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:46 pm (UTC)'!
test04

	self
		should: [ C1 m8: 10 a8: -1 ]
		raise: Error
		withMessageText: C1 m9.! !

!C5 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:47 pm (UTC)'!
test05

	self
		should: [ C1 m8: 1.0 a8: 100 ]
		raise: Error
		withMessageText: C1 m18.
! !

!C5 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:47 pm (UTC)'!
test06

	self
		should: [ C1 m8: 100 a8: 1.0 ]
		raise: Error
		withMessageText: C1 m13.
! !

!C5 methodsFor: 'x' stamp: 'HAW 16/Sep/2026, 12:23:53 am (UTC)'!
test07

	self assertIsTooHeavyToBeAddedToAnEmptyBackpack: (C9 m51: 'S7' a51: self maximumWeight + 1)! !

!C5 methodsFor: 'x' stamp: 'HAW 16/Sep/2026, 12:23:53 am (UTC)'!
test08

	self 
		assertIsTooHeavyToBeAddedToAnEmptyBackpack: (C10 m54: 'S8' a54: self maximumWeight + 6 b54: 5)! !

!C5 methodsFor: 'x' stamp: 'HAW 16/Sep/2026, 12:23:53 am (UTC)'!
test09

	| backpack |
	backpack := self backpackWithOneElementWithGamePointsAndOneWithout.

	self assert: backpack size equals: 2.
	self assert: backpack m7 equals: 41.
	self assert: backpack m6 equals: 5.! !

!C5 methodsFor: 'x' stamp: 'HAW 16/Sep/2026, 12:23:53 am (UTC)'!
test10

	| backpack |
	backpack := self backpackWithOneElementWithGamePointsAndOneWithout.

	backpack add: (C10 m54: 'S9' a54: 1 b54: 5).
	
	self assert: backpack size equals: 3.
	self assert: backpack m7 equals: 42.
	self assert: backpack m6 equals: 10.! !

!C5 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:47 pm (UTC)'!
test11

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	self assert: t1 m7 equals: 0.
	self assert: t1 isEmpty
! !

!C5 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:47 pm (UTC)'!
test12

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	t1 add: (C10 m54: 'S8' a54: 10 b54: 5).
	t1 add: (C9 m51: 'S7' a51: 10).
	
	self assert: t1 size equals: 2.
	self assert: t1 m7 equals: 20.

! !

!C5 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:47 pm (UTC)'!
test13

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	self assert: t1 m6 equals: 0.
	self assert: t1 isEmpty.
! !

!C5 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:47 pm (UTC)'!
test14

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	t1 add: (C10 m54: 'S8' a54: 10 b54: 5).
	t1 add: (C10 m54: 'S10' a54: 10 b54: 20).
	
	self assert: t1 size equals: 2.
	self assert: t1 m6 equals: 25.

! !

!C5 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:48 pm (UTC)'!
test15

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	t1 add: (C10 m54: 'S8' a54: 10 b54: 5).
	t1 add: (C9 m51: 'S7' a51: 10).
	t1 add: (C9 m51: 'S7' a51: 10).
	
	self assert: t1 size equals: 3.
	self assert: t1 m6 equals: 5.

! !

!C5 methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:23:53 am (UTC)'!
assertIsTooHeavyToBeAddedToAnEmptyBackpack: aPortableElement

	| backpack |
	backpack := self emptyBackpack.

	self
		should: [ backpack add: aPortableElement ]
		raise: Error
		withMessageText: C1 m12.
		
	self assert: backpack isEmpty! !

!C5 methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:23:53 am (UTC)'!
backpackWithOneElementWithGamePointsAndOneWithout

	| backpack |
	backpack := self emptyBackpack.
	
	backpack add: (C10 m54: 'S8' a54: 40 b54: 5).
	backpack add: (C9 m51: 'S7' a51: 1).
	
	^ backpack! !

!C5 methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:23:53 am (UTC)'!
emptyBackpack

	^ C1 m8: self maximumWeight a8: self maximumGamePoints! !

!C5 methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:23:53 am (UTC)'!
maximumGamePoints

	^ 100! !

!C5 methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:23:53 am (UTC)'!
maximumWeight

	^ 42! !

!C7 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
test16
	
	| t1 t2 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m46.
	
	self 
		should: [ t2 m32: t1 ]
		raise: Error
		withMessageText: C6 m39.
		
	self assert: t2 m37.! !

!C7 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
test17
	
	| t1 t2 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m46.
	
	self assert: t2 m37.
	t2 m31: t1.
	self deny: t2 m37.
	! !

!C7 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
test18
	
	| t1 t2 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m40.
	
	self 
		should: [ t2 m31: t1 ]
		raise: Error
		withMessageText: C6 m38.
		
	self deny: t2 m37! !

!C7 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
test19
	
	| t1 t2 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m40.
	
	self deny: t2 m37.
	t2 m32: t1.
	self assert: t2 m37.! !

!C7 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:50 pm (UTC)'!
test20
	
	| t1 t2 t3 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m40.
	t3 := (C10 m54: 'S18' a54: 2 b54: 1000).
	
	self 
		should: [ t2 m33: t1 a33: t3 ]
		raise: Error
		withMessageText: C6 m44.
		
	self deny: t2 m37.! !

!C7 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:50 pm (UTC)'!
test21
	
	| t1 t2 t3 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t3 := (C10 m54: 'S18' a54: 2 b54: 1000).
	t2 := C6 m41: t3.
	
	self 
		should: [ t2 m31: t1 ]
		raise: Error
		withMessageText: C6 m38.
		
	self deny: t2 m37! !

!C7 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:50 pm (UTC)'!
test22
	
	| t1 t2 t3 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t3 := (C10 m54: 'S18' a54: 2 b54: 1000).
	t2 := C6 m41: t3.
	
	self 
		should: [ t2 m32: t1 ]
		raise: Error
		withMessageText: C6 m42.
		
	self deny: t2 m37! !

!C7 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:50 pm (UTC)'!
test23
	
	| t1 t2 t3 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t3 := (C10 m54: 'S18' a54: 2 b54: 1000).
	t2 := C6 m41: t3.
	
	self 
		should: [ t2 m33: t1 a33: (C10 m54: 'S10' a54: 2 b54: 1000) ]
		raise: Error
		withMessageText: C6 m45.
		
	self deny: t2 m37 ! !

!C7 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:50 pm (UTC)'!
test24
	
	| t1 t2 t3 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t3 := (C10 m54: 'S18' a54: 2 b54: 1000).
	t2 := C6 m41: t3.
	
	self deny: t2 m37.
	t2 m33: t1 a33: t3.
	self assert: t2 m37! !

!C7 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:50 pm (UTC)'!
test25
	
	| t1 t2 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m40.
	
	self deny: t2 m37.
	t2 m34: t1.	
	self assert: t2 m37 ! !

!C7 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:50 pm (UTC)'!
test26
	
	| t1 t2 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m46.
	
	self assert: t2 m37.
	t2 m34: t1.	
	self deny: t2 m37.! !

!C7 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:50 pm (UTC)'!
test27
	
	| t1 t2 t3 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t3 := (C10 m54: 'S18' a54: 2 b54: 1000).
	t2 := C6 m41: t3.
	
	self 
		should: [ t2 m34: t1 ]
		raise: Error
		withMessageText: C6 m42.
		
	self deny: t2 m37! !
