'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:01:42 am'!
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


!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:43 pm (UTC)'!
m1: t1

	(self m6 + t1 m53) > v2 ifTrue: [ self m4 ]! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:43 pm (UTC)'!
m2: t1 a2: t2

	(self m7 + t1 m49 - v1) > t2 ifTrue: [ self m5 ]! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:43 pm (UTC)'!
m3: t1 a3: t2

	v1 := t1.
	v2 := t2.
	
	v3 := OrderedCollection new.

	! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:43 pm (UTC)'!
m4

	self error: self class m11 ! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:43 pm (UTC)'!
m5

	self error: self class m12 ! !

!C1 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:43 pm (UTC)'!
isEmpty

	^ v3 isEmpty.! !

!C1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
m6

	^self sumOf: [ :anItem | anItem m53 ]! !

!C1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
m7

	^self sumOf: [ :anItem | anItem m49 ]! !

!C1 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:43 pm (UTC)'!
size

	^ v3 size.! !

!C1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
sumOf: aValueOfItem

	^v3 sum: aValueOfItem ifEmpty: [ 0 ]! !

!C1 methodsFor: 'adding' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
add: anItem

	self m2: anItem a2: anItem allowedOverweight.
	self m1: anItem.
	v3 add: anItem! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:43 pm (UTC)'!
m10

	^ 'S1'! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m11

	^ 'S2'! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m12

	^ 'S3'! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m13

	^ 'S4'! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m14

	self error: self m9 
! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m15

	self error: self m10 
! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m16

	self error: self m13
! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m17

	self error: self m18
! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m18

	^ 'S5'! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m8: t1 a8: t2

	t1 strictlyPositive  ifFalse: [ self m15 ].
	t2 strictlyPositive ifFalse: [ self m14 ].
	
	t1 isInteger ifFalse: [ self m17 ].
	t2 isInteger ifFalse: [ self m16 ].
	
	^ self new m3: t1 a3: t2.
! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m9

	^ 'S6'! !

!C2 methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m19

	self subclassResponsibility! !

!C2 methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m22

	self subclassResponsibility! !

!C2 methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m23: aKey

	self subclassResponsibility! !

!C2 methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
toggle

	self subclassResponsibility! !

!C2 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m37

	self subclassResponsibility! !

!ClosedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m19

	^self error: C6 m38! !

!ClosedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m22

	^OpenDoorState new! !

!ClosedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m23: aKey

	^self error: C6 m44! !

!ClosedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
toggle

	^self m22! !

!ClosedDoorState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m37

	^false! !

!LockedDoorState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
initializeOpenedWith: aKey

	key := aKey! !

!LockedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m19

	^self error: C6 m38! !

!LockedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m22

	^self error: C6 m42! !

!LockedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m23: aKey

	self assertIsOpenedWith: aKey.
	^OpenDoorState new! !

!LockedDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
toggle

	^self m22! !

!LockedDoorState methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
assertIsOpenedWith: aKey

	key = aKey ifFalse: [ self error: C6 m45 ]! !

!LockedDoorState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m37

	^false! !

!LockedDoorState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
openedWith: aKey

	^self new initializeOpenedWith: aKey! !

!OpenDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m19

	^ClosedDoorState new! !

!OpenDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m22

	^self error: C6 m39! !

!OpenDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m23: aKey

	^self error: C6 m39! !

!OpenDoorState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
toggle

	^self m19! !

!OpenDoorState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m37

	^true! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:45 pm (UTC)'!
m25: t1

	t1 m31: self.! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:45 pm (UTC)'!
m26: t1 a26: t2

	v5 := t1.
	v6 := t2.! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:45 pm (UTC)'!
m27: t1

	t1 m32: self.! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:45 pm (UTC)'!
m28: t1

	v6 add: t1.! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:45 pm (UTC)'!
m29: t1

	t1 m34: self.! !

!C3 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:45 pm (UTC)'!
m30: t1 a30: t2

	^ self new m26: t1 a26: t2! !

!C4 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:46 pm (UTC)'!
m31: t1

	self subclassResponsibility! !

!C4 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:46 pm (UTC)'!
m32: t1

	self subclassResponsibility! !

!C4 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:46 pm (UTC)'!
m33: t1 a33: t2

	self subclassResponsibility! !

!C4 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:46 pm (UTC)'!
m34: t1

	self subclassResponsibility! !

!C6 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
initializeWithState: aState

	v7 := aState! !

!C6 methodsFor: 'playable character reactions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m31: aCharacter

	v7 := v7 m19! !

!C6 methodsFor: 'playable character reactions' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m32: aCharacter

	v7 := v7 m22! !

