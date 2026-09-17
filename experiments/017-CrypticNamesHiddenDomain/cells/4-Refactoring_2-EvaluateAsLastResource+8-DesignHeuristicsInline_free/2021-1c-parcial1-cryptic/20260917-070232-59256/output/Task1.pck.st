'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:06:23 am'!
'Description '!
!provides: 'Task1' 1 2!
SystemOrganization addCategory: #Task1!
SystemOrganization addCategory: #'Task1-Tests'!


!classDefinition: #C1 category: #Task1!
Object subclass: #C1
	instanceVariableNames: 'lifeTime speed maximumWeaponWeight weapons'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C1 class' category: #Task1!
C1 class
	instanceVariableNames: ''!

!classDefinition: #HeavyRobot category: #Task1!
C1 subclass: #HeavyRobot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'HeavyRobot class' category: #Task1!
HeavyRobot class
	instanceVariableNames: ''!

!classDefinition: #LightRobot category: #Task1!
C1 subclass: #LightRobot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'LightRobot class' category: #Task1!
LightRobot class
	instanceVariableNames: ''!

!classDefinition: #C2 category: #Task1!
Object subclass: #C2
	instanceVariableNames: 'weight speedImpact timesUsed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C2 class' category: #Task1!
C2 class
	instanceVariableNames: ''!

!classDefinition: #HeavyWeapon category: #Task1!
C2 subclass: #HeavyWeapon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'HeavyWeapon class' category: #Task1!
HeavyWeapon class
	instanceVariableNames: ''!

!classDefinition: #LightWeapon category: #Task1!
C2 subclass: #LightWeapon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'LightWeapon class' category: #Task1!
LightWeapon class
	instanceVariableNames: ''!

!classDefinition: #MediumWeapon category: #Task1!
C2 subclass: #MediumWeapon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'MediumWeapon class' category: #Task1!
MediumWeapon class
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


!C1 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
initializeLifeTime: aLifeTime speed: aSpeed maximumWeaponWeight: aMaximumWeaponWeight

	lifeTime := aLifeTime.
	speed := aSpeed.
	maximumWeaponWeight := aMaximumWeaponWeight.
	weapons := OrderedCollection new! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
exceedsMaximumWeaponWeightCarrying: aWeapon

	^self m13 + aWeapon m24 > maximumWeaponWeight! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
exceedsSpeedCarrying: aWeapon

	^self m12 + aWeapon m23 > speed! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:06:08 am (UTC)'!
m1: aWeapon

	(self exceedsMaximumWeaponWeightCarrying: aWeapon)
		ifTrue: [ ^self error: self class m17 ].
	(self exceedsSpeedCarrying: aWeapon)
		ifTrue: [ ^self error: self class m19 ].

	weapons add: aWeapon! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
m12

	^self weaponsImpactingSpeed
		sum: [ :aWeapon | aWeapon m23 ]
		ifEmpty: [ 0 * kilometer / hour ]! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
m13

	^weapons sum: [ :aWeapon | aWeapon m24 ] ifEmpty: [ 0 * kilogram ]! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
m15

	^weapons size! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
m3: aWeapon

	^weapons includes: aWeapon! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
m4: aType

	^weapons anySatisfy: [ :aWeapon | aWeapon isOfType: aType ]! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
m8: aWeapon

	weapons remove: aWeapon! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
minimumWeightImpactingSpeed

	^10 * kilogram! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
replace: aWeapon with: aReplacementWeapon

	self m8: aWeapon.
	self m1: aReplacementWeapon! !

!C1 methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
weaponsImpactingSpeed

	^weapons select: [ :aWeapon | aWeapon m24 > self minimumWeightImpactingSpeed ]! !

!C1 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
m2: aTarget a2: aWeapon

	(self m3: aWeapon)
		ifTrue: [ aWeapon m20: aTarget a20: self ]
		ifFalse: [ self error: self class m16 ]! !

!C1 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
receiveAttackFrom: aWeapon ownedBy: anAttacker

	self subclassResponsibility! !

