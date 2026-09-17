'From Cuis7.9 [latest update: #8182] on 15 September 2026 at 8:50:38 pm'!
'Description RobotWars: robots carrying weapons and attacking each other'!
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
	instanceVariableNames: 'attacksPerformed'
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


!Robot commentStamp: '<historical>' prior: 0!
I am a fighting robot. I have a life time that decreases when I am attacked, a maximum speed and a maximum weapon weight I can carry.
I carry weapons and attack other robots with them. Each weapon slows me down and adds to the weight I carry, and neither my remaining speed nor my remaining carrying capacity can become negative.
My subclasses know how fast they move, how much weight they can carry and how weapons harm them.!

!HeavyRobot commentStamp: '<historical>' prior: 0!
I am a slow Robot. I move at 40 kilometers per hour but can carry up to 200 kilograms of weapons.!

!LightRobot commentStamp: '<historical>' prior: 0!
I am a fast Robot. I move at 90 kilometers per hour but can carry only 50 kilograms of weapons.!

!Weapon commentStamp: '<historical>' prior: 0!
I am a weapon a Robot carries to attack other robots. I know how much I weigh, how much I slow down the robot carrying me and how many attacks I have performed.
When I am used to attack, what I do to the attacked robot depends on the kind of robot it is, so I am told to attack it through a double dispatch. After some attacks I wear out and the robot carrying me discards me, sometimes leaving another weapon in my place.!

!HeavyWeapon commentStamp: '<historical>' prior: 0!
I am the heaviest Weapon. I weigh 40 kilograms and slow down the robot carrying me by 15 kilometers per hour. I take 100 years of life time from any robot I attack, breaking after ten attacks to a light robot and becoming a medium weapon after five attacks to a heavy robot.!

!LightWeapon commentStamp: '<historical>' prior: 0!
I am the lightest Weapon. I weigh 10 kilograms and I am so light that I do not slow down the robot carrying me. I break after attacking a light robot twice, and after attacking a heavy robot once.!

!MediumWeapon commentStamp: '<historical>' prior: 0!
I am a Weapon weighing 20 kilograms that slows down the robot carrying me by 10 kilometers per hour. After attacking a light robot five times I become a heavy weapon, and when I leave a heavy robot with 50 years of life time or less I give a light weapon to the robot carrying me.!

!RobotWarsTest commentStamp: '<historical>' prior: 0!
I test the RobotWars model: what a robot can carry, what happens when a robot attacks another one with a weapon, and how weapons wear out.!

!Robot methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
initialize

	lifeTime := self initialLifeTime.
	weapons := OrderedCollection new! !

!Robot methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
lifeTime

	^lifeTime! !

!Robot methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
numberOfWeapons

	^weapons size! !

!Robot methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
speedReduction

	^weapons 
		inject: 0 * kilometer / hour 
		into: [ :accumulatedReduction :aWeapon | accumulatedReduction + aWeapon speedReduction ]! !

!Robot methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
weaponsWeight

	^weapons 
		inject: 0 * kilogram 
		into: [ :accumulatedWeight :aWeapon | accumulatedWeight + aWeapon weight ]! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
initialLifeTime

	^100 * year! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
maximumSpeed

	^self subclassResponsibility! !

!Robot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
maximumWeaponWeight

	^self subclassResponsibility! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
carries: aWeapon

	^weapons includes: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
carriesAWeaponOfType: aWeaponType

	^weapons anySatisfy: [ :aWeapon | aWeapon class = aWeaponType ]! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
carry: aWeapon

	self assertCanCarryWeightOf: aWeapon.
	self assertKeepsMovingWith: aWeapon.

	weapons add: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
discard: aWeapon

	weapons remove: aWeapon! !

!Robot methodsFor: 'weapons' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
replace: aWeapon with: anotherWeapon

	self discard: aWeapon.
	self carry: anotherWeapon! !

