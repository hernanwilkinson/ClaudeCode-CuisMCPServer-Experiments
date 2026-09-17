'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:46:54 am'!
'Description '!
!provides: 'Task3' 1 2!
SystemOrganization addCategory: #Task3!
SystemOrganization addCategory: #'Task3-Tests'!


!classDefinition: #C1 category: #Task3!
Object subclass: #C1
	instanceVariableNames: 'v1 v2 v3'
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
	instanceVariableNames: 'v5 v6'
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
	instanceVariableNames: 'v7'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'C6 class' category: #Task3!
C6 class
	instanceVariableNames: ''!

!classDefinition: #C8 category: #Task3!
C4 subclass: #C8
	instanceVariableNames: 'v9 v10'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3'!
!classDefinition: 'C8 class' category: #Task3!
C8 class
	instanceVariableNames: ''!

!classDefinition: #C10 category: #Task3!
C8 subclass: #C10
	instanceVariableNames: 'v11'
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

!classDefinition: #C5 category: #'Task3-Tests'!
TestCase subclass: #C5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3-Tests'!
!classDefinition: 'C5 class' category: #'Task3-Tests'!
C5 class
	instanceVariableNames: ''!

!classDefinition: #C7 category: #'Task3-Tests'!
TestCase subclass: #C7
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task3-Tests'!
!classDefinition: 'C7 class' category: #'Task3-Tests'!
C7 class
	instanceVariableNames: ''!


!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:40 am (UTC)'!
isEmpty

	^ v3 isEmpty.! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:40 am (UTC)'!
m1: t1

	(self m6 + t1 m53) > v2 ifTrue: [ self m4 ]! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:40 am (UTC)'!
m2: t1 a2: t2

	(self m7 + t1 m49 - v1) > t2 ifTrue: [ self m5 ]! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:41 am (UTC)'!
m3: t1 a3: t2

	v1 := t1.
	v2 := t2.
	
	v3 := OrderedCollection new.

	! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:41 am (UTC)'!
m4

	self error: self class m11 ! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:41 am (UTC)'!
m5

	self error: self class m12 ! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:41 am (UTC)'!
size

	^ v3 size.! !

!C1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:46:10 am (UTC)'!
m6

	^ self sumOf: [ :anItem | anItem addedGamePoints ]! !

!C1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:46:10 am (UTC)'!
m7

	^ self sumOf: [ :anItem | anItem m49 ]! !

!C1 methodsFor: 'accessing - private' stamp: 'HAW 17/Sep/2026, 9:46:10 am (UTC)'!
sumOf: aValueOfItemBlock

	^ v3 inject: 0 into: [ :total :anItem | total + (aValueOfItemBlock value: anItem) ]! !

!C1 methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 9:46:10 am (UTC)'!
add: anItem

	anItem assertCanBeAddedTo: self.
	v3 add: anItem! !

!C1 methodsFor: 'adding - private' stamp: 'HAW 17/Sep/2026, 9:46:10 am (UTC)'!
assertCanCarryItemWithGamePoints: anItem

	self m2: anItem a2: 5.
	self m1: anItem! !

!C1 methodsFor: 'adding - private' stamp: 'HAW 17/Sep/2026, 9:46:10 am (UTC)'!
assertCanCarryItemWithoutGamePoints: anItem

	self m2: anItem a2: 0! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:41 am (UTC)'!
m10

	^ 'S1'! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:41 am (UTC)'!
m11

	^ 'S2'! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:41 am (UTC)'!
m12

	^ 'S3'! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:41 am (UTC)'!
m13

	^ 'S4'! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:41 am (UTC)'!
m14

	self error: self m9 
! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:42 am (UTC)'!
m15

	self error: self m10 
! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:42 am (UTC)'!
m16

	self error: self m13
! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:42 am (UTC)'!
m17

	self error: self m18
! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:42 am (UTC)'!
m18

	^ 'S5'! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:42 am (UTC)'!
m8: t1 a8: t2

	t1 strictlyPositive  ifFalse: [ self m15 ].
	t2 strictlyPositive ifFalse: [ self m14 ].
	
	t1 isInteger ifFalse: [ self m17 ].
	t2 isInteger ifFalse: [ self m16 ].
	
	^ self new m3: t1 a3: t2.
! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:42 am (UTC)'!
m9

	^ 'S6'! !

!C2 methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
close

	self subclassResponsibility! !

!C2 methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
open

	self subclassResponsibility! !

!C2 methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
unlockWith: aKey

	self subclassResponsibility! !

!C2 methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
use

	self subclassResponsibility! !

!C2 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
isOpen

	self subclassResponsibility! !

!ClosedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
close

	self error: C6 m38! !

!ClosedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
open

	^ OpenDoorState new! !

!ClosedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
unlockWith: aKey

	self error: C6 m44! !

!ClosedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
use

	^ self open! !

!ClosedDoorState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
isOpen

	^ false! !

!LockedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
close

	self error: C6 m38! !

!LockedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
open

	self error: C6 m42! !

!LockedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
unlockWith: aKey

	aKey = key ifFalse: [ self error: C6 m45 ].
	^ OpenDoorState new! !

!LockedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
use

	^ self open! !

!LockedDoorState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
isOpen

	^ false! !

!LockedDoorState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
initializeLockedWith: aKey

	key := aKey! !

!LockedDoorState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
lockedWith: aKey

	^ self new initializeLockedWith: aKey! !

!OpenDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
close

	^ ClosedDoorState new! !

!OpenDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
open

	self error: C6 m39! !

!OpenDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
unlockWith: aKey

	self error: C6 m39! !

!OpenDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
use

	^ self close! !

!OpenDoorState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:46:23 am (UTC)'!
isOpen

	^ true! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:43 am (UTC)'!
m25: t1

	t1 m31: self.! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:43 am (UTC)'!
m26: t1 a26: t2

	v5 := t1.
	v6 := t2.! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:43 am (UTC)'!
m27: t1

	t1 m32: self.! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:43 am (UTC)'!
m28: t1

	v6 add: t1.! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:43 am (UTC)'!
m29: t1

	t1 m34: self.! !

!C3 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:43 am (UTC)'!
m30: t1 a30: t2

	^ self new m26: t1 a26: t2! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:43 am (UTC)'!
m31: t1

	self subclassResponsibility! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:43 am (UTC)'!
m32: t1

	self subclassResponsibility! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:44 am (UTC)'!
m33: t1 a33: t2

	self subclassResponsibility! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:44 am (UTC)'!
m34: t1

	self subclassResponsibility! !

!C6 methodsFor: 'playable character reactions' stamp: 'HAW 17/Sep/2026, 9:46:29 am (UTC)'!
m31: t1

	v7 := v7 close! !

!C6 methodsFor: 'playable character reactions' stamp: 'HAW 17/Sep/2026, 9:46:29 am (UTC)'!
m32: t1

	v7 := v7 open! !

!C6 methodsFor: 'playable character reactions' stamp: 'HAW 17/Sep/2026, 9:46:29 am (UTC)'!
m33: t1 a33: t2

	v7 := v7 unlockWith: t2! !

!C6 methodsFor: 'playable character reactions' stamp: 'HAW 17/Sep/2026, 9:46:29 am (UTC)'!
m34: t1

	v7 := v7 use! !

!C6 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:46:29 am (UTC)'!
m37

	^ v7 isOpen! !

!C6 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:46:29 am (UTC)'!
initializeIn: aState

	v7 := aState! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m38

	^ 'S11'! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m39

	^ 'S12'! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m42

	^ 'S13'! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m43

	^ 'S14'! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m44

	^ 'S15'! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m45

	^ 'S16'! !

!C6 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:46:29 am (UTC)'!
in: aState

	^ self new initializeIn: aState! !

!C6 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:46:29 am (UTC)'!
m40

	^ self in: ClosedDoorState new! !

!C6 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:46:29 am (UTC)'!
m41: t1

	^ self in: (LockedDoorState lockedWith: t1)! !

!C6 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:46:29 am (UTC)'!
m46

	^ self in: OpenDoorState new! !

!C8 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:48 am (UTC)'!
m31: t1

	self subclassResponsibility! !

!C8 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:48 am (UTC)'!
m32: t1

	self subclassResponsibility! !

