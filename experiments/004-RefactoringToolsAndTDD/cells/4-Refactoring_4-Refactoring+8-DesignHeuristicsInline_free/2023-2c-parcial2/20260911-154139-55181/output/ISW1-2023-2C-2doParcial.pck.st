'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 3:53:04 pm'!
'Description '!
!provides: 'ISW1-2023-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'ISW1-2023-2C-2doParcial'!
SystemOrganization addCategory: #'ISW1-2023-2C-2doParcial-Tests'!


!classDefinition: #MineField category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #MineField
	instanceVariableNames: 'extent elements tunnels player random'
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

!classDefinition: #Nothing category: #'ISW1-2023-2C-2doParcial'!
MineFieldElement subclass: #Nothing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'Nothing class' category: #'ISW1-2023-2C-2doParcial'!
Nothing class
	instanceVariableNames: ''!

!classDefinition: #SingleUseElement category: #'ISW1-2023-2C-2doParcial'!
MineFieldElement subclass: #SingleUseElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'SingleUseElement class' category: #'ISW1-2023-2C-2doParcial'!
SingleUseElement class
	instanceVariableNames: ''!

!classDefinition: #Armour category: #'ISW1-2023-2C-2doParcial'!
SingleUseElement subclass: #Armour
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
SingleUseElement subclass: #HighPowerMine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'HighPowerMine class' category: #'ISW1-2023-2C-2doParcial'!
HighPowerMine class
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
MineFieldElement subclass: #Tunnel
	instanceVariableNames: 'oneEnd anotherEnd'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'Tunnel class' category: #'ISW1-2023-2C-2doParcial'!
Tunnel class
	instanceVariableNames: ''!

!classDefinition: #MineFieldPlayer category: #'ISW1-2023-2C-2doParcial'!
Object subclass: #MineFieldPlayer
	instanceVariableNames: 'position lives armour'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial'!
!classDefinition: 'MineFieldPlayer class' category: #'ISW1-2023-2C-2doParcial'!
MineFieldPlayer class
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

!classDefinition: #FixedSequenceRandom category: #'ISW1-2023-2C-2doParcial-Tests'!
Object subclass: #FixedSequenceRandom
	instanceVariableNames: 'integers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2023-2C-2doParcial-Tests'!
!classDefinition: 'FixedSequenceRandom class' category: #'ISW1-2023-2C-2doParcial-Tests'!
FixedSequenceRandom class
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


!MineField methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
initializeExtent: anExtent playerStartingAt: aStartingPosition lives: aNumberOfLives elements: aPositionToElementAssociations tunnels: aTunnelCollection random: aRandom

	extent := anExtent.
	player := MineFieldPlayer at: aStartingPosition withLives: aNumberOfLives.
	elements := Dictionary newFrom: aPositionToElementAssociations.
	tunnels := aTunnelCollection copy.
	random := aRandom! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
moveDown

	self movePlayerTowards: 0@-1! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
moveLeft

	self movePlayerTowards: -1@0! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
moveRight

	self movePlayerTowards: 1@0! !

!MineField methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
moveUp

	self movePlayerTowards: 0@1! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
assertIsNotOver

	self isOver ifTrue: [ self error: self class gameOverErrorDescription ]! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
landPlayerOn: aPosition

	player moveTo: aPosition.
	(self elementAt: aPosition) receive: player at: aPosition in: self! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
movePlayerBy: anOffset

	| destination |
	destination := player position + anOffset.
	(self includes: destination) ifTrue: [ self landPlayerOn: destination ]! !

!MineField methodsFor: 'moving - private' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
movePlayerTowards: aDirection

	self assertIsNotOver.
	self movePlayerBy: aDirection! !

!MineField methodsFor: 'board - private' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
elementAt: aPosition

	^elements
		at: aPosition
		ifAbsent: [ tunnels detect: [ :aTunnel | aTunnel connects: aPosition ] ifNone: [ Nothing new ] ]! !

!MineField methodsFor: 'board - private' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
includes: aPosition

	^aPosition between: self class bottomLeftCorner and: extent! !