!Robot methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
attack: anAttackedRobot with: aWeapon

	self assertCarries: aWeapon.

	aWeapon attack: anAttackedRobot ownedBy: self! !

!Robot methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
beAttackedBy: aWeapon ownedBy: anOwnerRobot

	^self subclassResponsibility! !

!Robot methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
hasLifeTimeUpTo: anAmountOfTime

	^lifeTime <= anAmountOfTime! !

!Robot methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
loseLifeTime: anAmountOfTime

	lifeTime := lifeTime - anAmountOfTime! !

!Robot methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
assertCanCarryWeightOf: aWeapon

	self weaponsWeight + aWeapon weight > self maximumWeaponWeight ifTrue: [ 
		self error: self class canNotCarryMoreWeightErrorDescription ]! !

!Robot methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
assertCarries: aWeapon

	(self carries: aWeapon) ifFalse: [ 
		self error: self class canNotAttackWithANotCarriedWeaponErrorDescription ]! !

!Robot methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
assertKeepsMovingWith: aWeapon

	self speedReduction + aWeapon speedReduction > self maximumSpeed ifTrue: [ 
		self error: self class canNotBeSlowedDownMoreErrorDescription ]! !

!Robot class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
canNotAttackWithANotCarriedWeaponErrorDescription

	^'Robot can not attack with a weapon it does not carry'! !

!Robot class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
canNotBeSlowedDownMoreErrorDescription

	^'Robot can not be slowed down more'! !

!Robot class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:47:56 pm (UTC)'!
canNotCarryMoreWeightErrorDescription

	^'Robot can not carry more weapon weight'! !

!HeavyRobot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
maximumSpeed

	^40 * kilometer / hour! !

!HeavyRobot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
maximumWeaponWeight

	^200 * kilogram! !

!HeavyRobot methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
beAttackedBy: aWeapon ownedBy: anOwnerRobot

	^aWeapon attackHeavyRobot: self ownedBy: anOwnerRobot! !

!LightRobot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
maximumSpeed

	^90 * kilometer / hour! !

!LightRobot methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
maximumWeaponWeight

	^50 * kilogram! !

!LightRobot methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
beAttackedBy: aWeapon ownedBy: anOwnerRobot

	^aWeapon attackLightRobot: self ownedBy: anOwnerRobot! !

!Weapon methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
initialize

	attacksPerformed := 0! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
speedReduction

	^self subclassResponsibility! !

!Weapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
weight

	^self subclassResponsibility! !

!Weapon methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
afterAttacking: anAmountOfTimes do: aBlock

	attacksPerformed = anAmountOfTimes ifTrue: aBlock! !

!Weapon methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
attack: anAttackedRobot ownedBy: anOwnerRobot

	attacksPerformed := attacksPerformed + 1.

	^anAttackedRobot beAttackedBy: self ownedBy: anOwnerRobot! !

!Weapon methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
attackHeavyRobot: anAttackedRobot ownedBy: anOwnerRobot

	^self subclassResponsibility! !

!Weapon methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:48:05 pm (UTC)'!
attackLightRobot: anAttackedRobot ownedBy: anOwnerRobot

	^self subclassResponsibility! !

!HeavyWeapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:48:15 pm (UTC)'!
speedReduction

	^15 * kilometer / hour! !

!HeavyWeapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:48:15 pm (UTC)'!
weight

	^40 * kilogram! !

!HeavyWeapon methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:48:15 pm (UTC)'!
attackHeavyRobot: anAttackedRobot ownedBy: anOwnerRobot

	anAttackedRobot loseLifeTime: 100 * year.

	self afterAttacking: 5 do: [ anOwnerRobot replace: self with: MediumWeapon new ]! !

!HeavyWeapon methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:48:15 pm (UTC)'!
attackLightRobot: anAttackedRobot ownedBy: anOwnerRobot

	anAttackedRobot loseLifeTime: 100 * year.

	self afterAttacking: 10 do: [ anOwnerRobot discard: self ]! !

!LightWeapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:48:15 pm (UTC)'!
speedReduction

	^0 * kilometer / hour! !

!LightWeapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:48:15 pm (UTC)'!
weight

	^10 * kilogram! !

!LightWeapon methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:48:15 pm (UTC)'!
attackHeavyRobot: anAttackedRobot ownedBy: anOwnerRobot

	anAttackedRobot loseLifeTime: 5 * year.

	anOwnerRobot discard: self! !

!LightWeapon methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:48:15 pm (UTC)'!
attackLightRobot: anAttackedRobot ownedBy: anOwnerRobot

	anAttackedRobot loseLifeTime: 25 * year.

	self afterAttacking: 2 do: [ anOwnerRobot discard: self ]! !

!MediumWeapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:48:15 pm (UTC)'!
speedReduction

	^10 * kilometer / hour! !

!MediumWeapon methodsFor: 'characteristics' stamp: 'HAW 15/Sep/2026, 11:48:15 pm (UTC)'!
weight

	^20 * kilogram! !

!MediumWeapon methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:48:15 pm (UTC)'!
attackHeavyRobot: anAttackedRobot ownedBy: anOwnerRobot

	anAttackedRobot loseLifeTime: 50 * year.

	(anAttackedRobot hasLifeTimeUpTo: 50 * year) ifTrue: [ anOwnerRobot carry: LightWeapon new ]! !

!MediumWeapon methodsFor: 'fighting' stamp: 'HAW 15/Sep/2026, 11:48:15 pm (UTC)'!
attackLightRobot: anAttackedRobot ownedBy: anOwnerRobot

	anAttackedRobot loseLifeTime: 5 * year.

	self afterAttacking: 5 do: [ anOwnerRobot replace: self with: HeavyWeapon new ]! !

!RobotWarsTest methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 11:48:35 pm (UTC)'!
assertLifeTimeOf: anAttackedRobot equals: anExpectedLifeTime afterBeingAttackedWith: aWeapon

	| attackerRobot |
	
	attackerRobot := LightRobot new.
	attackerRobot carry: aWeapon.
	attackerRobot attack: anAttackedRobot with: aWeapon.
	
	self assert: anAttackedRobot lifeTime equals: anExpectedLifeTime! !

!RobotWarsTest methodsFor: 'tests - carrying weapons' stamp: 'HAW 15/Sep/2026, 11:48:35 pm (UTC)'!
test01LightRobotCanNotCarryMoreWeightThanItsMaximumWeaponWeight

	| robot weapon |
	
	robot := LightRobot new.
	weapon := HeavyWeapon new.
	robot carry: weapon.
	
	self
		should: [ robot carry: HeavyWeapon new ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Robot canNotCarryMoreWeightErrorDescription.
			self assert: robot numberOfWeapons equals: 1.
			self assert: (robot carries: weapon) ]! !

!RobotWarsTest methodsFor: 'tests - carrying weapons' stamp: 'HAW 15/Sep/2026, 11:48:35 pm (UTC)'!
test02HeavyRobotCanNotCarryWeaponsThatWouldSlowItDownMoreThanItsMaximumSpeed

	| robot firstWeapon secondWeapon |
	
	robot := HeavyRobot new.
	firstWeapon := HeavyWeapon new.
	secondWeapon := HeavyWeapon new.
	robot carry: firstWeapon.
	robot carry: secondWeapon.
	
	self
		should: [ robot carry: HeavyWeapon new ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Robot canNotBeSlowedDownMoreErrorDescription.
			self assert: robot numberOfWeapons equals: 2.
			self assert: (robot carries: firstWeapon).
			self assert: (robot carries: secondWeapon) ]! !

