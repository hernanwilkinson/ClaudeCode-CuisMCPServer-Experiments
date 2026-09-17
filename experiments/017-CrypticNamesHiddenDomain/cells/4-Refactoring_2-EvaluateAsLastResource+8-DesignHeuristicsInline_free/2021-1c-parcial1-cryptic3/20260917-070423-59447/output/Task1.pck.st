'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:07:33 am'!
'Description '!
!provides: 'Task1' 1 2!
SystemOrganization addCategory: #Task1!
SystemOrganization addCategory: #'Task1-Tests'!


!classDefinition: #Warrior category: #Task1!
Object subclass: #Warrior
	instanceVariableNames: 'lifeTime weapons'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'Warrior class' category: #Task1!
Warrior class
	instanceVariableNames: ''!

!classDefinition: #HeavyWarrior category: #Task1!
Warrior subclass: #HeavyWarrior
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'HeavyWarrior class' category: #Task1!
HeavyWarrior class
	instanceVariableNames: ''!

!classDefinition: #LightWarrior category: #Task1!
Warrior subclass: #LightWarrior
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'LightWarrior class' category: #Task1!
LightWarrior class
	instanceVariableNames: ''!

!classDefinition: #Weapon category: #Task1!
Object subclass: #Weapon
	instanceVariableNames: 'uses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'Weapon class' category: #Task1!
Weapon class
	instanceVariableNames: ''!

!classDefinition: #HeavyWeapon category: #Task1!
Weapon subclass: #HeavyWeapon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'HeavyWeapon class' category: #Task1!
HeavyWeapon class
	instanceVariableNames: ''!

!classDefinition: #LightWeapon category: #Task1!
Weapon subclass: #LightWeapon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'LightWeapon class' category: #Task1!
LightWeapon class
	instanceVariableNames: ''!

!classDefinition: #MediumWeapon category: #Task1!
Weapon subclass: #MediumWeapon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'MediumWeapon class' category: #Task1!
MediumWeapon class
	instanceVariableNames: ''!

!classDefinition: #WarriorTest category: #'Task1-Tests'!
TestCase subclass: #WarriorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1-Tests'!
!classDefinition: 'WarriorTest class' category: #'Task1-Tests'!
WarriorTest class
	instanceVariableNames: ''!


!Warrior methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
initializeWithLifeTime: aLifeTime

	lifeTime := aLifeTime.
	weapons := OrderedCollection new! !

!Warrior methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
lifeTime

	^lifeTime! !

!Warrior methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
maximumWeight

	self subclassResponsibility! !

!Warrior methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
speed

	self subclassResponsibility! !

!Warrior methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
carriedSpeedImpact

	^self weaponsImpactingSpeed 
		sum: [ :aWeapon | aWeapon speedImpact ] 
		ifEmpty: [ 0 * kilometer / hour ]! !

!Warrior methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
carriedWeight

	^weapons sum: [ :aWeapon | aWeapon weight ] ifEmpty: [ 0 * kilogram ]! !

!Warrior methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
carries: aWeapon

	^weapons includes: aWeapon! !

!Warrior methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
carriesWeaponOfKind: aWeaponKind

	^weapons anySatisfy: [ :aWeapon | aWeapon class = aWeaponKind ]! !

!Warrior methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
carry: aWeapon

	self assertCanCarryWeightOf: aWeapon.
	self assertCanCarrySpeedImpactOf: aWeapon.
	weapons add: aWeapon! !

!Warrior methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
drop: aWeapon

	weapons remove: aWeapon! !

!Warrior methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
replace: aWeapon with: aNewWeapon

	self drop: aWeapon.
	self carry: aNewWeapon! !

!Warrior methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
weaponsCount

	^weapons size! !

!Warrior methodsFor: 'weapons - private' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
assertCanCarrySpeedImpactOf: aWeapon

	self carriedSpeedImpact + aWeapon speedImpact > self speed 
		ifTrue: [ self error: self class speedExceededErrorDescription ]! !

!Warrior methodsFor: 'weapons - private' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
assertCanCarryWeightOf: aWeapon

	self carriedWeight + aWeapon weight > self maximumWeight 
		ifTrue: [ self error: self class maximumWeightExceededErrorDescription ]! !