!MineField methodsFor: 'element effects' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
flyPlayer

	self movePlayerBy: self randomFlightDistance! !

!MineField methodsFor: 'element effects' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
flyPlayerHalfway

	self movePlayerBy: self randomFlightDistance // 2! !

!MineField methodsFor: 'element effects' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
free: aPosition

	elements removeKey: aPosition! !

!MineField methodsFor: 'flight - private' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
maximumFlightDistance

	^3! !

!MineField methodsFor: 'flight - private' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
randomFlightCoordinate

	^(random nextInteger: self maximumFlightDistance * 2 + 1) - self maximumFlightDistance - 1! !

!MineField methodsFor: 'flight - private' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
randomFlightDistance

	^self randomFlightCoordinate @ self randomFlightCoordinate! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
isLost

	^player isDead! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
isOver

	^self isWon or: [ self isLost ]! !

!MineField methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
isWon

	^player isAlive and: [ player isOnRow: extent y ]! !

!MineField methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
playerLives

	^player lives! !

!MineField methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
playerPosition

	^player position! !

!MineField class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
extent: anExtent playerStartingAt: aStartingPosition lives: aNumberOfLives elements: aPositionToElementAssociations tunnels: aTunnelCollection

	^self
		extent: anExtent
		playerStartingAt: aStartingPosition
		lives: aNumberOfLives
		elements: aPositionToElementAssociations
		tunnels: aTunnelCollection
		random: Random new! !

!MineField class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
extent: anExtent playerStartingAt: aStartingPosition lives: aNumberOfLives elements: aPositionToElementAssociations tunnels: aTunnelCollection random: aRandom

	| occupiedPositions |
	occupiedPositions := self positionsOccupiedBy: aPositionToElementAssociations and: aTunnelCollection.
	self assertIsValidExtent: anExtent.
	self assertIs: aStartingPosition onBottomRowOf: anExtent.
	self assertAll: occupiedPositions areInside: anExtent.
	self assertHoldOneElementAtMost: occupiedPositions.
	self assertIsFree: aStartingPosition amongst: occupiedPositions.

	^self new
		initializeExtent: anExtent
		playerStartingAt: aStartingPosition
		lives: aNumberOfLives
		elements: aPositionToElementAssociations
		tunnels: aTunnelCollection
		random: aRandom! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
assertAll: anOccupiedPositionCollection areInside: anExtent

	(anOccupiedPositionCollection allSatisfy: [ :anOccupiedPosition | anOccupiedPosition between: self bottomLeftCorner and: anExtent ])
		ifFalse: [ self error: self elementOutsideBoardErrorDescription ]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
assertHoldOneElementAtMost: anOccupiedPositionCollection

	anOccupiedPositionCollection asSet size = anOccupiedPositionCollection size
		ifFalse: [ self error: self positionWithMoreThanOneElementErrorDescription ]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
assertIs: aStartingPosition onBottomRowOf: anExtent

	(aStartingPosition between: self bottomLeftCorner and: anExtent x @ self bottomLeftCorner y)
		ifFalse: [ self error: self startingPositionNotOnBottomRowErrorDescription ]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
assertIsFree: aStartingPosition amongst: anOccupiedPositionCollection

	(anOccupiedPositionCollection includes: aStartingPosition)
		ifTrue: [ self error: self startingPositionOccupiedErrorDescription ]! !

!MineField class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
assertIsValidExtent: anExtent

	anExtent >= self minimumExtent ifFalse: [ self error: self invalidExtentErrorDescription ]! !

!MineField class methodsFor: 'board' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
bottomLeftCorner

	^1@1! !

!MineField class methodsFor: 'board' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
minimumExtent

	^2@2! !

!MineField class methodsFor: 'board' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
positionsOccupiedBy: aPositionToElementAssociations and: aTunnelCollection

	^aTunnelCollection
		inject: (aPositionToElementAssociations collect: [ :aPositionToElement | aPositionToElement key ])
		into: [ :occupiedPositions :aTunnel | occupiedPositions, aTunnel ends ]! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
