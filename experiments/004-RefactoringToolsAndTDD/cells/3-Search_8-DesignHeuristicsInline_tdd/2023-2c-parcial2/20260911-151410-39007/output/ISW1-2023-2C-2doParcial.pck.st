'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 3:31:17 pm'!
'Description '!
!provides: 'ISW1-2023-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'ISW1-2023-2C-2doParcial-Tests'!
SystemOrganization addCategory: #'ISW1-2023-2C-2doParcial'!


!classDefinition: #DamagedHeavyArmour category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #DamagedHeavyArmour
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'DamagedHeavyArmour class' category: #'ISW1-2023-2C-2doParcial'!
DamagedHeavyArmour class
	instanceVariableNames: ''!

!classDefinition: #HeavyArmour category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #HeavyArmour
	instanceVariableNames: 'position'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'HeavyArmour class' category: #'ISW1-2023-2C-2doParcial'!
HeavyArmour class
	instanceVariableNames: ''!

!classDefinition: #HighPowerMine category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #HighPowerMine
	instanceVariableNames: 'position'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'HighPowerMine class' category: #'ISW1-2023-2C-2doParcial'!
HighPowerMine class
	instanceVariableNames: ''!

!classDefinition: #LightArmour category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #LightArmour
	instanceVariableNames: 'position'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'LightArmour class' category: #'ISW1-2023-2C-2doParcial'!
LightArmour class
	instanceVariableNames: ''!

!classDefinition: #LowPowerMine category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #LowPowerMine
	instanceVariableNames: 'position'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'LowPowerMine class' category: #'ISW1-2023-2C-2doParcial'!
LowPowerMine class
	instanceVariableNames: ''!

!classDefinition: #MineField category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #MineField
	instanceVariableNames: 'extent playerPosition lives elements random armour'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'MineField class' category: #'ISW1-2023-2C-2doParcial'!
MineField class
	instanceVariableNames: ''!

!classDefinition: #NoArmour category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #NoArmour
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'NoArmour class' category: #'ISW1-2023-2C-2doParcial'!
NoArmour class
	instanceVariableNames: ''!

!classDefinition: #Tunnel category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #Tunnel
	instanceVariableNames: 'oneEnd otherEnd'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'Tunnel class' category: #'ISW1-2023-2C-2doParcial'!
Tunnel class
	instanceVariableNames: ''!

!classDefinition: #PredictableRandom category: #'ISW1-2023-2C-2doParcial-Tests'!
Object subclass: #PredictableRandom
	instanceVariableNames: 'values'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial-Tests'!
!classDefinition: 'PredictableRandom class' category: #'ISW1-2023-2C-2doParcial-Tests'!
PredictableRandom class
	instanceVariableNames: ''!

!classDefinition: #MineFieldTest category: #'ISW1-2023-2C-2doParcial-Tests'!
TestCase subclass: #MineFieldTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial-Tests'!
!classDefinition: 'MineFieldTest class' category: #'ISW1-2023-2C-2doParcial-Tests'!
MineFieldTest class
	instanceVariableNames: ''!


!DamagedHeavyArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:25:06 pm (UTC)'!
protectFromHighPowerExplosionIn: aMineField

	aMineField takeOffArmour! !

!DamagedHeavyArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:23:49 pm (UTC)'!
protectFromLowPowerExplosionIn: aMineField

	aMineField takeOffArmour! !

!HeavyArmour methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:23:19 pm (UTC)'!
initializeAt: aPosition

	position := aPosition! !

!HeavyArmour methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:26:00 pm (UTC)'!
positions

	^{ position }! !

!HeavyArmour methodsFor: 'acting' stamp: 'HAW 11/Sep/2026, 6:23:19 pm (UTC)'!
actOn: aMineField

	aMineField 
		removeElementAt: position;
		wear: self! !

!HeavyArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:24:48 pm (UTC)'!
protectFromHighPowerExplosionIn: aMineField

	aMineField takeOffArmour! !

!HeavyArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:23:49 pm (UTC)'!
protectFromLowPowerExplosionIn: aMineField

	aMineField wear: DamagedHeavyArmour new! !

!HeavyArmour class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:23:19 pm (UTC)'!
at: aPosition

	^self new initializeAt: aPosition! !

!HighPowerMine methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:19:45 pm (UTC)'!
initializeAt: aPosition

	position := aPosition! !

