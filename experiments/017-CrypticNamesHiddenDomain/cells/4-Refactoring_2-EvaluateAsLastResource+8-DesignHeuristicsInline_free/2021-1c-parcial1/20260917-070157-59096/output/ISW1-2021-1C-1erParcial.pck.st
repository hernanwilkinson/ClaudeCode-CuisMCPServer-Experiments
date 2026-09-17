'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:04:11 am'!
'Description '!
!provides: 'ISW1-2021-1C-1erParcial' 1 0!
SystemOrganization addCategory: #'ISW1-2021-1C-1erParcial'!
SystemOrganization addCategory: #'ISW1-2021-1C-1erParcial-Tests'!


!classDefinition: #Robot category: #'ISW1-2021-1C-1erParcial'!
Object subclass: #Robot
	instanceVariableNames: 'life weapons'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2021-1C-1erParcial'!
!classDefinition: 'Robot class' category: #'ISW1-2021-1C-1erParcial'!
Robot class
	instanceVariableNames: ''!

!classDefinition: #Aluminum3000 category: #'ISW1-2021-1C-1erParcial'!
Robot subclass: #Aluminum3000
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2021-1C-1erParcial'!
!classDefinition: 'Aluminum3000 class' category: #'ISW1-2021-1C-1erParcial'!
Aluminum3000 class
	instanceVariableNames: ''!

!classDefinition: #TankRover category: #'ISW1-2021-1C-1erParcial'!
Robot subclass: #TankRover
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2021-1C-1erParcial'!
!classDefinition: 'TankRover class' category: #'ISW1-2021-1C-1erParcial'!
TankRover class
	instanceVariableNames: ''!

!classDefinition: #Weapon category: #'ISW1-2021-1C-1erParcial'!
Object subclass: #Weapon
	instanceVariableNames: 'usedTimes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2021-1C-1erParcial'!
!classDefinition: 'Weapon class' category: #'ISW1-2021-1C-1erParcial'!
Weapon class
	instanceVariableNames: ''!

!classDefinition: #Claw category: #'ISW1-2021-1C-1erParcial'!
Weapon subclass: #Claw
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2021-1C-1erParcial'!
!classDefinition: 'Claw class' category: #'ISW1-2021-1C-1erParcial'!
Claw class
	instanceVariableNames: ''!

!classDefinition: #HSBlaster category: #'ISW1-2021-1C-1erParcial'!
Weapon subclass: #HSBlaster
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2021-1C-1erParcial'!
!classDefinition: 'HSBlaster class' category: #'ISW1-2021-1C-1erParcial'!
HSBlaster class
	instanceVariableNames: ''!

!classDefinition: #TurboLaserCannon category: #'ISW1-2021-1C-1erParcial'!
Weapon subclass: #TurboLaserCannon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2021-1C-1erParcial'!
!classDefinition: 'TurboLaserCannon class' category: #'ISW1-2021-1C-1erParcial'!
TurboLaserCannon class
	instanceVariableNames: ''!

!classDefinition: #RobotWarsTest category: #'ISW1-2021-1C-1erParcial-Tests'!
TestCase subclass: #RobotWarsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2021-1C-1erParcial-Tests'!
!classDefinition: 'RobotWarsTest class' category: #'ISW1-2021-1C-1erParcial-Tests'!
RobotWarsTest class
	instanceVariableNames: ''!


!Robot methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
initialize

	life := 100 * year.
	weapons := OrderedCollection new! !

!Robot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
attack: aVictim with: aWeapon

	self assertIncludesWeapon: aWeapon.
	
	aWeapon attack: aVictim by: self! !

!Robot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
beAttackedWith: aWeapon by: anAttacker

	self subclassResponsibility! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
addWeapon: aWeapon

	self assertMaxWeaponWeightIsNotExceededAdding: aWeapon.
	self assertSpeedIsNotBelowZeroAdding: aWeapon.
	
	weapons add: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
includesWeapon: aWeapon 
	
	^weapons includes: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