!RobotWarsTest methodsFor: 'tests - carrying weapons' stamp: 'HAW 15/Sep/2026, 11:48:35 pm (UTC)'!
test03RobotWithoutWeaponsCarriesNoWeight

	self assert: HeavyRobot new weaponsWeight equals: 0 * kilogram! !

!RobotWarsTest methodsFor: 'tests - carrying weapons' stamp: 'HAW 15/Sep/2026, 11:48:35 pm (UTC)'!
test04RobotCarryingOneWeaponCarriesTheWeightOfThatWeapon

	| robot weapon |
	
	robot := HeavyRobot new.
	weapon := HeavyWeapon new.
	robot carry: weapon.
	
	self assert: robot weaponsWeight equals: weapon weight! !

!RobotWarsTest methodsFor: 'tests - carrying weapons' stamp: 'HAW 15/Sep/2026, 11:48:35 pm (UTC)'!
test05RobotWithoutWeaponsIsNotSlowedDown

	self assert: HeavyRobot new speedReduction equals: 0 * kilometer / hour! !

!RobotWarsTest methodsFor: 'tests - carrying weapons' stamp: 'HAW 15/Sep/2026, 11:48:35 pm (UTC)'!
test06RobotCarryingTwoWeaponsCarriesTheWeightOfBothOfThem

	| robot firstWeapon secondWeapon |
	
	robot := HeavyRobot new.
	firstWeapon := HeavyWeapon new.
	secondWeapon := LightWeapon new.
	robot carry: firstWeapon.
	robot carry: secondWeapon.
	
	self assert: robot weaponsWeight equals: firstWeapon weight + secondWeapon weight! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 15/Sep/2026, 11:48:45 pm (UTC)'!
test07LightWeaponTakes25YearsOfLifeTimeFromALightRobot

	self 
		assertLifeTimeOf: LightRobot new 
		equals: 100 * year - (25 * year) 
		afterBeingAttackedWith: LightWeapon new! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 15/Sep/2026, 11:48:45 pm (UTC)'!
test08LightWeaponTakes5YearsOfLifeTimeFromAHeavyRobot

	self 
		assertLifeTimeOf: HeavyRobot new 
		equals: 100 * year - (5 * year) 
		afterBeingAttackedWith: LightWeapon new! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 15/Sep/2026, 11:48:45 pm (UTC)'!
test09MediumWeaponTakes5YearsOfLifeTimeFromALightRobot

	self 
		assertLifeTimeOf: LightRobot new 
		equals: 100 * year - (5 * year) 
		afterBeingAttackedWith: MediumWeapon new! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 15/Sep/2026, 11:48:45 pm (UTC)'!
test10MediumWeaponTakes50YearsOfLifeTimeFromAHeavyRobot

	self 
		assertLifeTimeOf: HeavyRobot new 
		equals: 100 * year - (50 * year) 
		afterBeingAttackedWith: MediumWeapon new! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 15/Sep/2026, 11:48:45 pm (UTC)'!
test11HeavyWeaponTakes100YearsOfLifeTimeFromALightRobot

	self 
		assertLifeTimeOf: LightRobot new 
		equals: 100 * year - (100 * year) 
		afterBeingAttackedWith: HeavyWeapon new! !

!RobotWarsTest methodsFor: 'tests - attacking' stamp: 'HAW 15/Sep/2026, 11:48:45 pm (UTC)'!
test12HeavyWeaponTakes100YearsOfLifeTimeFromAHeavyRobot

	self 
		assertLifeTimeOf: HeavyRobot new 
		equals: 100 * year - (100 * year) 
		afterBeingAttackedWith: HeavyWeapon new! !

!RobotWarsTest methodsFor: 'support' stamp: 'HAW 15/Sep/2026, 11:49:17 pm (UTC)'!
attackerRobotCarrying: aWeapon afterAttacking: anAttackedRobot times: anAmountOfAttacks

	| attackerRobot |
	
	attackerRobot := LightRobot new.
	attackerRobot carry: aWeapon.
	anAmountOfAttacks timesRepeat: [ attackerRobot attack: anAttackedRobot with: aWeapon ].
	
	^attackerRobot! !

