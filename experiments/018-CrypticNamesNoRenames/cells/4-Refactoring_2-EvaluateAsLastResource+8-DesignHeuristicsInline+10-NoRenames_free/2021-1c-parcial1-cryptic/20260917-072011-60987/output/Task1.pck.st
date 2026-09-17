'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:23:25 am'!
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

!classDefinition: #S1Robot category: #Task1!
C1 subclass: #S1Robot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'S1Robot class' category: #Task1!
S1Robot class
	instanceVariableNames: ''!

!classDefinition: #S2Robot category: #Task1!
C1 subclass: #S2Robot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'S2Robot class' category: #Task1!
S2Robot class
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

!classDefinition: #S3Weapon category: #Task1!
C2 subclass: #S3Weapon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'S3Weapon class' category: #Task1!
S3Weapon class
	instanceVariableNames: ''!

!classDefinition: #S4Weapon category: #Task1!
C2 subclass: #S4Weapon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'S4Weapon class' category: #Task1!
S4Weapon class
	instanceVariableNames: ''!

!classDefinition: #S5Weapon category: #Task1!
C2 subclass: #S5Weapon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'S5Weapon class' category: #Task1!
S5Weapon class
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


!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
m1: t1

	(self exceedsMaximumWeaponWeightAdding: t1) ifTrue: [ self m10 ].
	(self exceedsSpeedAdding: t1) ifTrue: [ self m11 ].

	v5 add: t1! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:24 pm (UTC)'!
m10

	self error: self class m17 	! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:24 pm (UTC)'!
m11

	self error: self class m19 	! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
m12

	^(v5 select: [ :aWeapon | aWeapon isHeavy ])
		sum: [ :aWeapon | aWeapon m23 ]
		ifEmpty: [ 0 * kilometer / hour ]! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
m13

	^v5 sum: [ :aWeapon | aWeapon m24 ] ifEmpty: [ 0 * kilogram ]! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
m15

	^v5 size! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
m2: t1 a2: t2

	(self m3: t2)
		ifTrue: [ t2 m20: t1 a20: self ]
		ifFalse: [ self m9 ]! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
m3: t1

	^v5 includes: t1! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
m4: t1

	^v5 anySatisfy: [ :t2 | t2 m22 = t1 ]! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
m5: t1 a5: t2 b5: t3 c5: t4

	v1 := t1.
	v2 := t2.
	v3 := t3.
	v4 := t4.
	v5 := OrderedCollection new! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:24 pm (UTC)'!
m6

	^ v2! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
m8: t1

	v5 remove: t1! !

!C1 methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:25 pm (UTC)'!
m9
	
	self error: self class m16! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
exceedsMaximumWeaponWeightAdding: aWeapon

	^self m13 + aWeapon m24 > v4! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
exceedsSpeedAdding: aWeapon

	^self m12 + aWeapon m23 > v3! !

!C1 methodsFor: 'lifetime' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
decreaseLifetimeBy: aLifetime

	v2 := v2 - aLifetime! !

!C1 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
receiveAttackFrom: aWeapon ownedBy: anAttacker

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

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
m25: t1

	| robotClass |

	robotClass := self subclassFor: t1.

	^robotClass new
		m5: t1
		a5: self initialLifetime
		b5: robotClass speed
		c5: robotClass maximumWeaponWeight! !

!C1 class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
initialLifetime

	^100 * year! !

!C1 class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
subclassFor: aType

	^self subclasses
		detect: [ :aRobotClass | aRobotClass isFor: aType ]
		ifNone: [ self error: self invalidTypeErrorDescription ]! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
invalidTypeErrorDescription

	^'S4'! !

!S1Robot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
receiveAttackFrom: aWeapon ownedBy: anAttacker

	aWeapon attackS1Robot: self ownedBy: anAttacker! !

!S1Robot class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
isFor: aType

	^aType = #s1! !

!S1Robot class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
maximumWeaponWeight

	^50 * kilogram! !

!S1Robot class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
speed

	^90 * kilometer / hour! !

!S2Robot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
receiveAttackFrom: aWeapon ownedBy: anAttacker

	aWeapon attackS2Robot: self ownedBy: anAttacker! !

!S2Robot class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
isFor: aType

	^aType = #s2! !

!S2Robot class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
maximumWeaponWeight

	^200 * kilogram! !

!S2Robot class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
speed

	^40 * kilometer / hour! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
m20: t1 a20: t2

	v9 := v9 + 1.
	t1 receiveAttackFrom: self ownedBy: t2! !

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

!C2 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
isHeavy

	^v7 > (10 * kilogram)! !

