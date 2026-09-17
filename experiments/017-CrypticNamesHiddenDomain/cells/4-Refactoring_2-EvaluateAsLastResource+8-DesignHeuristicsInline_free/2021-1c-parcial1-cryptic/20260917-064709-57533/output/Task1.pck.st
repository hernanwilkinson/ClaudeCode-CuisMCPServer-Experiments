'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:50:42 am'!
'Description '!
!provides: 'Task1' 1 2!
SystemOrganization addCategory: #Task1!
SystemOrganization addCategory: #'Task1-Tests'!


!classDefinition: #Robot category: #Task1!
Object subclass: #Robot
	instanceVariableNames: 'lifeTime weapons'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'Robot class' category: #Task1!
Robot class
	instanceVariableNames: ''!

!classDefinition: #HeavyRobot category: #Task1!
Robot subclass: #HeavyRobot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'HeavyRobot class' category: #Task1!
HeavyRobot class
	instanceVariableNames: ''!

!classDefinition: #LightRobot category: #Task1!
Robot subclass: #LightRobot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'LightRobot class' category: #Task1!
LightRobot class
	instanceVariableNames: ''!

!classDefinition: #Weapon category: #Task1!
Object subclass: #Weapon
	instanceVariableNames: 'numberOfAttacks'
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

!classDefinition: #RobotWarsTest category: #'Task1-Tests'!
TestCase subclass: #RobotWarsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1-Tests'!
!classDefinition: 'RobotWarsTest class' category: #'Task1-Tests'!
RobotWarsTest class
	instanceVariableNames: ''!


!Robot methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
initialize

	lifeTime := 100 * year.
	weapons := OrderedCollection new! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
hasLifeTimeUpTo: aLifeTime

	^lifeTime <= aLifeTime! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
lifeTime

	^lifeTime! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
maximumWeaponWeight

	self subclassResponsibility! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
speed

	self subclassResponsibility! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
addWeapon: aWeapon

	self assertCanCarryWeightOf: aWeapon.
	self assertCanStandSpeedImpactOf: aWeapon.

	weapons add: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
discard: aWeapon

	weapons remove: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
isArmedWith: aWeapon

	^weapons includes: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
