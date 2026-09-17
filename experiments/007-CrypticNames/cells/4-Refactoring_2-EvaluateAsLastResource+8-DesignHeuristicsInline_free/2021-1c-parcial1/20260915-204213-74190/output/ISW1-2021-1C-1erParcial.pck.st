'From Cuis7.9 [latest update: #8182] on 15 September 2026 at 8:50:23 pm'!
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


!Robot commentStamp: '<historical>' prior: 0!
I represent a robot of the RobotWars game.

I have a life time, a maximum speed and a maximum weight of weapons I can carry. The weapons I carry impact my speed and the weapon weight I still have available, and neither of them may become negative.

I attack another robot using one of the weapons I carry. What an attack does depends on the weapon used and on the kind of robot attacked, so my subclasses know how to be attacked with a weapon, completing the double dispatch started at Robot>>attack:with:.!

!Aluminum3000 commentStamp: '<historical>' prior: 0!
I am a light and fast robot: 90 kilometers per hour, and up to 50 kilograms of weapons.!

!TankRover commentStamp: '<historical>' prior: 0!
I am a slow robot built to carry a lot: 40 kilometers per hour, and up to 200 kilograms of weapons.!

!Weapon commentStamp: '<historical>' prior: 0!
I represent a weapon a robot carries to attack other robots.

I have a weight and an impact on the speed of the robot carrying me. I also know how many times I have been used, because weapons wear out: after being used a number of times I may be removed from the robot carrying me, or be replaced by a different weapon.

The damage I do and the way I wear out depend on the kind of robot attacked, so my subclasses implement attackAluminum3000:by: and attackTankRover:by:.!

!Claw commentStamp: '<historical>' prior: 0!
I am the lightest weapon. I tear an Aluminum3000 apart, but I barely scratch a TankRover and I break as soon as I am used against one.!

!HSBlaster commentStamp: '<historical>' prior: 0!
I am a weapon that does little damage to an Aluminum3000, until I turn into a TurboLaserCannon, and a lot of damage to a TankRover, leaving a Claw behind when I bring one close to its end.!

!TurboLaserCannon commentStamp: '<historical>' prior: 0!
I am the heaviest and most damaging weapon. I wear out after ten uses against an Aluminum3000, and after five against a TankRover, where I end up as an HSBlaster.!

!RobotWarsTest commentStamp: '<historical>' prior: 0!
I test the RobotWars model: adding weapons to a robot, the life a victim loses when attacked, and how weapons wear out as they are used.!

!Robot methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
initialize

	life := self initialLife.
	weapons := OrderedCollection new! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
availableWeaponWeight

	^ self maximumWeaponWeight - self totalWeaponWeight! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
initialLife

	^ 100 * year! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
life

	^ life! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
maximumSpeed

	^ self subclassResponsibility! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
maximumWeaponWeight

	^ self subclassResponsibility! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
reduceLifeBy: aLifeReduction

	life := life - aLifeReduction! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
speed

	^ self maximumSpeed - self totalSpeedImpact! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
addWeapon: aWeapon

	self assertCanCarry: aWeapon.

	weapons add: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
includesWeapon: aWeapon

	^ weapons includes: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
