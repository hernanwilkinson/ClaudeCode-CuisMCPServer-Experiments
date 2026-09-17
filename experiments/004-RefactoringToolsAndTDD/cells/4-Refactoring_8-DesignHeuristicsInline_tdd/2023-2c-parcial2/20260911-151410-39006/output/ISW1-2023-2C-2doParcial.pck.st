'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 3:31:41 pm'!
'Description '!
!provides: 'ISW1-2023-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'ISW1-2023-2C-2doParcial-Tests'!
SystemOrganization addCategory: #'ISW1-2023-2C-2doParcial'!


!classDefinition: #MineField category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #MineField
	instanceVariableNames: 'extent playerPosition lives elements random armour'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'MineField class' category: #'ISW1-2023-2C-2doParcial'!
MineField class
	instanceVariableNames: ''!

!classDefinition: #MineFieldElement category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #MineFieldElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'MineFieldElement class' category: #'ISW1-2023-2C-2doParcial'!
MineFieldElement class
	instanceVariableNames: ''!

!classDefinition: #Armour category: #'ISW1-2023-2C-2doParcial'!
MineFieldElement subclass: #Armour
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'Armour class' category: #'ISW1-2023-2C-2doParcial'!
Armour class
	instanceVariableNames: ''!

!classDefinition: #HeavyArmour category: #'ISW1-2023-2C-2doParcial'!
Armour subclass: #HeavyArmour
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'HeavyArmour class' category: #'ISW1-2023-2C-2doParcial'!
HeavyArmour class
	instanceVariableNames: ''!

!classDefinition: #DamagedHeavyArmour category: #'ISW1-2023-2C-2doParcial'!
HeavyArmour subclass: #DamagedHeavyArmour
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'DamagedHeavyArmour class' category: #'ISW1-2023-2C-2doParcial'!
DamagedHeavyArmour class
	instanceVariableNames: ''!

!classDefinition: #LightArmour category: #'ISW1-2023-2C-2doParcial'!
Armour subclass: #LightArmour
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'LightArmour class' category: #'ISW1-2023-2C-2doParcial'!
LightArmour class
	instanceVariableNames: ''!

!classDefinition: #HighPowerMine category: #'ISW1-2023-2C-2doParcial'!
MineFieldElement subclass: #HighPowerMine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'HighPowerMine class' category: #'ISW1-2023-2C-2doParcial'!
HighPowerMine class
	instanceVariableNames: ''!

!classDefinition: #LowPowerMine category: #'ISW1-2023-2C-2doParcial'!
MineFieldElement subclass: #LowPowerMine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'LowPowerMine class' category: #'ISW1-2023-2C-2doParcial'!
LowPowerMine class
	instanceVariableNames: ''!

!classDefinition: #Tunnel category: #'ISW1-2023-2C-2doParcial'!
MineFieldElement subclass: #Tunnel
	instanceVariableNames: 'exit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'Tunnel class' category: #'ISW1-2023-2C-2doParcial'!
Tunnel class
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

!classDefinition: #PredeterminedRandom category: #'ISW1-2023-2C-2doParcial-Tests'!
Object subclass: #PredeterminedRandom
	instanceVariableNames: 'values'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial-Tests'!
!classDefinition: 'PredeterminedRandom class' category: #'ISW1-2023-2C-2doParcial-Tests'!
PredeterminedRandom class
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


!MineField methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:26:58 pm (UTC)'!
initializeExtent: anExtent playerAt: aStartingPosition lives: aNumberOfLives elements: anElementsByPosition random: aRandom

	extent := anExtent.
	playerPosition := aStartingPosition.
	lives := aNumberOfLives.
	elements := anElementsByPosition.
	random := aRandom.
	armour := NoArmour new! !

!MineField methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:20:39 pm (UTC)'!
playerLives

	^lives! !

!MineField methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:17:14 pm (UTC)'!
playerPosition

	^playerPosition! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:18:22 pm (UTC)'!
moveDown

	self movePlayerBy: 0@-1! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:18:14 pm (UTC)'!