elementOutsideBoardErrorDescription

	^'Every element must be inside the board'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
gameOverErrorDescription

	^'The game is over'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
invalidExtentErrorDescription

	^'The board must be at least 2x2'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
positionWithMoreThanOneElementErrorDescription

	^'A position can not hold more than one element'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
startingPositionNotOnBottomRowErrorDescription

	^'The player must start on the bottom row of the board'! !

!MineField class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
startingPositionOccupiedErrorDescription

	^'The player must start on a free position'! !

!MineFieldElement methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
receive: aPlayer at: aPosition in: aMineField

	self subclassResponsibility! !

!Nothing methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
receive: aPlayer at: aPosition in: aMineField

	! !

!SingleUseElement methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
affect: aPlayer in: aMineField

	self subclassResponsibility! !

!SingleUseElement methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
receive: aPlayer at: aPosition in: aMineField

	aMineField free: aPosition.
	self affect: aPlayer in: aMineField! !

!Armour methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
affect: aPlayer in: aMineField

	aPlayer wear: self! !

!Armour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
protectFromHighPowerMineExplosion: aPlayer in: aMineField

	self subclassResponsibility! !

!Armour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
protectFromLowPowerMineExplosion: aPlayer

	self subclassResponsibility! !

!HeavyArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
protectFromHighPowerMineExplosion: aPlayer in: aMineField

	aPlayer takeOffArmour! !

!HeavyArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
protectFromLowPowerMineExplosion: aPlayer

	aPlayer wear: DamagedHeavyArmour new! !

!DamagedHeavyArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
protectFromLowPowerMineExplosion: aPlayer

	aPlayer takeOffArmour! !

!LightArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
protectFromHighPowerMineExplosion: aPlayer in: aMineField

	aPlayer takeOffArmour.
	aMineField flyPlayerHalfway! !

!LightArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
protectFromLowPowerMineExplosion: aPlayer

	aPlayer takeOffArmour! !

!HighPowerMine methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
affect: aPlayer in: aMineField

	aPlayer receiveHighPowerMineExplosionIn: aMineField! !

!LowPowerMine methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
affect: aPlayer in: aMineField

	aPlayer receiveLowPowerMineExplosion! !

!Tunnel methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
initializeBetween: aPosition and: anotherPosition

	oneEnd := aPosition.
	anotherEnd := anotherPosition! !

!Tunnel methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
ends

	^Array with: oneEnd with: anotherEnd! !

!Tunnel methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
connects: aPosition

	^self ends includes: aPosition! !

!Tunnel methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
endOppositeTo: aPosition

	^aPosition = oneEnd ifTrue: [ anotherEnd ] ifFalse: [ oneEnd ]! !

!Tunnel methodsFor: 'landing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
receive: aPlayer at: aPosition in: aMineField

	aPlayer moveTo: (self endOppositeTo: aPosition)! !

!Tunnel class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
between: aPosition and: anotherPosition

	self assert: aPosition isDifferentFrom: anotherPosition.

	^self new initializeBetween: aPosition and: anotherPosition! !

!Tunnel class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
assert: aPosition isDifferentFrom: anotherPosition

	aPosition = anotherPosition ifTrue: [ self error: self sameEndsErrorDescription ]! !

!Tunnel class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
sameEndsErrorDescription

	^'A tunnel must connect two different positions'! !

!MineFieldPlayer methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
initializeAt: aPosition withLives: aNumberOfLives

	position := aPosition.
	lives := aNumberOfLives.
	armour := NoArmour new! !

!MineFieldPlayer methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
lives

	^lives! !

!MineFieldPlayer methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
position

	^position! !

!MineFieldPlayer methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
moveTo: aPosition

	position := aPosition! !

!MineFieldPlayer methodsFor: 'lives' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
loseLives: aNumberOfLives

	lives := lives - aNumberOfLives max: 0! !

!MineFieldPlayer methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
isAlive

	^self isDead not! !