includesWeaponOfType: aWeaponType

	^ weapons anySatisfy: [ :weapon | weapon isOfType: aWeaponType ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
removeWeapon: aWeapon

	weapons remove: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
replaceWeapon: aWeapon with: anotherWeapon

	self removeWeapon: aWeapon.
	self addWeapon: anotherWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
totalSpeedImpact

	^ weapons inject: Weapon noSpeedImpact into: [ :total :weapon | total + weapon speedImpactWhenCarried ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
totalWeaponWeight

	^ weapons inject: Weapon noWeight into: [ :total :weapon | total + weapon weight ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
weaponsCount

	^ weapons size! !

!Robot methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
attack: aVictim with: aWeapon

	(self includesWeapon: aWeapon)
		ifTrue: [ aWeapon attack: aVictim by: self ]
		ifFalse: [ self signalCanNotAttackWithWeaponNotBelongingToRobot ]! !

!Robot methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
beAttackedWith: aWeapon by: anAttacker

	^ self subclassResponsibility! !

!Robot methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
assertCanCarry: aWeapon

	aWeapon weight > self availableWeaponWeight ifTrue: [ self signalMaximumWeaponWeightExceeded ].
	aWeapon speedImpact > self speed ifTrue: [ self signalSpeedBelowZero ]! !

!Robot methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 11:47:26 pm (UTC)'!
signalCanNotAttackWithWeaponNotBelongingToRobot

	self error: self class canNotAttackWithWeaponNotBelongingToRobotErrorDescription! !

!Robot methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 11:47:27 pm (UTC)'!
signalMaximumWeaponWeightExceeded

	self error: self class maximumWeaponWeightExceededErrorDescription! !

!Robot methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 11:47:27 pm (UTC)'!
signalSpeedBelowZero

	self error: self class speedBelowZeroErrorDescription! !

!Robot class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:47:27 pm (UTC)'!
canNotAttackWithWeaponNotBelongingToRobotErrorDescription

	^ 'Cannot attack with weapon not belonging to robot'! !

!Robot class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:47:27 pm (UTC)'!
maximumWeaponWeightExceededErrorDescription

	^ 'Maximum weapon weight has been exceeded'! !

!Robot class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:47:27 pm (UTC)'!
speedBelowZeroErrorDescription

	^ 'Speed cannot be below zero kilometer per hour'! !

!Aluminum3000 methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
maximumSpeed

	^ 90 * kilometer / hour! !

!Aluminum3000 methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
maximumWeaponWeight

	^ 50 * kilogram! !

!Aluminum3000 methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
beAttackedWith: aWeapon by: anAttacker

	^ aWeapon attackAluminum3000: self by: anAttacker! !

!TankRover methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
maximumSpeed

	^ 40 * kilometer / hour! !

!TankRover methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
maximumWeaponWeight

	^ 200 * kilogram! !

!TankRover methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
beAttackedWith: aWeapon by: anAttacker

	^ aWeapon attackTankRover: self by: anAttacker! !

!Weapon methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
initialize

	usedTimes := 0! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
isOfType: aWeaponType

	^ self class = aWeaponType! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
slowsDownRobotCarryingIt

	^ self weight > self class maximumWeightWithoutSpeedImpact! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
speedImpact

	^ self subclassResponsibility! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:49:43 pm (UTC)'!
speedImpactWhenCarried

	"A weapon light enough does not slow down the robot carrying it, even though it declares a speed impact"

	^ self slowsDownRobotCarryingIt
		ifTrue: [ self speedImpact ]
		ifFalse: [ self class noSpeedImpact ]! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
weight

	^ self subclassResponsibility! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
attack: aVictim by: anAttacker

	usedTimes := usedTimes + 1.

	^ aVictim beAttackedWith: self by: anAttacker! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
attackAluminum3000: aVictim by: anAttacker

	^ self subclassResponsibility! !

!Weapon methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
attackTankRover: aVictim by: anAttacker

	^ self subclassResponsibility! !

!Weapon methodsFor: 'wearing out' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
hasBeenUsed: aNumberOfTimes

	^ usedTimes = aNumberOfTimes! !

!Weapon methodsFor: 'wearing out' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
removeFrom: anAttacker afterBeingUsed: aNumberOfTimes

	(self hasBeenUsed: aNumberOfTimes) ifTrue: [ anAttacker removeWeapon: self ]! !

!Weapon methodsFor: 'wearing out' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
replaceIn: anAttacker with: aWeaponType afterBeingUsed: aNumberOfTimes

	(self hasBeenUsed: aNumberOfTimes) ifTrue: [ anAttacker replaceWeapon: self with: aWeaponType new ]! !

!Weapon class methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
maximumWeightWithoutSpeedImpact

	^ 10 * kilogram! !

!Weapon class methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
noSpeedImpact

	^ 0 * kilometer / hour! !

!Weapon class methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:40 pm (UTC)'!
noWeight

	^ 0 * kilogram! !

!Claw methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:49 pm (UTC)'!
speedImpact

	^ 5 * kilometer / hour! !

!Claw methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:49 pm (UTC)'!
weight

	^ 10 * kilogram! !

!Claw methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:49 pm (UTC)'!
attackAluminum3000: aVictim by: anAttacker

	aVictim reduceLifeBy: 25 * year.

	self removeFrom: anAttacker afterBeingUsed: 2! !

!Claw methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:49 pm (UTC)'!
attackTankRover: aVictim by: anAttacker

	aVictim reduceLifeBy: 5 * year.

	anAttacker removeWeapon: self! !

!HSBlaster methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:49 pm (UTC)'!
speedImpact

	^ 10 * kilometer / hour! !

!HSBlaster methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:49 pm (UTC)'!
weight

	^ 20 * kilogram! !

!HSBlaster methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:49 pm (UTC)'!
attackAluminum3000: aVictim by: anAttacker

	aVictim reduceLifeBy: 5 * year.

	self replaceIn: anAttacker with: TurboLaserCannon afterBeingUsed: 5! !

!HSBlaster methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:49 pm (UTC)'!
attackTankRover: aVictim by: anAttacker

	aVictim reduceLifeBy: 50 * year.

	aVictim life <= (50 * year) ifTrue: [ anAttacker addWeapon: Claw new ]! !

!TurboLaserCannon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:49 pm (UTC)'!
speedImpact

	^ 15 * kilometer / hour! !

!TurboLaserCannon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:49 pm (UTC)'!
weight

	^ 40 * kilogram! !

!TurboLaserCannon methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:49 pm (UTC)'!
attackAluminum3000: aVictim by: anAttacker

	aVictim reduceLifeBy: 100 * year.

	self removeFrom: anAttacker afterBeingUsed: 10! !

!TurboLaserCannon methodsFor: 'attacking' stamp: 'HAW 15/Sep/2026, 11:47:49 pm (UTC)'!
attackTankRover: aVictim by: anAttacker

	aVictim reduceLifeBy: 100 * year.

	self replaceIn: anAttacker with: HSBlaster afterBeingUsed: 5! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test07ClawReducesLifeOfAluminum3000By25

	self assertAttacking: Aluminum3000 new with: Claw new reducesLifeBy: 25 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test08ClawReducesLifeOfTankRoverBy5

	self assertAttacking: TankRover new with: Claw new reducesLifeBy: 5 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test09HSBlasterReducesLifeOfAluminum3000By5

	self assertAttacking: Aluminum3000 new with: HSBlaster new reducesLifeBy: 5 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test10HSBlasterReducesLifeOfTankRoverBy50

	self assertAttacking: TankRover new with: HSBlaster new reducesLifeBy: 50 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test11TurboLaserCannonReducesLifeOfAluminum3000By100

	self assertAttacking: Aluminum3000 new with: TurboLaserCannon new reducesLifeBy: 100 * year! !

!RobotWarsTest methodsFor: 'victim life after attacking tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test12TurboLaserCannonReducesLifeOfTankRoverBy100

	self assertAttacking: TankRover new with: TurboLaserCannon new reducesLifeBy: 100 * year! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test13CanUseClawOnlyTwiceWhenAttackingAluminum3000

	| attacked attackerWeapon attacker |

	attacked := Aluminum3000 new.
	attackerWeapon := Claw new.
	attacker := self attackerAfterAttacking: attacked with: attackerWeapon times: 2.

	self
		should: [ attacker attack: attacked with: attackerWeapon ]
		raise: Error
		withMessageText: Robot canNotAttackWithWeaponNotBelongingToRobotErrorDescription! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test14CanUseClawOnlyOnceWhenAttackingTankRover

	| attacked attackerWeapon attacker |

	attacked := TankRover new.
	attackerWeapon := Claw new.
	attacker := self attackerAfterAttacking: attacked with: attackerWeapon times: 1.

	self
		should: [ attacker attack: attacked with: attackerWeapon ]
		raise: Error
		withMessageText: Robot canNotAttackWithWeaponNotBelongingToRobotErrorDescription! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test15AfterUsing5TimesHSBlasterAgainstAluminum3000RemovesItselfAndAddTurboLaserCannon

	| attacker |

	attacker := self attackerAfterAttacking: Aluminum3000 new with: HSBlaster new times: 5.

	self assert: 1 equals: attacker weaponsCount.
	self assert: (attacker includesWeaponOfType: TurboLaserCannon)! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test16AddsClawWhenAttackingTankRoverWithHSBlasterAndVictimLifeIsNotGreaterThan50

	| attackerWeapon attacker |

	attackerWeapon := HSBlaster new.
	attacker := self attackerAfterAttacking: TankRover new with: attackerWeapon times: 1.

	self assert: 2 equals: attacker weaponsCount.
	self assert: (attacker includesWeapon: attackerWeapon).
	self assert: (attacker includesWeaponOfType: Claw)! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test17CanUseTurboLaserCannonOnly10TimesWhenAttackingAluminum3000

	| attacker |

	attacker := self attackerAfterAttacking: Aluminum3000 new with: TurboLaserCannon new times: 10.

	self assert: 0 equals: attacker weaponsCount! !

!RobotWarsTest methodsFor: 'weapon use after attacking tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test18AfterUsing5TimesTurboLaserCannonAgainstTankRoverRemovesItselfAndAddsHSBlaster

	| attacker |

	attacker := self attackerAfterAttacking: TankRover new with: TurboLaserCannon new times: 5.

	self assert: 1 equals: attacker weaponsCount.
	self assert: (attacker includesWeaponOfType: HSBlaster)! !

!RobotWarsTest methodsFor: 'support' stamp: 'HAW 15/Sep/2026, 11:48:39 pm (UTC)'!
assertAttacking: aVictim with: aWeapon reducesLifeBy: aLifeReduction

	| lifeBeforeBeingAttacked |

	lifeBeforeBeingAttacked := aVictim life.

	self attackerAfterAttacking: aVictim with: aWeapon times: 1.

	self assert: lifeBeforeBeingAttacked - aLifeReduction equals: aVictim life! !

!RobotWarsTest methodsFor: 'support' stamp: 'HAW 15/Sep/2026, 11:48:39 pm (UTC)'!
attackerAfterAttacking: aVictim with: aWeapon times: aNumberOfAttacks

	| attacker |

	attacker := Aluminum3000 new.
	attacker addWeapon: aWeapon.
	aNumberOfAttacks timesRepeat: [ attacker attack: aVictim with: aWeapon ].

	^ attacker! !

!RobotWarsTest methodsFor: 'adding weapons tests' stamp: 'HAW 15/Sep/2026, 11:49:00 pm (UTC)'!
test01ShouldNotAddWeaponIfMaximumWeaponWeightExceeded

	| robot addedWeapon |

	robot := Aluminum3000 new.
	addedWeapon := TurboLaserCannon new.
	robot addWeapon: addedWeapon.

	self
		should: [ robot addWeapon: TurboLaserCannon new ]
		raise: Error
		withMessageText: Robot maximumWeaponWeightExceededErrorDescription.

	self assert: 1 equals: robot weaponsCount.
	self assert: (robot includesWeapon: addedWeapon)! !

!RobotWarsTest methodsFor: 'adding weapons tests' stamp: 'HAW 15/Sep/2026, 11:48:39 pm (UTC)'!
test02ShouldNotAddWeaponIfSpeedBelowZero

	| robot firstAddedWeapon secondAddedWeapon |

	robot := TankRover new.
	firstAddedWeapon := TurboLaserCannon new.
	robot addWeapon: firstAddedWeapon.
	secondAddedWeapon := TurboLaserCannon new.
	robot addWeapon: secondAddedWeapon.

	self
		should: [ robot addWeapon: TurboLaserCannon new ]
		raise: Error
		withMessageText: Robot speedBelowZeroErrorDescription.

	self assert: 2 equals: robot weaponsCount.
	self assert: (robot includesWeapon: firstAddedWeapon).
	self assert: (robot includesWeapon: secondAddedWeapon)! !

!RobotWarsTest methodsFor: 'adding weapons tests' stamp: 'HAW 15/Sep/2026, 11:48:40 pm (UTC)'!
test03ShouldHaveZeroWeightWhenNoWeaponsAdded

	self assert: 0 * kilogram equals: TankRover new totalWeaponWeight! !

!RobotWarsTest methodsFor: 'adding weapons tests' stamp: 'HAW 15/Sep/2026, 11:48:40 pm (UTC)'!
test04ShouldAddWeightWhenAddingWeapon

	| robot weapon |

	robot := TankRover new.
	weapon := TurboLaserCannon new.

	robot addWeapon: weapon.

	self assert: weapon weight equals: robot totalWeaponWeight! !

!RobotWarsTest methodsFor: 'adding weapons tests' stamp: 'HAW 15/Sep/2026, 11:48:40 pm (UTC)'!
test05ShouldHaveZeroSpeedWhenNoWeaponsAdded

	self assert: 0 * kilometer / hour equals: TankRover new totalSpeedImpact! !

!RobotWarsTest methodsFor: 'adding weapons tests' stamp: 'HAW 15/Sep/2026, 11:48:40 pm (UTC)'!
test06ShouldAddSpeedImpactWhenAddingWeapons

	| robot |

	robot := TankRover new.
	robot addWeapon: TurboLaserCannon new.
	robot addWeapon: HSBlaster new.

	self assert: 25 * kilometer / hour equals: robot totalSpeedImpact! !

!RobotWarsTest methodsFor: 'adding weapons tests' stamp: 'HAW 15/Sep/2026, 11:48:40 pm (UTC)'!
test19ShouldNotAddSpeedImpactWhenAddedWeaponIsLightEnough

	| robot |

	robot := TankRover new.
	robot addWeapon: Claw new.

	self assert: 0 * kilometer / hour equals: robot totalSpeedImpact! !

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
