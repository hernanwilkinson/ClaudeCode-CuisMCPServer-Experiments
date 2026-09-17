'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 3:41:26 pm'!
'Description '!
!provides: 'ISW1-2023-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'ISW1-2023-2C-2doParcial'!
SystemOrganization addCategory: #'ISW1-2023-2C-2doParcial-Tests'!


!classDefinition: #Board category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #Board
	instanceVariableNames: 'extent elements tunnels'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'Board class' category: #'ISW1-2023-2C-2doParcial'!
Board class
	instanceVariableNames: ''!

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
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'HeavyArmour class' category: #'ISW1-2023-2C-2doParcial'!
HeavyArmour class
	instanceVariableNames: ''!

!classDefinition: #HighPowerMine category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #HighPowerMine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'HighPowerMine class' category: #'ISW1-2023-2C-2doParcial'!
HighPowerMine class
	instanceVariableNames: ''!

!classDefinition: #LightArmour category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #LightArmour
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'LightArmour class' category: #'ISW1-2023-2C-2doParcial'!
LightArmour class
	instanceVariableNames: ''!

!classDefinition: #LowPowerMine category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #LowPowerMine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'LowPowerMine class' category: #'ISW1-2023-2C-2doParcial'!
LowPowerMine class
	instanceVariableNames: ''!

!classDefinition: #MineField category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #MineField
	instanceVariableNames: 'board player random'
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

!classDefinition: #Nothing category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #Nothing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'Nothing class' category: #'ISW1-2023-2C-2doParcial'!
Nothing class
	instanceVariableNames: ''!

!classDefinition: #Player category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #Player
	instanceVariableNames: 'position lives armour'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'Player class' category: #'ISW1-2023-2C-2doParcial'!
Player class
	instanceVariableNames: ''!

!classDefinition: #Tunnel category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #Tunnel
	instanceVariableNames: 'oneEnd anotherEnd'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'Tunnel class' category: #'ISW1-2023-2C-2doParcial'!
Tunnel class
	instanceVariableNames: ''!

!classDefinition: #ScriptedRandom category: #'ISW1-2023-2C-2doParcial-Tests'!
Object subclass: #ScriptedRandom
	instanceVariableNames: 'values'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial-Tests'!
!classDefinition: 'ScriptedRandom class' category: #'ISW1-2023-2C-2doParcial-Tests'!
ScriptedRandom class
	instanceVariableNames: ''!

!classDefinition: #BoardTest category: #'ISW1-2023-2C-2doParcial-Tests'!
TestCase subclass: #BoardTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial-Tests'!
!classDefinition: 'BoardTest class' category: #'ISW1-2023-2C-2doParcial-Tests'!
BoardTest class
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

!classDefinition: #TunnelTest category: #'ISW1-2023-2C-2doParcial-Tests'!
TestCase subclass: #TunnelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial-Tests'!
!classDefinition: 'TunnelTest class' category: #'ISW1-2023-2C-2doParcial-Tests'!
TunnelTest class
	instanceVariableNames: ''!


!Board methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
initializeExtent: anExtent elements: anElementsByPosition tunnels: aTunnels

	extent := anExtent.
	elements := anElementsByPosition copy.
	tunnels := aTunnels copy! !

!Board methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
hasTunnelEndAt: aPosition

	^tunnels anySatisfy: [:aTunnel | aTunnel hasEndAt: aPosition]! !

!Board methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
includes: aPosition

	^self class isPosition: aPosition insideOf: extent! !

!Board methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
isOccupiedAt: aPosition

	^(elements includesKey: aPosition) or: [self hasTunnelEndAt: aPosition]! !

!Board methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
isOnBottomRow: aPosition

	^(self includes: aPosition) and: [aPosition y = 1]! !

!Board methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
isOnTopRow: aPosition

	^aPosition y = extent y! !

!Board methodsFor: 'elements' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
elementAt: aPosition

	^elements at: aPosition ifAbsent: [self tunnelOrNothingAt: aPosition]! !

!Board methodsFor: 'elements' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
removeElementAt: aPosition

	elements removeKey: aPosition! !

!Board methodsFor: 'elements' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
tunnelOrNothingAt: aPosition

	^tunnels detect: [:aTunnel | aTunnel hasEndAt: aPosition] ifNone: [Nothing new]! !