moveLeft

	self movePlayerBy: -1@0! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:18:06 pm (UTC)'!
moveRight

	self movePlayerBy: 1@0! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:18:06 pm (UTC)'!
moveUp

	self movePlayerBy: 0@1! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:30:50 pm (UTC)'!
landPlayerOn: aPosition

	playerPosition := aPosition.
	elements
		at: aPosition
		ifPresent: [:anElement | anElement receivePlayerAt: aPosition in: self]! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:22:48 pm (UTC)'!
landPlayerWithinBoardBy: aDisplacement

	| destination |

	destination := playerPosition + aDisplacement.
	(self isInsideBoard: destination) ifTrue: [self landPlayerOn: destination]! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:22:48 pm (UTC)'!
movePlayerBy: aDisplacement

	self assertGameIsNotOver.
	self landPlayerWithinBoardBy: aDisplacement! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:31:11 pm (UTC)'!
hasPlayerLost

	^lives = 0! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:29:54 pm (UTC)'!
hasPlayerWon

	^self hasPlayerLost not and: [self isPlayerOnTopRow]! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:21:21 pm (UTC)'!
isGameOver

	^self hasPlayerWon or: [self hasPlayerLost]! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:18:37 pm (UTC)'!
isInsideBoard: aPosition

	^aPosition between: 1@1 and: extent! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:29:54 pm (UTC)'!
isPlayerOnTopRow

	^playerPosition y = extent y! !

!MineField methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:21:21 pm (UTC)'!
assertGameIsNotOver

	self isGameOver ifTrue: [self error: self class gameOverErrorDescription]! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:23:49 pm (UTC)'!
explodeHighPowerMine

	armour absorbHighPowerMineExplosionIn: self! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:23:21 pm (UTC)'!
explodeLowPowerMine

	armour absorbLowPowerMineExplosionIn: self! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:22:48 pm (UTC)'!
flyPlayer

	self landPlayerWithinBoardBy: self randomFlightDisplacement! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:24:03 pm (UTC)'!
flyPlayerHalfway

	self landPlayerWithinBoardBy: self randomFlightDisplacement // 2! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:26:23 pm (UTC)'!
placePlayerAt: aPosition

	playerPosition := aPosition! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:31:11 pm (UTC)'!
playerLosesLives: aNumberOfLives

	lives := lives - aNumberOfLives max: 0! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:22:17 pm (UTC)'!
randomFlightCoordinate

	^(random nextInteger: 7) - 4! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:22:17 pm (UTC)'!
randomFlightDisplacement

	^self randomFlightCoordinate @ self randomFlightCoordinate! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:23:34 pm (UTC)'!
takeOffArmour

	armour := NoArmour new! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:23:21 pm (UTC)'!
wear: anArmour

	armour := anArmour! !

!MineField methodsFor: 'board' stamp: 'HAW 11/Sep/2026, 6:20:57 pm (UTC)'!
free: aPosition

	elements removeKey: aPosition! !

!MineField class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:28:18 pm (UTC)'!
extent: anExtent playerAt: aStartingPosition lives: aNumberOfLives elements: anElementsByPosition random: aRandom

	| board |

	self assertIsValidExtent: anExtent.
	self assertIsValidStartingPosition: aStartingPosition on: anExtent.
	self assertIsValidLives: aNumberOfLives.
	board := self boardWith: anElementsByPosition.
	self assertElementsOf: board areInside: anExtent.
	self assertStartingPosition: aStartingPosition isFreeIn: board.

	^self new
		initializeExtent: anExtent
		playerAt: aStartingPosition
		lives: aNumberOfLives
		elements: board
		random: aRandom! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:19:23 pm (UTC)'!
boardTooSmallErrorDescription

	^'The board must be at least 2x2'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:25:43 pm (UTC)'!
elementOutsideTheBoardErrorDescription

	^'Every element must be inside the board'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:19:09 pm (UTC)'!
gameOverErrorDescription

	^'The game is over'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:20:11 pm (UTC)'!
invalidLivesErrorDescription

	^'The player must start with at least one life'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:19:43 pm (UTC)'!
