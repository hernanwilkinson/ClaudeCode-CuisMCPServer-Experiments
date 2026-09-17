'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 3:55:09 pm'!
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

!classDefinition: #MineField category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #MineField
	instanceVariableNames: 'playerPosition extent lives elements random armour'
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

!classDefinition: #SingleUseElement category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #SingleUseElement
	instanceVariableNames: 'position'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'SingleUseElement class' category: #'ISW1-2023-2C-2doParcial'!
SingleUseElement class
	instanceVariableNames: ''!

!classDefinition: #HeavyArmour category: #'ISW1-2023-2C-2doParcial'!
SingleUseElement subclass: #HeavyArmour
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'HeavyArmour class' category: #'ISW1-2023-2C-2doParcial'!
HeavyArmour class
	instanceVariableNames: ''!

!classDefinition: #HighPowerMine category: #'ISW1-2023-2C-2doParcial'!
SingleUseElement subclass: #HighPowerMine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'HighPowerMine class' category: #'ISW1-2023-2C-2doParcial'!
HighPowerMine class
	instanceVariableNames: ''!

!classDefinition: #LightArmour category: #'ISW1-2023-2C-2doParcial'!
SingleUseElement subclass: #LightArmour
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'LightArmour class' category: #'ISW1-2023-2C-2doParcial'!
LightArmour class
	instanceVariableNames: ''!

!classDefinition: #LowPowerMine category: #'ISW1-2023-2C-2doParcial'!
SingleUseElement subclass: #LowPowerMine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'LowPowerMine class' category: #'ISW1-2023-2C-2doParcial'!
LowPowerMine class
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


!MineField commentStamp: '<historical>' prior: 0!
I am a game of Minefield: a player moves one position at a time inside a board of at least 2x2, starting at a free position of its bottom row, and wins on reaching its top row or loses on running out of lives. Each position holds at most one element (mines, armours or an end of a tunnel) that affects the player landing on it.!

!SingleUseElement commentStamp: '<historical>' prior: 0!
I am an element of a mine field that stands at a single position and is used only once: when the player lands on me I take effect and free my position.!

!DamagedHeavyArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:49:27 pm (UTC)'!
absorbHighPowerMineIn: aMineField

	aMineField takeOffPlayerArmour! !

!DamagedHeavyArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:48:29 pm (UTC)'!
absorbLowPowerMineIn: aMineField

	aMineField takeOffPlayerArmour! !

!MineField methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:45:01 pm (UTC)'!
initializeExtent: anExtent elements: aCollectionOfElements playerStartingAt: aPlayerStartPosition lives: aNumberOfLives random: aRandom

	extent := anExtent.
	elements := aCollectionOfElements.
	playerPosition := aPlayerStartPosition.
	lives := aNumberOfLives.
	random := aRandom.
	armour := NoArmour new! !

!MineField methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:38:56 pm (UTC)'!
playerLives

	^lives! !

!MineField methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:33:41 pm (UTC)'!
playerPosition

	^playerPosition! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:35:20 pm (UTC)'!
moveDown

	self movePlayerBy: 0@-1! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:35:54 pm (UTC)'!
moveLeft

	self movePlayerBy: -1@0! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:35:42 pm (UTC)'!
moveRight

	self movePlayerBy: 1@0! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:35:28 pm (UTC)'!
moveUp

	self movePlayerBy: 0@1! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:54:36 pm (UTC)'!
affectPlayerWithTheElementAtItsPosition

	elements 
		detect: [:element | element isAt: playerPosition] 
		ifFound: [:element | element affectPlayerIn: self] 
		ifNone: []! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:43:35 pm (UTC)'!
landPlayerAt: aPosition

	playerPosition := aPosition.
	self affectPlayerWithTheElementAtItsPosition! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:43:35 pm (UTC)'!
movePlayerBy: anOffset

	| destination |

	destination := playerPosition + anOffset.
	(self isInsideBoard: destination) ifTrue: [self landPlayerAt: destination]! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:41:27 pm (UTC)'!
hasPlayerLost

	^lives = 0! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:37:44 pm (UTC)'!
hasPlayerWon

	^playerPosition y = extent y! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:43:35 pm (UTC)'!