!Board class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
extent: anExtent elements: anElementsByPosition tunnels: aTunnels

	| occupiedPositions |
	occupiedPositions := self positionsOccupiedBy: anElementsByPosition and: aTunnels.
	self assertIsValidExtent: anExtent.
	self assertAll: occupiedPositions areInside: anExtent.
	self assertAreNotRepeated: occupiedPositions.

	^self new initializeExtent: anExtent elements: anElementsByPosition tunnels: aTunnels! !

!Board class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
assertAll: anOccupiedPositions areInside: anExtent

	(anOccupiedPositions allSatisfy: [:aPosition | self isPosition: aPosition insideOf: anExtent])
		ifFalse: [self error: self positionOutsideBoardErrorDescription]! !

!Board class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
assertAreNotRepeated: anOccupiedPositions

	anOccupiedPositions asSet size = anOccupiedPositions size ifFalse: [self error: self occupiedPositionErrorDescription]! !

!Board class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
assertIsValidExtent: anExtent

	anExtent >= self minimumExtent ifFalse: [self error: self invalidExtentErrorDescription]! !

!Board class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
minimumExtent

	^2@2! !

!Board class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
positionsOccupiedBy: anElementsByPosition and: aTunnels

	^anElementsByPosition keys, (aTunnels collect: [:aTunnel | aTunnel ends]) concatenation! !

!Board class methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
isPosition: aPosition insideOf: anExtent

	^(1@1 extent: anExtent) containsPoint: aPosition! !

!Board class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
invalidExtentErrorDescription

	^'The board must be at least 2x2'! !

!Board class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
occupiedPositionErrorDescription

	^'There can not be more than one element per position'! !

!Board class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
positionOutsideBoardErrorDescription

	^'Every element must be inside the board'! !

!DamagedHeavyArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
handleHighPowerExplosionOn: aPlayer in: aMineField

	aPlayer takeOffArmour! !

!DamagedHeavyArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
handleLowPowerExplosionOn: aPlayer

	aPlayer takeOffArmour! !

!HeavyArmour methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
landedOnBy: aPlayer at: aPosition in: aMineField

	aMineField removeElementAt: aPosition.
	aPlayer wear: self! !

!HeavyArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
handleHighPowerExplosionOn: aPlayer in: aMineField

	aPlayer takeOffArmour! !

!HeavyArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
handleLowPowerExplosionOn: aPlayer

	aPlayer wear: DamagedHeavyArmour new! !

!HighPowerMine methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
landedOnBy: aPlayer at: aPosition in: aMineField

	aMineField removeElementAt: aPosition.
	aPlayer sufferHighPowerExplosionIn: aMineField! !

!LightArmour methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
landedOnBy: aPlayer at: aPosition in: aMineField

	aMineField removeElementAt: aPosition.
	aPlayer wear: self! !

!LightArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
handleHighPowerExplosionOn: aPlayer in: aMineField

	aPlayer takeOffArmour.
	aMineField blowPlayerHalfwayAway! !

!LightArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
handleLowPowerExplosionOn: aPlayer

	aPlayer takeOffArmour! !

!LowPowerMine methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
landedOnBy: aPlayer at: aPosition in: aMineField

	aMineField removeElementAt: aPosition.
	aPlayer sufferLowPowerExplosion! !

!MineField methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
initializeBoard: aBoard playerStartingAt: aStartPosition lives: aNumberOfLives random: aRandom

	board := aBoard.
	player := Player startingAt: aStartPosition lives: aNumberOfLives.
	random := aRandom! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
moveDown

	self movePlayerBy: 0@-1! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
moveLeft

	self movePlayerBy: -1@0! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
moveRight

	self movePlayerBy: 1@0! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
moveUp

	self movePlayerBy: 0@1! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
landPlayerOn: aPosition

	player moveTo: aPosition.
	(board elementAt: aPosition) landedOnBy: player at: aPosition in: self! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
landPlayerOnPositionOffsetBy: anOffset

	| destination |
	destination := player position + anOffset.
	(board includes: destination) ifTrue: [self landPlayerOn: destination]! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
movePlayerBy: anOffset

	self assertIsNotOver.
	self landPlayerOnPositionOffsetBy: anOffset! !

!MineField methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
blowPlayerAway

	self landPlayerOnPositionOffsetBy: self randomOffset! !

!MineField methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
blowPlayerHalfwayAway

	self landPlayerOnPositionOffsetBy: self randomOffset // 2! !