invalidStartingPositionErrorDescription

	^'The player must start at a position of the bottom row'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:29:24 pm (UTC)'!
overlappingElementsErrorDescription

	^'There can not be more than one element per position'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:26:00 pm (UTC)'!
startingPositionOccupiedErrorDescription

	^'The starting position must be free'! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:25:43 pm (UTC)'!
assertElementsOf: anElementsByPosition areInside: anExtent

	(anElementsByPosition keys allSatisfy: [:aPosition | aPosition between: 1@1 and: anExtent])
		ifFalse: [self error: self elementOutsideTheBoardErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:19:32 pm (UTC)'!
assertIsValidExtent: anExtent

	anExtent >= (2@2) ifFalse: [self error: self boardTooSmallErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:30:50 pm (UTC)'!
assertIsValidLives: aNumberOfLives

	aNumberOfLives strictlyPositive
		ifFalse: [self error: self invalidLivesErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:30:50 pm (UTC)'!
assertIsValidStartingPosition: aStartingPosition on: anExtent

	(aStartingPosition between: 1@1 and: anExtent x @ 1)
		ifFalse: [self error: self invalidStartingPositionErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:30:50 pm (UTC)'!
assertPosition: aPosition isFreeOn: aBoard

	(aBoard includesKey: aPosition)
		ifTrue: [self error: self overlappingElementsErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:26:00 pm (UTC)'!
assertStartingPosition: aStartingPosition isFreeIn: anElementsByPosition

	(anElementsByPosition includesKey: aStartingPosition)
		ifTrue: [self error: self startingPositionOccupiedErrorDescription]! !

!MineField class methodsFor: 'board' stamp: 'HAW 11/Sep/2026, 6:30:50 pm (UTC)'!
boardWith: anElementsByPosition

	| board |

	board := Dictionary new.
	anElementsByPosition keysAndValuesDo: [:aPosition :anElement |
		(anElement occupationsFrom: aPosition) do: [:anOccupation |
			self occupy: anOccupation on: board]].

	^board! !

!MineField class methodsFor: 'board' stamp: 'HAW 11/Sep/2026, 6:29:24 pm (UTC)'!
occupy: anOccupation on: aBoard

	self assertPosition: anOccupation key isFreeOn: aBoard.
	aBoard add: anOccupation! !

!MineFieldElement methodsFor: 'placing' stamp: 'HAW 11/Sep/2026, 6:29:24 pm (UTC)'!
occupationsFrom: aPosition

	^Array with: aPosition -> self! !

!MineFieldElement methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:27:10 pm (UTC)'!
receivePlayerAt: aPosition in: aMineField

	self subclassResponsibility! !

!Armour methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:28:18 pm (UTC)'!
receivePlayerAt: aPosition in: aMineField

	aMineField free: aPosition.
	aMineField wear: self! !

!HeavyArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:25:23 pm (UTC)'!
absorbHighPowerMineExplosionIn: aMineField

	aMineField takeOffArmour! !

!HeavyArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:24:49 pm (UTC)'!
absorbLowPowerMineExplosionIn: aMineField

	aMineField wear: DamagedHeavyArmour new! !

!DamagedHeavyArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:24:49 pm (UTC)'!
absorbLowPowerMineExplosionIn: aMineField

	aMineField takeOffArmour! !

!LightArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:24:03 pm (UTC)'!
absorbHighPowerMineExplosionIn: aMineField

	aMineField takeOffArmour.
	aMineField flyPlayerHalfway! !

!LightArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:23:34 pm (UTC)'!
absorbLowPowerMineExplosionIn: aMineField

	aMineField takeOffArmour! !

!HighPowerMine methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:23:49 pm (UTC)'!
receivePlayerAt: aPosition in: aMineField

	aMineField free: aPosition.
	aMineField explodeHighPowerMine! !

!LowPowerMine methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:23:21 pm (UTC)'!
receivePlayerAt: aPosition in: aMineField

	aMineField free: aPosition.
	aMineField explodeLowPowerMine! !

!Tunnel methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:26:23 pm (UTC)'!
initializeTo: anExit

	exit := anExit! !

!Tunnel methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:26:23 pm (UTC)'!
receivePlayerAt: aPosition in: aMineField

	aMineField placePlayerAt: exit! !

!Tunnel methodsFor: 'placing' stamp: 'HAW 11/Sep/2026, 6:29:24 pm (UTC)'!
occupationsFrom: anEntrance

	^Array with: anEntrance -> self with: exit -> (self class to: anEntrance)! !

!Tunnel class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:26:23 pm (UTC)'!
to: anExit

	^self new initializeTo: anExit! !

!NoArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:23:49 pm (UTC)'!
absorbHighPowerMineExplosionIn: aMineField

	aMineField playerLosesLives: 2.
	aMineField flyPlayer! !

!NoArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:23:21 pm (UTC)'!
absorbLowPowerMineExplosionIn: aMineField

	aMineField playerLosesLives: 1! !

!PredeterminedRandom methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:21:59 pm (UTC)'!
initializeAnswering: aSequenceOfValues

	values := ReadStream on: aSequenceOfValues! !

!PredeterminedRandom methodsFor: 'random' stamp: 'HAW 11/Sep/2026, 6:21:59 pm (UTC)'!
nextInteger: aMaximumValue

	^values next! !

!PredeterminedRandom class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:21:59 pm (UTC)'!
answering: aSequenceOfValues

	^self new initializeAnswering: aSequenceOfValues! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:17:41 pm (UTC)'!
test01PlayerStartsAtTheGivenPositionOfTheBottomRow

	| mineField |

	mineField := self mineFieldWithPlayerAt: 2@1.

	self assert: mineField playerPosition equals: 2@1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:17:41 pm (UTC)'!
test02PlayerMovingUpAdvancesOneRow

	| mineField |

	mineField := self mineFieldWithPlayerAt: 2@1.

	mineField moveUp.

	self assert: mineField playerPosition equals: 2@2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:17:49 pm (UTC)'!
test03PlayerMovingRightAdvancesOneColumn

	| mineField |

	mineField := self mineFieldWithPlayerAt: 2@1.

	mineField moveRight.

	self assert: mineField playerPosition equals: 3@1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:18:07 pm (UTC)'!
test04PlayerMovingLeftGoesBackOneColumn

	| mineField |

	mineField := self mineFieldWithPlayerAt: 2@1.

	mineField moveLeft.

	self assert: mineField playerPosition equals: 1@1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:18:15 pm (UTC)'!
test05PlayerMovingDownGoesBackOneRow

	| mineField |

	mineField := self mineFieldWithPlayerAt: 2@1.
	mineField moveUp.

	mineField moveDown.

	self assert: mineField playerPosition equals: 2@1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:18:23 pm (UTC)'!
test06PlayerMovingLeftFromTheFirstColumnStaysInTheSamePosition

	| mineField |

	mineField := self mineFieldWithPlayerAt: 1@1.

	mineField moveLeft.

	self assert: mineField playerPosition equals: 1@1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:18:39 pm (UTC)'!
test07PlayerHasNotWonBeforeReachingTheTopRow

	| mineField |

	mineField := self mineFieldWithPlayerAt: 1@1.

	mineField moveUp.

	self deny: mineField hasPlayerWon! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:18:46 pm (UTC)'!
test08PlayerReachingTheTopRowWins

	| mineField |

	mineField := self mineFieldWithPlayerAt: 1@1.

	4 timesRepeat: [mineField moveUp].

	self assert: mineField hasPlayerWon! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:18:56 pm (UTC)'!
test09PlayerCanNotMoveAfterWinning

	| mineField |

	mineField := self mineFieldWithPlayerAt: 1@1.
	4 timesRepeat: [mineField moveUp].

	self
		should: [mineField moveRight]
		raise: Error
		withExceptionDo: [:anError |
			self assert: anError messageText equals: MineField gameOverErrorDescription.
			self assert: mineField playerPosition equals: 1@5]! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:19:11 pm (UTC)'!
test10CanNotCreateAMineFieldWithLessThanTwoColumns

	self
		should: [MineField
			extent: 1@5
			playerAt: 1@1
			lives: 3
			elements: Dictionary new
			random: Random new]
		raise: Error
		withMessageText: MineField boardTooSmallErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:19:25 pm (UTC)'!
test11CanNotCreateAMineFieldWithLessThanTwoRows

	self
		should: [MineField
			extent: 5@1
			playerAt: 1@1
			lives: 3
			elements: Dictionary new
			random: Random new]
		raise: Error
		withMessageText: MineField boardTooSmallErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:19:33 pm (UTC)'!
test12CanNotCreateAMineFieldWithThePlayerOutsideTheBottomRow

	self
		should: [MineField
			extent: 5@5
			playerAt: 1@2
			lives: 3
			elements: Dictionary new
			random: Random new]
		raise: Error
		withMessageText: MineField invalidStartingPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:19:45 pm (UTC)'!
test13CanNotCreateAMineFieldWithThePlayerOutsideTheBoardColumns

	self
		should: [MineField
			extent: 5@5
			playerAt: 6@1
			lives: 3
			elements: Dictionary new
			random: Random new]
		raise: Error
		withMessageText: MineField invalidStartingPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:19:56 pm (UTC)'!
test14CanNotCreateAMineFieldWithoutLives

	self
		should: [MineField
			extent: 5@5
			playerAt: 1@1
			lives: 0
			elements: Dictionary new
			random: Random new]
		raise: Error
		withMessageText: MineField invalidLivesErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:20:25 pm (UTC)'!
test15PlayerLandingOnALowPowerMineLosesOneLife

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary with: 1@2 -> LowPowerMine new).

	mineField moveUp.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:20:41 pm (UTC)'!
test16LowPowerMineExplodesOnlyOnce

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary with: 1@2 -> LowPowerMine new).
	mineField moveUp.
	mineField moveDown.

	mineField moveUp.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:21:01 pm (UTC)'!
test17PlayerLosesWhenRunningOutOfLives

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		lives: 1
		elements: (Dictionary with: 1@2 -> LowPowerMine new).

	mineField moveUp.

	self assert: mineField hasPlayerLost! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:21:12 pm (UTC)'!
test18PlayerCanNotMoveAfterLosing

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		lives: 1
		elements: (Dictionary with: 1@2 -> LowPowerMine new).
	mineField moveUp.

	self
		should: [mineField moveUp]
		raise: Error
		withExceptionDo: [:anError |
			self assert: anError messageText equals: MineField gameOverErrorDescription.
			self assert: mineField playerPosition equals: 1@2]! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:22:06 pm (UTC)'!
test19PlayerLandingOnAHighPowerMineLosesTwoLives

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary with: 1@2 -> HighPowerMine new)
		randomValues: #(4 4).

	mineField moveUp.

	self assert: mineField playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:22:06 pm (UTC)'!
test20PlayerLandingOnAHighPowerMineFliesByARandomDisplacement

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary with: 1@2 -> HighPowerMine new)
		randomValues: #(5 6).

	mineField moveUp.

	self assert: mineField playerPosition equals: 2@4! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:22:19 pm (UTC)'!
test21PlayerFlyingOutsideTheBoardStaysAtTheHighPowerMinePosition

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary with: 1@2 -> HighPowerMine new)
		randomValues: #(1 4).

	mineField moveUp.

	self assert: mineField playerPosition equals: 1@2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:22:39 pm (UTC)'!