!MineFieldPlayer methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
isDead

	^lives isZero! !

!MineFieldPlayer methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
isOnRow: aRow

	^position y = aRow! !

!MineFieldPlayer methodsFor: 'armour' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
takeOffArmour

	armour := NoArmour new! !

!MineFieldPlayer methodsFor: 'armour' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
wear: anArmour

	armour := anArmour! !

!MineFieldPlayer methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
receiveHighPowerMineExplosionIn: aMineField

	armour protectFromHighPowerMineExplosion: self in: aMineField! !

!MineFieldPlayer methodsFor: 'explosions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
receiveLowPowerMineExplosion

	armour protectFromLowPowerMineExplosion: self! !

!MineFieldPlayer class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
at: aPosition withLives: aNumberOfLives

	self assertIsValidNumberOfLives: aNumberOfLives.

	^self new initializeAt: aPosition withLives: aNumberOfLives! !

!MineFieldPlayer class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
assertIsValidNumberOfLives: aNumberOfLives

	aNumberOfLives strictlyPositive ifFalse: [ self error: self invalidNumberOfLivesErrorDescription ]! !

!MineFieldPlayer class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
invalidNumberOfLivesErrorDescription

	^'The player must start with at least one life'! !

!NoArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
protectFromHighPowerMineExplosion: aPlayer in: aMineField

	aPlayer loseLives: 2.
	aMineField flyPlayer! !

!NoArmour methodsFor: 'protecting' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
protectFromLowPowerMineExplosion: aPlayer

	aPlayer loseLives: 1! !

!FixedSequenceRandom methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
initializeReturning: anIntegerSequence

	integers := ReadStream on: anIntegerSequence! !

!FixedSequenceRandom methodsFor: 'random' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
nextInteger: aMaximum

	^integers next! !

!FixedSequenceRandom class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 6:49:55 pm (UTC)'!
returning: anIntegerSequence

	^self new initializeReturning: anIntegerSequence! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
extent

	^5@5! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
lives

	^3! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
mineFieldOf: anExtent startingAt: aStartingPosition

	^MineField
		extent: anExtent
		playerStartingAt: aStartingPosition
		lives: self lives
		elements: #()
		tunnels: #()
		random: self unusedRandom! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
mineFieldWith: aPositionToElementAssociations

	^self
		mineFieldWith: aPositionToElementAssociations
		tunnels: #()
		lives: self lives
		random: self unusedRandom! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
mineFieldWith: aPositionToElementAssociations flyingBy: aFlightDistance

	^self
		mineFieldWith: aPositionToElementAssociations
		tunnels: #()
		lives: self lives
		random: (self randomFlyingBy: aFlightDistance)! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
mineFieldWith: aPositionToElementAssociations lives: aNumberOfLives

	^self
		mineFieldWith: aPositionToElementAssociations
		tunnels: #()
		lives: aNumberOfLives
		random: self unusedRandom! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
mineFieldWith: aPositionToElementAssociations tunnels: aTunnelCollection

	^self
		mineFieldWith: aPositionToElementAssociations
		tunnels: aTunnelCollection
		lives: self lives
		random: self unusedRandom! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
mineFieldWith: aPositionToElementAssociations tunnels: aTunnelCollection lives: aNumberOfLives random: aRandom

	^MineField
		extent: self extent
		playerStartingAt: self startingPosition
		lives: aNumberOfLives
		elements: aPositionToElementAssociations
		tunnels: aTunnelCollection
		random: aRandom! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
mineFieldWithTunnels: aTunnelCollection

	^self mineFieldWith: #() tunnels: aTunnelCollection! !

!MineFieldTest methodsFor: 'mine fields' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
startingPosition

	^3@1! !

!MineFieldTest methodsFor: 'random' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
randomFlyingBy: aFlightDistance

	^FixedSequenceRandom returning: (Array
		with: (self randomIntegerFor: aFlightDistance x)
		with: (self randomIntegerFor: aFlightDistance y))! !

