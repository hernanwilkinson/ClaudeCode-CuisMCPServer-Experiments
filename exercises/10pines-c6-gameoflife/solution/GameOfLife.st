!classDefinition: #GameOfLifeView category: #GameOfLife!
ImageMorph subclass: #GameOfLifeView
	instanceVariableNames: 'game'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'GameOfLife'!

!GameOfLifeView methodsFor: 'initialization' stamp: 'HAW 6/11/2018 15:12:17'!
initializeFor: aGameOfLife

	game := aGameOfLife.
	self image: (Form extent: game boardSize * 5 depth: 2).! !


!GameOfLifeView methodsFor: 'openinig' stamp: 'HAW 6/11/2018 15:26:19'!
open

	self showBoard.
	self openInWorld.
	self startSteppingStepTime: 500! !


!GameOfLifeView methodsFor: 'showing' stamp: 'HAW 6/11/2018 15:18:42'!
showBoard

	game cellsDo: [ :aPoint | (game isAliveAt: aPoint)
		ifTrue: [ self form fillBlack: (aPoint*5 extent: 5@5) ]
		ifFalse: [ self form fillWhite: (aPoint*5 extent: 5@5) ]].
! !

!GameOfLifeView methodsFor: 'showing' stamp: 'HAW 6/11/2018 15:18:36'!
step

	game nextGeneration.
	self showBoard.
	self redrawNeeded.

! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GameOfLifeView class' category: #GameOfLife!
GameOfLifeView class
	instanceVariableNames: ''!

!GameOfLifeView class methodsFor: 'examples' stamp: 'HAW 6/11/2018 15:20:47'!
blinker

	^GameOfLife withLiveCells: { 4@2. 4@3. 4@4. 3@3. 4@3. 5@3 } withSize: 10@10! !

!GameOfLifeView class methodsFor: 'examples' stamp: 'HAW 6/11/2018 15:25:24'!
toad

	^GameOfLife withLiveCells: { 2@4. 3@4. 4@4. 3@3. 4@3. 5@3 } withSize: 10@10
	
	! !


!GameOfLifeView class methodsFor: 'open examples' stamp: 'HAW 6/11/2018 15:20:12'!
openBlinker

	^self openFor: self blinker! !

!GameOfLifeView class methodsFor: 'open examples' stamp: 'HAW 6/12/2018 06:40:45'!
openRandomOf: aSize

	"
	self openRandomOf: 100@100
	self openRandomOf: 50@50
	"
	
	^self openFor: (self randomOf: aSize)
	
	! !

!GameOfLifeView class methodsFor: 'open examples' stamp: 'HAW 6/12/2018 08:05:40'!
openToad

	^self openFor: self toad! !


!GameOfLifeView class methodsFor: 'instance creation' stamp: 'HAW 6/11/2018 15:10:57'!
for: aGameOfLife

	^self new initializeFor: aGameOfLife! !

!GameOfLifeView class methodsFor: 'instance creation' stamp: 'HAW 6/11/2018 15:19:13'!
openFor: aGameOfLife

	^(self for: aGameOfLife) open! !

!GameOfLifeView class methodsFor: 'instance creation' stamp: 'HAW 6/11/2018 15:57:40'!
randomOf: aSize

	| liveCells random |
	
	random := Random new.
	liveCells := OrderedCollection new.
	1 to: aSize x do: [ :x | 
		1 to: aSize y do: [ :y | random next >= 0.5 ifTrue: [ liveCells add: x@y ] ]].
	
	^GameOfLife withLiveCells: liveCells withSize: aSize
	
	
	
! !


!classDefinition: #GameOfLifeTest category: #GameOfLife!
TestCase subclass: #GameOfLifeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'GameOfLife'!

!GameOfLifeTest methodsFor: 'tests' stamp: 'HAW 5/11/2017 21:14:07'!
test01AliveCellWithLessThanTwoAliveNeighDies

	|gameOfLife |
	
	gameOfLife := GameOfLife withLiveCells: { 1@1 }  withSize: 3@3.
	gameOfLife nextGeneration.
	
	self assert: (gameOfLife isDeadAt: 1@1) ! !

!GameOfLifeTest methodsFor: 'tests' stamp: 'HAW 5/11/2017 21:14:14'!
test02AliveCellWithTwoAliveNeighStaysAlive

	|gameOfLife |
	
	gameOfLife := GameOfLife withLiveCells: { 1@1. 2@0. 1@0. }  withSize: 3@3.
	gameOfLife nextGeneration.
	
	self deny: (gameOfLife isDeadAt: 1@1) ! !

!GameOfLifeTest methodsFor: 'tests' stamp: 'HAW 5/11/2017 21:14:19'!
test03AliveCellWithThreeAliveNeighStaysAlive

	|gameOfLife |
	
	gameOfLife := GameOfLife withLiveCells: { 1@1. 2@0. 1@0. 1@2. }  withSize: 3@3.
	gameOfLife nextGeneration.
	
	self deny: (gameOfLife isDeadAt: 1@1) ! !