test22PlayerFlyingOntoAnotherElementUsesIt

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		lives: 4
		elements: (Dictionary with: 1@2 -> HighPowerMine new with: 2@4 -> LowPowerMine new)
		randomValues: #(5 6).

	mineField moveUp.

	self assert: mineField playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:31:01 pm (UTC)'!
test23PlayerWearingALightArmourDoesNotLoseLivesOnALowPowerMine

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary
			with: 1@2 -> LightArmour new
			with: 1@3 -> LowPowerMine new).
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:23:24 pm (UTC)'!
test24LightArmourProtectsFromOnlyOneMine

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary
			with: 1@2 -> LightArmour new
			with: 1@3 -> LowPowerMine new
			with: 1@4 -> LowPowerMine new).
	mineField moveUp.
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:31:01 pm (UTC)'!
test25PlayerWearingALightArmourDoesNotLoseLivesOnAHighPowerMine

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary
			with: 1@2 -> LightArmour new
			with: 1@3 -> HighPowerMine new)
		randomValues: #(4 4).
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:31:01 pm (UTC)'!
test26PlayerWearingALightArmourFliesHalfTheRandomDisplacementOnAHighPowerMine

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary
			with: 1@2 -> LightArmour new
			with: 1@3 -> HighPowerMine new)
		randomValues: #(7 6).
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerPosition equals: 2@4! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:24:10 pm (UTC)'!
test27PlayerWearingAHeavyArmourDoesNotLoseLivesOnTwoLowPowerMines

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary
			with: 1@2 -> HeavyArmour new
			with: 1@3 -> LowPowerMine new
			with: 1@4 -> LowPowerMine new).
	mineField moveUp.
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:24:26 pm (UTC)'!
test28HeavyArmourProtectsFromOnlyTwoLowPowerMines

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary
			with: 1@2 -> HeavyArmour new
			with: 1@3 -> LowPowerMine new
			with: 1@4 -> LowPowerMine new
			with: 2@4 -> LowPowerMine new).
	mineField moveUp.
	mineField moveUp.
	mineField moveUp.

	mineField moveRight.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:31:01 pm (UTC)'!