!MineFieldTest methodsFor: 'random' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
randomIntegerFor: aFlightCoordinate

	^aFlightCoordinate + 4! !

!MineFieldTest methodsFor: 'random' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
unusedRandom

	^FixedSequenceRandom returning: #()! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testBoardNarrowerThanTwoColumnsCanNotBeCreated

	self
		should: [ self mineFieldOf: 1@5 startingAt: 1@1 ]
		raise: Error
		withMessageText: MineField invalidExtentErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testBoardShorterThanTwoRowsCanNotBeCreated

	self
		should: [ self mineFieldOf: 5@1 startingAt: 1@1 ]
		raise: Error
		withMessageText: MineField invalidExtentErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testElementCanNotBeOutsideTheBoard

	self
		should: [ self mineFieldWith: { 6@3 -> LowPowerMine new } ]
		raise: Error
		withMessageText: MineField elementOutsideBoardErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerCanNotStartAboveTheBottomRow

	self
		should: [ self mineFieldOf: 5@5 startingAt: 3@2 ]
		raise: Error
		withMessageText: MineField startingPositionNotOnBottomRowErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerCanNotStartOnATunnelEnd

	self
		should: [ self mineFieldWithTunnels: { Tunnel between: self startingPosition and: 3@3 } ]
		raise: Error
		withMessageText: MineField startingPositionOccupiedErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerCanNotStartOnAnElement

	self
		should: [ self mineFieldWith: { self startingPosition -> LowPowerMine new } ]
		raise: Error
		withMessageText: MineField startingPositionOccupiedErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerCanNotStartOutsideTheBoard

	self
		should: [ self mineFieldOf: 5@5 startingAt: 6@1 ]
		raise: Error
		withMessageText: MineField startingPositionNotOnBottomRowErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerCanNotStartWithoutLives

	self
		should: [ self mineFieldWith: #() lives: 0 ]
		raise: Error
		withMessageText: MineFieldPlayer invalidNumberOfLivesErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerStartsWithAllItsLives

	| mineField |
	mineField := self mineFieldWith: #().

	self assert: mineField playerLives equals: self lives! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPositionCanNotHoldTwoElements

	self
		should: [ self mineFieldWith: { 3@3 -> LowPowerMine new. 3@3 -> LightArmour new } ]
		raise: Error
		withMessageText: MineField positionWithMoreThanOneElementErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testTunnelCanNotConnectAPositionWithItself

	self
		should: [ Tunnel between: 3@3 and: 3@3 ]
		raise: Error
		withMessageText: Tunnel sameEndsErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testTunnelEndCanNotBeOnAnElement

	self
		should: [ self mineFieldWith: { 3@3 -> LowPowerMine new } tunnels: { Tunnel between: 3@3 and: 1@4 } ]
		raise: Error
		withMessageText: MineField positionWithMoreThanOneElementErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testTunnelEndCanNotBeOutsideTheBoard

	self
		should: [ self mineFieldWithTunnels: { Tunnel between: 3@3 and: 3@6 } ]
		raise: Error
		withMessageText: MineField elementOutsideBoardErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testTunnelsCanNotShareAnEnd

	self
		should: [ self mineFieldWithTunnels: { Tunnel between: 3@3 and: 1@4. Tunnel between: 3@3 and: 5@4 } ]
		raise: Error
		withMessageText: MineField positionWithMoreThanOneElementErrorDescription! !

!MineFieldTest methodsFor: 'tests - creation' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testTwoByTwoBoardStartsWithThePlayerAtTheStartingPosition

	| mineField |
	mineField := self mineFieldOf: 2@2 startingAt: 2@1.

	self assert: mineField playerPosition equals: 2@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testMovingDownAfterMovingUpBringsThePlayerBackToTheStartingPosition

	| mineField |
	mineField := self mineFieldWith: #().
	mineField moveUp.

	mineField moveDown.

	self assert: mineField playerPosition equals: self startingPosition! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testMovingDownFromTheBottomRowKeepsThePlayerInPlace

	| mineField |
	mineField := self mineFieldWith: #().

	mineField moveDown.

	self assert: mineField playerPosition equals: self startingPosition! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testMovingLeftFromTheFirstColumnKeepsThePlayerInPlace

	| mineField |
	mineField := self mineFieldWith: #().
	mineField moveLeft; moveLeft.

	mineField moveLeft.

	self assert: mineField playerPosition equals: 1@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testMovingLeftMovesThePlayerOnePositionLeft

	| mineField |
	mineField := self mineFieldWith: #().

	mineField moveLeft.

	self assert: mineField playerPosition equals: 2@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testMovingRightFromTheLastColumnKeepsThePlayerInPlace

	| mineField |
	mineField := self mineFieldWith: #().
	mineField moveRight; moveRight.

	mineField moveRight.

	self assert: mineField playerPosition equals: 5@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testMovingRightMovesThePlayerOnePositionRight

	| mineField |
	mineField := self mineFieldWith: #().

	mineField moveRight.

	self assert: mineField playerPosition equals: 4@1! !

!MineFieldTest methodsFor: 'tests - moving' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testMovingUpMovesThePlayerOnePositionUp

	| mineField |
	mineField := self mineFieldWith: #().

	mineField moveUp.

	self assert: mineField playerPosition equals: 3@2! !

!MineFieldTest methodsFor: 'tests - winning and losing' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerCanNotMoveAfterLosing

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LowPowerMine new } lives: 1.
	mineField moveUp.

	self
		should: [ mineField moveUp ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: MineField gameOverErrorDescription.
			self assert: mineField playerPosition equals: 3@2 ]! !

