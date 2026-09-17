'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 12:56:50 am'!
'Description '!
!provides: 'Task3' 1 1!
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
	instanceVariableNames: 'v7 v8'
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


!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:40 am (UTC)'!
add: t1
	
	(t1 isKindOf: C9) ifTrue: [
		self m2: t1 a2: 0.
		v3 add: t1.
	].

	(t1 isKindOf: C10) ifTrue: [
		self m2: t1 a2: 5.
		self m1: t1.
		v3 add: t1.
	].	! !

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
m6
		
	| t1 t2 |

	t1 := 0.
	t2 := 1.
	
	[t2 <= v3 size] whileTrue: [ | t3 |
		t3 := (v3 at: t2).
		(t3 m48) ifTrue: [ t1 := t1 +  t3 m53 ].
		t2 := t2 + 1.	
	].

	^ t1.! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:41 am (UTC)'!
m7
	
	| t1 t2 |

	t1 := 0.
	t2 := 1.
	
	[t2 <= v3 size] whileTrue: [ | t3 |
		t3 := (v3 at: t2).
		t1 := t1 + t3 m49.
		t2 := t2 + 1.	
	].

	^ t1.! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:41 am (UTC)'!
size

	^ v3 size.! !

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

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:42 am (UTC)'!
m19

	self subclassResponsibility! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:42 am (UTC)'!
m20: t1

	v4 := t1! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:42 am (UTC)'!
m22

	self subclassResponsibility! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:42 am (UTC)'!
m23: t1

	self subclassResponsibility! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:42 am (UTC)'!
m37

	self subclassResponsibility! !

!C2 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:43 am (UTC)'!
m24: t1

	^ self new m20: t1! !

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

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:45 am (UTC)'!
m31: t1

	(v7 == #s1) ifTrue: [ ^ v7 := #s2 ].
	(v7 == #s2) ifTrue: [ self error: C6 m38 ].
	(v7 == #s3) ifTrue: [ self error: C6 m38 ].! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:45 am (UTC)'!
m32: t1

	(v7 == #s1) ifTrue: [ self error: C6 m39 ].
	(v7 == #s2) ifTrue: [ ^ v7 := #s1 ].
	(v7 == #s3) ifTrue: [ self error: C6 m42 ].! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:45 am (UTC)'!
m33: t1 a33: t2

	(v7 == #s1) ifTrue: [ self error: C6 m39 ].
	(v7 == #s2) ifTrue: [ self error: C6 m44 ].
	(v7 == #s3) ifTrue: [ 
		(v8 == t2) ifTrue: [ ^ v7 := #s1 ].
		self error: C6 m45. 
	]! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:45 am (UTC)'!
m34: t1

	(v7 == #s1) ifTrue: [ ^ self m31: t1 ].
	(v7 == #s2) ifTrue: [ ^ self m32: t1 ].
	(v7 == #s3) ifTrue: [ ^ self m32: t1 ].! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m35: t1

	v7 := t1
! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m36: t1 a36: t2

	v7 := t1.
	v8 := t2.
! !

!C6 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m37

	^ v7 == #s1
! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m38

	^ 'S11'! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m39

	^ 'S12'! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m40

	| t1 |
	
	t1 := C6 new.
	t1 m35: #s2.
	
	^ t1.! !

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:46 am (UTC)'!
m41: t1

	| t2 |
	
	t2 := C6 new.
	t2 m36: #s3 a36: t1.
	
	^ t2.! !

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

!C6 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:47 am (UTC)'!
m46

	| t1 |
	
	t1 := C6 new.
	t1 m35: #s1.
	
	^ t1.! !

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

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:44 am (UTC)'!
test07

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	self
		should: [ t1 add: (C9 m51: 'S7' a51: 42 + 1) ]
		raise: Error
		withMessageText: C1 m12.
		
	self assert: t1 isEmpty. 
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:44 am (UTC)'!
test08

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	self
		should: [ t1 add: (C10 m54: 'S8' a54: 42 + 6 b54: 5) ]
		raise: Error
		withMessageText: C1 m12.
		
	self assert: t1 isEmpty. 
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:45 am (UTC)'!
test09

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	t1 add: (C10 m54: 'S8' a54: 40 b54: 5).
	t1 add: (C9 m51: 'S7' a51: 1).
	
	self assert: t1 size equals: 2.
	self assert: t1 m7 equals: 41.
	self assert: t1 m6 equals: 5.
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:45 am (UTC)'!
test10

	| t1 |
	t1 := C1 m8: 42 a8: 100.

	t1 add: (C10 m54: 'S8' a54: 40 b54: 5).
	t1 add: (C9 m51: 'S7' a51: 1).
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