test29PlayerWearingAHeavyArmourDoesNotLoseLivesOnAHighPowerMine

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary
			with: 1@2 -> HeavyArmour new
			with: 1@3 -> HighPowerMine new).
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:25:06 pm (UTC)'!
test30HeavyArmourProtectsFromOnlyOneHighPowerMine

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary
			with: 1@2 -> HeavyArmour new
			with: 1@3 -> HighPowerMine new
			with: 1@4 -> HighPowerMine new)
		randomValues: #(4 4).
	mineField moveUp.
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:25:26 pm (UTC)'!
test31CanNotCreateAMineFieldWithAnElementOutsideTheBoard

	self
		should: [MineField
			extent: 5@5
			playerAt: 1@1
			lives: 3
			elements: (Dictionary with: 6@2 -> LowPowerMine new)
			random: Random new]
		raise: Error
		withMessageText: MineField elementOutsideTheBoardErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:25:45 pm (UTC)'!
test32CanNotCreateAMineFieldWithAnElementAtTheStartingPosition

	self
		should: [MineField
			extent: 5@5
			playerAt: 1@1
			lives: 3
			elements: (Dictionary with: 1@1 -> LowPowerMine new)
			random: Random new]
		raise: Error
		withMessageText: MineField startingPositionOccupiedErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:26:02 pm (UTC)'!