!MineFieldTest methodsFor: 'tests - winning and losing' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerCanNotMoveAfterWinning

	| mineField |
	mineField := self mineFieldWith: #().
	4 timesRepeat: [ mineField moveUp ].

	self
		should: [ mineField moveRight ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: MineField gameOverErrorDescription.
			self assert: mineField playerPosition equals: 3@5 ]! !

!MineFieldTest methodsFor: 'tests - winning and losing' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerHasNotLostWhileHavingLivesLeft

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LowPowerMine new }.

	mineField moveUp.

	self deny: mineField isLost! !

!MineFieldTest methodsFor: 'tests - winning and losing' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerHasNotWonBeforeReachingTheTopRow

	| mineField |
	mineField := self mineFieldWith: #().

	3 timesRepeat: [ mineField moveUp ].

	self deny: mineField isWon! !

!MineFieldTest methodsFor: 'tests - winning and losing' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerLosesWhenRunningOutOfLives

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LowPowerMine new } lives: 1.

	mineField moveUp.

	self assert: mineField isLost! !

!MineFieldTest methodsFor: 'tests - winning and losing' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerRunningOutOfLivesOnTheTopRowDoesNotWin

	| mineField |
	mineField := self mineFieldWith: { 3@5 -> LowPowerMine new } lives: 1.

	4 timesRepeat: [ mineField moveUp ].

	self deny: mineField isWon! !

!MineFieldTest methodsFor: 'tests - winning and losing' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerWinsWhenReachingTheTopRow

	| mineField |
	mineField := self mineFieldWith: #().

	4 timesRepeat: [ mineField moveUp ].

	self assert: mineField isWon! !