!HighPowerMine methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:26:00 pm (UTC)'!
positions

	^{ position }! !

!HighPowerMine methodsFor: 'acting' stamp: 'HAW 11/Sep/2026, 6:22:37 pm (UTC)'!
actOn: aMineField

	aMineField 
		removeElementAt: position;
		explodeHighPowerMine! !

!HighPowerMine class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:19:45 pm (UTC)'!
at: aPosition

	^self new initializeAt: aPosition! !

!LightArmour methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:21:59 pm (UTC)'!
initializeAt: aPosition

	position := aPosition! !

!LightArmour methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:26:00 pm (UTC)'!
positions

	^{ position }! !

!LightArmour methodsFor: 'acting' stamp: 'HAW 11/Sep/2026, 6:21:59 pm (UTC)'!
actOn: aMineField

	aMineField 
		removeElementAt: position;
		wear: self! !

!LightArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:22:57 pm (UTC)'!
protectFromHighPowerExplosionIn: aMineField

	aMineField 
		takeOffArmour;
		flyPlayerHalfway! !

!LightArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:22:17 pm (UTC)'!
protectFromLowPowerExplosionIn: aMineField

	aMineField takeOffArmour! !

!LightArmour class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:21:59 pm (UTC)'!
at: aPosition

	^self new initializeAt: aPosition! !

!LowPowerMine methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:18:36 pm (UTC)'!
initializeAt: aPosition

	position := aPosition! !

!LowPowerMine methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:26:00 pm (UTC)'!
positions

	^{ position }! !

!LowPowerMine methodsFor: 'acting' stamp: 'HAW 11/Sep/2026, 6:21:50 pm (UTC)'!
actOn: aMineField

	aMineField 
		removeElementAt: position;
		explodeLowPowerMine! !

!LowPowerMine class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:18:36 pm (UTC)'!
at: aPosition

	^self new initializeAt: aPosition! !

!MineField methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:26:00 pm (UTC)'!
elementsByPositionFrom: someElements

	| elementsByPosition |
	
	elementsByPosition := Dictionary new.
	someElements do: [ :element | 
		element positions do: [ :position | elementsByPosition at: position put: element ]].
	
	^elementsByPosition! !

!MineField methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:21:59 pm (UTC)'!
initializeExtent: anExtent playerStartingAt: aStartingPosition lives: aNumberOfLives elements: someElements random: aRandom

	extent := anExtent.
	playerPosition := aStartingPosition.
	lives := aNumberOfLives.
	elements := self elementsByPositionFrom: someElements.
	random := aRandom.
	armour := NoArmour new! !

!MineField methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:18:31 pm (UTC)'!
playerLives

	^lives! !

!MineField methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:16:28 pm (UTC)'!
playerPosition

	^playerPosition! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:30:26 pm (UTC)'!
moveDown

	self movePlayerBy: 0@-1! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:30:26 pm (UTC)'!
moveLeft

	self movePlayerBy: -1@0! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:30:26 pm (UTC)'!
moveRight

	self movePlayerBy: 1@0! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:30:26 pm (UTC)'!
moveUp

	self movePlayerBy: 0@1! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:30:26 pm (UTC)'!
assertGameIsNotOver

	self isOver ifTrue: [ self error: self class gameOverErrorDescription ]! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:18:31 pm (UTC)'!
moveBy: anOffset

	| destination |
	
	destination := playerPosition + anOffset.
	(self includes: destination) ifTrue: [ self movePlayerTo: destination ]! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:30:26 pm (UTC)'!
movePlayerBy: anOffset

	self assertGameIsNotOver.
	self moveBy: anOffset! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:18:31 pm (UTC)'!
movePlayerTo: aPosition

	playerPosition := aPosition.
	elements at: aPosition ifPresent: [ :element | element actOn: self ]! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:26:00 pm (UTC)'!
teleportPlayerTo: aPosition

	playerPosition := aPosition! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:19:19 pm (UTC)'!
hasPlayerLost

	^lives <= 0! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:17:55 pm (UTC)'!
hasPlayerWon

	^playerPosition y = extent y! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:17:40 pm (UTC)'!
includes: aPosition

	^aPosition between: 1@1 and: extent! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:30:47 pm (UTC)'!