!Warrior methodsFor: 'weapons - private' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
weaponsImpactingSpeed

	^weapons select: [ :aWeapon | aWeapon isHeavierThan: 10 * kilogram ]! !

!Warrior methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
attack: aTarget with: aWeapon

	self assertCarries: aWeapon.
	aWeapon attack: aTarget carriedBy: self! !

!Warrior methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
hasLifeTimeUpTo: aLifeTime

	^lifeTime <= aLifeTime! !

!Warrior methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
receiveAttackOf: aWeapon carriedBy: anAttacker

	self subclassResponsibility! !

!Warrior methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
reduceLifeTimeBy: aLifeTimeReduction

	lifeTime := lifeTime - aLifeTimeReduction! !

!Warrior methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
assertCarries: aWeapon

	(self carries: aWeapon) ifFalse: [ self error: self class weaponNotCarriedErrorDescription ]! !

!Warrior class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
recruit

	^self withLifeTime: 100 * year! !

!Warrior class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
withLifeTime: aLifeTime

	^self new initializeWithLifeTime: aLifeTime! !

!Warrior class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
maximumWeightExceededErrorDescription

	^'S2'! !

!Warrior class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
speedExceededErrorDescription

	^'S3'! !

!Warrior class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
weaponNotCarriedErrorDescription

	^'S1'! !

!HeavyWarrior methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
maximumWeight

	^200 * kilogram! !

!HeavyWarrior methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
speed

	^40 * kilometer / hour! !

!HeavyWarrior methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
receiveAttackOf: aWeapon carriedBy: anAttacker

	aWeapon attackHeavyWarrior: self carriedBy: anAttacker! !

!LightWarrior methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
maximumWeight

	^50 * kilogram! !

!LightWarrior methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
speed

	^90 * kilometer / hour! !

!LightWarrior methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
receiveAttackOf: aWeapon carriedBy: anAttacker

	aWeapon attackLightWarrior: self carriedBy: anAttacker! !

!Weapon methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
initialize

	uses := 0! !

!Weapon methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
speedImpact

	self subclassResponsibility! !

!Weapon methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:44 am (UTC)'!
weight

	self subclassResponsibility! !

!Weapon methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
isHeavierThan: aWeight

	^self weight > aWeight! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
attack: aTarget carriedBy: anAttacker

	uses := uses + 1.
	aTarget receiveAttackOf: self carriedBy: anAttacker! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
attackHeavyWarrior: aTarget carriedBy: anAttacker

	self subclassResponsibility! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
attackLightWarrior: aTarget carriedBy: anAttacker

	self subclassResponsibility! !

!Weapon methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
dropFrom: anAttacker whenUsed: aNumberOfUses

	self whenUsed: aNumberOfUses do: [ anAttacker drop: self ]! !

!Weapon methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
replaceWith: aNewWeapon in: anAttacker whenUsed: aNumberOfUses

	self whenUsed: aNumberOfUses do: [ anAttacker replace: self with: aNewWeapon ]! !

!Weapon methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
whenUsed: aNumberOfUses do: anAction

	uses = aNumberOfUses ifTrue: anAction! !

!HeavyWeapon methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
speedImpact

	^15 * kilometer / hour! !

!HeavyWeapon methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
weight

	^40 * kilogram! !

!HeavyWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
attackHeavyWarrior: aTarget carriedBy: anAttacker

	aTarget reduceLifeTimeBy: 100 * year.
	self replaceWith: MediumWeapon new in: anAttacker whenUsed: 5! !

!HeavyWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
attackLightWarrior: aTarget carriedBy: anAttacker

	aTarget reduceLifeTimeBy: 100 * year.
	self dropFrom: anAttacker whenUsed: 10! !

!LightWeapon methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
speedImpact

	^5 * kilometer / hour! !

!LightWeapon methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
weight

	^10 * kilogram! !

!LightWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
attackHeavyWarrior: aTarget carriedBy: anAttacker

	aTarget reduceLifeTimeBy: 5 * year.
	anAttacker drop: self! !

!LightWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
attackLightWarrior: aTarget carriedBy: anAttacker

	aTarget reduceLifeTimeBy: 25 * year.
	self dropFrom: anAttacker whenUsed: 2! !

