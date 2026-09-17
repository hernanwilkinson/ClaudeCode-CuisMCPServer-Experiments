'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:33:51 am'!
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
	instanceVariableNames: 'timesUsed'
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


!Robot methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
initialize

	lifeTime := 100 * year.
	weapons := OrderedCollection new! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
maximumWeaponWeight

	self subclassResponsibility! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
speed

	self subclassResponsibility! !

!Robot methodsFor: 'life time' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
hasLifeTimeAtMost: aLifeTime

	^lifeTime <= aLifeTime! !

!Robot methodsFor: 'life time' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
lifeTime

	^lifeTime! !

!Robot methodsFor: 'life time' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
reduceLifeTimeBy: aLifeTimeReduction

	lifeTime := lifeTime - aLifeTimeReduction! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
addWeapon: aWeapon

	self assertCanCarryWeightOf: aWeapon.
	self assertCanAbsorbSpeedImpactOf: aWeapon.
	
	weapons add: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
carries: aWeapon

	^weapons includes: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
carriesWeaponOfKind: aWeaponClass

	^weapons anySatisfy: [ :weapon | weapon class = aWeaponClass ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
numberOfWeapons

	^weapons size! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
removeWeapon: aWeapon

	weapons remove: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
replaceWeapon: aWeapon with: aNewWeapon

	self removeWeapon: aWeapon.
	self addWeapon: aNewWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
weaponsSpeedImpact

	^self weaponsImpactingSpeed 
		inject: 0 * kilometer / hour 
		into: [ :totalSpeedImpact :weapon | totalSpeedImpact + weapon speedImpact ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
weaponsWeight

	^weapons inject: 0 * kilogram into: [ :totalWeight :weapon | totalWeight + weapon weight ]! !

!Robot methodsFor: 'weapons - private' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
assertCanAbsorbSpeedImpactOf: aWeapon

	self weaponsSpeedImpact + aWeapon speedImpact > self speed 
		ifTrue: [ self error: self class speedExceededErrorDescription ]! !

!Robot methodsFor: 'weapons - private' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
assertCanCarryWeightOf: aWeapon

	self weaponsWeight + aWeapon weight > self maximumWeaponWeight 
		ifTrue: [ self error: self class weaponWeightExceededErrorDescription ]! !

!Robot methodsFor: 'weapons - private' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
weaponsImpactingSpeed

	^weapons select: [ :weapon | weapon weight > (10 * kilogram) ]! !

!Robot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
attack: aTarget with: aWeapon

	self assertCarries: aWeapon.
	
	aWeapon attack: aTarget carriedBy: self! !

!Robot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
receiveAttackOf: aWeapon carriedBy: anAttacker

	self subclassResponsibility! !

!Robot methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
assertCarries: aWeapon

	(self carries: aWeapon) ifFalse: [ self error: self class weaponNotCarriedErrorDescription ]! !

!Robot class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
speedExceededErrorDescription

	^'The weapons speed impact can not exceed the robot speed'! !

!Robot class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
weaponNotCarriedErrorDescription

	^'The robot does not carry that weapon'! !

!Robot class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
weaponWeightExceededErrorDescription

	^'The weapons weight can not exceed the robot maximum weapon weight'! !

!HeavyRobot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
maximumWeaponWeight

	^200 * kilogram! !

!HeavyRobot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
speed

	^40 * kilometer / hour! !

!HeavyRobot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
receiveAttackOf: aWeapon carriedBy: anAttacker

	aWeapon attackHeavyRobot: self carriedBy: anAttacker! !

!LightRobot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
maximumWeaponWeight

	^50 * kilogram! !

!LightRobot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
speed

	^90 * kilometer / hour! !

!LightRobot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
receiveAttackOf: aWeapon carriedBy: anAttacker

	aWeapon attackLightRobot: self carriedBy: anAttacker! !

!Weapon methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
initialize

	timesUsed := 0! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
speedImpact

	self subclassResponsibility! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
weight

	self subclassResponsibility! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
attack: aTarget carriedBy: anAttacker

	timesUsed := timesUsed + 1.
	
	aTarget receiveAttackOf: self carriedBy: anAttacker! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
attackHeavyRobot: aTarget carriedBy: anAttacker

	self subclassResponsibility! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
attackLightRobot: aTarget carriedBy: anAttacker

	self subclassResponsibility! !

!Weapon methodsFor: 'attacking - private' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
hasBeenUsedTimes: aNumberOfTimes

	^timesUsed = aNumberOfTimes! !

!HeavyWeapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
speedImpact

	^15 * kilometer / hour! !

!HeavyWeapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
weight

	^40 * kilogram! !

!HeavyWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
attackHeavyRobot: aTarget carriedBy: anAttacker

	aTarget reduceLifeTimeBy: 100 * year.
	
	(self hasBeenUsedTimes: 5) ifTrue: [ anAttacker replaceWeapon: self with: MediumWeapon new ]! !

!HeavyWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
attackLightRobot: aTarget carriedBy: anAttacker

	aTarget reduceLifeTimeBy: 100 * year.
	
	(self hasBeenUsedTimes: 10) ifTrue: [ anAttacker removeWeapon: self ]! !

!LightWeapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
speedImpact

	^5 * kilometer / hour! !

!LightWeapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
weight

	^10 * kilogram! !

!LightWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
attackHeavyRobot: aTarget carriedBy: anAttacker

	aTarget reduceLifeTimeBy: 5 * year.
	
	anAttacker removeWeapon: self! !

!LightWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
attackLightRobot: aTarget carriedBy: anAttacker

	aTarget reduceLifeTimeBy: 25 * year.
	
	(self hasBeenUsedTimes: 2) ifTrue: [ anAttacker removeWeapon: self ]! !

!MediumWeapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
speedImpact

	^10 * kilometer / hour! !

!MediumWeapon methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
weight

	^20 * kilogram! !

!MediumWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
attackHeavyRobot: aTarget carriedBy: anAttacker

	aTarget reduceLifeTimeBy: 50 * year.
	
	(aTarget hasLifeTimeAtMost: 50 * year) ifTrue: [ anAttacker addWeapon: LightWeapon new ]! !

!MediumWeapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 9:33:03 am (UTC)'!
attackLightRobot: aTarget carriedBy: anAttacker

	aTarget reduceLifeTimeBy: 5 * year.
	
	(self hasBeenUsedTimes: 5) ifTrue: [ anAttacker replaceWeapon: self with: HeavyWeapon new ]! !

!RobotWarsTest methodsFor: 'robots' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
heavyRobotCarrying: aWeapon

	^HeavyRobot new addWeapon: aWeapon; yourself! !

!RobotWarsTest methodsFor: 'robots' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
lightRobotCarrying: aWeapon

	^LightRobot new addWeapon: aWeapon; yourself! !

!RobotWarsTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
assertAttackWith: aWeapon reducesLifeTimeOf: aTarget by: aLifeTimeReduction

	| attacker expectedLifeTime |
	
	attacker := self lightRobotCarrying: aWeapon.
	expectedLifeTime := aTarget lifeTime - aLifeTimeReduction.
	
	attacker attack: aTarget with: aWeapon.
	
	self assert: aTarget lifeTime equals: expectedLifeTime! !

!RobotWarsTest methodsFor: 'tests - weapons' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test01LightRobotCanNotCarryWeaponsHeavierThanItsMaximumWeaponWeight
	
	| robot carriedWeapon exceedingWeapon |
	
	carriedWeapon := HeavyWeapon new.
	robot := self lightRobotCarrying: carriedWeapon.
	exceedingWeapon := HeavyWeapon new.
	
	self
		should: [ robot addWeapon: exceedingWeapon ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Robot weaponWeightExceededErrorDescription.
			self assert: robot numberOfWeapons equals: 1.
			self assert: (robot carries: carriedWeapon).
			self deny: (robot carries: exceedingWeapon) ]! !

!RobotWarsTest methodsFor: 'tests - weapons' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test02HeavyRobotCanNotCarryWeaponsWhoseSpeedImpactExceedsItsSpeed
	
	| robot firstCarriedWeapon secondCarriedWeapon exceedingWeapon |
	
	firstCarriedWeapon := HeavyWeapon new.
	secondCarriedWeapon := HeavyWeapon new.
	robot := self heavyRobotCarrying: firstCarriedWeapon.
	robot addWeapon: secondCarriedWeapon.
	exceedingWeapon := HeavyWeapon new.
		
	self
		should: [ robot addWeapon: exceedingWeapon ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Robot speedExceededErrorDescription.
			self assert: robot numberOfWeapons equals: 2.
			self assert: (robot carries: firstCarriedWeapon).
			self assert: (robot carries: secondCarriedWeapon).
			self deny: (robot carries: exceedingWeapon) ]! !

!RobotWarsTest methodsFor: 'tests - weapons' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test03RobotWithoutWeaponsHasNoWeaponsWeight
	
	self assert: HeavyRobot new weaponsWeight equals: 0 * kilogram! !

!RobotWarsTest methodsFor: 'tests - weapons' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test04RobotWithOneWeaponHasThatWeaponWeight
	
	| robot weapon |
	
	weapon := HeavyWeapon new.
	robot := self heavyRobotCarrying: weapon.

	self assert: robot weaponsWeight equals: weapon weight! !

!RobotWarsTest methodsFor: 'tests - weapons' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test05RobotWithoutWeaponsHasNoWeaponsSpeedImpact
	
	self assert: HeavyRobot new weaponsSpeedImpact equals: 0 * kilometer / hour! !

!RobotWarsTest methodsFor: 'tests - weapons' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test06RobotWeaponsWeightIsTheSumOfItsWeaponsWeight

	| robot heavyWeapon lightWeapon |
	
	heavyWeapon := HeavyWeapon new.
	lightWeapon := LightWeapon new.
	robot := self heavyRobotCarrying: heavyWeapon.
	robot addWeapon: lightWeapon.

	self assert: robot weaponsWeight equals: heavyWeapon weight + lightWeapon weight! !

!RobotWarsTest methodsFor: 'tests - attacks' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test07LightWeaponReducesLightRobotLifeTimeBy25Years

	self assertAttackWith: LightWeapon new reducesLifeTimeOf: LightRobot new by: 25 * year! !

!RobotWarsTest methodsFor: 'tests - attacks' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test08LightWeaponReducesHeavyRobotLifeTimeBy5Years

	self assertAttackWith: LightWeapon new reducesLifeTimeOf: HeavyRobot new by: 5 * year! !

!RobotWarsTest methodsFor: 'tests - attacks' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test09MediumWeaponReducesLightRobotLifeTimeBy5Years

	self assertAttackWith: MediumWeapon new reducesLifeTimeOf: LightRobot new by: 5 * year! !

!RobotWarsTest methodsFor: 'tests - attacks' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test10MediumWeaponReducesHeavyRobotLifeTimeBy50Years

	self assertAttackWith: MediumWeapon new reducesLifeTimeOf: HeavyRobot new by: 50 * year! !

!RobotWarsTest methodsFor: 'tests - attacks' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test11HeavyWeaponReducesLightRobotLifeTimeBy100Years

	self assertAttackWith: HeavyWeapon new reducesLifeTimeOf: LightRobot new by: 100 * year! !

!RobotWarsTest methodsFor: 'tests - attacks' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test12HeavyWeaponReducesHeavyRobotLifeTimeBy100Years

	self assertAttackWith: HeavyWeapon new reducesLifeTimeOf: HeavyRobot new by: 100 * year! !

!RobotWarsTest methodsFor: 'tests - attacks' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test13AttackerLosesLightWeaponAfterAttackingLightRobotTwice

	| attacker target weapon |
	
	weapon := LightWeapon new.
	attacker := self lightRobotCarrying: weapon.
	target := LightRobot new.
	2 timesRepeat: [ attacker attack: target with: weapon ].
	
	self 
		should: [ attacker attack: target with: weapon ]
		raise: Error
		withMessageText: Robot weaponNotCarriedErrorDescription! !

!RobotWarsTest methodsFor: 'tests - attacks' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test14AttackerLosesLightWeaponAfterAttackingHeavyRobotOnce

	| attacker target weapon |
	
	weapon := LightWeapon new.
	attacker := self lightRobotCarrying: weapon.
	target := HeavyRobot new.
	attacker attack: target with: weapon.
	
	self 
		should: [ attacker attack: target with: weapon ]
		raise: Error
		withMessageText: Robot weaponNotCarriedErrorDescription! !

!RobotWarsTest methodsFor: 'tests - attacks' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test15AttackerReplacesMediumWeaponWithHeavyWeaponAfterAttackingLightRobotFiveTimes

	| attacker target weapon |
	
	weapon := MediumWeapon new.
	attacker := self lightRobotCarrying: weapon.
	target := LightRobot new.
	
	5 timesRepeat: [ attacker attack: target with: weapon ].
	
	self assert: attacker numberOfWeapons equals: 1.
	self assert: (attacker carriesWeaponOfKind: HeavyWeapon)! !

!RobotWarsTest methodsFor: 'tests - attacks' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test16AttackerGainsLightWeaponWhenMediumWeaponLeavesHeavyRobotWithFiftyYearsOfLifeTime

	| attacker target weapon |
	
	weapon := MediumWeapon new.
	attacker := self lightRobotCarrying: weapon.
	target := HeavyRobot new.
	
	attacker attack: target with: weapon.
	
	self assert: attacker numberOfWeapons equals: 2.
	self assert: (attacker carries: weapon).
	self assert: (attacker carriesWeaponOfKind: LightWeapon)! !

!RobotWarsTest methodsFor: 'tests - attacks' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test17AttackerLosesHeavyWeaponAfterAttackingLightRobotTenTimes

	| attacker target weapon |
	
	weapon := HeavyWeapon new.
	attacker := self lightRobotCarrying: weapon.
	target := LightRobot new.
	
	10 timesRepeat: [ attacker attack: target with: weapon ].
	
	self assert: attacker numberOfWeapons equals: 0! !

!RobotWarsTest methodsFor: 'tests - attacks' stamp: 'HAW 17/Sep/2026, 9:33:28 am (UTC)'!
test18AttackerReplacesHeavyWeaponWithMediumWeaponAfterAttackingHeavyRobotFiveTimes

	| attacker target weapon |
	
	weapon := HeavyWeapon new.
	attacker := self lightRobotCarrying: weapon.
	target := HeavyRobot new.
	
	5 timesRepeat: [ attacker attack: target with: weapon ].
	
	self assert: attacker numberOfWeapons equals: 1.
	self assert: (attacker carriesWeaponOfKind: MediumWeapon)! !