!MineField methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
removeElementAt: aPosition

	board removeElementAt: aPosition! !

!MineField methodsFor: 'landing - private' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
randomCoordinate

	^(random nextInteger: 7) - 4! !

!MineField methodsFor: 'landing - private' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
randomOffset

	^self randomCoordinate @ self randomCoordinate! !

!MineField methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
playerLives

	^player lives! !

!MineField methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
playerPosition

	^player position! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
hasLost

	^player isDead! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
hasWon

	^self hasLost not and: [board isOnTopRow: player position]! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
isOver

	^self hasWon or: [self hasLost]! !

!MineField methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
assertIsNotOver

	self isOver ifTrue: [self error: self class gameOverErrorDescription]! !

!MineField class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
board: aBoard playerStartingAt: aStartPosition lives: aNumberOfLives random: aRandom

	self assertIsValidStartPosition: aStartPosition on: aBoard.
	self assertIsFreeStartPosition: aStartPosition on: aBoard.
	self assertIsValidNumberOfLives: aNumberOfLives.

	^self new
		initializeBoard: aBoard
		playerStartingAt: aStartPosition
		lives: aNumberOfLives
		random: aRandom! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
assertIsFreeStartPosition: aStartPosition on: aBoard

	(aBoard isOccupiedAt: aStartPosition) ifTrue: [self error: self occupiedStartPositionErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
assertIsValidNumberOfLives: aNumberOfLives

	aNumberOfLives strictlyPositive ifFalse: [self error: self invalidNumberOfLivesErrorDescription]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
assertIsValidStartPosition: aStartPosition on: aBoard

	(aBoard isOnBottomRow: aStartPosition) ifFalse: [self error: self invalidStartPositionErrorDescription]! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
gameOverErrorDescription

	^'The game is over'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
invalidNumberOfLivesErrorDescription

	^'The player must start with at least one life'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
invalidStartPositionErrorDescription

	^'The player must start at a position of the bottom row'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
occupiedStartPositionErrorDescription

	^'The player must start at a free position'! !

!NoArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
handleHighPowerExplosionOn: aPlayer in: aMineField

	aPlayer loseLives: 2.
	aMineField blowPlayerAway! !

!NoArmour methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
handleLowPowerExplosionOn: aPlayer

	aPlayer loseLives: 1! !

!Nothing methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
landedOnBy: aPlayer at: aPosition in: aMineField! !

!Player methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
initializeStartingAt: aPosition lives: aNumberOfLives

	position := aPosition.
	lives := aNumberOfLives.
	armour := NoArmour new! !

!Player methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
lives

	^lives! !

!Player methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
position

	^position! !

!Player methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
isDead

	^lives = 0! !

!Player methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
moveTo: aPosition

	position := aPosition! !

!Player methodsFor: 'lives' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
loseLives: aNumberOfLives

	lives := lives - aNumberOfLives max: 0! !

!Player methodsFor: 'armour' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
takeOffArmour

	armour := NoArmour new! !

!Player methodsFor: 'armour' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
wear: anArmour

	armour := anArmour! !

!Player methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
sufferHighPowerExplosionIn: aMineField

	armour handleHighPowerExplosionOn: self in: aMineField! !

!Player methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
sufferLowPowerExplosion

	armour handleLowPowerExplosionOn: self! !

!Player class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
startingAt: aPosition lives: aNumberOfLives

	^self new initializeStartingAt: aPosition lives: aNumberOfLives! !

!Tunnel methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
initializeBetween: aPosition and: anotherPosition

	oneEnd := aPosition.
	anotherEnd := anotherPosition! !

!Tunnel methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
endOppositeTo: aPosition

	^aPosition = oneEnd ifTrue: [anotherEnd] ifFalse: [oneEnd]! !

!Tunnel methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
ends

	^{oneEnd. anotherEnd}! !

!Tunnel methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
hasEndAt: aPosition

	^self ends includes: aPosition! !

!Tunnel methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
landedOnBy: aPlayer at: aPosition in: aMineField

	aPlayer moveTo: (self endOppositeTo: aPosition)! !

!Tunnel class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
between: aPosition and: anotherPosition

	self assertIsFrom: aPosition toAnother: anotherPosition.

	^self new initializeBetween: aPosition and: anotherPosition! !

!Tunnel class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
assertIsFrom: aPosition toAnother: anotherPosition

	aPosition = anotherPosition ifTrue: [self error: self sameEndsErrorDescription]! !

!Tunnel class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:38:27 pm (UTC)'!
sameEndsErrorDescription

	^'A tunnel must go from one position to another'! !

!ScriptedRandom methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
initializeCycling: aSequence

	values := ReadStream on: aSequence! !

!ScriptedRandom methodsFor: 'random' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
nextInteger: aMaximum

	values atEnd ifTrue: [values reset].
	^values next! !

!ScriptedRandom class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
cycling: aSequence

	^self new initializeCycling: aSequence! !

!BoardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testBoardCanNotHaveLessThanTwoColumns

	| noElements |
	noElements := Dictionary new.

	self
		should: [Board extent: 1@5 elements: noElements tunnels: #()]
		raise: Error
		withMessageText: Board invalidExtentErrorDescription! !

!BoardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testBoardCanNotHaveLessThanTwoRows

	| noElements |
	noElements := Dictionary new.

	self
		should: [Board extent: 5@1 elements: noElements tunnels: #()]
		raise: Error
		withMessageText: Board invalidExtentErrorDescription! !

!BoardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testElementsCanNotBeOutsideTheBoard

	| elements |
	elements := {(4@1) -> LowPowerMine new} asDictionary.

	self
		should: [Board extent: 3@3 elements: elements tunnels: #()]
		raise: Error
		withMessageText: Board positionOutsideBoardErrorDescription! !

!BoardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testTunnelCanNotEndWhereAnotherElementIs

	| elements tunnels |
	elements := {(2@2) -> LowPowerMine new} asDictionary.
	tunnels := {Tunnel between: 1@2 and: 2@2}.

	self
		should: [Board extent: 3@3 elements: elements tunnels: tunnels]
		raise: Error
		withMessageText: Board occupiedPositionErrorDescription! !

!BoardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testTunnelEndsCanNotBeOutsideTheBoard

	| noElements tunnels |
	noElements := Dictionary new.
	tunnels := {Tunnel between: 1@2 and: 3@4}.

	self
		should: [Board extent: 3@3 elements: noElements tunnels: tunnels]
		raise: Error
		withMessageText: Board positionOutsideBoardErrorDescription! !

!BoardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testTunnelsCanNotShareAnEnd

	| noElements tunnels |
	noElements := Dictionary new.
	tunnels := {Tunnel between: 1@2 and: 2@2. Tunnel between: 2@2 and: 3@3}.

	self
		should: [Board extent: 3@3 elements: noElements tunnels: tunnels]
		raise: Error
		withMessageText: Board occupiedPositionErrorDescription! !

!BoardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testTwoByTwoBoardIsValid

	| noElements |
	noElements := Dictionary new.

	self shouldnt: [Board extent: 2@2 elements: noElements tunnels: #()] raise: Error! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
boardOf: anExtent with: anElementsByPosition

	^Board extent: anExtent elements: anElementsByPosition asDictionary tunnels: #()! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
boardOf: anExtent withTunnels: aTunnels

	^Board extent: anExtent elements: Dictionary new tunnels: aTunnels! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
emptyBoardOf: anExtent

	^self boardOf: anExtent with: #()! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
gameOn: aBoard

	^self gameOn: aBoard blowingBy: 0@0! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
gameOn: aBoard blowingBy: anOffset

	^self gameOn: aBoard startingAt: 1@1 lives: 3 blowingBy: anOffset! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
gameOn: aBoard lives: aNumberOfLives

	^self gameOn: aBoard startingAt: 1@1 lives: aNumberOfLives blowingBy: 0@0! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
gameOn: aBoard startingAt: aStartPosition

	^self gameOn: aBoard startingAt: aStartPosition lives: 3 blowingBy: 0@0! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
gameOn: aBoard startingAt: aStartPosition lives: aNumberOfLives blowingBy: anOffset

	^MineField
		board: aBoard
		playerStartingAt: aStartPosition
		lives: aNumberOfLives
		random: (self randomBlowingBy: anOffset)! !

!MineFieldTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
randomBlowingBy: anOffset

	^ScriptedRandom cycling: {anOffset x + 4. anOffset y + 4}! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testNewGameIsNotOver

	| game |
	game := self gameOn: (self emptyBoardOf: 3@3).

	self deny: game isOver! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testPlayerCanNotStartAboveTheBottomRow

	| board |
	board := self emptyBoardOf: 3@3.

	self
		should: [self gameOn: board startingAt: 1@2]
		raise: Error
		withMessageText: MineField invalidStartPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testPlayerCanNotStartOnAPositionWithAnElement

	| board |
	board := self boardOf: 3@3 with: {(1@1) -> LightArmour new}.

	self
		should: [self gameOn: board startingAt: 1@1]
		raise: Error
		withMessageText: MineField occupiedStartPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testPlayerCanNotStartOnATunnelEnd

	| board |
	board := self boardOf: 3@3 withTunnels: {Tunnel between: 3@3 and: 1@1}.

	self
		should: [self gameOn: board startingAt: 1@1]
		raise: Error
		withMessageText: MineField occupiedStartPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testPlayerCanNotStartOutsideTheBoard

	| board |
	board := self emptyBoardOf: 3@3.

	self
		should: [self gameOn: board startingAt: 4@1]
		raise: Error
		withMessageText: MineField invalidStartPositionErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testPlayerCanNotStartWithoutLives

	| board |
	board := self emptyBoardOf: 3@3.

	self
		should: [self gameOn: board lives: 0]
		raise: Error
		withMessageText: MineField invalidNumberOfLivesErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testPlayerStartsAtTheStartPosition

	| game |
	game := self gameOn: (self emptyBoardOf: 3@3) startingAt: 2@1.

	self assert: game playerPosition equals: 2@1! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testPlayerStartsWithTheConfiguredLives

	| game |
	game := self gameOn: (self emptyBoardOf: 3@3) lives: 5.

	self assert: game playerLives equals: 5! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testMovingDownFromTheBottomRowKeepsPlayerInPlace

	| game |
	game := self gameOn: (self emptyBoardOf: 3@3) startingAt: 2@1.

	game moveDown.

	self assert: game playerPosition equals: 2@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testMovingDownMovesPlayerOneRowDown

	| game |
	game := self gameOn: (self emptyBoardOf: 3@3) startingAt: 2@1.
	game moveUp.

	game moveDown.

	self assert: game playerPosition equals: 2@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testMovingLeftFromTheFirstColumnKeepsPlayerInPlace

	| game |
	game := self gameOn: (self emptyBoardOf: 3@3) startingAt: 1@1.

	game moveLeft.

	self assert: game playerPosition equals: 1@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testMovingLeftMovesPlayerOneColumnLeft

	| game |
	game := self gameOn: (self emptyBoardOf: 3@3) startingAt: 2@1.

	game moveLeft.

	self assert: game playerPosition equals: 1@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testMovingRightFromTheLastColumnKeepsPlayerInPlace

	| game |
	game := self gameOn: (self emptyBoardOf: 3@3) startingAt: 3@1.

	game moveRight.

	self assert: game playerPosition equals: 3@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testMovingRightMovesPlayerOneColumnRight

	| game |
	game := self gameOn: (self emptyBoardOf: 3@3) startingAt: 2@1.

	game moveRight.

	self assert: game playerPosition equals: 3@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testMovingToAnEmptyPositionKeepsPlayerLives

	| game |
	game := self gameOn: (self emptyBoardOf: 3@3).

	game moveUp.

	self assert: game playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testMovingUpMovesPlayerOneRowUp

	| game |
	game := self gameOn: (self emptyBoardOf: 3@3) startingAt: 2@1.

	game moveUp.

	self assert: game playerPosition equals: 2@2! !

!MineFieldTest methodsFor: 'tests - winning and losing' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testLosingAllLivesLosesTheGame

	| game |
	game := self gameOn: (self boardOf: 3@3 with: {(1@2) -> LowPowerMine new}) lives: 1.

	game moveUp.

	self assert: game hasLost! !

!MineFieldTest methodsFor: 'tests - winning and losing' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testLosingAllLivesOnTheTopRowDoesNotWinTheGame

	| game |
	game := self gameOn: (self boardOf: 3@2 with: {(1@2) -> LowPowerMine new}) lives: 1.

	game moveUp.

	self deny: game hasWon! !

!MineFieldTest methodsFor: 'tests - winning and losing' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testPlayerCanNotMoveAfterLosing

	| game |
	game := self gameOn: (self boardOf: 3@3 with: {(1@2) -> LowPowerMine new}) lives: 1.
	game moveUp.

	self
		should: [game moveUp]
		raise: Error
		withMessageText: MineField gameOverErrorDescription! !

!MineFieldTest methodsFor: 'tests - winning and losing' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testPlayerCanNotMoveAfterWinning

	| game |
	game := self gameOn: (self emptyBoardOf: 3@2).
	game moveUp.

	self
		should: [game moveRight]
		raise: Error
		withMessageText: MineField gameOverErrorDescription! !

!MineFieldTest methodsFor: 'tests - winning and losing' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testReachingTheTopRowWinsTheGame

	| game |
	game := self gameOn: (self emptyBoardOf: 3@2).

	game moveUp.

	self assert: game hasWon! !

!MineFieldTest methodsFor: 'tests - low power mine' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testLowPowerMineExplodesOnlyOnce

	| game |
	game := self gameOn: (self boardOf: 3@4 with: {(1@2) -> LowPowerMine new}).
	game moveUp; moveDown.

	game moveUp.

	self assert: game playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - low power mine' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testLowPowerMineTakesOneLife

	| game |
	game := self gameOn: (self boardOf: 3@4 with: {(1@2) -> LowPowerMine new}).

	game moveUp.

	self assert: game playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - low power mine' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testPlayerContinuesFromTheLowPowerMinePosition

	| game |
	game := self gameOn: (self boardOf: 3@4 with: {(1@2) -> LowPowerMine new}).

	game moveUp.

	self assert: game playerPosition equals: 1@2! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testBlownPlayerLandingOnATunnelAppearsAtItsOtherEnd

	| board game |
	board := Board
		extent: 5@5
		elements: {(1@2) -> HighPowerMine new} asDictionary
		tunnels: {Tunnel between: 3@3 and: 5@4}.
	game := self gameOn: board blowingBy: 2@1.

	game moveUp.

	self assert: game playerPosition equals: 5@4! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testBlownPlayerLandingOnTheTopRowWinsTheGame

	| game |
	game := self gameOn: (self boardOf: 5@4 with: {(1@2) -> HighPowerMine new}) blowingBy: 1@2.

	game moveUp.

	self assert: game hasWon! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testBlownPlayerUsesTheElementHeLandsOn

	| board game |
	board := self boardOf: 5@5 with: {(1@2) -> HighPowerMine new. (3@3) -> LowPowerMine new}.
	game := self gameOn: board startingAt: 1@1 lives: 4 blowingBy: 2@1.

	game moveUp.

	self assert: game playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testHighPowerMineBlowsPlayerByARandomOffset

	| game |
	game := self gameOn: (self boardOf: 5@5 with: {(1@2) -> HighPowerMine new}) blowingBy: 2@1.

	game moveUp.

	self assert: game playerPosition equals: 3@3! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testHighPowerMineDoesNotBlowPlayerOutsideTheBoard

	| game |
	game := self gameOn: (self boardOf: 5@5 with: {(1@2) -> HighPowerMine new}) blowingBy: -3@0.

	game moveUp.

	self assert: game playerPosition equals: 1@2! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testHighPowerMineExplodesOnlyOnce

	| game |
	game := self gameOn: (self boardOf: 5@5 with: {(1@2) -> HighPowerMine new}).
	game moveUp; moveDown.

	game moveUp.

	self assert: game playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testHighPowerMineTakesTwoLives

	| game |
	game := self gameOn: (self boardOf: 5@5 with: {(1@2) -> HighPowerMine new}).

	game moveUp.

	self assert: game playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testLightArmourHalvesTheHighPowerMineBlast

	| board game |
	board := self boardOf: 5@6 with: {(1@2) -> LightArmour new. (1@3) -> HighPowerMine new}.
	game := self gameOn: board blowingBy: 3@3.
	game moveUp.

	game moveUp.

	self assert: game playerPosition equals: 2@4! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testLightArmourProtectsFromLosingLivesOnHighPowerMine

	| game |
	game := self gameOn: (self boardOf: 3@6 with: {(1@2) -> LightArmour new. (1@3) -> HighPowerMine new}).
	game moveUp.

	game moveUp.

	self assert: game playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testLightArmourProtectsFromLowPowerMine

	| game |
	game := self gameOn: (self boardOf: 3@6 with: {(1@2) -> LightArmour new. (1@3) -> LowPowerMine new}).
	game moveUp.

	game moveUp.

	self assert: game playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testLightArmourProtectsOnlyOnce

	| board game |
	board := self
		boardOf: 3@6
		with: {(1@2) -> LightArmour new. (1@3) -> LowPowerMine new. (1@4) -> LowPowerMine new}.
	game := self gameOn: board.
	game moveUp; moveUp.

	game moveUp.

	self assert: game playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testWearingAnArmourTakesOffThePreviousOne

	| board game |
	board := self
		boardOf: 3@6
		with: {
			(1@2) -> HeavyArmour new.
			(1@3) -> LightArmour new.
			(1@4) -> LowPowerMine new.
			(1@5) -> LowPowerMine new}.
	game := self gameOn: board.
	game moveUp; moveUp; moveUp.

	game moveUp.

	self assert: game playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testHeavyArmourDoesNotProtectFromAThirdLowPowerMine

	| board game |
	board := self
		boardOf: 3@6
		with: {
			(1@2) -> HeavyArmour new.
			(1@3) -> LowPowerMine new.
			(1@4) -> LowPowerMine new.
			(1@5) -> LowPowerMine new}.
	game := self gameOn: board.
	game moveUp; moveUp; moveUp.

	game moveUp.

	self assert: game playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testHeavyArmourProtectsFromBeingBlownByHighPowerMine

	| board game |
	board := self boardOf: 3@6 with: {(1@2) -> HeavyArmour new. (1@3) -> HighPowerMine new}.
	game := self gameOn: board blowingBy: 1@1.
	game moveUp.

	game moveUp.

	self assert: game playerPosition equals: 1@3! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testHeavyArmourProtectsFromHighPowerMineOnlyOnce

	| board game |
	board := self
		boardOf: 3@6
		with: {(1@2) -> HeavyArmour new. (1@3) -> HighPowerMine new. (1@4) -> LowPowerMine new}.
	game := self gameOn: board.
	game moveUp; moveUp.

	game moveUp.

	self assert: game playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testHeavyArmourProtectsFromLosingLivesOnHighPowerMine

	| board game |
	board := self boardOf: 3@6 with: {(1@2) -> HeavyArmour new. (1@3) -> HighPowerMine new}.
	game := self gameOn: board blowingBy: 1@1.
	game moveUp.

	game moveUp.

	self assert: game playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testHeavyArmourProtectsFromTwoLowPowerMines

	| board game |
	board := self
		boardOf: 3@6
		with: {(1@2) -> HeavyArmour new. (1@3) -> LowPowerMine new. (1@4) -> LowPowerMine new}.
	game := self gameOn: board.
	game moveUp; moveUp.

	game moveUp.

	self assert: game playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testHeavyArmourUsedOnALowPowerMineStillProtectsFromAHighPowerMine

	| board game |
	board := self
		boardOf: 3@6
		with: {(1@2) -> HeavyArmour new. (1@3) -> LowPowerMine new. (1@4) -> HighPowerMine new}.
	game := self gameOn: board blowingBy: 1@1.
	game moveUp; moveUp.

	game moveUp.

	self assert: game playerLives equals: 3! !

!MineFieldTest methodsFor: 'tests - tunnel' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testLandingOnATunnelEndMovesPlayerToItsOtherEnd

	| game |
	game := self gameOn: (self boardOf: 3@4 withTunnels: {Tunnel between: 1@2 and: 3@3}).

	game moveUp.

	self assert: game playerPosition equals: 3@3! !

!MineFieldTest methodsFor: 'tests - tunnel' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testReachingTheTopRowThroughATunnelWinsTheGame

	| game |
	game := self gameOn: (self boardOf: 3@4 withTunnels: {Tunnel between: 1@2 and: 3@4}).

	game moveUp.

	self assert: game hasWon! !

!MineFieldTest methodsFor: 'tests - tunnel' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testTunnelIsNotRemovedWhenUsed

	| game |
	game := self gameOn: (self boardOf: 3@4 withTunnels: {Tunnel between: 1@2 and: 2@3}).
	game moveUp; moveLeft.

	game moveDown.

	self assert: game playerPosition equals: 2@3! !

!MineFieldTest methodsFor: 'tests - tunnel' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testTunnelsAreBidirectional

	| game |
	game := self gameOn: (self boardOf: 3@4 withTunnels: {Tunnel between: 3@3 and: 1@2}).

	game moveUp.

	self assert: game playerPosition equals: 3@3! !

!TunnelTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 6:41:01 pm (UTC)'!
testTunnelCanNotStartAndEndAtTheSamePosition

	self
		should: [Tunnel between: 2@2 and: 2@2]
		raise: Error
		withMessageText: Tunnel sameEndsErrorDescription! !