test33PlayerLandingOnATunnelAppearsAtItsExit

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary with: 1@2 -> (Tunnel to: 3@3)).

	mineField moveUp.

	self assert: mineField playerPosition equals: 3@3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:26:16 pm (UTC)'!
test34PlayerLandingOnATunnelExitAppearsAtItsEntrance

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary with: 2@2 -> (Tunnel to: 1@2)).

	mineField moveUp.

	self assert: mineField playerPosition equals: 2@2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:27:57 pm (UTC)'!
test35CanNotCreateAMineFieldWithATunnelExitOutsideTheBoard

	self
		should: [MineField
			extent: 5@5
			playerAt: 1@1
			lives: 3
			elements: (Dictionary with: 1@2 -> (Tunnel to: 6@2))
			random: Random new]
		raise: Error
		withMessageText: MineField elementOutsideTheBoardErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:31:01 pm (UTC)'!
test36CanNotCreateAMineFieldWithATunnelExitOnAnotherElement

	self
		should: [MineField
			extent: 5@5
			playerAt: 1@1
			lives: 3
			elements: (Dictionary
				with: 1@2 -> (Tunnel to: 2@2)
				with: 2@2 -> LowPowerMine new)
			random: Random new]
		raise: Error
		withMessageText: MineField overlappingElementsErrorDescription! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:29:35 pm (UTC)'!
