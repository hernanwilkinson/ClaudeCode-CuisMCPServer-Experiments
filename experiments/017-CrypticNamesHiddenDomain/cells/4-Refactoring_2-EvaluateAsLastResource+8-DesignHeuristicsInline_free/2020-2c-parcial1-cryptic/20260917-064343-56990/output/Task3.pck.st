'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:45:38 am'!
'Description '!
!provides: 'Task3' 1 2!
SystemOrganization addCategory: #Task3!


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
	instanceVariableNames: 'v4'
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


!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:44:59 am (UTC)'!
add: anElement

	self m2: anElement a2: anElement allowedOverweight.
	self m1: anElement.
	v3 add: anElement! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:43 pm (UTC)'!
isEmpty

	^ v3 isEmpty.! !

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

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:44:59 am (UTC)'!
m6

	^ self sumOf: [ :anElement | anElement m53 ]! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:44:59 am (UTC)'!
m7

	^ self sumOf: [ :anElement | anElement m49 ]! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:43 pm (UTC)'!
size

	^ v3 size.! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
sumOf: aValueOfElementBlock

	^ v3
		inject: 0
		into: [ :aTotal :anElement | aTotal + (aValueOfElementBlock value: anElement) ]! !

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

!C2 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:44 pm (UTC)'!
m19

	self subclassResponsibility! !

!C2 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:45 pm (UTC)'!
m20: t1

	v4 := t1! !

!C2 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:45 pm (UTC)'!
m22

	self subclassResponsibility! !

!C2 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:45 pm (UTC)'!
m23: t1

	self subclassResponsibility! !

!C2 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:45 pm (UTC)'!
m37

	self subclassResponsibility! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
useBy: aCharacter

	self subclassResponsibility! !

!C2 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:45 pm (UTC)'!
m24: t1

	^ self new m20: t1! !

!ClosedDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m19

	self error: C6 m38! !

!ClosedDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m22

	v4 beOpen! !

!ClosedDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m23: aKey

	self error: C6 m44! !

!ClosedDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m37

	^ false! !

!ClosedDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
useBy: aCharacter

	v4 m32: aCharacter! !

!LockedDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
initializeFor: aDoor openedWith: aKey

	v4 := aDoor.
	key := aKey! !

!LockedDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m19

	self error: C6 m38! !

!LockedDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m22

	self error: C6 m42! !

!LockedDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m23: aKey

	key = aKey ifFalse: [ ^ self error: C6 m45 ].
	v4 beOpen! !

!LockedDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m37

	^ false! !

!LockedDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
useBy: aCharacter

	v4 m32: aCharacter! !

!LockedDoorState class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
for: aDoor openedWith: aKey

	^ self new initializeFor: aDoor openedWith: aKey! !

!LockedDoorState class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m24: aDoor

	self shouldNotImplement! !

!OpenDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m19

	v4 beClosed! !

!OpenDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m22

	self error: C6 m39! !

!OpenDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m23: aKey

	self error: C6 m39! !

!OpenDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m37

	^ true! !

!OpenDoorState methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
useBy: aCharacter

	v4 m31: aCharacter! !

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

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
beClosed

	v7 := ClosedDoorState m24: self! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
beOpen

	v7 := OpenDoorState m24: self! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
initializeStateCreatedBy: aStateCreationBlock

	v7 := aStateCreationBlock value: self! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m31: aCharacter

	v7 m19! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m32: aCharacter

	v7 m22! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m33: aCharacter a33: aKey

	v7 m23: aKey! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m34: aCharacter

	v7 useBy: aCharacter! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m37

	^ v7 m37! !

!C6 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:48 pm (UTC)'!
m38

	^ 'S11'! !

!C6 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:49 pm (UTC)'!
m39

	^ 'S12'! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m40

	^ self stateCreatedBy: [ :aDoor | ClosedDoorState m24: aDoor ]! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m41: aKey

	^ self stateCreatedBy: [ :aDoor | LockedDoorState for: aDoor openedWith: aKey ]! !

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

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
m46

	^ self stateCreatedBy: [ :aDoor | OpenDoorState m24: aDoor ]! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:15 am (UTC)'!
stateCreatedBy: aStateCreationBlock

	^ self new initializeStateCreatedBy: aStateCreationBlock! !

!C8 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:44:59 am (UTC)'!
allowedOverweight

	self subclassResponsibility! !

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
m48

	self subclassResponsibility	! !

!C8 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:51 pm (UTC)'!
m49

	^ v10! !

!C8 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:44:59 am (UTC)'!
m53

	self subclassResponsibility! !

!C10 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:44:59 am (UTC)'!
allowedOverweight

	^ 5! !

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
m48

	^ true! !

!C10 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:52 pm (UTC)'!
m52: t1 a52: t2 b52: t3
	
	v9 := t1.
	v10 := t2.
	v11 := t3.! !

!C10 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:52 pm (UTC)'!
m53

	^ v11! !

!C10 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:52 pm (UTC)'!
m54: t1 a54: t2 b54: t3
	
	^ self new m52: t1 a52: t2 b52: t3.! !

!C9 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:44:59 am (UTC)'!
allowedOverweight

	^ 0! !

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
m48	

	^ false! !

!C9 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:51 pm (UTC)'!
m50: t1 a50: t2
	
	v9 := t1.
	v10 := t2.! !

!C9 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:44:59 am (UTC)'!
m53

	^ 0! !

!C9 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:41:52 pm (UTC)'!
m51: t1 a51: t2
	
	^ self new m50: t1 a50: t2. ! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:24 am (UTC)'!
assertAddingIsRejectedForOverweight: anElement

	| backpack |
	backpack := C1 m8: 42 a8: 100.

	self
		should: [ backpack add: anElement ]
		raise: Error
		withMessageText: C1 m12.
		
	self assert: backpack isEmpty! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:24 am (UTC)'!
backpackWithElementsWeighing41AndAdding5GamePoints

	| backpack |
	backpack := C1 m8: 42 a8: 100.

	backpack add: (C10 m54: 'S8' a54: 40 b54: 5).
	backpack add: (C9 m51: 'S7' a51: 1).
	
	^ backpack! !

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

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:24 am (UTC)'!
test07

	self assertAddingIsRejectedForOverweight: (C9 m51: 'S7' a51: 42 + 1)! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:24 am (UTC)'!
test08

	self assertAddingIsRejectedForOverweight: (C10 m54: 'S8' a54: 42 + 6 b54: 5)! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:24 am (UTC)'!
test09

	| backpack |
	backpack := self backpackWithElementsWeighing41AndAdding5GamePoints.
	
	self assert: backpack size equals: 2.
	self assert: backpack m7 equals: 41.
	self assert: backpack m6 equals: 5.
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:45:24 am (UTC)'!
test10

	| backpack |
	backpack := self backpackWithElementsWeighing41AndAdding5GamePoints.
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