includesWeaponOfType: aWeaponType

	^weapons anySatisfy: [ :weapon | weapon isMemberOf: aWeaponType ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
removeWeapon: aWeapon 
	
	weapons remove: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
replaceWeapon: aWeapon with: aNewWeapon
	
	self removeWeapon: aWeapon.
	self addWeapon: aNewWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
totalSpeedImpact

	^self weaponsImpactingSpeed 
		sum: [ :weapon | weapon speedImpact ] 
		ifEmpty: [ 0 * kilometer / hour ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
totalWeaponWeight

	^weapons sum: [ :weapon | weapon weight ] ifEmpty: [ 0 * kilogram ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
weaponsCount

	^weapons size! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
weaponsImpactingSpeed

	^weapons select: [ :weapon | weapon impactsSpeed ]! !

!Robot methodsFor: 'life' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
hasLifeAtMost: aLife

	^life <= aLife! !

!Robot methodsFor: 'life' stamp: 'FRT 28/Apr/2021, 11:33:19 pm (UTC)'!
life

	^ life! !

!Robot methodsFor: 'life' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
reduceLifeBy: aDamage

	life := life - aDamage! !

!Robot methodsFor: 'exceptions' stamp: 'HAW 29/Apr/2021, 11:49:49 pm (UTC)'!
signalCanNotAttackWithWeaponNotBelongingToRobot
	
	self error: self class canNotAttackWithWeaponNotBelongingToRobotErrorDescription! !

!Robot methodsFor: 'exceptions' stamp: 'FRT 28/Apr/2021, 7:02:10 pm (UTC)'!
signalMaxWeaponWeightExceeded

	self error: self class maxWeaponWeightExceededErrorDescription 	! !

!Robot methodsFor: 'exceptions' stamp: 'FRT 29/Apr/2021, 1:53:14 am (UTC)'!
signalSpeedBelowZero

	self error: self class speedBelowZeroErrorDescription 	! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
maxWeaponWeight

	self subclassResponsibility! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
speed

	self subclassResponsibility! !

!Robot methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
assertIncludesWeapon: aWeapon

	(self includesWeapon: aWeapon) ifFalse: [ self signalCanNotAttackWithWeaponNotBelongingToRobot ]! !

!Robot methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
assertMaxWeaponWeightIsNotExceededAdding: aWeapon

	self totalWeaponWeight + aWeapon weight > self maxWeaponWeight ifTrue: [ self signalMaxWeaponWeightExceeded ]! !

!Robot methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
assertSpeedIsNotBelowZeroAdding: aWeapon

	self totalSpeedImpact + aWeapon speedImpact > self speed ifTrue: [ self signalSpeedBelowZero ]! !

!Robot class methodsFor: 'error description' stamp: 'HAW 29/Apr/2021, 11:50:34 pm (UTC)'!
canNotAttackWithWeaponNotBelongingToRobotErrorDescription
	
	^'Cannot attack with weapon not belonging to robot'! !

!Robot class methodsFor: 'error description' stamp: 'FRT 28/Apr/2021, 7:04:48 pm (UTC)'!
maxWeaponWeightExceededErrorDescription

	^ 'Maximum weapon weight has been exceeded'! !

!Robot class methodsFor: 'error description' stamp: 'HAW 2/May/2021, 6:52:46 pm (UTC)'!
speedBelowZeroErrorDescription

	^ 'Speed cannot be below zero kilometer per hour'! !

!Aluminum3000 methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
maxWeaponWeight

	^50 * kilogram! !

!Aluminum3000 methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
speed

	^90 * kilometer / hour! !

!Aluminum3000 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
beAttackedWith: aWeapon by: anAttacker

	aWeapon attackAluminum3000: self by: anAttacker! !

!TankRover methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
maxWeaponWeight

	^200 * kilogram! !

!TankRover methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
speed

	^40 * kilometer / hour! !

!TankRover methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
beAttackedWith: aWeapon by: anAttacker

	aWeapon attackTankRover: self by: anAttacker! !

!Weapon methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
initialize

	usedTimes := 0! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
attack: aVictim by: anAttacker

	usedTimes := usedTimes + 1.
	aVictim beAttackedWith: self by: anAttacker! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
attackAluminum3000: aVictim by: anAttacker

	self subclassResponsibility! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
attackTankRover: aVictim by: anAttacker

	self subclassResponsibility! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
removeFrom: anAttacker whenUsed: aNumberOfTimes

	(self hasBeenUsed: aNumberOfTimes) ifTrue: [ anAttacker removeWeapon: self ]! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
replaceWith: aNewWeapon in: anAttacker whenUsed: aNumberOfTimes

	(self hasBeenUsed: aNumberOfTimes) ifTrue: [ anAttacker replaceWeapon: self with: aNewWeapon ]! !

!Weapon methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
speedImpact

	self subclassResponsibility! !

!Weapon methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
weight

	self subclassResponsibility! !

!Weapon methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
hasBeenUsed: aNumberOfTimes

	^usedTimes = aNumberOfTimes! !

!Weapon methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
impactsSpeed

	^self weight > (10 * kilogram)! !

!Claw methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
speedImpact

	^5 * kilometer / hour! !

!Claw methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
weight

	^10 * kilogram! !

!Claw methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
attackAluminum3000: aVictim by: anAttacker

	aVictim reduceLifeBy: 25 * year.
	self removeFrom: anAttacker whenUsed: 2! !

!Claw methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
attackTankRover: aVictim by: anAttacker

	aVictim reduceLifeBy: 5 * year.
	anAttacker removeWeapon: self! !

!HSBlaster methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
speedImpact

	^10 * kilometer / hour! !

!HSBlaster methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
weight

	^20 * kilogram! !

!HSBlaster methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
attackAluminum3000: aVictim by: anAttacker

	aVictim reduceLifeBy: 5 * year.
	self replaceWith: TurboLaserCannon new in: anAttacker whenUsed: 5! !

!HSBlaster methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
attackTankRover: aVictim by: anAttacker

	aVictim reduceLifeBy: 50 * year.
	(aVictim hasLifeAtMost: 50 * year) ifTrue: [ anAttacker addWeapon: Claw new ]! !

!TurboLaserCannon methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
speedImpact

	^15 * kilometer / hour! !

!TurboLaserCannon methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
weight

	^40 * kilogram! !

!TurboLaserCannon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
attackAluminum3000: aVictim by: anAttacker

	aVictim reduceLifeBy: 100 * year.
	self removeFrom: anAttacker whenUsed: 10! !

!TurboLaserCannon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:03:25 am (UTC)'!
attackTankRover: aVictim by: anAttacker

	aVictim reduceLifeBy: 100 * year.
	self replaceWith: HSBlaster new in: anAttacker whenUsed: 5! !

!RobotWarsTest methodsFor: 'robot creation tests' stamp: 'HAW 30/Apr/2021, 8:31:10 pm (UTC)'!
test01ShouldNotAddWeaponIfMaxWeaponWeightExceeded
	
	| robot addedWeapon |
	
	robot := self createAluminum3000.
	addedWeapon := self createTurboLaserCannon.
	robot addWeapon: addedWeapon.
	
	self
		should: [ robot addWeapon: self createTurboLaserCannon ]
		raise: Error
		withMessageText: Robot maxWeaponWeightExceededErrorDescription.
		
	self assert: 1 equals: robot weaponsCount.
	self assert: (robot includesWeapon: addedWeapon)

	
	

	! !

!RobotWarsTest methodsFor: 'robot creation tests' stamp: 'HAW 30/Apr/2021, 8:31:48 pm (UTC)'!
test02ShouldNotAddWeaponIfSpeedBelowZero
	
	| robot firstAddedWeapon secondAddedWeapon |
	
	robot := self createTankRover.
	firstAddedWeapon := self createTurboLaserCannon.
	robot addWeapon: firstAddedWeapon.
	secondAddedWeapon := self createTurboLaserCannon.
	robot addWeapon: secondAddedWeapon.
		
	self
		should: [ robot addWeapon: self createTurboLaserCannon ]
		raise: Error
		withMessageText: Robot speedBelowZeroErrorDescription .
		
	self assert: 2 equals: (robot weaponsCount).
	self assert: (robot includesWeapon: firstAddedWeapon).
	self assert: (robot includesWeapon: secondAddedWeapon)
	

	! !

!RobotWarsTest methodsFor: 'robot creation tests' stamp: 'HAW 2/May/2021, 6:49:38 pm (UTC)'!
test03ShouldHaveZeroWeightWhenNoWeaponsAdded
	
	| robot |
	
	robot := self createTankRover.

	self assert: 0 * kilogram equals: robot totalWeaponWeight.
	
	

	! !

!RobotWarsTest methodsFor: 'robot creation tests' stamp: 'HAW 30/Apr/2021, 8:32:23 pm (UTC)'!
test04ShouldAddWeightWhenAddingWeapon
	
	| robot weapon |
	
	robot := self createTankRover.
	weapon := self createTurboLaserCannon.

	robot addWeapon: weapon.

	self assert: weapon weight equals: robot totalWeaponWeight.
	
	

	! !

!RobotWarsTest methodsFor: 'robot creation tests' stamp: 'HAW 2/May/2021, 6:49:58 pm (UTC)'!
test05ShouldHaveZeroSpeedWhenNoWeaponsAdded
	
	| robot |
	
	robot := self createTankRover.

	self assert: 0 * kilometer / hour equals: robot totalSpeedImpact.
	
	

	! !

!RobotWarsTest methodsFor: 'robot creation tests' stamp: 'HAW 30/Apr/2021, 8:32:57 pm (UTC)'!
test06ShouldAddSpeedImpactWhenAddingWeapons

	| robot weapon anotherWeapon |
	
	robot := self createTankRover.
	weapon := self createTurboLaserCannon.
	anotherWeapon := self createClaw.

	robot addWeapon: weapon.
	robot addWeapon: anotherWeapon.

	self assert: weapon weight + anotherWeapon weight equals: robot totalWeaponWeight.
	
	

	! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
test07ClawReducesLifeOfAluminum3000By25

	self assertAttackingWith: self createClaw reducesLifeOf: self createAluminum3000 by: 25 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
test08ClawReducesLifeOfTankRoverBy5

	self assertAttackingWith: self createClaw reducesLifeOf: self createTankRover by: 5 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
test09HSBlasterReducesLifeOfAluminum3000By5

	self assertAttackingWith: self createHSBlaster reducesLifeOf: self createAluminum3000 by: 5 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
test10HSBlasterReducesLifeOfTankRoverBy50

	self assertAttackingWith: self createHSBlaster reducesLifeOf: self createTankRover by: 50 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
test11TurboLaserCannonReducesLifeOfAluminum3000By100

	self 
		assertAttackingWith: self createTurboLaserCannon 
		reducesLifeOf: self createAluminum3000 
		by: 100 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
test12TurboLaserCannonReducesLifeOfTankRoverBy100

	self 
		assertAttackingWith: self createTurboLaserCannon 
		reducesLifeOf: self createTankRover 
		by: 100 * year! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
test13CanUseClawOnlyTwiceWhenAttackingAluminum3000

	| attacker attacked attackerWeapon |
	
	attackerWeapon := self createClaw.
	attacker := self aluminum3000ArmedWith: attackerWeapon.
	attacked := self createAluminum3000.
	
	2 timesRepeat: [ attacker attack: attacked with: attackerWeapon ].
	
	self 
		should: [ attacker attack: attacked with: attackerWeapon ]
		raise: Error
		withMessageText: Robot canNotAttackWithWeaponNotBelongingToRobotErrorDescription! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
test14CanUseClawOnlyOnceWhenAttackingTankRover

	| attacker attacked attackerWeapon |
	
	attackerWeapon := self createClaw.
	attacker := self aluminum3000ArmedWith: attackerWeapon.
	attacked := self createTankRover.
	
	attacker attack: attacked with: attackerWeapon.
	
	self 
		should: [ attacker attack: attacked with: attackerWeapon ]
		raise: Error
		withMessageText: Robot canNotAttackWithWeaponNotBelongingToRobotErrorDescription! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
test15AfterUsing5TimesHSBlasterAgainstAluminum3000RemovesItselfAndAddTurboLaserCannon

	| attacker attacked attackerWeapon |
	
	attackerWeapon := self createHSBlaster.
	attacker := self aluminum3000ArmedWith: attackerWeapon.
	attacked := self createAluminum3000.
	
	5 timesRepeat: [ attacker attack: attacked with: attackerWeapon ].
	
	self assert: attacker weaponsCount equals: 1.
	self assert: (attacker includesWeaponOfType: TurboLaserCannon)! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
test16AddsClawWhenAttakingTankRoverWithHSBlasterAndVictingLiveLessOrEqualTo50

	| attacker attacked attackerWeapon |
	
	attackerWeapon := self createHSBlaster.
	attacker := self aluminum3000ArmedWith: attackerWeapon.
	attacked := self createTankRover.
	
	attacker attack: attacked with: attackerWeapon.
	
	self assert: attacker weaponsCount equals: 2.
	self assert: (attacker includesWeapon: attackerWeapon).
	self assert: (attacker includesWeaponOfType: Claw)! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
test17CanUseOnlyTurboLaserCannon10TimesWhenAttakingAluminum3000

	| attacker attacked attackerWeapon |
	
	attackerWeapon := self createTurboLaserCannon.
	attacker := self aluminum3000ArmedWith: attackerWeapon.
	attacked := self createAluminum3000.
	
	10 timesRepeat: [ attacker attack: attacked with: attackerWeapon ].
	
	self assert: attacker weaponsCount equals: 0! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
test18CanUseOnlyTurboLaserCannon10TimesWhenAttakingTankRover

	| attacker attacked attackerWeapon |
	
	attackerWeapon := self createTurboLaserCannon.
	attacker := self aluminum3000ArmedWith: attackerWeapon.
	attacked := self createTankRover.
	
	5 timesRepeat: [ attacker attack: attacked with: attackerWeapon ].
	
	self assert: attacker weaponsCount equals: 1.
	self assert: (attacker includesWeaponOfType: HSBlaster)! !

!RobotWarsTest methodsFor: 'robot creation' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
aluminum3000ArmedWith: aWeapon

	| robot |
	
	robot := self createAluminum3000.
	robot addWeapon: aWeapon.
	
	^robot! !

!RobotWarsTest methodsFor: 'robot creation' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
createAluminum3000

	^Aluminum3000 new! !

!RobotWarsTest methodsFor: 'robot creation' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
createTankRover

	^TankRover new! !

!RobotWarsTest methodsFor: 'weapon creation' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
createClaw

	^Claw new! !

!RobotWarsTest methodsFor: 'weapon creation' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
createHSBlaster

	^HSBlaster new! !

!RobotWarsTest methodsFor: 'weapon creation' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
createTurboLaserCannon

	^TurboLaserCannon new! !

!RobotWarsTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:03:52 am (UTC)'!
assertAttackingWith: aWeapon reducesLifeOf: aVictim by: aDamage

	(self aluminum3000ArmedWith: aWeapon) attack: aVictim with: aWeapon.
	
	self assert: 100 * year - aDamage equals: aVictim life! !

!RobotWarsTest class methodsFor: 'class initialization' stamp: 'HAW 2/May/2021, 6:40:59 pm (UTC)'!
initialize

	"Este método está para crear una unidad que falta, no lo deben tocar ni darle importancia durante 
	el parcial - Hernan"
	| kilogram |
	gram := BaseUnit named: 'gram' sign: 'g'.
	kilogram := ProportionalDerivedUnit baseUnit: gram conversionFactor: 1000  named: 'kilogram' sign: 'kg'.
	
	Smalltalk at: #kilogram put: kilogram
	! !
RobotWarsTest initialize!