test37PlayerLosingTheLastLivesOnAHighPowerMineDoesNotWinFlyingToTheTopRow

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		lives: 2
		elements: (Dictionary with: 1@2 -> HighPowerMine new)
		randomValues: #(4 7).

	mineField moveUp.

	self deny: mineField hasPlayerWon! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:30:03 pm (UTC)'!
test38TunnelRemainsAfterBeingUsed

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary with: 1@2 -> (Tunnel to: 3@3)).
	mineField moveUp.
	mineField moveLeft.

	mineField moveRight.

	self assert: mineField playerPosition equals: 1@2! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:30:03 pm (UTC)'!
test39PlayerLandingOnAnArmourReplacesTheWornOne

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary
			with: 1@2 -> HeavyArmour new
			with: 1@3 -> LightArmour new
			with: 1@4 -> HighPowerMine new)
		randomValues: #(7 6).
	mineField moveUp.
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerPosition equals: 2@5! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:31:01 pm (UTC)'!
test40PlayerWearingAHeavyArmourDoesNotFlyOnAHighPowerMine

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary
			with: 1@2 -> HeavyArmour new
			with: 1@3 -> HighPowerMine new)
		randomValues: #(5 6).
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerPosition equals: 1@3! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:30:03 pm (UTC)'!
test41HighPowerMineExplodesOnlyOnce

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary with: 1@2 -> HighPowerMine new)
		randomValues: #(4 4).
	mineField moveUp.
	mineField moveDown.

	mineField moveUp.

	self assert: mineField playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:30:03 pm (UTC)'!
test42PlayerReachingTheTopRowThroughATunnelWins

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		elements: (Dictionary with: 1@2 -> (Tunnel to: 3@5)).

	mineField moveUp.

	self assert: mineField hasPlayerWon! !

!MineFieldTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:30:45 pm (UTC)'!
test43PlayerLosingMoreLivesThanTheOnesLeftHasNoLivesLeft

	| mineField |

	mineField := self
		mineFieldWithPlayerAt: 1@1
		lives: 1
		elements: (Dictionary with: 1@2 -> HighPowerMine new)
		randomValues: #(4 4).

	mineField moveUp.

	self assert: mineField playerLives equals: 0! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:20:25 pm (UTC)'!
mineFieldWithPlayerAt: aStartingPosition

	^self mineFieldWithPlayerAt: aStartingPosition elements: Dictionary new! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:21:01 pm (UTC)'!
mineFieldWithPlayerAt: aStartingPosition elements: anElementsByPosition

	^self mineFieldWithPlayerAt: aStartingPosition lives: 3 elements: anElementsByPosition! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:22:06 pm (UTC)'!
mineFieldWithPlayerAt: aStartingPosition elements: anElementsByPosition randomValues: aSequenceOfRandomValues

	^self
		mineFieldWithPlayerAt: aStartingPosition
		lives: 3
		elements: anElementsByPosition
		randomValues: aSequenceOfRandomValues! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:22:06 pm (UTC)'!
mineFieldWithPlayerAt: aStartingPosition lives: aNumberOfLives elements: anElementsByPosition

	^self
		mineFieldWithPlayerAt: aStartingPosition
		lives: aNumberOfLives
		elements: anElementsByPosition
		randomValues: #()! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:22:06 pm (UTC)'!
mineFieldWithPlayerAt: aStartingPosition lives: aNumberOfLives elements: anElementsByPosition randomValues: aSequenceOfRandomValues

	^MineField
		extent: 5@5
		playerAt: aStartingPosition
		lives: aNumberOfLives
		elements: anElementsByPosition
		random: (PredeterminedRandom answering: aSequenceOfRandomValues)! !