!MediumWeapon methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
speedImpact

	^10 * kilometer / hour! !

!MediumWeapon methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
weight

	^20 * kilogram! !

!MediumWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
attackHeavyWarrior: aTarget carriedBy: anAttacker

	aTarget reduceLifeTimeBy: 50 * year.
	(aTarget hasLifeTimeUpTo: 50 * year) ifTrue: [ anAttacker carry: LightWeapon new ]! !

!MediumWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:06:45 am (UTC)'!
attackLightWarrior: aTarget carriedBy: anAttacker

	aTarget reduceLifeTimeBy: 5 * year.
	self replaceWith: HeavyWeapon new in: anAttacker whenUsed: 5! !

!WarriorTest methodsFor: 'warriors' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
attackerCarrying: aWeapon

	| attacker |

	attacker := self lightWarrior.
	attacker carry: aWeapon.
	^attacker! !

!WarriorTest methodsFor: 'warriors' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
heavyWarrior

	^HeavyWarrior recruit! !

!WarriorTest methodsFor: 'warriors' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
lightWarrior

	^LightWarrior recruit! !

!WarriorTest methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
heavyWeapon

	^HeavyWeapon new! !

!WarriorTest methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
lightWeapon

	^LightWeapon new! !

!WarriorTest methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
mediumWeapon

	^MediumWeapon new! !

!WarriorTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
assertAttackWith: aWeapon reducesLifeTimeOf: aTarget by: aLifeTimeReduction

	| lifeTimeBeforeAttack |

	lifeTimeBeforeAttack := aTarget lifeTime.
	(self attackerCarrying: aWeapon) attack: aTarget with: aWeapon.

	self assert: aTarget lifeTime equals: lifeTimeBeforeAttack - aLifeTimeReduction! !

!WarriorTest methodsFor: 'tests - carrying' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test01LightWarriorCanNotCarryWeaponsExceedingItsMaximumWeight

	| warrior carriedWeapon exceedingWeapon |

	warrior := self lightWarrior.
	carriedWeapon := self heavyWeapon.
	exceedingWeapon := self heavyWeapon.
	warrior carry: carriedWeapon.

	self
		should: [ warrior carry: exceedingWeapon ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Warrior maximumWeightExceededErrorDescription.
			self assert: warrior weaponsCount equals: 1.
			self assert: (warrior carries: carriedWeapon) ]! !

!WarriorTest methodsFor: 'tests - carrying' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test02HeavyWarriorCanNotCarryWeaponsExceedingItsSpeed

	| warrior firstCarriedWeapon secondCarriedWeapon exceedingWeapon |

	warrior := self heavyWarrior.
	firstCarriedWeapon := self heavyWeapon.
	secondCarriedWeapon := self heavyWeapon.
	exceedingWeapon := self heavyWeapon.
	warrior carry: firstCarriedWeapon.
	warrior carry: secondCarriedWeapon.

	self
		should: [ warrior carry: exceedingWeapon ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Warrior speedExceededErrorDescription.
			self assert: warrior weaponsCount equals: 2.
			self assert: (warrior carries: firstCarriedWeapon).
			self assert: (warrior carries: secondCarriedWeapon) ]! !

!WarriorTest methodsFor: 'tests - carrying' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test03WarriorWithoutWeaponsCarriesNoWeight

	self assert: self heavyWarrior carriedWeight equals: 0 * kilogram! !

!WarriorTest methodsFor: 'tests - carrying' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test04WarriorCarryingOneWeaponCarriesItsWeight

	| warrior weapon |

	warrior := self heavyWarrior.
	weapon := self heavyWeapon.
	warrior carry: weapon.

	self assert: warrior carriedWeight equals: weapon weight! !

!WarriorTest methodsFor: 'tests - carrying' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test05WarriorWithoutWeaponsCarriesNoSpeedImpact

	self assert: self heavyWarrior carriedSpeedImpact equals: 0 * kilometer / hour! !

!WarriorTest methodsFor: 'tests - carrying' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test06WarriorCarryingManyWeaponsCarriesTheSumOfTheirWeights

	| warrior heavyWeapon lightWeapon |

	warrior := self heavyWarrior.
	heavyWeapon := self heavyWeapon.
	lightWeapon := self lightWeapon.
	warrior carry: heavyWeapon.
	warrior carry: lightWeapon.

	self assert: warrior carriedWeight equals: heavyWeapon weight + lightWeapon weight! !

!WarriorTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test07LightWeaponReducesLightWarriorLifeTimeBy25Years

	self assertAttackWith: self lightWeapon reducesLifeTimeOf: self lightWarrior by: 25 * year! !

!WarriorTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test08LightWeaponReducesHeavyWarriorLifeTimeBy5Years

	self assertAttackWith: self lightWeapon reducesLifeTimeOf: self heavyWarrior by: 5 * year! !

!WarriorTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test09MediumWeaponReducesLightWarriorLifeTimeBy5Years

	self assertAttackWith: self mediumWeapon reducesLifeTimeOf: self lightWarrior by: 5 * year! !

!WarriorTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test10MediumWeaponReducesHeavyWarriorLifeTimeBy50Years

	self assertAttackWith: self mediumWeapon reducesLifeTimeOf: self heavyWarrior by: 50 * year! !

!WarriorTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test11HeavyWeaponReducesLightWarriorLifeTimeBy100Years

	self assertAttackWith: self heavyWeapon reducesLifeTimeOf: self lightWarrior by: 100 * year! !

!WarriorTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test12HeavyWeaponReducesHeavyWarriorLifeTimeBy100Years

	self assertAttackWith: self heavyWeapon reducesLifeTimeOf: self heavyWarrior by: 100 * year! !

!WarriorTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test13LightWeaponIsDroppedAfterAttackingLightWarriorTwice

	| target weapon attacker |

	target := self lightWarrior.
	weapon := self lightWeapon.
	attacker := self attackerCarrying: weapon.
	2 timesRepeat: [ attacker attack: target with: weapon ].

	self
		should: [ attacker attack: target with: weapon ]
		raise: Error
		withMessageText: Warrior weaponNotCarriedErrorDescription! !

!WarriorTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test14LightWeaponIsDroppedAfterAttackingHeavyWarriorOnce

	| target weapon attacker |

	target := self heavyWarrior.
	weapon := self lightWeapon.
	attacker := self attackerCarrying: weapon.
	attacker attack: target with: weapon.

	self
		should: [ attacker attack: target with: weapon ]
		raise: Error
		withMessageText: Warrior weaponNotCarriedErrorDescription! !

!WarriorTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test15MediumWeaponIsReplacedByHeavyWeaponAfterAttackingLightWarriorFiveTimes

	| target weapon attacker |

	target := self lightWarrior.
	weapon := self mediumWeapon.
	attacker := self attackerCarrying: weapon.
	5 timesRepeat: [ attacker attack: target with: weapon ].

	self assert: attacker weaponsCount equals: 1.
	self assert: (attacker carriesWeaponOfKind: HeavyWeapon)! !

!WarriorTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test16MediumWeaponAddsLightWeaponWhenHeavyWarriorLifeTimeIsReducedTo50Years

	| target weapon attacker |

	target := self heavyWarrior.
	weapon := self mediumWeapon.
	attacker := self attackerCarrying: weapon.
	attacker attack: target with: weapon.

	self assert: attacker weaponsCount equals: 2.
	self assert: (attacker carries: weapon).
	self assert: (attacker carriesWeaponOfKind: LightWeapon)! !

!WarriorTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test17HeavyWeaponIsDroppedAfterAttackingLightWarriorTenTimes

	| target weapon attacker |

	target := self lightWarrior.
	weapon := self heavyWeapon.
	attacker := self attackerCarrying: weapon.
	10 timesRepeat: [ attacker attack: target with: weapon ].

	self assert: attacker weaponsCount equals: 0! !

!WarriorTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 10:07:10 am (UTC)'!
test18HeavyWeaponIsReplacedByMediumWeaponAfterAttackingHeavyWarriorFiveTimes

	| target weapon attacker |

	target := self heavyWarrior.
	weapon := self heavyWeapon.
	attacker := self attackerCarrying: weapon.
	5 timesRepeat: [ attacker attack: target with: weapon ].

	self assert: attacker weaponsCount equals: 1.
	self assert: (attacker carriesWeaponOfKind: MediumWeapon)! !