!GameOfLifeTest methodsFor: 'tests' stamp: 'HAW 5/11/2017 21:14:25'!
test04AliveCellWithMoreThanThreeAliveNeighDies

	|gameOfLife |
	
	gameOfLife := GameOfLife withLiveCells: { 1@1. 2@0. 1@0. 1@2. 0@1 } withSize: 3@3.
	gameOfLife nextGeneration.
	
	self assert: (gameOfLife isDeadAt: 1@1) ! !

!GameOfLifeTest methodsFor: 'tests' stamp: 'HAW 5/11/2017 21:01:13'!
test05DeadCellWithThreeAliveNeighResurects

	|gameOfLife |
	
	gameOfLife := GameOfLife withLiveCells: { 2@0. 1@0. 0@0 } withSize: 3@3.
	gameOfLife nextGeneration.
	
	self deny: (gameOfLife isDeadAt: 1@1) ! !

!GameOfLifeTest methodsFor: 'tests' stamp: 'HAW 5/11/2017 20:59:58'!
test06CreateCellOutsideBounds

	self 
		should: [ GameOfLife withLiveCells: { 2@0. 1@0. 1@4 } withSize: 3@3 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: 'celda fuera de rango' ]! !


!classDefinition: #GameOfLife category: #GameOfLife!
Object subclass: #GameOfLife
	instanceVariableNames: 'aliveCells size'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'GameOfLife'!

!GameOfLife methodsFor: 'initialization' stamp: 'HAW 6/12/2018 06:33:37'!
initializeWith: aCollectionOfAliveCells withSize: aSize

	size := aSize.
	(aCollectionOfAliveCells allSatisfy: [:aCell |
		(aCell x between: 0 and: size x) and: [ aCell y between: 0 and: size y]]) ifFalse: [ self error: 'celda fuera de rango' ].
	
	aliveCells := aCollectionOfAliveCells asSet.
! !


!GameOfLife methodsFor: 'next generation' stamp: 'HAW 9/8/2017 14:15:27'!
nextGeneration
	
	aliveCells := self cellsToSurviveOnNextGeneration union: self cellsToResurectOnNextGeneration! !


!GameOfLife methodsFor: 'cells' stamp: 'HAW 6/11/2018 12:05:57'!
cellsDo: aBlock
	
	0 to: size x do: [ :x | 0 to: size y do: [ :y | aBlock value: x@y ]]! !

!GameOfLife methodsFor: 'cells' stamp: 'HAW 6/12/2018 14:06:46'!
cellsToResurectOnNextGeneration

	| cellsToResurect |
	
	cellsToResurect := Set new.
	self deadCellsDo: [ :aDeadCell | (self hasToResurrect: aDeadCell) ifTrue: [ cellsToResurect add: aDeadCell]].
	
	^cellsToResurect ! !

!GameOfLife methodsFor: 'cells' stamp: 'HAW 9/8/2017 14:14:50'!
cellsToSurviveOnNextGeneration
		
	^aliveCells select: [ :aCell | self hasToSurvive: aCell ]! !

!GameOfLife methodsFor: 'cells' stamp: 'HAW 6/12/2018 14:07:53'!
deadCellsDo: aBlock
	
	self cellsDo: [ :aPosition | (aliveCells includes: aPosition ) not ifTrue: [ aBlock value: aPosition ]].
! !

!GameOfLife methodsFor: 'cells' stamp: 'HAW 5/10/2017 10:29:35'!
numberOfAliveNeighboursOf: aCell

	^(aCell eightNeighbors intersection: aliveCells) size! !


!GameOfLife methodsFor: 'testing' stamp: 'HAW 6/11/2018 15:12:41'!
boardSize

	^size ! !

!GameOfLife methodsFor: 'testing' stamp: 'HAW 5/11/2017 21:11:17'!
hasToResurrect: aCell

	^(self numberOfAliveNeighboursOf: aCell) = 3! !

!GameOfLife methodsFor: 'testing' stamp: 'HAW 5/11/2017 19:57:05'!
hasToSurvive: aCell
	
	| numberOfAliveNeighbours|
	
	numberOfAliveNeighbours := self numberOfAliveNeighboursOf: aCell.
	
	^numberOfAliveNeighbours = 2 or:  [numberOfAliveNeighbours = 3]! !

!GameOfLife methodsFor: 'testing' stamp: 'HAW 6/11/2018 12:06:29'!
isAliveAt: aCell

	^aliveCells includes: aCell! !

!GameOfLife methodsFor: 'testing' stamp: 'HAW 5/10/2017 10:28:24'!
isDeadAt: aCell

	^(aliveCells includes: aCell) not! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GameOfLife class' category: #GameOfLife!
GameOfLife class
	instanceVariableNames: ''!

!GameOfLife class methodsFor: 'as yet unclassified' stamp: 'HAW 5/11/2017 20:38:14'!
withLiveCells: aCollectionOfAliveCells withSize: aPoint 
	
	^self new initializeWith: aCollectionOfAliveCells withSize: aPoint ! !