isOver

	^self hasPlayerWon or: [ self hasPlayerLost ]! !

!MineField methodsFor: 'lives' stamp: 'HAW 11/Sep/2026, 6:18:31 pm (UTC)'!
loseLives: aNumberOfLives

	lives := lives - aNumberOfLives! !

!MineField methodsFor: 'elements' stamp: 'HAW 11/Sep/2026, 6:18:53 pm (UTC)'!
removeElementAt: aPosition

	elements removeKey: aPosition! !

!MineField methodsFor: 'flying' stamp: 'HAW 11/Sep/2026, 6:20:28 pm (UTC)'!
flyPlayer

	self moveBy: self randomFlyingOffset! !

!MineField methodsFor: 'flying' stamp: 'HAW 11/Sep/2026, 6:22:57 pm (UTC)'!
flyPlayerHalfway

	self moveBy: self randomFlyingOffset // 2! !

!MineField methodsFor: 'flying' stamp: 'HAW 11/Sep/2026, 6:20:28 pm (UTC)'!
maximumFlyingDistance

	^3! !

!MineField methodsFor: 'flying' stamp: 'HAW 11/Sep/2026, 6:20:28 pm (UTC)'!
randomFlyingDistance

	^(random nextInteger: self maximumFlyingDistance * 2 + 1) - self maximumFlyingDistance - 1! !

!MineField methodsFor: 'flying' stamp: 'HAW 11/Sep/2026, 6:20:28 pm (UTC)'!
randomFlyingOffset

	^self randomFlyingDistance @ self randomFlyingDistance! !

!MineField methodsFor: 'armour' stamp: 'HAW 11/Sep/2026, 6:22:17 pm (UTC)'!
takeOffArmour

	armour := NoArmour new! !

!MineField methodsFor: 'armour' stamp: 'HAW 11/Sep/2026, 6:21:59 pm (UTC)'!
wear: anArmour

	armour := anArmour! !

!MineField methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:22:37 pm (UTC)'!
explodeHighPowerMine

	armour protectFromHighPowerExplosionIn: self! !

!MineField methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:21:59 pm (UTC)'!
explodeLowPowerMine

	armour protectFromLowPowerExplosionIn: self! !

!MineField class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:29:46 pm (UTC)'!
extent: anExtent playerStartingAt: aStartingPosition lives: aNumberOfLives elements: someElements random: aRandom

	self 
		assertIsValidExtent: anExtent 
		playerStartingAt: aStartingPosition 
		lives: aNumberOfLives 
		elements: someElements.
	
	^self new 
		initializeExtent: anExtent 
		playerStartingAt: aStartingPosition 
		lives: aNumberOfLives 
		elements: someElements 
		random: aRandom! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:29:18 pm (UTC)'!
assertAll: someElements areInside: anExtent

	((self positionsOf: someElements) allSatisfy: [ :position | position between: 1@1 and: anExtent ]) 
		ifFalse: [ self error: self elementOutsideTheBoardErrorDescription ]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:29:29 pm (UTC)'!
assertIsFree: aStartingPosition among: someElements

	((self positionsOf: someElements) includes: aStartingPosition) 
		ifTrue: [ self error: self occupiedStartingPositionErrorDescription ]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:27:12 pm (UTC)'!
assertIsValidExtent: anExtent

	anExtent >= self minimumExtent ifFalse: [ self error: self extentTooSmallErrorDescription ]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:29:46 pm (UTC)'!
assertIsValidExtent: anExtent playerStartingAt: aStartingPosition lives: aNumberOfLives elements: someElements

	self assertIsValidExtent: anExtent.
	self assertIsValidStartingPosition: aStartingPosition in: anExtent.
	self assertIsFree: aStartingPosition among: someElements.
	self assertIsValidLives: aNumberOfLives.
	self assertAll: someElements areInside: anExtent.
	self assertOnlyOneElementPerPositionAmong: someElements! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:28:43 pm (UTC)'!
assertIsValidLives: aNumberOfLives

	aNumberOfLives strictlyPositive ifFalse: [ self error: self invalidLivesErrorDescription ]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:28:02 pm (UTC)'!
assertIsValidStartingPosition: aStartingPosition in: anExtent

	(aStartingPosition between: 1@1 and: anExtent x @ 1) ifFalse: [ self error: self invalidStartingPositionErrorDescription ]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:29:46 pm (UTC)'!