!C1 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
reduceLifeTimeBy: aLifeTimeReduction

	lifeTime := lifeTime - aLifeTimeReduction! !

!C1 methodsFor: 'life time' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
hasLifeTimeAtMost: aLifeTime

	^lifeTime <= aLifeTime! !

!C1 methodsFor: 'life time' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
m6

	^lifeTime! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
lifeTime: aLifeTime speed: aSpeed maximumWeaponWeight: aMaximumWeaponWeight

	^self new initializeLifeTime: aLifeTime speed: aSpeed maximumWeaponWeight: aMaximumWeaponWeight! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
m25: aType

	^(self subclassFor: aType) withDefaultSpecification! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
subclassFor: aType

	^self subclasses
		detect: [ :aRobotClass | aRobotClass isFor: aType ]
		ifNone: [ self error: self unknownTypeErrorDescription ]! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
withDefaultSpecification

	self subclassResponsibility! !

!C1 class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
isFor: aType

	^self type = aType! !

!C1 class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
type

	self subclassResponsibility! !

!C1 class methodsFor: 'specification' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
initialLifeTime

	^100 * year! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:40:25 pm (UTC)'!
m16
	
	^'S1'! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:40:25 pm (UTC)'!
m17

	^ 'S2'! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:40:25 pm (UTC)'!
m19

	^ 'S3'! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
unknownTypeErrorDescription

	^'S4'! !

!HeavyRobot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
receiveAttackFrom: aWeapon ownedBy: anAttacker

	aWeapon attackHeavyRobot: self ownedBy: anAttacker! !

!HeavyRobot class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
withDefaultSpecification

	^self
		lifeTime: self initialLifeTime
		speed: 40 * kilometer / hour
		maximumWeaponWeight: 200 * kilogram! !

!HeavyRobot class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
type

	^#s2! !

!LightRobot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
receiveAttackFrom: aWeapon ownedBy: anAttacker

	aWeapon attackLightRobot: self ownedBy: anAttacker! !

!LightRobot class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
withDefaultSpecification

	^self
		lifeTime: self initialLifeTime
		speed: 90 * kilometer / hour
		maximumWeaponWeight: 50 * kilogram! !

!LightRobot class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
type

	^#s1! !

!C2 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
initializeWeight: aWeight speedImpact: aSpeedImpact

	weight := aWeight.
	speedImpact := aSpeedImpact.
	timesUsed := 0! !

!C2 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
attackHeavyRobot: aTarget ownedBy: anAttacker

	self subclassResponsibility! !

!C2 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
attackLightRobot: aTarget ownedBy: anAttacker

	self subclassResponsibility! !

!C2 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
hasBeenUsed: aNumberOfTimes

	^timesUsed = aNumberOfTimes! !

!C2 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
m20: aTarget a20: anAttacker

	timesUsed := timesUsed + 1.
	aTarget receiveAttackFrom: self ownedBy: anAttacker! !

!C2 methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
isOfType: aType

	^self class isFor: aType! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:04:57 am (UTC)'!
m23
	
	^ speedImpact! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:04:57 am (UTC)'!
m24
	
	^ weight! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
m25: aType

	^(self subclassFor: aType) withDefaultSpecification! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
subclassFor: aType

	^self subclasses
		detect: [ :aWeaponClass | aWeaponClass isFor: aType ]
		ifNone: [ self error: self unknownTypeErrorDescription ]! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
weight: aWeight speedImpact: aSpeedImpact

	^self new initializeWeight: aWeight speedImpact: aSpeedImpact! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
withDefaultSpecification

	self subclassResponsibility! !

!C2 class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
isFor: aType

	^self type = aType! !

!C2 class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
type

	self subclassResponsibility! !

!C2 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
unknownTypeErrorDescription

	^'S5'! !

!HeavyWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:08 am (UTC)'!
attackHeavyRobot: aTarget ownedBy: anAttacker

	aTarget reduceLifeTimeBy: 100 * year.
	(self hasBeenUsed: 5)
		ifTrue: [ anAttacker replace: self with: MediumWeapon withDefaultSpecification ]! !

!HeavyWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
attackLightRobot: aTarget ownedBy: anAttacker

	aTarget reduceLifeTimeBy: 100 * year.
	(self hasBeenUsed: 10) ifTrue: [ anAttacker m8: self ]! !

!HeavyWeapon class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
withDefaultSpecification

	^self weight: 40 * kilogram speedImpact: 15 * kilometer / hour! !

!HeavyWeapon class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
type

	^#s5! !

!LightWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
attackHeavyRobot: aTarget ownedBy: anAttacker

	aTarget reduceLifeTimeBy: 5 * year.
	anAttacker m8: self! !

!LightWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
attackLightRobot: aTarget ownedBy: anAttacker

	aTarget reduceLifeTimeBy: 25 * year.
	(self hasBeenUsed: 2) ifTrue: [ anAttacker m8: self ]! !

!LightWeapon class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
withDefaultSpecification

	^self weight: 10 * kilogram speedImpact: 5 * kilometer / hour! !

!LightWeapon class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
type

	^#s3! !

!MediumWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:08 am (UTC)'!
attackHeavyRobot: aTarget ownedBy: anAttacker

	aTarget reduceLifeTimeBy: 50 * year.
	(aTarget hasLifeTimeAtMost: 50 * year)
		ifTrue: [ anAttacker m1: LightWeapon withDefaultSpecification ]! !

!MediumWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:08 am (UTC)'!
attackLightRobot: aTarget ownedBy: anAttacker

	aTarget reduceLifeTimeBy: 5 * year.
	(self hasBeenUsed: 5)
		ifTrue: [ anAttacker replace: self with: HeavyWeapon withDefaultSpecification ]! !

!MediumWeapon class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
withDefaultSpecification

	^self weight: 20 * kilogram speedImpact: 10 * kilometer / hour! !

!MediumWeapon class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:05:30 am (UTC)'!
type

	^#s4! !

!C3 methodsFor: 'robots' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
lifeTimeOf: aTarget afterBeingAttackedWith: aWeapon

	(self lightRobotArmedWith: aWeapon) m2: aTarget a2: aWeapon.

	^aTarget m6! !

!C3 methodsFor: 'robots' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
lightRobotArmedWith: aWeapon

	^self m26
		m1: aWeapon;
		yourself! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
test01

	| weapon robot exceedingWeapon |

	weapon := self m30.
	robot := self lightRobotArmedWith: weapon.
	exceedingWeapon := self m30.

	self
		should: [ robot m1: exceedingWeapon ]
		raise: Error
		withMessageText: C1 m17.

	self assert: robot m15 equals: 1.
	self assert: (robot m3: weapon)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
test02

	| robot firstWeapon secondWeapon exceedingWeapon |

	firstWeapon := self m30.
	secondWeapon := self m30.
	exceedingWeapon := self m30.
	robot := self m29.
	robot
		m1: firstWeapon;
		m1: secondWeapon.

	self
		should: [ robot m1: exceedingWeapon ]
		raise: Error
		withMessageText: C1 m19.

	self assert: robot m15 equals: 2.
	self assert: (robot m3: firstWeapon).
	self assert: (robot m3: secondWeapon)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
test03

	self assert: self m29 m13 equals: 0 * kilogram! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
test04

	| robot weapon |

	robot := self m29.
	weapon := self m30.
	robot m1: weapon.

	self assert: robot m13 equals: weapon m24! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
test05

	self assert: self m29 m12 equals: 0 * kilometer / hour! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
test06

	| robot heavyWeapon lightWeapon |

	robot := self m29.
	heavyWeapon := self m30.
	lightWeapon := self m27.
	robot
		m1: heavyWeapon;
		m1: lightWeapon.

	self assert: robot m13 equals: heavyWeapon m24 + lightWeapon m24! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:06:08 am (UTC)'!