isInsideBoard: aPosition

	^aPosition between: 1@1 and: extent! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:45:01 pm (UTC)'!
equipPlayerWith: anArmour

	armour := anArmour! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:47:10 pm (UTC)'!
explodeHighPowerMineOnPlayer

	armour absorbHighPowerMineIn: self! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:45:01 pm (UTC)'!
explodeLowPowerMineOnPlayer

	armour absorbLowPowerMineIn: self! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:42:55 pm (UTC)'!
flyPlayer

	self movePlayerBy: self randomFlightOffset! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:47:32 pm (UTC)'!
flyPlayerHalfway

	self movePlayerBy: self randomFlightOffset // 2! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:50:14 pm (UTC)'!
placePlayerAt: aPosition

	playerPosition := aPosition! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:45:01 pm (UTC)'!
takeOffPlayerArmour

	armour := NoArmour new! !

!MineField methodsFor: 'player' stamp: 'HAW 11/Sep/2026, 6:44:14 pm (UTC)'!
takePlayerLives: aNumberOfLives

	lives := lives - aNumberOfLives max: 0! !

!MineField methodsFor: 'elements' stamp: 'HAW 11/Sep/2026, 6:40:51 pm (UTC)'!
remove: anElement

	elements remove: anElement! !

!MineField methodsFor: 'player - private' stamp: 'HAW 11/Sep/2026, 6:42:55 pm (UTC)'!
randomFlightCoordinate

	^(random nextInteger: 7) - 4! !

!MineField methodsFor: 'player - private' stamp: 'HAW 11/Sep/2026, 6:42:55 pm (UTC)'!
randomFlightOffset

	^self randomFlightCoordinate @ self randomFlightCoordinate! !

!MineField class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:54:13 pm (UTC)'!
extent: anExtent elements: aCollectionOfElements playerStartingAt: aPlayerStartPosition lives: aNumberOfLives random: aRandom

	self assertIsValidExtent: anExtent.
	self assertElements: aCollectionOfElements areInsideBoardOf: anExtent.
	self assertElementsDoNotSharePositions: aCollectionOfElements.
	self assertIsValidPlayerStartPosition: aPlayerStartPosition onBoardOf: anExtent.
	self assertPlayerStartPosition: aPlayerStartPosition isFreeOf: aCollectionOfElements.
	self assertIsValidLives: aNumberOfLives.

	^self new 
		initializeExtent: anExtent 
		elements: aCollectionOfElements asOrderedCollection 
		playerStartingAt: aPlayerStartPosition 
		lives: aNumberOfLives 
		random: aRandom! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:51:14 pm (UTC)'!
boardTooSmallErrorDescription

	^'The board must be at least 2x2'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:53:27 pm (UTC)'!
elementOutsideTheBoardErrorDescription

	^'Every element must be inside the board'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:54:13 pm (UTC)'!
elementsSharingAPositionErrorDescription

	^'There can not be more than one element per position'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:52:55 pm (UTC)'!
invalidLivesErrorDescription

	^'The player must start with at least one life'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:51:52 pm (UTC)'!
invalidPlayerStartPositionErrorDescription

	^'The player must start at a free position of the bottom row'! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:54:36 pm (UTC)'!