assertOnlyOneElementPerPositionAmong: someElements

	| positions |
	
	positions := self positionsOf: someElements.
	positions asSet size = positions size ifFalse: [ self error: self moreThanOneElementAtAPositionErrorDescription ]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:27:12 pm (UTC)'!
minimumExtent

	^2@2! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:29:18 pm (UTC)'!
positionsOf: someElements

	^someElements 
		inject: OrderedCollection new 
		into: [ :positions :element | positions addAll: element positions; yourself ]! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:29:06 pm (UTC)'!
elementOutsideTheBoardErrorDescription

	^'Every element must be inside the mine field'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:27:12 pm (UTC)'!
extentTooSmallErrorDescription

	^'The mine field must be at least 2x2'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:30:26 pm (UTC)'!
gameOverErrorDescription

	^'The player can not move because the game is over'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:28:43 pm (UTC)'!
invalidLivesErrorDescription

	^'The player must start with at least one life'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:27:41 pm (UTC)'!
invalidStartingPositionErrorDescription

	^'The player must start at a position of the bottom row'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:29:46 pm (UTC)'!
moreThanOneElementAtAPositionErrorDescription

	^'There can not be more than one element at a position'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:28:23 pm (UTC)'!
occupiedStartingPositionErrorDescription

	^'The player must start at a free position'! !

!NoArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:22:37 pm (UTC)'!
protectFromHighPowerExplosionIn: aMineField

	aMineField 
		loseLives: 2;
		flyPlayer! !

!NoArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:21:59 pm (UTC)'!
protectFromLowPowerExplosionIn: aMineField

	aMineField loseLives: 1! !

!Tunnel methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:26:06 pm (UTC)'!
initializeBetween: aPosition and: anotherPosition

	oneEnd := aPosition.
	otherEnd := anotherPosition! !

!Tunnel methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:26:38 pm (UTC)'!
endOppositeTo: anEnd

	^anEnd = oneEnd 
		ifTrue: [ otherEnd ] 
		ifFalse: [ oneEnd ]! !

!Tunnel methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:26:06 pm (UTC)'!
positions

	^{ oneEnd. otherEnd }! !

!Tunnel methodsFor: 'acting' stamp: 'HAW 11/Sep/2026, 6:26:38 pm (UTC)'!
actOn: aMineField

	aMineField teleportPlayerTo: (self endOppositeTo: aMineField playerPosition)! !

!Tunnel class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:26:06 pm (UTC)'!
between: aPosition and: anotherPosition

	^self new initializeBetween: aPosition and: anotherPosition! !

!PredictableRandom methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:20:12 pm (UTC)'!
initializeAnswering: someIntegers

	values := ReadStream on: someIntegers! !

!PredictableRandom methodsFor: 'random' stamp: 'HAW 11/Sep/2026, 6:20:12 pm (UTC)'!
nextInteger: aMaximum

	^values next! !

!PredictableRandom class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:20:12 pm (UTC)'!
answering: someIntegers

	^self new initializeAnswering: someIntegers! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:16:15 pm (UTC)'!
test01PlayerStartsAtTheStartingPosition

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 2@1 with: #().
	
	self assert: mineField playerPosition equals: 2@1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:16:34 pm (UTC)'!
test02MovingUpMovesThePlayerOneRowUp

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 2@1 with: #().
	
	mineField moveUp.
	
	self assert: mineField playerPosition equals: 2@2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:16:48 pm (UTC)'!
test03MovingDownMovesThePlayerOneRowDown

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 2@1 with: #().
	mineField moveUp.
	
	mineField moveDown.
	
	self assert: mineField playerPosition equals: 2@1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:16:59 pm (UTC)'!
test04MovingRightMovesThePlayerOneColumnRight

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 2@1 with: #().
	
	mineField moveRight.
	
	self assert: mineField playerPosition equals: 3@1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:17:10 pm (UTC)'!
test05MovingLeftMovesThePlayerOneColumnLeft

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 2@1 with: #().
	
	mineField moveLeft.
	
	self assert: mineField playerPosition equals: 1@1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:17:31 pm (UTC)'!
test06MovingLeftFromTheFirstColumnKeepsThePlayerInTheSamePosition

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 1@1 with: #().
	
	mineField moveLeft.
	
	self assert: mineField playerPosition equals: 1@1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:17:50 pm (UTC)'!