!MineFieldTest methodsFor: 'tests - low power mine' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testLandingOnALowPowerMineTakesOneLife

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LowPowerMine new }.

	mineField moveUp.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - low power mine' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testLowPowerMineExplodesOnlyOnce

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LowPowerMine new }.
	mineField moveUp; moveDown.

	mineField moveUp.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - low power mine' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPlayerStaysOnTheLowPowerMinePositionAfterItExplodes

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LowPowerMine new }.

	mineField moveUp.

	self assert: mineField playerPosition equals: 3@2! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHighPowerMineExplodesOnlyOnce

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> HighPowerMine new } flyingBy: 0@0.
	mineField moveUp; moveDown.

	mineField moveUp.

	self assert: mineField playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHighPowerMineFliesThePlayerBackwardsByANegativeRandomDistance

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> HighPowerMine new } flyingBy: -2@-1.

	mineField moveUp.

	self assert: mineField playerPosition equals: 1@1! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHighPowerMineFliesThePlayerByTheRandomDistance

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> HighPowerMine new } flyingBy: 1@2.

	mineField moveUp.

	self assert: mineField playerPosition equals: 4@4! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHighPowerMineFlightLandingOnATunnelTakesThePlayerThroughIt

	| mineField |
	mineField := self
		mineFieldWith: { 3@2 -> HighPowerMine new }
		tunnels: { Tunnel between: 4@3 and: 1@4 }
		lives: self lives
		random: (self randomFlyingBy: 1@1).

	mineField moveUp.

	self assert: mineField playerPosition equals: 1@4! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHighPowerMineFlightLandingOnAnElementAppliesIt

	| mineField |
	mineField := self
		mineFieldWith: { 3@2 -> HighPowerMine new. 4@3 -> LowPowerMine new }
		tunnels: #()
		lives: 4
		random: (self randomFlyingBy: 1@1).

	mineField moveUp.

	self assert: mineField playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHighPowerMineFlightOutsideTheBoardKeepsThePlayerOnTheMinePosition

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> HighPowerMine new } flyingBy: -3@0.

	mineField moveUp.

	self assert: mineField playerPosition equals: 3@2! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHighPowerMineFlightToTheTopRowWinsTheGame

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> HighPowerMine new } flyingBy: 0@3.

	mineField moveUp.

	self assert: mineField isWon! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHighPowerMineTakingMoreLivesThanLeftLeavesThePlayerWithoutLives

	| mineField |
	mineField := self
		mineFieldWith: { 3@2 -> HighPowerMine new }
		tunnels: #()
		lives: 1
		random: (self randomFlyingBy: 0@0).

	mineField moveUp.

	self assert: mineField playerLives equals: 0! !

!MineFieldTest methodsFor: 'tests - high power mine' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testLandingOnAHighPowerMineTakesTwoLives

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> HighPowerMine new } flyingBy: 0@0.

	mineField moveUp.

	self assert: mineField playerLives equals: 1! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testLightArmourHalvesTheHighPowerMineFlight

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LightArmour new. 3@3 -> HighPowerMine new } flyingBy: 2@2.
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerPosition equals: 4@4! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testLightArmourHalvesTheHighPowerMineFlightByIntegerDivision

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LightArmour new. 3@3 -> HighPowerMine new } flyingBy: 3@-3.
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerPosition equals: 4@1! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testLightArmourIsTakenFromTheBoardWhenPicked

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LightArmour new. 4@2 -> LowPowerMine new. 2@2 -> LowPowerMine new }.
	mineField moveUp; moveRight; moveLeft.

	mineField moveLeft.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testLightArmourProtectsFromALowPowerMine

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LightArmour new. 3@3 -> LowPowerMine new }.
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerLives equals: self lives! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testLightArmourProtectsFromTheLivesTakenByAHighPowerMine

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LightArmour new. 3@3 -> HighPowerMine new } flyingBy: 0@0.
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerLives equals: self lives! !

!MineFieldTest methodsFor: 'tests - light armour' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testLightArmourProtectsOnlyOnce

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LightArmour new. 3@3 -> LowPowerMine new. 3@4 -> LowPowerMine new }.
	mineField moveUp; moveUp.

	mineField moveUp.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHeavyArmourDoesNotProtectFromAThirdLowPowerMine

	| mineField |
	mineField := self mineFieldWith: {
		3@2 -> HeavyArmour new.
		3@3 -> LowPowerMine new.
		3@4 -> LowPowerMine new.
		4@4 -> LowPowerMine new }.
	mineField moveUp; moveUp; moveUp.

	mineField moveRight.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHeavyArmourKeepsThePlayerFromFlyingOffAHighPowerMine

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> HeavyArmour new. 3@3 -> HighPowerMine new }.
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerPosition equals: 3@3! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHeavyArmourProtectsFromOnlyOneHighPowerMine

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> HeavyArmour new. 3@3 -> HighPowerMine new. 3@4 -> LowPowerMine new }.
	mineField moveUp; moveUp.

	mineField moveUp.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHeavyArmourProtectsFromTheLivesTakenByAHighPowerMine

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> HeavyArmour new. 3@3 -> HighPowerMine new }.
	mineField moveUp.

	mineField moveUp.

	self assert: mineField playerLives equals: self lives! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHeavyArmourProtectsFromTwoLowPowerMines

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> HeavyArmour new. 3@3 -> LowPowerMine new. 3@4 -> LowPowerMine new }.
	mineField moveUp.

	mineField moveUp; moveUp.

	self assert: mineField playerLives equals: self lives! !

