'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:43:15 am'!
'Description '!
!provides: 'Task1' 1 2!
SystemOrganization addCategory: #Task1!
SystemOrganization addCategory: #'Task1-Tests'!


!classDefinition: #C1 category: #Task1!
Object subclass: #C1
	instanceVariableNames: 'v1 v2 v3 v4 v5'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C1 class' category: #Task1!
C1 class
	instanceVariableNames: ''!

!classDefinition: #C1S1 category: #Task1!
C1 subclass: #C1S1
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C1S1 class' category: #Task1!
C1S1 class
	instanceVariableNames: ''!

!classDefinition: #C1S2 category: #Task1!
C1 subclass: #C1S2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C1S2 class' category: #Task1!
C1S2 class
	instanceVariableNames: ''!

!classDefinition: #C2 category: #Task1!
Object subclass: #C2
	instanceVariableNames: 'v6 v7 v8 v9'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C2 class' category: #Task1!
C2 class
	instanceVariableNames: ''!

!classDefinition: #C2S3 category: #Task1!
C2 subclass: #C2S3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C2S3 class' category: #Task1!
C2S3 class
	instanceVariableNames: ''!

!classDefinition: #C2S4 category: #Task1!
C2 subclass: #C2S4
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C2S4 class' category: #Task1!
C2S4 class
	instanceVariableNames: ''!

!classDefinition: #C2S5 category: #Task1!
C2 subclass: #C2S5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C2S5 class' category: #Task1!
C2S5 class
	instanceVariableNames: ''!

!classDefinition: #C3 category: #'Task1-Tests'!
TestCase subclass: #C3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1-Tests'!
!classDefinition: 'C3 class' category: #'Task1-Tests'!
C3 class
	instanceVariableNames: ''!


!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m1: t1

	self assertCanCarryWeightOf: t1.
	self assertCanHaveSpeedImpactedBy: t1.
	
	v5 add: t1! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:24 pm (UTC)'!
m10

	self error: self class m17 	! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:24 pm (UTC)'!
m11

	self error: self class m19 	! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m12

	^ (v5 select: [ :weapon | weapon isHeavy ]) 
		sum: [ :weapon | weapon m23 ] 
		ifEmpty: [ 0 * kilometer / hour ]! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m13

	^ v5 sum: [ :weapon | weapon m24 ] ifEmpty: [ 0 * kilogram ]! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m15

	^ v5 size! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m2: t1 a2: t2

	(self m3: t2) 
		ifTrue: [ t2 m20: t1 a20: self ]
		ifFalse: [ self m9 ]! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:24 pm (UTC)'!
m22

	^ v1	! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m3: t1 

	^ v5 includes: t1! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m4: t1

	^ v5 anySatisfy: [ :t2 | t2 m22 = t1 ]! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m5: t1 a5: t2 b5: t3 c5: t4

	v1 := t1.
	v2 := t2.
	v3 := t3.
	v4 := t4.
	v5 := OrderedCollection new! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:24 pm (UTC)'!
m6

	^ v2! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m8: t1 

	v5 remove: t1! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:25 pm (UTC)'!
m9
	
	self error: self class m16! !

!C1 methodsFor: 'weapons - private' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
assertCanCarryWeightOf: aWeapon

	self m13 + aWeapon m24 > v4 ifTrue: [ self m10 ]! !

!C1 methodsFor: 'weapons - private' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
assertCanHaveSpeedImpactedBy: aWeapon

	self m12 + aWeapon m23 > v3 ifTrue: [ self m11 ]! !

!C1 methodsFor: 'life time' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
hasLifeTimeUpTo: aLifeTime

	^ v2 <= aLifeTime! !

!C1 methodsFor: 'life time' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
reduceLifeTimeBy: aLifeTime

	v2 := v2 - aLifeTime! !

!C1 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
beAttackedWith: aWeapon by: anAttacker

	self subclassResponsibility! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:25 pm (UTC)'!
m16
	
	^'S1'! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:25 pm (UTC)'!
m17

	^ 'S2'! !

!C1 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:25 pm (UTC)'!
m19

	^ 'S3'! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m25: t1

	^ (self subclassOfType: t1) withDefaultCharacteristics! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
subclassOfType: aType

	^ self subclasses 
		detect: [ :robotClass | robotClass m22 = aType ]
		ifNone: [ self error: self unknownTypeErrorDescription ]! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
withDefaultCharacteristics

	^ self new 
		m5: self m22 
		a5: self lifeTime
		b5: self speed
		c5: self maximumWeaponsWeight! !

!C1 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
unknownTypeErrorDescription

	^ 'S4'! !

!C1 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
lifeTime

	^ 100 * year! !

!C1 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m22

	self subclassResponsibility! !