test07PlayerWinsWhenReachingTheTopRow

	| mineField |
	
	mineField := self mineFieldOf: 2@2 startingAt: 1@1 with: #().
	
	mineField moveUp.
	
	self assert: mineField hasPlayerWon! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:18:04 pm (UTC)'!
test08LandingOnALowPowerMineMakesThePlayerLoseOneLife

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 1@1 with: { LowPowerMine at: 1@2 }.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:18:45 pm (UTC)'!
test09LandingAgainOnAnExplodedLowPowerMinePositionDoesNotMakeThePlayerLoseLives

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 1@1 with: { LowPowerMine at: 1@2 }.
	mineField moveUp; moveDown.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:19:09 pm (UTC)'!
test10PlayerLosesWhenRunningOutOfLives

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 1@1 lives: 1 with: { LowPowerMine at: 1@2 }.
	
	mineField moveUp.
	
	self assert: mineField hasPlayerLost! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:20:46 pm (UTC)'!
test11LandingOnAHighPowerMineMakesThePlayerLoseTwoLives

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 1@1 flyingBy: 1@0 with: { HighPowerMine at: 1@2 }.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:20:07 pm (UTC)'!
test12LandingOnAHighPowerMineMakesThePlayerFlyByTheRandomOffset

	| mineField |
	
	mineField := self mineFieldOf: 5@5 startingAt: 2@1 flyingBy: 1@2 with: { HighPowerMine at: 2@2 }.
	
	mineField moveUp.
	
	self assert: mineField playerPosition equals: 3@4! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:20:46 pm (UTC)'!
test13LandingOnAHighPowerMineDoesNotMakeThePlayerFlyOutsideTheBoard

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 1@1 flyingBy: -1@0 with: { HighPowerMine at: 1@2 }.
	
	mineField moveUp.
	
	self assert: mineField playerPosition equals: 1@2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:20:58 pm (UTC)'!
test14FlyingOntoALowPowerMineMakesThePlayerLoseItsLifeToo

	| mineField |
	
	mineField := self 
		mineFieldOf: 3@3 
		startingAt: 1@1 
		flyingBy: 1@1 
		with: { HighPowerMine at: 1@2. LowPowerMine at: 2@3 }.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 0! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:21:12 pm (UTC)'!
test15LandingAgainOnAnExplodedHighPowerMinePositionDoesNotMakeThePlayerLoseLives

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 1@1 flyingBy: -1@0 with: { HighPowerMine at: 1@2 }.
	mineField moveUp; moveDown.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:21:31 pm (UTC)'!
test16LightArmourProtectsThePlayerFromLosingLivesOnALowPowerMine

	| mineField |
	
	mineField := self 
		mineFieldOf: 3@4 
		startingAt: 1@1 
		with: { LightArmour at: 1@2. LowPowerMine at: 1@3 }.
	mineField moveUp.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:22:08 pm (UTC)'!
test17LightArmourProtectsThePlayerOnlyOnce

	| mineField |
	
	mineField := self 
		mineFieldOf: 3@5 
		startingAt: 1@1 
		with: { LightArmour at: 1@2. LowPowerMine at: 1@3. LowPowerMine at: 1@4 }.
	mineField moveUp; moveUp.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:22:27 pm (UTC)'!
test18LightArmourProtectsThePlayerFromLosingLivesOnAHighPowerMine

	| mineField |
	
	mineField := self 
		mineFieldOf: 3@5 
		startingAt: 1@1 
		flyingBy: -1@0 
		with: { LightArmour at: 1@2. HighPowerMine at: 1@3 }.
	mineField moveUp.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:22:49 pm (UTC)'!
test19LightArmourMakesThePlayerFlyByHalfTheRandomOffsetOnAHighPowerMine

	| mineField |
	
	mineField := self 
		mineFieldOf: 5@6 
		startingAt: 1@1 
		flyingBy: 3@2 
		with: { LightArmour at: 1@2. HighPowerMine at: 1@3 }.
	mineField moveUp.
	
	mineField moveUp.
	
	self assert: mineField playerPosition equals: 2@4! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:23:05 pm (UTC)'!