isArmedWithWeaponOfKind: aWeaponKind

	^weapons anySatisfy: [ :aWeapon | aWeapon isKindOf: aWeaponKind ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
numberOfWeapons

	^weapons size! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
replace: aWeapon with: aNewWeapon

	self discard: aWeapon.
	self addWeapon: aNewWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
weaponsSpeedImpact

	^weapons 
		inject: 0 * kilometer / hour 
		into: [ :totalSpeedImpact :aWeapon | totalSpeedImpact + aWeapon carriedSpeedImpact ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
weaponsWeight

	^weapons inject: 0 * kilogram into: [ :totalWeight :aWeapon | totalWeight + aWeapon weight ]! !

!Robot methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
assertCanCarryWeightOf: aWeapon

	self weaponsWeight + aWeapon weight > self maximumWeaponWeight 
		ifTrue: [ self error: self class maximumWeaponWeightExceededErrorDescription ]! !

!Robot methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
assertCanStandSpeedImpactOf: aWeapon

	self weaponsSpeedImpact + aWeapon speedImpact > self speed 
		ifTrue: [ self error: self class speedExceededErrorDescription ]! !

!Robot methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
assertIsArmedWith: aWeapon

	(self isArmedWith: aWeapon) ifFalse: [ self error: self class weaponNotCarriedErrorDescription ]! !

!Robot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
attack: anAttackedRobot with: aWeapon

	self assertIsArmedWith: aWeapon.

	aWeapon attack: anAttackedRobot ownedBy: self! !

!Robot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
receiveAttackFrom: aWeapon ownedBy: anAttacker

	self subclassResponsibility! !

!Robot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
reduceLifeTimeBy: aDamage

	lifeTime := lifeTime - aDamage! !

!Robot class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
maximumWeaponWeightExceededErrorDescription

	^'The weapons can not weigh more than the maximum weapon weight of the robot'! !

!Robot class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
speedExceededErrorDescription

	^'The weapons can not reduce the speed of the robot below zero'! !

!Robot class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
weaponNotCarriedErrorDescription

	^'The robot is not armed with that weapon'! !

!HeavyRobot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
maximumWeaponWeight

	^200 * kilogram! !

!HeavyRobot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
speed

	^40 * kilometer / hour! !

!HeavyRobot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
receiveAttackFrom: aWeapon ownedBy: anAttacker

	aWeapon attackHeavyRobot: self ownedBy: anAttacker! !

!LightRobot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
maximumWeaponWeight

	^50 * kilogram! !

!LightRobot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
speed

	^90 * kilometer / hour! !

!LightRobot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
receiveAttackFrom: aWeapon ownedBy: anAttacker

	aWeapon attackLightRobot: self ownedBy: anAttacker! !

!Weapon methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
initialize

	numberOfAttacks := 0! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
carriedSpeedImpact

	^self isLight 
		ifTrue: [ 0 * kilometer / hour ] 
		ifFalse: [ self speedImpact ]! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
isLight

	^self weight <= (10 * kilogram)! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
speedImpact

	self subclassResponsibility! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
weight

	self subclassResponsibility! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
attack: anAttackedRobot ownedBy: anAttacker

	numberOfAttacks := numberOfAttacks + 1.
	anAttackedRobot receiveAttackFrom: self ownedBy: anAttacker! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
attackHeavyRobot: anAttackedRobot ownedBy: anAttacker

	self subclassResponsibility! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
attackLightRobot: anAttackedRobot ownedBy: anAttacker

	self subclassResponsibility! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
hasAttackedTimes: aNumberOfAttacks

	^numberOfAttacks = aNumberOfAttacks! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
isDiscardedBy: anAttacker afterAttackingTimes: aNumberOfAttacks

	(self hasAttackedTimes: aNumberOfAttacks) ifTrue: [ anAttacker discard: self ]! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
isReplacedWith: aNewWeapon by: anAttacker afterAttackingTimes: aNumberOfAttacks

	(self hasAttackedTimes: aNumberOfAttacks) ifTrue: [ anAttacker replace: self with: aNewWeapon ]! !

!HeavyWeapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
speedImpact

	^15 * kilometer / hour! !

!HeavyWeapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
weight

	^40 * kilogram! !

!HeavyWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
attackHeavyRobot: anAttackedRobot ownedBy: anAttacker

	anAttackedRobot reduceLifeTimeBy: 100 * year.
	self isReplacedWith: MediumWeapon new by: anAttacker afterAttackingTimes: 5! !

!HeavyWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
attackLightRobot: anAttackedRobot ownedBy: anAttacker

	anAttackedRobot reduceLifeTimeBy: 100 * year.
	self isDiscardedBy: anAttacker afterAttackingTimes: 10! !

!LightWeapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
speedImpact

	^5 * kilometer / hour! !

!LightWeapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
weight

	^10 * kilogram! !

!LightWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
attackHeavyRobot: anAttackedRobot ownedBy: anAttacker

	anAttackedRobot reduceLifeTimeBy: 5 * year.
	anAttacker discard: self! !

!LightWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
attackLightRobot: anAttackedRobot ownedBy: anAttacker

	anAttackedRobot reduceLifeTimeBy: 25 * year.
	self isDiscardedBy: anAttacker afterAttackingTimes: 2! !

!MediumWeapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
speedImpact

	^10 * kilometer / hour! !

!MediumWeapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
weight

	^20 * kilogram! !

!MediumWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
attackHeavyRobot: anAttackedRobot ownedBy: anAttacker

	anAttackedRobot reduceLifeTimeBy: 50 * year.
	(anAttackedRobot hasLifeTimeUpTo: 50 * year) ifTrue: [ anAttacker addWeapon: LightWeapon new ]! !

!MediumWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:49:53 am (UTC)'!
attackLightRobot: anAttackedRobot ownedBy: anAttacker

	anAttackedRobot reduceLifeTimeBy: 5 * year.
	self isReplacedWith: HeavyWeapon new by: anAttacker afterAttackingTimes: 5! !

!RobotWarsTest methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
assertAttacking: anAttackedRobot with: aWeapon leavesItsLifeTimeAt: anExpectedLifeTime

	(self lightRobotArmedWith: aWeapon) attack: anAttackedRobot with: aWeapon.
	
	self assert: anAttackedRobot lifeTime equals: anExpectedLifeTime! !

!RobotWarsTest methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
heavyRobotArmedWith: aWeapon

	| robot |
	
	robot := HeavyRobot new.
	robot addWeapon: aWeapon.
	
	^robot! !

!RobotWarsTest methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
lightRobotArmedWith: aWeapon

	| robot |
	
	robot := LightRobot new.
	robot addWeapon: aWeapon.
	
	^robot! !

!RobotWarsTest methodsFor: 'tests - weapons' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test01AddingWeaponsHeavierThanMaximumWeaponWeightFailsWithoutAddingThem
	
	| robot weapon exceedingWeapon |
	
	weapon := HeavyWeapon new.
	robot := self lightRobotArmedWith: weapon.
	exceedingWeapon := HeavyWeapon new.
	
	self
		should: [ robot addWeapon: exceedingWeapon ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Robot maximumWeaponWeightExceededErrorDescription.
			self assert: robot numberOfWeapons equals: 1.
			self assert: (robot isArmedWith: weapon) ]! !

!RobotWarsTest methodsFor: 'tests - weapons' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test02AddingWeaponsWhoseSpeedImpactExceedsRobotSpeedFailsWithoutAddingThem
	
	| robot firstWeapon secondWeapon exceedingWeapon |
	
	firstWeapon := HeavyWeapon new.
	secondWeapon := HeavyWeapon new.
	robot := self heavyRobotArmedWith: firstWeapon.
	robot addWeapon: secondWeapon.
	exceedingWeapon := HeavyWeapon new.
		
	self
		should: [ robot addWeapon: exceedingWeapon ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Robot speedExceededErrorDescription.
			self assert: robot numberOfWeapons equals: 2.
			self assert: (robot isArmedWith: firstWeapon).
			self assert: (robot isArmedWith: secondWeapon) ]! !

!RobotWarsTest methodsFor: 'tests - weapons' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test03UnarmedRobotHasNoWeaponsWeight
	
	self assert: HeavyRobot new weaponsWeight equals: 0 * kilogram! !

!RobotWarsTest methodsFor: 'tests - weapons' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test04RobotArmedWithOneWeaponHasItsWeightAsWeaponsWeight
	
	| weapon |
	
	weapon := HeavyWeapon new.

	self assert: (self heavyRobotArmedWith: weapon) weaponsWeight equals: weapon weight! !

!RobotWarsTest methodsFor: 'tests - weapons' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test05UnarmedRobotHasNoWeaponsSpeedImpact
	
	self assert: HeavyRobot new weaponsSpeedImpact equals: 0 * kilometer / hour! !

!RobotWarsTest methodsFor: 'tests - weapons' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test06RobotArmedWithTwoWeaponsHasTheSumOfTheirWeightsAsWeaponsWeight

	| robot heavyWeapon lightWeapon |
	
	heavyWeapon := HeavyWeapon new.
	lightWeapon := LightWeapon new.
	robot := self heavyRobotArmedWith: heavyWeapon.
	robot addWeapon: lightWeapon.

	self assert: robot weaponsWeight equals: heavyWeapon weight + lightWeapon weight! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test07LightWeaponReducesLightRobotLifeTimeIn25Years

	self 
		assertAttacking: LightRobot new 
		with: LightWeapon new 
		leavesItsLifeTimeAt: 75 * year! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test08LightWeaponReducesHeavyRobotLifeTimeIn5Years

	self 
		assertAttacking: HeavyRobot new 
		with: LightWeapon new 
		leavesItsLifeTimeAt: 95 * year! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test09MediumWeaponReducesLightRobotLifeTimeIn5Years

	self 
		assertAttacking: LightRobot new 
		with: MediumWeapon new 
		leavesItsLifeTimeAt: 95 * year! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test10MediumWeaponReducesHeavyRobotLifeTimeIn50Years

	self 
		assertAttacking: HeavyRobot new 
		with: MediumWeapon new 
		leavesItsLifeTimeAt: 50 * year! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test11HeavyWeaponReducesLightRobotLifeTimeIn100Years

	self 
		assertAttacking: LightRobot new 
		with: HeavyWeapon new 
		leavesItsLifeTimeAt: 0 * year! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test12HeavyWeaponReducesHeavyRobotLifeTimeIn100Years

	self 
		assertAttacking: HeavyRobot new 
		with: HeavyWeapon new 
		leavesItsLifeTimeAt: 0 * year! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test13LightWeaponIsDiscardedAfterAttackingLightRobotTwice

	| attacker attackedRobot weapon |
	
	weapon := LightWeapon new.
	attacker := self lightRobotArmedWith: weapon.
	attackedRobot := LightRobot new.
	
	2 timesRepeat: [ attacker attack: attackedRobot with: weapon ].
	
	self 
		should: [ attacker attack: attackedRobot with: weapon ]
		raise: Error
		withMessageText: Robot weaponNotCarriedErrorDescription! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test14LightWeaponIsDiscardedAfterAttackingHeavyRobotOnce

	| attacker attackedRobot weapon |
	
	weapon := LightWeapon new.
	attacker := self lightRobotArmedWith: weapon.
	attackedRobot := HeavyRobot new.
	
	attacker attack: attackedRobot with: weapon.
	
	self 
		should: [ attacker attack: attackedRobot with: weapon ]
		raise: Error
		withMessageText: Robot weaponNotCarriedErrorDescription! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test15MediumWeaponIsReplacedByHeavyWeaponAfterAttackingLightRobotFiveTimes

	| attacker attackedRobot weapon |
	
	weapon := MediumWeapon new.
	attacker := self lightRobotArmedWith: weapon.
	attackedRobot := LightRobot new.
	
	5 timesRepeat: [ attacker attack: attackedRobot with: weapon ].
	
	self assert: attacker numberOfWeapons equals: 1.
	self assert: (attacker isArmedWithWeaponOfKind: HeavyWeapon)! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test16MediumWeaponLeavingHeavyRobotWithUpTo50YearsArmsAttackerWithLightWeapon

	| attacker attackedRobot weapon |
	
	weapon := MediumWeapon new.
	attacker := self lightRobotArmedWith: weapon.
	attackedRobot := HeavyRobot new.
	
	attacker attack: attackedRobot with: weapon.
	
	self assert: attacker numberOfWeapons equals: 2.
	self assert: (attacker isArmedWith: weapon).
	self assert: (attacker isArmedWithWeaponOfKind: LightWeapon)! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test17HeavyWeaponIsDiscardedAfterAttackingLightRobotTenTimes

	| attacker attackedRobot weapon |
	
	weapon := HeavyWeapon new.
	attacker := self lightRobotArmedWith: weapon.
	attackedRobot := LightRobot new.
	
	10 timesRepeat: [ attacker attack: attackedRobot with: weapon ].
	
	self assert: attacker numberOfWeapons equals: 0! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
test18HeavyWeaponIsReplacedByMediumWeaponAfterAttackingHeavyRobotFiveTimes

	| attacker attackedRobot weapon |
	
	weapon := HeavyWeapon new.
	attacker := self lightRobotArmedWith: weapon.
	attackedRobot := HeavyRobot new.
	
	5 timesRepeat: [ attacker attack: attackedRobot with: weapon ].
	
	self assert: attacker numberOfWeapons equals: 1.
	self assert: (attacker isArmedWithWeaponOfKind: MediumWeapon)! !

!RobotWarsTest class methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:50:22 am (UTC)'!
initialize

	| kilogramUnit |
	gram := BaseUnit named: 'gram' sign: 'g'.
	kilogramUnit := ProportionalDerivedUnit baseUnit: gram conversionFactor: 1000 named: 'kilogram' sign: 'kg'.
	
	Smalltalk at: #kilogram put: kilogramUnit! !
RobotWarsTest initialize!