!C1 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
maximumWeaponsWeight

	self subclassResponsibility! !

!C1 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
speed

	self subclassResponsibility! !

!C1S1 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
beAttackedWith: aWeapon by: anAttacker

	aWeapon attackS1: self by: anAttacker! !

!C1S1 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m22

	^ #s1! !

!C1S1 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
maximumWeaponsWeight

	^ 50 * kilogram! !

!C1S1 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
speed

	^ 90 * kilometer / hour! !

!C1S2 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
beAttackedWith: aWeapon by: anAttacker

	aWeapon attackS2: self by: anAttacker! !

!C1S2 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m22

	^ #s2! !

!C1S2 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
maximumWeaponsWeight

	^ 200 * kilogram! !

!C1S2 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
speed

	^ 40 * kilometer / hour! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m20: t1 a20: t2

	v9 := v9 + 1.
	t1 beAttackedWith: self by: t2! !

!C2 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:25 pm (UTC)'!
m21: t1 a21: t2 b21: t3 
	
	v6 := t1.
	v7 := t2.
	v8 := t3.
	v9 := 0.! !

!C2 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:25 pm (UTC)'!
m22
	
	^v6! !

!C2 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:25 pm (UTC)'!
m23
	
	^ v8! !

!C2 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
m24
	
	^ v7! !

!C2 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
attackS1: aTarget by: anAttacker

	self subclassResponsibility! !

!C2 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
attackS2: aTarget by: anAttacker

	self subclassResponsibility! !

!C2 methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
beDroppedBy: anAttacker

	anAttacker m8: self! !

!C2 methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
beReplacedIn: anAttacker by: aWeaponType

	self beDroppedBy: anAttacker.
	self give: aWeaponType to: anAttacker! !

!C2 methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
give: aWeaponType to: anAttacker

	anAttacker m1: (C2 m25: aWeaponType)! !

!C2 methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
hasBeenUsed: aNumberOfTimes

	^ v9 = aNumberOfTimes! !

!C2 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
isHeavy

	^ v7 > (10 * kilogram)! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m25: t1

	^ (self subclassOfType: t1) withDefaultCharacteristics! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
subclassOfType: aType

	^ self subclasses 
		detect: [ :weaponClass | weaponClass m22 = aType ]
		ifNone: [ self error: self unknownTypeErrorDescription ]! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
withDefaultCharacteristics

	^ self new m21: self m22 a21: self weight b21: self speedImpact! !

!C2 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
unknownTypeErrorDescription

	^ 'S5'! !

!C2 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m22

	self subclassResponsibility! !

!C2 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
speedImpact

	self subclassResponsibility! !

!C2 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
weight

	self subclassResponsibility! !

!C2S3 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
attackS1: aTarget by: anAttacker

	aTarget reduceLifeTimeBy: 25 * year.
	(self hasBeenUsed: 2) ifTrue: [ self beDroppedBy: anAttacker ]! !

!C2S3 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
attackS2: aTarget by: anAttacker

	aTarget reduceLifeTimeBy: 5 * year.
	self beDroppedBy: anAttacker! !

!C2S3 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m22

	^ #s3! !

!C2S3 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
speedImpact

	^ 5 * kilometer / hour! !

!C2S3 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
weight

	^ 10 * kilogram! !