!MineFieldTest methodsFor: 'tests - heavy armour' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testHeavyArmourUsedAgainstALowPowerMineStillProtectsFromAHighPowerMine

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> HeavyArmour new. 3@3 -> LowPowerMine new. 3@4 -> HighPowerMine new }.
	mineField moveUp; moveUp.

	mineField moveUp.

	self assert: mineField playerLives equals: self lives! !

!MineFieldTest methodsFor: 'tests - armour replacement' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPickingAHeavyArmourReplacesTheWornDamagedOne

	| mineField |
	mineField := self mineFieldWith: {
		3@2 -> HeavyArmour new.
		3@3 -> LowPowerMine new.
		3@4 -> HeavyArmour new.
		4@4 -> LowPowerMine new.
		5@4 -> LowPowerMine new }.
	mineField moveUp; moveUp; moveUp.

	mineField moveRight; moveRight.

	self assert: mineField playerLives equals: self lives! !

!MineFieldTest methodsFor: 'tests - armour replacement' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPickingAHeavyArmourReplacesTheWornLightArmour

	| mineField |
	mineField := self mineFieldWith: { 3@2 -> LightArmour new. 3@3 -> HeavyArmour new. 3@4 -> HighPowerMine new }.
	mineField moveUp; moveUp.

	mineField moveUp.

	self assert: mineField playerPosition equals: 3@4! !

!MineFieldTest methodsFor: 'tests - armour replacement' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testPickingALightArmourReplacesTheWornHeavyArmour

	| mineField |
	mineField := self mineFieldWith: {
		3@2 -> HeavyArmour new.
		3@3 -> LightArmour new.
		3@4 -> LowPowerMine new.
		4@4 -> LowPowerMine new }.
	mineField moveUp; moveUp.

	mineField moveUp; moveRight.

	self assert: mineField playerLives equals: 2! !

!MineFieldTest methodsFor: 'tests - tunnel' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testLandingOnATunnelEndTakesThePlayerToTheOtherEnd

	| mineField |
	mineField := self mineFieldWithTunnels: { Tunnel between: 3@2 and: 1@4 }.

	mineField moveUp.

	self assert: mineField playerPosition equals: 1@4! !

!MineFieldTest methodsFor: 'tests - tunnel' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testTunnelRemainsOnTheBoardAfterBeingUsed

	| mineField |
	mineField := self mineFieldWithTunnels: { Tunnel between: 3@2 and: 1@4 }.
	mineField moveUp; moveRight.

	mineField moveLeft.

	self assert: mineField playerPosition equals: 3@2! !

!MineFieldTest methodsFor: 'tests - tunnel' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testTunnelToTheTopRowWinsTheGame

	| mineField |
	mineField := self mineFieldWithTunnels: { Tunnel between: 3@2 and: 5@5 }.

	mineField moveUp.

	self assert: mineField isWon! !

!MineFieldTest methodsFor: 'tests - tunnel' stamp: 'HAW 11/Sep/2026, 6:52:21 pm (UTC)'!
testTunnelsAreBidirectional

	| mineField |
	mineField := self mineFieldWithTunnels: { Tunnel between: 1@4 and: 3@2 }.

	mineField moveUp.

	self assert: mineField playerPosition equals: 1@4! !