assertElements: aCollectionOfElements areInsideBoardOf: anExtent

	((self occupiedPositionsOf: aCollectionOfElements) allSatisfy: [:position | position between: 1@1 and: anExtent]) 
		ifFalse: [self error: self elementOutsideTheBoardErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:54:13 pm (UTC)'!
assertElementsDoNotSharePositions: aCollectionOfElements

	| occupiedPositions |

	occupiedPositions := self occupiedPositionsOf: aCollectionOfElements.
	occupiedPositions asSet size = occupiedPositions size 
		ifFalse: [self error: self elementsSharingAPositionErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:51:32 pm (UTC)'!
assertIsValidExtent: anExtent

	anExtent >= (2@2) ifFalse: [self error: self boardTooSmallErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:52:55 pm (UTC)'!
assertIsValidLives: aNumberOfLives

	aNumberOfLives strictlyPositive ifFalse: [self error: self invalidLivesErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:52:17 pm (UTC)'!
assertIsValidPlayerStartPosition: aPlayerStartPosition onBoardOf: anExtent

	(aPlayerStartPosition between: 1@1 and: anExtent x @ 1) 
		ifFalse: [self error: self invalidPlayerStartPositionErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:52:37 pm (UTC)'!
assertPlayerStartPosition: aPlayerStartPosition isFreeOf: aCollectionOfElements

	(aCollectionOfElements anySatisfy: [:element | element isAt: aPlayerStartPosition]) 
		ifTrue: [self error: self invalidPlayerStartPositionErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:54:13 pm (UTC)'!
occupiedPositionsOf: aCollectionOfElements

	^aCollectionOfElements 
		inject: OrderedCollection new 
		into: [:positions :element | positions addAll: element positions; yourself]! !

!NoArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:47:10 pm (UTC)'!
absorbHighPowerMineIn: aMineField

	aMineField takePlayerLives: 2.
	aMineField flyPlayer! !

!NoArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:45:01 pm (UTC)'!
absorbLowPowerMineIn: aMineField

	aMineField takePlayerLives: 1! !

!SingleUseElement methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:46:05 pm (UTC)'!
isAt: aPosition

	^position = aPosition! !

!SingleUseElement methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:46:06 pm (UTC)'!
initializeAt: aPosition

	position := aPosition! !

!SingleUseElement methodsFor: 'affecting' stamp: 'HAW 11/Sep/2026, 6:46:41 pm (UTC)'!
affectPlayerIn: aMineField

	aMineField remove: self.
	self takeEffectIn: aMineField! !

!SingleUseElement methodsFor: 'affecting' stamp: 'HAW 11/Sep/2026, 6:46:41 pm (UTC)'!
takeEffectIn: aMineField

	self subclassResponsibility! !

!SingleUseElement methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:54:13 pm (UTC)'!
positions

	^Array with: position! !

!SingleUseElement class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:46:06 pm (UTC)'!
at: aPosition

	^self new initializeAt: aPosition! !

!HeavyArmour methodsFor: 'affecting' stamp: 'HAW 11/Sep/2026, 6:47:56 pm (UTC)'!
takeEffectIn: aMineField

	aMineField equipPlayerWith: self! !

!HeavyArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:48:51 pm (UTC)'!
absorbHighPowerMineIn: aMineField

	aMineField takeOffPlayerArmour! !

!HeavyArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:48:29 pm (UTC)'!
absorbLowPowerMineIn: aMineField

	aMineField equipPlayerWith: DamagedHeavyArmour new! !

!HighPowerMine methodsFor: 'affecting' stamp: 'HAW 11/Sep/2026, 6:47:10 pm (UTC)'!
takeEffectIn: aMineField

	aMineField explodeHighPowerMineOnPlayer! !

!LightArmour methodsFor: 'affecting' stamp: 'HAW 11/Sep/2026, 6:46:34 pm (UTC)'!
takeEffectIn: aMineField

	^ aMineField equipPlayerWith: self! !

!LightArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:47:32 pm (UTC)'!
absorbHighPowerMineIn: aMineField

	aMineField takeOffPlayerArmour.
	aMineField flyPlayerHalfway! !

!LightArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:45:01 pm (UTC)'!
absorbLowPowerMineIn: aMineField

	aMineField takeOffPlayerArmour! !

!LowPowerMine methodsFor: 'affecting' stamp: 'HAW 11/Sep/2026, 6:46:32 pm (UTC)'!
takeEffectIn: aMineField

	^ aMineField explodeLowPowerMineOnPlayer! !

!Tunnel methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:50:21 pm (UTC)'!
initializeBetween: aPosition and: anotherPosition

	oneEnd := aPosition.
	otherEnd := anotherPosition! !

!Tunnel methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:50:41 pm (UTC)'!
isAt: aPosition

	^oneEnd = aPosition or: [otherEnd = aPosition]! !

!Tunnel methodsFor: 'affecting' stamp: 'HAW 11/Sep/2026, 6:50:41 pm (UTC)'!
affectPlayerIn: aMineField

	aMineField placePlayerAt: (self endOppositeTo: aMineField playerPosition)! !

!Tunnel methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:50:41 pm (UTC)'!
endOppositeTo: anEnd

	^anEnd = oneEnd 
		ifTrue: [otherEnd] 
		ifFalse: [oneEnd]! !

!Tunnel methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:54:13 pm (UTC)'!
positions

	^Array with: oneEnd with: otherEnd! !

!Tunnel class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:50:21 pm (UTC)'!
between: aPosition and: anotherPosition

	^self new initializeBetween: aPosition and: anotherPosition! !

!PredictableRandom methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:42:01 pm (UTC)'!
initializeAnswering: aSequenceOfValues

	values := ReadStream on: aSequenceOfValues! !

!PredictableRandom methodsFor: 'random numbers' stamp: 'HAW 11/Sep/2026, 6:42:01 pm (UTC)'!
nextInteger: aMaximumValue

	^values next! !

!PredictableRandom class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:42:01 pm (UTC)'!
answering: aSequenceOfValues

	^self new initializeAnswering: aSequenceOfValues! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:34:34 pm (UTC)'!
test01PlayerStartsAtTheGivenPositionOfTheBottomRow

	| mineField |

	mineField := self emptyMineField.

	self assert: mineField playerPosition equals: 2@1! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:50:58 pm (UTC)'!
test32CanNotCreateAMineFieldNarrowerThanTwoColumns

	self 
		should: [MineField 
			extent: 1@2 
			elements: #() 
			playerStartingAt: 1@1 
			lives: 3 
			random: Random new] 
		raise: Error 
		withMessageText: MineField boardTooSmallErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:51:19 pm (UTC)'!
test33CanNotCreateAMineFieldLowerThanTwoRows

	self 
		should: [MineField 
			extent: 2@1 
			elements: #() 
			playerStartingAt: 1@1 
			lives: 3 
			random: Random new] 
		raise: Error 
		withMessageText: MineField boardTooSmallErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:51:38 pm (UTC)'!
test34CanNotCreateAMineFieldWithThePlayerStartingOutsideTheBottomRow

	self 
		should: [MineField 
			extent: 3@3 
			elements: #() 
			playerStartingAt: 1@2 
			lives: 3 
			random: Random new] 
		raise: Error 
		withMessageText: MineField invalidPlayerStartPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:51:58 pm (UTC)'!
test35CanNotCreateAMineFieldWithThePlayerStartingOutsideTheBoard

	self 
		should: [MineField 
			extent: 3@3 
			elements: #() 
			playerStartingAt: 4@1 
			lives: 3 
			random: Random new] 
		raise: Error 
		withMessageText: MineField invalidPlayerStartPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:22 pm (UTC)'!
test36CanNotCreateAMineFieldWithThePlayerStartingAtAnOccupiedPosition

	self 
		should: [MineField 
			extent: 3@3 
			elements: (Array with: (LowPowerMine at: 2@1)) 
			playerStartingAt: 2@1 
			lives: 3 
			random: Random new] 
		raise: Error 
		withMessageText: MineField invalidPlayerStartPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:42 pm (UTC)'!
test37CanNotCreateAMineFieldWithThePlayerHavingNoLives

	self 
		should: [MineField 
			extent: 3@3 
			elements: #() 
			playerStartingAt: 2@1 
			lives: 0 
			random: Random new] 
		raise: Error 
		withMessageText: MineField invalidLivesErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:53:05 pm (UTC)'!
test38CanNotCreateAMineFieldWithAnElementOutsideTheBoard

	self 
		should: [MineField 
			extent: 3@3 
			elements: (Array with: (LowPowerMine at: 4@2)) 
			playerStartingAt: 2@1 
			lives: 3 
			random: Random new] 
		raise: Error 
		withMessageText: MineField elementOutsideTheBoardErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:53:33 pm (UTC)'!
test39CanNotCreateAMineFieldWithATunnelEndingOutsideTheBoard

	self 
		should: [MineField 
			extent: 3@3 
			elements: (Array with: (Tunnel between: 2@2 and: 2@4)) 
			playerStartingAt: 2@1 
			lives: 3 
			random: Random new] 
		raise: Error 
		withMessageText: MineField elementOutsideTheBoardErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:53:48 pm (UTC)'!
test40CanNotCreateAMineFieldWithTwoElementsAtTheSamePosition

	self 
		should: [MineField 
			extent: 3@3 
			elements: (Array with: (LowPowerMine at: 2@2) with: (LightArmour at: 2@2)) 
			playerStartingAt: 2@1 
			lives: 3 
			random: Random new] 
		raise: Error 
		withMessageText: MineField elementsSharingAPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:34:34 pm (UTC)'!
test02MovingUpMovesThePlayerOneRowUp

	| mineField |

	mineField := self emptyMineField.

	mineField moveUp.

	self assert: mineField playerPosition equals: 2@2! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:34:34 pm (UTC)'!
test03MovingDownMovesThePlayerOneRowDown

	| mineField |

	mineField := self emptyMineField.
	mineField moveUp.

	mineField moveDown.

	self assert: mineField playerPosition equals: 2@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:35:37 pm (UTC)'!
test04MovingRightMovesThePlayerOneColumnRight

	| mineField |

	mineField := self emptyMineField.

	mineField moveRight.

	self assert: mineField playerPosition equals: 3@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:35:47 pm (UTC)'!
test05MovingLeftMovesThePlayerOneColumnLeft

	| mineField |

	mineField := self emptyMineField.

	mineField moveLeft.

	self assert: mineField playerPosition equals: 1@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:36:02 pm (UTC)'!
test06MovingLeftFromTheFirstColumnKeepsThePlayerInItsPosition

	| mineField |

	mineField := self emptyMineField.
	mineField moveLeft.

	mineField moveLeft.

	self assert: mineField playerPosition equals: 1@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:36:20 pm (UTC)'!
test07MovingRightFromTheLastColumnKeepsThePlayerInItsPosition

	| mineField |

	mineField := self emptyMineField.
	mineField moveRight.

	mineField moveRight.

	self assert: mineField playerPosition equals: 3@1! !

!MineFieldTest methodsFor: 'tests - winning' stamp: 'HAW 11/Sep/2026, 6:37:10 pm (UTC)'!
test08PlayerHasNotWonBeforeReachingTheTopRow

	| mineField |

	mineField := self emptyMineField.

	mineField moveUp.

	self deny: mineField hasPlayerWon! !

!MineFieldTest methodsFor: 'tests - winning' stamp: 'HAW 11/Sep/2026, 6:37:36 pm (UTC)'!
test09PlayerWinsWhenReachingTheTopRow

	| mineField |

	mineField := self emptyMineField.
	mineField moveUp.

	mineField moveUp.

	self assert: mineField hasPlayerWon! !

!MineFieldTest methodsFor: 'tests - low power mine' stamp: 'HAW 11/Sep/2026, 6:40:30 pm (UTC)'!
test10PlayerLosesOneLifeWhenLandingOnALowPowerMine

	| mineField |

	mineField := self mineFieldWithElements: (Array with: (LowPowerMine at: 2@2)).

	mineField moveUp.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - low power mine' stamp: 'HAW 11/Sep/2026, 6:40:37 pm (UTC)'!
test11LowPowerMineExplodesOnlyOnce

	| mineField |

	mineField := self mineFieldWithElements: (Array with: (LowPowerMine at: 2@2)).
	mineField moveUp.
	mineField moveDown.

	mineField moveUp.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:40:09 pm (UTC)'!
emptyMineField

	^self mineFieldWithElements: #()! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:40:23 pm (UTC)'!
mineFieldWithElements: aCollectionOfElements

	^MineField 
		extent: 3@3 
		elements: aCollectionOfElements 
		playerStartingAt: 2@1 
		lives: 3 
		random: Random new! !

!MineFieldTest methodsFor: 'tests - losing' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
test12PlayerHasNotLostWhileHavingLivesLeft

	| mineField |

	mineField := self mineFieldWithElements: (Array with: (LowPowerMine at: 2@2)).

	mineField moveUp.

	self deny: mineField hasPlayerLost! !

!MineFieldTest methodsFor: 'tests - losing' stamp: 'HAW 11/Sep/2026, 6:41:16 pm (UTC)'!
test13PlayerLosesWhenRunningOutOfLives

	| mineField |

	mineField := MineField 
		extent: 3@3 
		elements: (Array with: (LowPowerMine at: 2@2)) 
		playerStartingAt: 2@1 
		lives: 1 
		random: Random new.

	mineField moveUp.

	self assert: mineField hasPlayerLost! !

!MineFieldTest methodsFor: 'tests - losing' stamp: 'HAW 11/Sep/2026, 6:44:03 pm (UTC)'!
test18PlayerWithOneLifeLosesWhenLandingOnAHighPowerMine

	| mineField |

	mineField := MineField 
		extent: 3@3 
		elements: (Array with: (HighPowerMine at: 2@2)) 
		playerStartingAt: 2@1 
		lives: 1 
		random: (self randomFlyingBy: 0@0).

	mineField moveUp.

	self assert: mineField hasPlayerLost! !

!MineFieldTest methodsFor: 'randoms' stamp: 'HAW 11/Sep/2026, 6:41:51 pm (UTC)'!
randomFlyingBy: anOffset

	^PredictableRandom answering: (Array with: anOffset x + 4 with: anOffset y + 4)! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:41:51 pm (UTC)'!
test14PlayerLosesTwoLivesWhenLandingOnAHighPowerMine

	| mineField |

	mineField := MineField 
		extent: 3@3 
		elements: (Array with: (HighPowerMine at: 2@2)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: (self randomFlyingBy: 0@0).

	mineField moveUp.

	self assert: mineField playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:42:25 pm (UTC)'!
test15PlayerFliesByARandomOffsetWhenLandingOnAHighPowerMine

	| mineField |

	mineField := MineField 
		extent: 5@5 
		elements: (Array with: (HighPowerMine at: 2@2)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: (self randomFlyingBy: 1@2).

	mineField moveUp.

	self assert: mineField playerPosition equals: 3@4! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:43:05 pm (UTC)'!
test16PlayerDoesNotFlyWhenTheFlightWouldLandOutsideTheBoard

	| mineField |

	mineField := MineField 
		extent: 3@3 
		elements: (Array with: (HighPowerMine at: 2@2)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: (self randomFlyingBy: 3@0).

	mineField moveUp.

	self assert: mineField playerPosition equals: 2@2! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:43:43 pm (UTC)'!
test17PlayerIsAffectedByTheElementWhereTheFlightLands

	| mineField |

	mineField := MineField 
		extent: 5@5 
		elements: (Array with: (HighPowerMine at: 2@2) with: (LowPowerMine at: 3@4)) 
		playerStartingAt: 2@1 
		lives: 4 
		random: (self randomFlyingBy: 1@2).

	mineField moveUp.

	self assert: mineField playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:44:24 pm (UTC)'!
test19LightArmourProtectsThePlayerFromALowPowerMine

	| mineField |

	mineField := self mineFieldWithElements: (Array with: (LightArmour at: 2@2) with: (LowPowerMine at: 3@2)).
	mineField moveUp.

	mineField moveRight.

	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:45:08 pm (UTC)'!
test20LightArmourProtectsThePlayerOnlyOnce

	| mineField |

	mineField := self mineFieldWithElements: (Array 
		with: (LightArmour at: 2@2) 
		with: (LowPowerMine at: 3@2) 
		with: (LowPowerMine at: 1@2)).
	mineField moveUp.
	mineField moveRight.
	mineField moveLeft.

	mineField moveLeft.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:46:53 pm (UTC)'!
test21LightArmourProtectsThePlayerLivesFromAHighPowerMine

	| mineField |

	mineField := MineField 
		extent: 5@5 
		elements: (Array with: (LightArmour at: 2@2) with: (HighPowerMine at: 3@2)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: (self randomFlyingBy: 0@0).
	mineField moveUp.

	mineField moveRight.

	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:47:20 pm (UTC)'!
test22LightArmourMakesThePlayerFlyHalfTheRandomOffsetOfAHighPowerMine

	| mineField |

	mineField := MineField 
		extent: 5@5 
		elements: (Array with: (LightArmour at: 2@2) with: (HighPowerMine at: 3@2)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: (self randomFlyingBy: 2@2).
	mineField moveUp.

	mineField moveRight.

	self assert: mineField playerPosition equals: 4@3! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:47:40 pm (UTC)'!
test23HeavyArmourProtectsThePlayerFromTwoLowPowerMines

	| mineField |

	mineField := self mineFieldWithElements: (Array 
		with: (HeavyArmour at: 2@2) 
		with: (LowPowerMine at: 3@2) 
		with: (LowPowerMine at: 1@2)).
	mineField moveUp.
	mineField moveRight.
	mineField moveLeft.

	mineField moveLeft.

	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:48:06 pm (UTC)'!
test24HeavyArmourStopsProtectingThePlayerAfterTwoLowPowerMines

	| mineField |

	mineField := MineField 
		extent: 3@4 
		elements: (Array 
			with: (HeavyArmour at: 2@2) 
			with: (LowPowerMine at: 3@2) 
			with: (LowPowerMine at: 1@2) 
			with: (LowPowerMine at: 1@3)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: Random new.
	mineField moveUp.
	mineField moveRight.
	mineField moveLeft.
	mineField moveLeft.

	mineField moveUp.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:48:38 pm (UTC)'!
test25HeavyArmourProtectsThePlayerLivesFromAHighPowerMine

	| mineField |

	mineField := MineField 
		extent: 5@5 
		elements: (Array with: (HeavyArmour at: 2@2) with: (HighPowerMine at: 3@2)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: (self randomFlyingBy: 1@1).
	mineField moveUp.

	mineField moveRight.

	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:49:01 pm (UTC)'!
test26HeavyArmourKeepsThePlayerFromFlyingWhenLandingOnAHighPowerMine

	| mineField |

	mineField := MineField 
		extent: 5@5 
		elements: (Array with: (HeavyArmour at: 2@2) with: (HighPowerMine at: 3@2)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: (self randomFlyingBy: 1@1).
	mineField moveUp.

	mineField moveRight.

	self assert: mineField playerPosition equals: 3@2! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:49:13 pm (UTC)'!
test27DamagedHeavyArmourStillProtectsThePlayerLivesFromAHighPowerMine

	| mineField |

	mineField := MineField 
		extent: 5@5 
		elements: (Array 
			with: (HeavyArmour at: 2@2) 
			with: (LowPowerMine at: 3@2) 
			with: (HighPowerMine at: 3@3)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: (self randomFlyingBy: 1@1).
	mineField moveUp.
	mineField moveRight.

	mineField moveUp.

	self assert: mineField playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests - armours' stamp: 'HAW 11/Sep/2026, 6:49:39 pm (UTC)'!
test28PlayerLosesTheArmourBeingWornWhenLandingOnAnotherArmour

	| mineField |

	mineField := MineField 
		extent: 3@4 
		elements: (Array 
			with: (HeavyArmour at: 2@2) 
			with: (LightArmour at: 3@2) 
			with: (LowPowerMine at: 3@3) 
			with: (LowPowerMine at: 2@3)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: Random new.
	mineField moveUp.
	mineField moveRight.
	mineField moveUp.

	mineField moveLeft.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - tunnel' stamp: 'HAW 11/Sep/2026, 6:49:50 pm (UTC)'!
test29PlayerLandingOnATunnelAppearsAtItsOtherEnd

	| mineField |

	mineField := MineField 
		extent: 4@4 
		elements: (Array with: (Tunnel between: 2@2 and: 3@3)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: Random new.

	mineField moveUp.

	self assert: mineField playerPosition equals: 3@3! !

!MineFieldTest methodsFor: 'tests - tunnel' stamp: 'HAW 11/Sep/2026, 6:50:30 pm (UTC)'!
test30PlayerLandingOnTheOtherEndOfATunnelAppearsAtItsFirstEnd

	| mineField |

	mineField := MineField 
		extent: 4@4 
		elements: (Array with: (Tunnel between: 3@3 and: 2@2)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: Random new.

	mineField moveUp.

	self assert: mineField playerPosition equals: 3@3! !

!MineFieldTest methodsFor: 'tests - tunnel' stamp: 'HAW 11/Sep/2026, 6:50:48 pm (UTC)'!
test31TunnelRemainsAfterThePlayerGoesThroughIt

	| mineField |

	mineField := MineField 
		extent: 4@4 
		elements: (Array with: (Tunnel between: 2@2 and: 3@3)) 
		playerStartingAt: 2@1 
		lives: 3 
		random: Random new.
	mineField moveUp.
	mineField moveLeft.

	mineField moveDown.

	self assert: mineField playerPosition equals: 3@3! !