!C6 methodsFor: 'playable character reactions' stamp: 'HAW 17/Sep/2026, 10:01:13 am (UTC)'!
m33: aCharacter a33: aKey

	v7 := v7 m23: aKey! !

!C6 methodsFor: 'playable character reactions' stamp: 'HAW 17/Sep/2026, 10:01:13 am (UTC)'!
m34: aCharacter

	v7 := v7 toggle! !

!C6 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:01:13 am (UTC)'!
m37

	^v7 m37! !

!C6 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:48 pm (UTC)'!
m38

	^ 'S11'! !

!C6 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
m39

	^ 'S12'! !

!C6 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
m42

	^ 'S13'! !

!C6 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
m43

	^ 'S14'! !

!C6 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
m44

	^ 'S15'! !

!C6 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
m45

	^ 'S16'! !

!C6 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m40

	^self withState: ClosedDoorState new! !

!C6 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m41: aKey

	^self withState: (LockedDoorState openedWith: aKey)! !

!C6 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
m46

	^self withState: OpenDoorState new! !

!C6 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:01:12 am (UTC)'!
withState: aState

	^self new initializeWithState: aState! !

!C8 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:50 pm (UTC)'!
m31: t1

	self subclassResponsibility! !

!C8 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:50 pm (UTC)'!
m32: t1

	self subclassResponsibility! !

!C8 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:51 pm (UTC)'!
m33: t1 a33: t2

	self subclassResponsibility! !

!C8 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:51 pm (UTC)'!
m34: t1

	self subclassResponsibility! !

!C8 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:51 pm (UTC)'!
m47: t1

	self subclassResponsibility	! !

!C8 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:51 pm (UTC)'!
m49

	^ v10! !

!C8 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
allowedOverweight

	self subclassResponsibility! !

!C8 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
m53

	self subclassResponsibility! !

!C10 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:52 pm (UTC)'!
m31: t1

	! !

!C10 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:52 pm (UTC)'!
m32: t1

	! !

!C10 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:52 pm (UTC)'!
m33: t1 a33: t2

	! !

!C10 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:52 pm (UTC)'!
m34: t1

	! !

!C10 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:52 pm (UTC)'!
m52: t1 a52: t2 b52: t3
	
	v9 := t1.
	v10 := t2.
	v11 := t3.! !

!C10 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:52 pm (UTC)'!
m53

	^ v11! !

!C10 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
allowedOverweight

	^5! !

!C10 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:52 pm (UTC)'!
m54: t1 a54: t2 b54: t3
	
	^ self new m52: t1 a52: t2 b52: t3.! !

!C9 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:51 pm (UTC)'!
m31: t1

	! !

!C9 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:51 pm (UTC)'!
m32: t1

	! !

!C9 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:51 pm (UTC)'!
m33: t1 a33: t2

	! !

!C9 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:51 pm (UTC)'!
m34: t1

	! !

!C9 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:51 pm (UTC)'!
m50: t1 a50: t2
	
	v9 := t1.
	v10 := t2.! !

!C9 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
allowedOverweight

	^0! !

!C9 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
m53

	^0! !

!C9 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:52 pm (UTC)'!
m51: t1 a51: t2
	
	^ self new m50: t1 a50: t2. ! !

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

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
test07

	self assertAddingExceedsMaximumWeight: (C9 m51: 'S7' a51: 42 + 1)! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
test08

	self assertAddingExceedsMaximumWeight: (C10 m54: 'S8' a54: 42 + 6 b54: 5)! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
test09

	| backpack |
	backpack := self backpackWithPointsItemAndItemWithoutPoints.
	
	self assert: backpack size equals: 2.
	self assert: backpack m7 equals: 41.
	self assert: backpack m6 equals: 5.
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
test10

	| backpack |
	backpack := self backpackWithPointsItemAndItemWithoutPoints.

	backpack add: (C10 m54: 'S9' a54: 1 b54: 5).
	
	self assert: backpack size equals: 3.
	self assert: backpack m7 equals: 42.
	self assert: backpack m6 equals: 10.
! !

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

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
assertAddingExceedsMaximumWeight: anItem

	| backpack |
	backpack := self emptyBackpack.

	self
		should: [ backpack add: anItem ]
		raise: Error
		withMessageText: C1 m12.
		
	self assert: backpack isEmpty! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
backpackWithPointsItemAndItemWithoutPoints

	| backpack |
	backpack := self emptyBackpack.

	backpack add: (C10 m54: 'S8' a54: 40 b54: 5).
	backpack add: (C9 m51: 'S7' a51: 1).

	^backpack! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:01:25 am (UTC)'!
emptyBackpack

	^C1 m8: 42 a8: 100! !

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
