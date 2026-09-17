'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:22:51 am'!
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


!Robot methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
initialize

	life := 100 * year.
	weapons := OrderedCollection new! !

!Robot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
attack: aVictim with: aWeapon

	(self includesWeapon: aWeapon)
		ifTrue: [ aWeapon attack: aVictim by: self ]
		ifFalse: [ self signalCanNotAttackWithWeaponNotBelongingToRobot ]! !

!Robot methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
beAttackedWith: aWeapon by: anAttacker

	self subclassResponsibility! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
addWeapon: aWeapon

	self assertCanCarryWeightOf: aWeapon.
	self assertKeepsSpeedWith: aWeapon.

	weapons add: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
assertCanCarryWeightOf: aWeapon

	self totalWeaponWeight + aWeapon weight > self maxWeaponWeight ifTrue: [ self signalMaxWeaponWeightExceeded ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
assertKeepsSpeedWith: aWeapon

	self totalSpeedImpact + aWeapon speedImpact > self speed ifTrue: [ self signalSpeedBelowZero ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
includesWeapon: aWeapon

	^weapons includes: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
includesWeaponOfType: aWeaponType

	^weapons anySatisfy: [ :weapon | weapon isOfType: aWeaponType ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
removeWeapon: aWeapon

	weapons remove: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
replaceWeapon: aWeapon with: aNewWeapon

	self removeWeapon: aWeapon.
	self addWeapon: aNewWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
totalSpeedImpact

	^(weapons select: [ :weapon | weapon impactsSpeed ])
		sum: [ :weapon | weapon speedImpact ]
		ifEmpty: [ 0 * kilometer / hour ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
totalWeaponWeight

	^weapons sum: [ :weapon | weapon weight ] ifEmpty: [ 0 * kilogram ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
weaponsCount

	^weapons size! !

!Robot methodsFor: 'life' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
hasLifeAtMost: aLife

	^life <= aLife! !

!Robot methodsFor: 'life' stamp: 'FRT 28/Apr/2021, 11:33:19 pm (UTC)'!
life

	^ life! !

!Robot methodsFor: 'life' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
reduceLifeBy: aLifeReduction

	life := life - aLifeReduction! !

!Robot methodsFor: 'exceptions' stamp: 'HAW 29/Apr/2021, 11:49:49 pm (UTC)'!
signalCanNotAttackWithWeaponNotBelongingToRobot
	
	self error: self class canNotAttackWithWeaponNotBelongingToRobotErrorDescription! !

!Robot methodsFor: 'exceptions' stamp: 'FRT 28/Apr/2021, 7:02:10 pm (UTC)'!
signalMaxWeaponWeightExceeded

	self error: self class maxWeaponWeightExceededErrorDescription 	! !

!Robot methodsFor: 'exceptions' stamp: 'FRT 29/Apr/2021, 1:53:14 am (UTC)'!
signalSpeedBelowZero

	self error: self class speedBelowZeroErrorDescription 	! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
maxWeaponWeight

	self subclassResponsibility! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
speed

	self subclassResponsibility! !

!Robot class methodsFor: 'error description' stamp: 'HAW 29/Apr/2021, 11:50:34 pm (UTC)'!
canNotAttackWithWeaponNotBelongingToRobotErrorDescription
	
	^'Cannot attack with weapon not belonging to robot'! !

!Robot class methodsFor: 'error description' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
invalidRobotTypeErrorDescription

	^'Invalid Robot Type'! !

!Robot class methodsFor: 'error description' stamp: 'FRT 28/Apr/2021, 7:04:48 pm (UTC)'!
maxWeaponWeightExceededErrorDescription

	^ 'Maximum weapon weight has been exceeded'! !

!Robot class methodsFor: 'error description' stamp: 'HAW 2/May/2021, 6:52:46 pm (UTC)'!
speedBelowZeroErrorDescription

	^ 'Speed cannot be below zero kilometer per hour'! !

!Robot class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:22:24 am (UTC)'!
ofType: aRobotType

	^(self subclassOfType: aRobotType) new! !

!Robot class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
subclassOfType: aRobotType

	^self subclasses
		detect: [ :robotClass | robotClass type = aRobotType ]
		ifNone: [ self error: self invalidRobotTypeErrorDescription ]! !

!Robot class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
type

	self subclassResponsibility! !

!Aluminum3000 methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
maxWeaponWeight

	^50 * kilogram! !

!Aluminum3000 methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
speed

	^90 * kilometer / hour! !

!Aluminum3000 methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
beAttackedWith: aWeapon by: anAttacker

	aWeapon attackAluminum3000: self by: anAttacker! !

!Aluminum3000 class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
type

	^#Aluminum3000! !

!TankRover methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
maxWeaponWeight

	^200 * kilogram! !

!TankRover methodsFor: 'characteristics' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
speed

	^40 * kilometer / hour! !

!TankRover methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
beAttackedWith: aWeapon by: anAttacker

	aWeapon attackTankRover: self by: anAttacker! !

!TankRover class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
type

	^#TankRover! !

!Weapon methodsFor: 'accesing' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
impactsSpeed

	^self weight > (10 * kilogram)! !

!Weapon methodsFor: 'accesing' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
speedImpact

	self subclassResponsibility! !

!Weapon methodsFor: 'accesing' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
weight

	self subclassResponsibility! !

!Weapon methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
initialize

	usedTimes := 0! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
attack: aVictim by: anAttacker

	usedTimes := usedTimes + 1.
	aVictim beAttackedWith: self by: anAttacker! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
attackAluminum3000: aVictim by: anAttacker

	self subclassResponsibility! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
attackTankRover: aVictim by: anAttacker

	self subclassResponsibility! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
hasBeenUsed: aNumberOfTimes

	^usedTimes = aNumberOfTimes! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
removeFrom: anAttacker whenUsed: aNumberOfTimes

	(self hasBeenUsed: aNumberOfTimes) ifTrue: [ anAttacker removeWeapon: self ]! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
replaceIn: anAttacker by: aWeaponType whenUsed: aNumberOfTimes

	(self hasBeenUsed: aNumberOfTimes) ifTrue: [ anAttacker replaceWeapon: self with: (Weapon ofType: aWeaponType) ]! !

!Weapon methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
isOfType: aWeaponType

	^self class type = aWeaponType! !

!Weapon class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
ofType: aWeaponType

	^(self subclassOfType: aWeaponType) new! !

!Weapon class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
subclassOfType: aWeaponType

	^self subclasses
		detect: [ :weaponClass | weaponClass type = aWeaponType ]
		ifNone: [ self error: self invalidWeaponTypeErrorDescription ]! !

!Weapon class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
type

	self subclassResponsibility! !

!Weapon class methodsFor: 'error description' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
invalidWeaponTypeErrorDescription

	^'Invalid Weapon Type'! !

!Claw methodsFor: 'accesing' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
speedImpact

	^5 * kilometer / hour! !

!Claw methodsFor: 'accesing' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
weight

	^10 * kilogram! !

!Claw methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
attackAluminum3000: aVictim by: anAttacker

	aVictim reduceLifeBy: 25 * year.
	self removeFrom: anAttacker whenUsed: 2! !

!Claw methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
attackTankRover: aVictim by: anAttacker

	aVictim reduceLifeBy: 5 * year.
	anAttacker removeWeapon: self! !

!Claw class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
type

	^#Claw! !

!HSBlaster methodsFor: 'accesing' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
speedImpact

	^10 * kilometer / hour! !

!HSBlaster methodsFor: 'accesing' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
weight

	^20 * kilogram! !

!HSBlaster methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
attackAluminum3000: aVictim by: anAttacker

	aVictim reduceLifeBy: 5 * year.
	self replaceIn: anAttacker by: #TurboLaserCannon whenUsed: 5! !

!HSBlaster methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
attackTankRover: aVictim by: anAttacker

	aVictim reduceLifeBy: 50 * year.
	(aVictim hasLifeAtMost: 50 * year) ifTrue: [ anAttacker addWeapon: (Weapon ofType: #Claw) ]! !

!HSBlaster class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
type

	^#HSBlaster! !

!TurboLaserCannon methodsFor: 'accesing' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
speedImpact

	^15 * kilometer / hour! !

!TurboLaserCannon methodsFor: 'accesing' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
weight

	^40 * kilogram! !

!TurboLaserCannon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
attackAluminum3000: aVictim by: anAttacker

	aVictim reduceLifeBy: 100 * year.
	self removeFrom: anAttacker whenUsed: 10! !

!TurboLaserCannon methodsFor: 'attacking' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
attackTankRover: aVictim by: anAttacker

	aVictim reduceLifeBy: 100 * year.
	self replaceIn: anAttacker by: #HSBlaster whenUsed: 5! !

!TurboLaserCannon class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 10:22:25 am (UTC)'!
type

	^#TurboLaserCannon! !

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

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 17/Sep/2026, 10:22:35 am (UTC)'!
test07ClawReducesLifeOfAluminum3000By25

	self
		assertAttackingWith: self createClaw
		reducesLifeOf: self createAluminum3000
		by: 25 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 17/Sep/2026, 10:22:35 am (UTC)'!
test08ClawReducesLifeOfTankRoverBy5

	self
		assertAttackingWith: self createClaw
		reducesLifeOf: self createTankRover
		by: 5 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 17/Sep/2026, 10:22:35 am (UTC)'!
test09HSBlasterReducesLifeOfAluminum3000By5

	self
		assertAttackingWith: self createHSBlaster
		reducesLifeOf: self createAluminum3000
		by: 5 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 17/Sep/2026, 10:22:35 am (UTC)'!
test10HSBlasterReducesLifeOfTankRoverBy50

	self
		assertAttackingWith: self createHSBlaster
		reducesLifeOf: self createTankRover
		by: 50 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 17/Sep/2026, 10:22:35 am (UTC)'!
test11TurboLaserCannonReducesLifeOfAluminum3000By100

	self
		assertAttackingWith: self createTurboLaserCannon
		reducesLifeOf: self createAluminum3000
		by: 100 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 17/Sep/2026, 10:22:35 am (UTC)'!
test12TurboLaserCannonReducesLifeOfTankRoverBy100

	self
		assertAttackingWith: self createTurboLaserCannon
		reducesLifeOf: self createTankRover
		by: 100 * year! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 30/Apr/2021, 8:41:40 pm (UTC)'!
test13CanUseClawOnlyTwiceWhenAttackingAluminum3000

	| attacker attacked attackerWeapon |
	
	attacker := self createAluminum3000.
	attacked := self createAluminum3000.
	attackerWeapon := self createClaw.
	attacker addWeapon: attackerWeapon.
	
	2 timesRepeat: [ attacker attack: attacked with: attackerWeapon ].
	
	self 
		should: [ attacker attack: attacked with: attackerWeapon ]
		raise: Error
		withMessageText: Robot canNotAttackWithWeaponNotBelongingToRobotErrorDescription 
	! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 30/Apr/2021, 8:42:05 pm (UTC)'!
test14CanUseClawOnlyOnceWhenAttackingTankRover

	| attacker attacked attackerWeapon |
	
	attacker := self createAluminum3000.
	attacked := self createTankRover.
	attackerWeapon := self createClaw.
	attacker addWeapon: attackerWeapon.
	
	attacker attack: attacked with: attackerWeapon.
	
	self 
		should: [ attacker attack: attacked with: attackerWeapon ]
		raise: Error
		withMessageText: Robot canNotAttackWithWeaponNotBelongingToRobotErrorDescription 
	! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 30/Apr/2021, 10:38:04 pm (UTC)'!
test15AfterUsing5TimesHSBlasterAgainstAluminum3000RemovesItselfAndAddTurboLaserCannon
	| attacker attacked attackerWeapon |
	
	attacker := self createAluminum3000.
	attacked := self createAluminum3000.
	attackerWeapon := self createHSBlaster.
	attacker addWeapon: attackerWeapon.
	
	5 timesRepeat: [ attacker attack: attacked with: attackerWeapon ].
	
	self assert: 1 equals: attacker weaponsCount.
	self assert: (attacker includesWeaponOfType: #TurboLaserCannon).
	! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 30/Apr/2021, 10:38:09 pm (UTC)'!
test16AddsClawWhenAttakingTankRoverWithHSBlasterAndVictingLiveLessOrEqualTo50
	| attacker attacked attackerWeapon |
	
	attacker := self createAluminum3000.
	attacked := self createTankRover.
	attackerWeapon := self createHSBlaster .
	attacker addWeapon: attackerWeapon.
	
	attacker attack: attacked with: attackerWeapon.
	
	self assert: 2 equals: attacker weaponsCount.
	self assert: (attacker includesWeapon: attackerWeapon).
	self assert: (attacker includesWeaponOfType: #Claw).
	! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 30/Apr/2021, 8:43:35 pm (UTC)'!
test17CanUseOnlyTurboLaserCannon10TimesWhenAttakingAluminum3000

	| attacker attacked attackerWeapon |
	
	attacker := self createAluminum3000.
	attacked := self createAluminum3000.
	attackerWeapon := self createTurboLaserCannon.
	attacker addWeapon: attackerWeapon.
	
	10 timesRepeat: [ attacker attack: attacked with: attackerWeapon ].
	
	self assert: 0 equals: attacker weaponsCount.
	! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 30/Apr/2021, 10:38:16 pm (UTC)'!
test18CanUseOnlyTurboLaserCannon10TimesWhenAttakingTankRover

	| attacker attacked attackerWeapon |
	
	attacker := self createAluminum3000.
	attacked := self createTankRover.
	attackerWeapon := self createTurboLaserCannon .
	attacker addWeapon: attackerWeapon.
	
	5 timesRepeat: [ attacker attack: attacked with: attackerWeapon ].
	
	self assert: 1 equals: attacker weaponsCount.
	self assert: (attacker includesWeaponOfType: #HSBlaster)
	! !

!RobotWarsTest methodsFor: 'robot creation' stamp: 'HAW 30/Apr/2021, 10:37:15 pm (UTC)'!
createAluminum3000

	^ Robot ofType: #Aluminum3000 ! !

!RobotWarsTest methodsFor: 'robot creation' stamp: 'HAW 30/Apr/2021, 10:37:25 pm (UTC)'!
createTankRover

	^ Robot ofType: #TankRover ! !

!RobotWarsTest methodsFor: 'weapon creation' stamp: 'HAW 30/Apr/2021, 10:37:36 pm (UTC)'!
createClaw

	^ Weapon ofType: #Claw ! !

!RobotWarsTest methodsFor: 'weapon creation' stamp: 'HAW 30/Apr/2021, 10:37:46 pm (UTC)'!
createHSBlaster

	^ Weapon ofType: #HSBlaster ! !

!RobotWarsTest methodsFor: 'weapon creation' stamp: 'HAW 30/Apr/2021, 10:37:52 pm (UTC)'!
createTurboLaserCannon

	^ Weapon ofType: #TurboLaserCannon ! !

!RobotWarsTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:22:35 am (UTC)'!
assertAttackingWith: aWeapon reducesLifeOf: aVictim by: aLifeReduction

	| attacker |

	attacker := self createAluminum3000.
	attacker addWeapon: aWeapon.

	attacker attack: aVictim with: aWeapon.

	self assert: 100 * year - aLifeReduction equals: aVictim life! !

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