!RobotWarsTest methodsFor: 'tests - weapons wearing out' stamp: 'HAW 15/Sep/2026, 11:49:17 pm (UTC)'!
test13LightWeaponIsDiscardedAfterAttackingALightRobotTwice

	| attackedRobot weapon attackerRobot |
	
	attackedRobot := LightRobot new.
	weapon := LightWeapon new.
	attackerRobot := self attackerRobotCarrying: weapon afterAttacking: attackedRobot times: 2.
	
	self 
		should: [ attackerRobot attack: attackedRobot with: weapon ]
		raise: Error
		withMessageText: Robot canNotAttackWithANotCarriedWeaponErrorDescription! !

!RobotWarsTest methodsFor: 'tests - weapons wearing out' stamp: 'HAW 15/Sep/2026, 11:49:17 pm (UTC)'!
test14LightWeaponIsDiscardedAfterAttackingAHeavyRobotOnce

	| attackedRobot weapon attackerRobot |
	
	attackedRobot := HeavyRobot new.
	weapon := LightWeapon new.
	attackerRobot := self attackerRobotCarrying: weapon afterAttacking: attackedRobot times: 1.
	
	self 
		should: [ attackerRobot attack: attackedRobot with: weapon ]
		raise: Error
		withMessageText: Robot canNotAttackWithANotCarriedWeaponErrorDescription! !

!RobotWarsTest methodsFor: 'tests - weapons wearing out' stamp: 'HAW 15/Sep/2026, 11:49:17 pm (UTC)'!
test15MediumWeaponBecomesAHeavyWeaponAfterAttackingALightRobotFiveTimes

	| attackerRobot |
	
	attackerRobot := self 
		attackerRobotCarrying: MediumWeapon new 
		afterAttacking: LightRobot new 
		times: 5.
	
	self assert: attackerRobot numberOfWeapons equals: 1.
	self assert: (attackerRobot carriesAWeaponOfType: HeavyWeapon)! !

!RobotWarsTest methodsFor: 'tests - weapons wearing out' stamp: 'HAW 15/Sep/2026, 11:49:17 pm (UTC)'!
test16MediumWeaponGivesALightWeaponWhenItLeavesAHeavyRobotWith50YearsOfLifeTime

	| weapon attackerRobot |
	
	weapon := MediumWeapon new.
	attackerRobot := self attackerRobotCarrying: weapon afterAttacking: HeavyRobot new times: 1.
	
	self assert: attackerRobot numberOfWeapons equals: 2.
	self assert: (attackerRobot carries: weapon).
	self assert: (attackerRobot carriesAWeaponOfType: LightWeapon)! !

!RobotWarsTest methodsFor: 'tests - weapons wearing out' stamp: 'HAW 15/Sep/2026, 11:49:17 pm (UTC)'!
test17HeavyWeaponIsDiscardedAfterAttackingALightRobotTenTimes

	| attackerRobot |
	
	attackerRobot := self 
		attackerRobotCarrying: HeavyWeapon new 
		afterAttacking: LightRobot new 
		times: 10.
	
	self assert: attackerRobot numberOfWeapons equals: 0! !

!RobotWarsTest methodsFor: 'tests - weapons wearing out' stamp: 'HAW 15/Sep/2026, 11:49:17 pm (UTC)'!
test18HeavyWeaponBecomesAMediumWeaponAfterAttackingAHeavyRobotFiveTimes

	| attackerRobot |
	
	attackerRobot := self 
		attackerRobotCarrying: HeavyWeapon new 
		afterAttacking: HeavyRobot new 
		times: 5.
	
	self assert: attackerRobot numberOfWeapons equals: 1.
	self assert: (attackerRobot carriesAWeaponOfType: MediumWeapon)! !