test20HeavyArmourProtectsThePlayerFromLosingLivesOnTwoLowPowerMines

	| mineField |
	
	mineField := self 
		mineFieldOf: 3@5 
		startingAt: 1@1 
		with: { HeavyArmour at: 1@2. LowPowerMine at: 1@3. LowPowerMine at: 1@4 }.
	mineField moveUp; moveUp.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:23:32 pm (UTC)'!
test21HeavyArmourProtectsThePlayerOnlyFromTwoLowPowerMines

	| mineField |
	
	mineField := self 
		mineFieldOf: 3@6 
		startingAt: 1@1 
		with: { HeavyArmour at: 1@2. LowPowerMine at: 1@3. LowPowerMine at: 1@4. LowPowerMine at: 1@5 }.
	mineField moveUp; moveUp; moveUp.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:24:00 pm (UTC)'!
test22HeavyArmourProtectsThePlayerFromLosingLivesOnAHighPowerMine

	| mineField |
	
	mineField := self 
		mineFieldOf: 3@5 
		startingAt: 1@1 
		flyingBy: 1@0 
		with: { HeavyArmour at: 1@2. HighPowerMine at: 1@3 }.
	mineField moveUp.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:24:25 pm (UTC)'!
test23HeavyArmourDoesNotMakeThePlayerFlyOnAHighPowerMine

	| mineField |
	
	mineField := self 
		mineFieldOf: 3@5 
		startingAt: 1@1 
		flyingBy: 1@0 
		with: { HeavyArmour at: 1@2. HighPowerMine at: 1@3 }.
	mineField moveUp.
	
	mineField moveUp.
	
	self assert: mineField playerPosition equals: 1@3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:24:37 pm (UTC)'!
test24HeavyArmourProtectsThePlayerOnlyOnceFromHighPowerMines

	| mineField |
	
	mineField := self 
		mineFieldOf: 3@6 
		startingAt: 1@1 
		flyingBy: -1@0 
		with: { HeavyArmour at: 1@2. HighPowerMine at: 1@3. HighPowerMine at: 1@4 }.
	mineField moveUp; moveUp.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:24:58 pm (UTC)'!
test25HeavyArmourUsedOnALowPowerMineProtectsThePlayerFromLosingLivesOnAHighPowerMine

	| mineField |
	
	mineField := self 
		mineFieldOf: 3@6 
		startingAt: 1@1 
		flyingBy: -1@0 
		with: { HeavyArmour at: 1@2. LowPowerMine at: 1@3. HighPowerMine at: 1@4 }.
	mineField moveUp; moveUp.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:25:30 pm (UTC)'!
test26LandingOnAnArmourWhileWearingAnotherOneReplacesTheWornArmour

	| mineField |
	
	mineField := self 
		mineFieldOf: 3@7 
		startingAt: 1@1 
		with: { HeavyArmour at: 1@2. LightArmour at: 1@3. LowPowerMine at: 1@4. LowPowerMine at: 1@5 }.
	mineField moveUp; moveUp; moveUp.
	
	mineField moveUp.
	
	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:25:40 pm (UTC)'!
test27LandingOnATunnelEndMovesThePlayerToTheOtherEnd

	| mineField |
	
	mineField := self mineFieldOf: 3@4 startingAt: 1@1 with: { Tunnel between: 1@2 and: 3@3 }.
	
	mineField moveUp.
	
	self assert: mineField playerPosition equals: 3@3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:26:25 pm (UTC)'!
test28LandingOnTheOtherTunnelEndMovesThePlayerToTheFirstOne

	| mineField |
	
	mineField := self mineFieldOf: 3@4 startingAt: 1@1 with: { Tunnel between: 3@3 and: 1@2 }.
	
	mineField moveUp.
	
	self assert: mineField playerPosition equals: 3@3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:26:48 pm (UTC)'!
test29LandingAgainOnAUsedTunnelEndMovesThePlayerToTheOtherEndAgain

	| mineField |
	
	mineField := self mineFieldOf: 3@5 startingAt: 1@1 with: { Tunnel between: 1@2 and: 3@3 }.
	mineField moveUp; moveDown.
	
	mineField moveUp.
	
	self assert: mineField playerPosition equals: 1@2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:27:01 pm (UTC)'!