!C8 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:48 am (UTC)'!
m33: t1 a33: t2

	self subclassResponsibility! !

!C8 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:48 am (UTC)'!
m34: t1

	self subclassResponsibility! !

!C8 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:48 am (UTC)'!
m47: t1

	self subclassResponsibility	! !

!C8 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:48 am (UTC)'!
m48

	self subclassResponsibility	! !

!C8 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:48 am (UTC)'!
m49

	^ v10! !

!C8 methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 9:46:10 am (UTC)'!
assertCanBeAddedTo: aBackpack

	self subclassResponsibility! !

!C8 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:46:10 am (UTC)'!
addedGamePoints

	self subclassResponsibility! !

!C10 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:49 am (UTC)'!
m31: t1

	! !

!C10 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:49 am (UTC)'!
m32: t1

	! !

!C10 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:49 am (UTC)'!
m33: t1 a33: t2

	! !

!C10 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:49 am (UTC)'!
m34: t1

	! !

!C10 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:50 am (UTC)'!
m48

	^ true! !

!C10 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:50 am (UTC)'!
m52: t1 a52: t2 b52: t3
	
	v9 := t1.
	v10 := t2.
	v11 := t3.! !

!C10 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:50 am (UTC)'!
m53

	^ v11! !

!C10 methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 9:46:10 am (UTC)'!
assertCanBeAddedTo: aBackpack

	aBackpack assertCanCarryItemWithGamePoints: self! !

!C10 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:46:10 am (UTC)'!
addedGamePoints

	^ v11! !

!C10 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:50 am (UTC)'!
m54: t1 a54: t2 b54: t3
	
	^ self new m52: t1 a52: t2 b52: t3.! !

!C9 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:49 am (UTC)'!
m31: t1

	! !

!C9 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:49 am (UTC)'!
m32: t1

	! !

!C9 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:49 am (UTC)'!
m33: t1 a33: t2

	! !

!C9 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:49 am (UTC)'!
m34: t1

	! !

!C9 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:49 am (UTC)'!
m48	

	^ false! !

!C9 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:49 am (UTC)'!
m50: t1 a50: t2
	
	v9 := t1.
	v10 := t2.! !

!C9 methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 9:46:10 am (UTC)'!
assertCanBeAddedTo: aBackpack

	aBackpack assertCanCarryItemWithoutGamePoints: self! !

!C9 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:46:10 am (UTC)'!
addedGamePoints

	^ 0! !

!C9 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:49 am (UTC)'!
m51: t1 a51: t2
	
	^ self new m50: t1 a50: t2. ! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:44 am (UTC)'!
test01

	self
		should: [ C1 m8: 0 a8: 100 ]
		raise: Error
		withMessageText: C1 m10.
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:44 am (UTC)'!
test02

	self
		should: [ C1 m8: -1 a8: 100 ]
		raise: Error
		withMessageText: C1 m10.! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:44 am (UTC)'!
test03

	self
		should: [ C1 m8: 10 a8: 0 ]
		raise: Error
		withMessageText: C1 m9.
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:44 am (UTC)'!
test04

	self
		should: [ C1 m8: 10 a8: -1 ]
		raise: Error
		withMessageText: C1 m9.! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:44 am (UTC)'!
test05

	self
		should: [ C1 m8: 1.0 a8: 100 ]
		raise: Error
		withMessageText: C1 m18.
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:44 am (UTC)'!
test06

	self
		should: [ C1 m8: 100 a8: 1.0 ]
		raise: Error
		withMessageText: C1 m13.
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:46:38 am (UTC)'!
test07

	self assertAddingExceedsMaximumWeight: (C9 m51: 'S7' a51: 42 + 1)! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:46:38 am (UTC)'!
test08

	self assertAddingExceedsMaximumWeight: (C10 m54: 'S8' a54: 42 + 6 b54: 5)! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:46:38 am (UTC)'!