test07

	self
		assert: (self lifeTimeOf: self m26 afterBeingAttackedWith: self m27)
		equals: 100 * year - (25 * year)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:06:08 am (UTC)'!
test08

	self
		assert: (self lifeTimeOf: self m29 afterBeingAttackedWith: self m27)
		equals: 100 * year - (5 * year)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:06:08 am (UTC)'!
test09

	self
		assert: (self lifeTimeOf: self m26 afterBeingAttackedWith: self m28)
		equals: 100 * year - (5 * year)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:06:08 am (UTC)'!
test10

	self
		assert: (self lifeTimeOf: self m29 afterBeingAttackedWith: self m28)
		equals: 100 * year - (50 * year)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:06:08 am (UTC)'!
test11

	self
		assert: (self lifeTimeOf: self m26 afterBeingAttackedWith: self m30)
		equals: 100 * year - (100 * year)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:06:08 am (UTC)'!
test12

	self
		assert: (self lifeTimeOf: self m29 afterBeingAttackedWith: self m30)
		equals: 100 * year - (100 * year)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
test13

	| weapon attacker target |

	weapon := self m27.
	attacker := self lightRobotArmedWith: weapon.
	target := self m26.
	2 timesRepeat: [ attacker m2: target a2: weapon ].

	self
		should: [ attacker m2: target a2: weapon ]
		raise: Error
		withMessageText: C1 m16! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
test14

	| weapon attacker target |

	weapon := self m27.
	attacker := self lightRobotArmedWith: weapon.
	target := self m29.
	attacker m2: target a2: weapon.

	self
		should: [ attacker m2: target a2: weapon ]
		raise: Error
		withMessageText: C1 m16! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
test15

	| weapon attacker target |

	weapon := self m28.
	attacker := self lightRobotArmedWith: weapon.
	target := self m26.

	5 timesRepeat: [ attacker m2: target a2: weapon ].

	self assert: attacker m15 equals: 1.
	self assert: (attacker m4: #s5)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
test16

	| weapon attacker target |

	weapon := self m28.
	attacker := self lightRobotArmedWith: weapon.
	target := self m29.

	attacker m2: target a2: weapon.

	self assert: attacker m15 equals: 2.
	self assert: (attacker m3: weapon).
	self assert: (attacker m4: #s3)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
test17

	| weapon attacker target |

	weapon := self m30.
	attacker := self lightRobotArmedWith: weapon.
	target := self m26.

	10 timesRepeat: [ attacker m2: target a2: weapon ].

	self assert: attacker m15 equals: 0! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:05:56 am (UTC)'!
test18

	| weapon attacker target |

	weapon := self m30.
	attacker := self lightRobotArmedWith: weapon.
	target := self m29.

	5 timesRepeat: [ attacker m2: target a2: weapon ].

	self assert: attacker m15 equals: 1.
	self assert: (attacker m4: #s4)! !

!C3 methodsFor: 'robots and weapons' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
m26

	^ C1 m25: #s1 ! !

!C3 methodsFor: 'robots and weapons' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
m27

	^ C2 m25: #s3 ! !

!C3 methodsFor: 'robots and weapons' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
m28

	^ C2 m25: #s4 ! !

!C3 methodsFor: 'robots and weapons' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
m29

	^ C1 m25: #s2 ! !

!C3 methodsFor: 'robots and weapons' stamp: 'HAW 15/Sep/2026, 11:40:26 pm (UTC)'!
m30

	^ C2 m25: #s5 ! !

!C3 class methodsFor: 'x' stamp: 'HAW 15/Sep/2026, 11:40:28 pm (UTC)'!
initialize

	| t1 |
	gram := BaseUnit named: 'S6' sign: 'S7'.
	t1 := ProportionalDerivedUnit baseUnit: gram conversionFactor: 1000  named: 'S8' sign: 'S9'.
	
	Smalltalk at: #s6 put: t1
	! !
C3 initialize!