test30CanNotCreateAMineFieldWithLessThanTwoColumns

	self 
		should: [ self mineFieldOf: 1@2 startingAt: 1@1 with: #() ] 
		raise: Error 
		withMessageText: MineField extentTooSmallErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:27:20 pm (UTC)'!
test31CanNotCreateAMineFieldWithLessThanTwoRows

	self 
		should: [ self mineFieldOf: 2@1 startingAt: 1@1 with: #() ] 
		raise: Error 
		withMessageText: MineField extentTooSmallErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:27:29 pm (UTC)'!
test32CanNotCreateAMineFieldWithThePlayerStartingOutsideTheBottomRow

	self 
		should: [ self mineFieldOf: 3@3 startingAt: 1@2 with: #() ] 
		raise: Error 
		withMessageText: MineField invalidStartingPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:27:50 pm (UTC)'!
test33CanNotCreateAMineFieldWithThePlayerStartingOutsideTheBoardColumns

	self 
		should: [ self mineFieldOf: 3@3 startingAt: 4@1 with: #() ] 
		raise: Error 
		withMessageText: MineField invalidStartingPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:28:11 pm (UTC)'!
test34CanNotCreateAMineFieldWithAnElementAtThePlayerStartingPosition

	self 
		should: [ self mineFieldOf: 3@3 startingAt: 1@1 with: { LowPowerMine at: 1@1 } ] 
		raise: Error 
		withMessageText: MineField occupiedStartingPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:28:31 pm (UTC)'!
test35CanNotCreateAMineFieldWithoutLives

	self 
		should: [ self mineFieldOf: 3@3 startingAt: 1@1 lives: 0 with: #() ] 
		raise: Error 
		withMessageText: MineField invalidLivesErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:28:52 pm (UTC)'!
test36CanNotCreateAMineFieldWithAnElementOutsideTheBoard

	self 
		should: [ self mineFieldOf: 3@3 startingAt: 1@1 with: { LowPowerMine at: 4@2 } ] 
		raise: Error 
		withMessageText: MineField elementOutsideTheBoardErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:29:29 pm (UTC)'!
test37CanNotCreateAMineFieldWithTwoElementsAtTheSamePosition

	self 
		should: [ self mineFieldOf: 3@3 startingAt: 1@1 with: { LowPowerMine at: 2@2. LightArmour at: 2@2 } ] 
		raise: Error 
		withMessageText: MineField moreThanOneElementAtAPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:30:02 pm (UTC)'!
test38PlayerCanNotMoveAfterWinning

	| mineField |
	
	mineField := self mineFieldOf: 2@2 startingAt: 1@1 with: #().
	mineField moveUp.
	
	self 
		should: [ mineField moveRight ] 
		raise: Error 
		withMessageText: MineField gameOverErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:30:36 pm (UTC)'!
test39PlayerCanNotMoveAfterLosing

	| mineField |
	
	mineField := self mineFieldOf: 3@3 startingAt: 1@1 lives: 1 with: { LowPowerMine at: 1@2 }.
	mineField moveUp.
	
	self 
		should: [ mineField moveRight ] 
		raise: Error 
		withMessageText: MineField gameOverErrorDescription! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:20:07 pm (UTC)'!
mineFieldOf: anExtent startingAt: aStartingPosition flyingBy: anOffset with: someElements

	^self 
		mineFieldOf: anExtent 
		startingAt: aStartingPosition 
		lives: 3 
		random: (self randomFlyingBy: anOffset) 
		with: someElements! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:20:07 pm (UTC)'!
mineFieldOf: anExtent startingAt: aStartingPosition lives: aNumberOfLives random: aRandom with: someElements

	^MineField 
		extent: anExtent 
		playerStartingAt: aStartingPosition 
		lives: aNumberOfLives 
		elements: someElements 
		random: aRandom! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:20:07 pm (UTC)'!
mineFieldOf: anExtent startingAt: aStartingPosition lives: aNumberOfLives with: someElements

	^self 
		mineFieldOf: anExtent 
		startingAt: aStartingPosition 
		lives: aNumberOfLives 
		random: Random new 
		with: someElements! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:19:09 pm (UTC)'!
mineFieldOf: anExtent startingAt: aStartingPosition with: someElements

	^self mineFieldOf: anExtent startingAt: aStartingPosition lives: 3 with: someElements! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:20:07 pm (UTC)'!
randomFlyingBy: anOffset

	^PredictableRandom answering: { anOffset x + 4. anOffset y + 4 }! !