!C2 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
attackS1Robot: aRobot ownedBy: anOwner

	self subclassResponsibility! !

!C2 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
attackS2Robot: aRobot ownedBy: anOwner

	self subclassResponsibility! !

!C2 methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
addWeaponOfType: aWeaponType to: anOwner

	anOwner m1: (C2 m25: aWeaponType)! !

!C2 methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
hasBeenUsed: aNumberOfUses

	^v9 = aNumberOfUses! !

!C2 methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
removeFrom: anOwner afterBeingUsed: aNumberOfUses

	(self hasBeenUsed: aNumberOfUses) ifTrue: [ anOwner m8: self ]! !

!C2 methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
replaceBy: aWeaponType in: anOwner afterBeingUsed: aNumberOfUses

	(self hasBeenUsed: aNumberOfUses) ifTrue: [
		anOwner m8: self.
		self addWeaponOfType: aWeaponType to: anOwner ]! !

!C2 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:23:10 am (UTC)'!
m25: t1

	| weaponClass |

	weaponClass := self subclassFor: t1.

	^weaponClass new
		m21: t1
		a21: weaponClass weight
		b21: weaponClass speedImpact! !

!C2 class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
subclassFor: aType

	^self subclasses
		detect: [ :aWeaponClass | aWeaponClass isFor: aType ]
		ifNone: [ self error: self invalidTypeErrorDescription ]! !

!C2 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
invalidTypeErrorDescription

	^'S5'! !

!S3Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
attackS1Robot: aRobot ownedBy: anOwner

	aRobot decreaseLifetimeBy: 25 * year.
	self removeFrom: anOwner afterBeingUsed: 2! !

!S3Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
attackS2Robot: aRobot ownedBy: anOwner

	aRobot decreaseLifetimeBy: 5 * year.
	anOwner m8: self! !

!S3Weapon class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
isFor: aType

	^aType = #s3! !

!S3Weapon class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
speedImpact

	^5 * kilometer / hour! !

!S3Weapon class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
weight

	^10 * kilogram! !

!S4Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
attackS1Robot: aRobot ownedBy: anOwner

	aRobot decreaseLifetimeBy: 5 * year.
	self replaceBy: #s5 in: anOwner afterBeingUsed: 5! !

!S4Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
attackS2Robot: aRobot ownedBy: anOwner

	aRobot decreaseLifetimeBy: 50 * year.
	aRobot m6 <= (50 * year) ifTrue: [ self addWeaponOfType: #s3 to: anOwner ]! !

!S4Weapon class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
isFor: aType

	^aType = #s4! !

!S4Weapon class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
speedImpact

	^10 * kilometer / hour! !

!S4Weapon class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
weight

	^20 * kilogram! !

!S5Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
attackS1Robot: aRobot ownedBy: anOwner

	aRobot decreaseLifetimeBy: 100 * year.
	self removeFrom: anOwner afterBeingUsed: 10! !

!S5Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
attackS2Robot: aRobot ownedBy: anOwner

	aRobot decreaseLifetimeBy: 100 * year.
	self replaceBy: #s4 in: anOwner afterBeingUsed: 5! !

!S5Weapon class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
isFor: aType

	^aType = #s5! !

!S5Weapon class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
speedImpact

	^15 * kilometer / hour! !

!S5Weapon class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 10:22:53 am (UTC)'!
weight

	^40 * kilogram! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:23:01 am (UTC)'!
lifetimeOf: aTarget afterBeingAttackedWith: aWeapon

	| attacker |

	attacker := self m26.
	attacker m1: aWeapon.
	attacker m2: aTarget a2: aWeapon.

	^aTarget m6! !

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

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:23:10 am (UTC)'!
test07

	self
		assert: (self lifetimeOf: self m26 afterBeingAttackedWith: self m27)
		equals: 100 * year - (25 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:23:10 am (UTC)'!
test08

	self
		assert: (self lifetimeOf: self m29 afterBeingAttackedWith: self m27)
		equals: 100 * year - (5 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:23:10 am (UTC)'!
test09

	self
		assert: (self lifetimeOf: self m26 afterBeingAttackedWith: self m28)
		equals: 100 * year - (5 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:23:10 am (UTC)'!
test10

	self
		assert: (self lifetimeOf: self m29 afterBeingAttackedWith: self m28)
		equals: 100 * year - (50 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:23:10 am (UTC)'!
test11

	self
		assert: (self lifetimeOf: self m26 afterBeingAttackedWith: self m30)
		equals: 100 * year - (100 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 10:23:10 am (UTC)'!
test12

	self
		assert: (self lifetimeOf: self m29 afterBeingAttackedWith: self m30)
		equals: 100 * year - (100 * year)! !

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