!C2S4 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
attackS1: aTarget by: anAttacker

	aTarget reduceLifeTimeBy: 5 * year.
	(self hasBeenUsed: 5) ifTrue: [ self beReplacedIn: anAttacker by: #s5 ]! !

!C2S4 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
attackS2: aTarget by: anAttacker

	aTarget reduceLifeTimeBy: 50 * year.
	(aTarget hasLifeTimeUpTo: 50 * year) ifTrue: [ self give: #s3 to: anAttacker ]! !

!C2S4 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m22

	^ #s4! !

!C2S4 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
speedImpact

	^ 10 * kilometer / hour! !

!C2S4 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
weight

	^ 20 * kilogram! !

!C2S5 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
attackS1: aTarget by: anAttacker

	aTarget reduceLifeTimeBy: 100 * year.
	(self hasBeenUsed: 10) ifTrue: [ self beDroppedBy: anAttacker ]! !

!C2S5 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
attackS2: aTarget by: anAttacker

	aTarget reduceLifeTimeBy: 100 * year.
	(self hasBeenUsed: 5) ifTrue: [ self beReplacedIn: anAttacker by: #s4 ]! !

!C2S5 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
m22

	^ #s5! !

!C2S5 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
speedImpact

	^ 15 * kilometer / hour! !

!C2S5 class methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
weight

	^ 40 * kilogram! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
m26

	^ C1 m25: #s1 ! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
m27

	^ C2 m25: #s3 ! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
m28

	^ C2 m25: #s4 ! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
m29

	^ C1 m25: #s2 ! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
m30

	^ C2 m25: #s5 ! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
test01
	
	| t1 t2 |
	
	t1 := self m26.
	t2 := self m30.
	t1 m1: t2.
	
	self
		should: [ t1 m1: self m30 ]
		raise: Error
		withMessageText: C1 m17.
		
	self assert: 1 equals: t1 m15.
	self assert: (t1 m3: t2)

	

	! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
test02
	
	| t1 t2 t3 |
	
	t1 := self m29.
	t2 := self m30.
	t1 m1: t2.
	t3 := self m30.
	t1 m1: t3.
		
	self
		should: [ t1 m1: self m30 ]
		raise: Error
		withMessageText: C1 m19 .
		
	self assert: 2 equals: (t1 m15).
	self assert: (t1 m3: t2).
	self assert: (t1 m3: t3)

	! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
test03
	
	| t1 |
	
	t1 := self m29.

	self assert: 0 * kilogram equals: t1 m13.

	! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
test04
	
	| t1 t2 |
	
	t1 := self m29.
	t2 := self m30.

	t1 m1: t2.

	self assert: t2 m24 equals: t1 m13.

	! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:27 pm (UTC)'!
test05
	
	| t1 |
	
	t1 := self m29.

	self assert: 0 * kilometer / hour equals: t1 m12.

	! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:27 pm (UTC)'!
test06

	| t1 t2 t3 |
	
	t1 := self m29.
	t2 := self m30.
	t3 := self m27.

	t1 m1: t2.
	t1 m1: t3.

	self assert: t2 m24 + t3 m24 equals: t1 m13.

	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:59 am (UTC)'!
test07

	self 
		assertLifeTimeOf: self m26 
		afterBeingAttackedWith: self m27 
		is: (100 * year) - (25 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:59 am (UTC)'!
test08

	self 
		assertLifeTimeOf: self m29 
		afterBeingAttackedWith: self m27 
		is: (100 * year) - (5 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:59 am (UTC)'!
test09

	self 
		assertLifeTimeOf: self m26 
		afterBeingAttackedWith: self m28 
		is: (100 * year) - (5 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:59 am (UTC)'!
test10

	self 
		assertLifeTimeOf: self m29 
		afterBeingAttackedWith: self m28 
		is: (100 * year) - (50 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:59 am (UTC)'!
test11

	self 
		assertLifeTimeOf: self m26 
		afterBeingAttackedWith: self m30 
		is: (100 * year) - (100 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:42:59 am (UTC)'!
test12

	self 
		assertLifeTimeOf: self m29 
		afterBeingAttackedWith: self m30 
		is: (100 * year) - (100 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:27 pm (UTC)'!
test13

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m26.
	t3 := self m27.
	t1 m1: t3.
	
	2 timesRepeat: [ t1 m2: t2 a2: t3 ].
	
	self 
		should: [ t1 m2: t2 a2: t3 ]
		raise: Error
		withMessageText: C1 m16 
	! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:27 pm (UTC)'!
test14

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m29.
	t3 := self m27.
	t1 m1: t3.
	
	t1 m2: t2 a2: t3.
	
	self 
		should: [ t1 m2: t2 a2: t3 ]
		raise: Error
		withMessageText: C1 m16 
	! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:27 pm (UTC)'!
test15
	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m26.
	t3 := self m28.
	t1 m1: t3.
	
	5 timesRepeat: [ t1 m2: t2 a2: t3 ].
	
	self assert: 1 equals: t1 m15.
	self assert: (t1 m4: #s5).
	! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:27 pm (UTC)'!
test16
	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m29.
	t3 := self m28 .
	t1 m1: t3.
	
	t1 m2: t2 a2: t3.
	
	self assert: 2 equals: t1 m15.
	self assert: (t1 m3: t3).
	self assert: (t1 m4: #s3).
	! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:28 pm (UTC)'!
test17

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m26.
	t3 := self m30.
	t1 m1: t3.
	
	10 timesRepeat: [ t1 m2: t2 a2: t3 ].
	
	self assert: 0 equals: t1 m15.
	! !

!C3 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:28 pm (UTC)'!
test18

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m29.
	t3 := self m30 .
	t1 m1: t3.
	
	5 timesRepeat: [ t1 m2: t2 a2: t3 ].
	
	self assert: 1 equals: t1 m15.
	self assert: (t1 m4: #s4)
	! !

!C3 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:42:51 am (UTC)'!
assertLifeTimeOf: aTarget afterBeingAttackedWith: aWeapon is: aLifeTime

	| attacker |
	
	attacker := self m26.
	attacker m1: aWeapon.
	attacker m2: aTarget a2: aWeapon.
	
	self assert: aLifeTime equals: aTarget m6! !