test09

	| t1 |
	t1 := self backpackWithAnItemAddingGamePointsAndAnotherNot.
	
	self assert: t1 size equals: 2.
	self assert: t1 m7 equals: 41.
	self assert: t1 m6 equals: 5.
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:46:38 am (UTC)'!
test10

	| t1 |
	t1 := self backpackWithAnItemAddingGamePointsAndAnotherNot.
	t1 add: (C10 m54: 'S9' a54: 1 b54: 5).
	
	self assert: t1 size equals: 3.
	self assert: t1 m7 equals: 42.
	self assert: t1 m6 equals: 10.
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:45 am (UTC)'!
test11

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	self assert: t1 m7 equals: 0.
	self assert: t1 isEmpty
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:45 am (UTC)'!
test12

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	t1 add: (C10 m54: 'S8' a54: 10 b54: 5).
	t1 add: (C9 m51: 'S7' a51: 10).
	
	self assert: t1 size equals: 2.
	self assert: t1 m7 equals: 20.

! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:45 am (UTC)'!
test13

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	self assert: t1 m6 equals: 0.
	self assert: t1 isEmpty.
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:45 am (UTC)'!
test14

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	t1 add: (C10 m54: 'S8' a54: 10 b54: 5).
	t1 add: (C10 m54: 'S10' a54: 10 b54: 20).
	
	self assert: t1 size equals: 2.
	self assert: t1 m6 equals: 25.

! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:45 am (UTC)'!
test15

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	t1 add: (C10 m54: 'S8' a54: 10 b54: 5).
	t1 add: (C9 m51: 'S7' a51: 10).
	t1 add: (C9 m51: 'S7' a51: 10).
	
	self assert: t1 size equals: 3.
	self assert: t1 m6 equals: 5.

! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:46:38 am (UTC)'!
assertAddingExceedsMaximumWeight: anItem

	| backpack |
	backpack := self emptyBackpack.

	self
		should: [ backpack add: anItem ]
		raise: Error
		withMessageText: C1 m12.
		
	self assert: backpack isEmpty! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:46:38 am (UTC)'!
backpackWithAnItemAddingGamePointsAndAnotherNot

	| backpack |
	backpack := self emptyBackpack.

	backpack add: (C10 m54: 'S8' a54: 40 b54: 5).
	backpack add: (C9 m51: 'S7' a51: 1).
	
	^ backpack! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:46:38 am (UTC)'!
emptyBackpack

	^ C1 m8: 42 a8: 100! !

!C7 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:47 am (UTC)'!
test16
	
	| t1 t2 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m46.
	
	self 
		should: [ t2 m32: t1 ]
		raise: Error
		withMessageText: C6 m39.
		
	self assert: t2 m37.! !

!C7 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:47 am (UTC)'!
test17
	
	| t1 t2 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m46.
	
	self assert: t2 m37.
	t2 m31: t1.
	self deny: t2 m37.
	! !

!C7 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:47 am (UTC)'!
test18
	
	| t1 t2 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m40.
	
	self 
		should: [ t2 m31: t1 ]
		raise: Error
		withMessageText: C6 m38.
		
	self deny: t2 m37! !

!C7 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:47 am (UTC)'!
test19
	
	| t1 t2 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m40.
	
	self deny: t2 m37.
	t2 m32: t1.
	self assert: t2 m37.! !

!C7 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:47 am (UTC)'!
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

!C7 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:47 am (UTC)'!
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

!C7 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:47 am (UTC)'!
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

!C7 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:47 am (UTC)'!
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

!C7 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:47 am (UTC)'!
test24
	
	| t1 t2 t3 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t3 := (C10 m54: 'S18' a54: 2 b54: 1000).
	t2 := C6 m41: t3.
	
	self deny: t2 m37.
	t2 m33: t1 a33: t3.
	self assert: t2 m37! !

!C7 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:47 am (UTC)'!
test25
	
	| t1 t2 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m40.
	
	self deny: t2 m37.
	t2 m34: t1.	
	self assert: t2 m37 ! !

!C7 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:48 am (UTC)'!
test26
	
	| t1 t2 |
	
	t1 := C3 m30: 'S17' a30: (C1 m8: 100 a8: 100).
	t2 := C6 m46.
	
	self assert: t2 m37.
	t2 m34: t1.	
	self deny: t2 m37.! !

!C7 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:48 am (UTC)'!
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
