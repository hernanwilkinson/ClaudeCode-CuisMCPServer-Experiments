!classDefinition: #OrchardGameTest category: #'OrchardHarvester'!
TestCase subclass: #OrchardGameTest
	instanceVariableNames: 'nextIntegers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OrchardHarvester'!

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test01HarvesterStartsMovingLeft

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#-h--#'
'######').

	game := OrchardGame on: board randomizingWith: self.
	game tick.

	self
		assert: game stringRepresentationOfBoard
		equals: #(
'######'
'#-RW-#'
'#h=--#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test02AddsOnePointWhenCollectingSmallFruit

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#-h--#'
'######').

	game := OrchardGame on: board randomizingWith: self.
	game tick.

	self assert: 1 equals: game points.
	self
		assert: game stringRepresentationOfBoard
		equals: #(
'######'
'#-RW-#'
'#h=--#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test03AddsTwoPointsWhenCollectingLargeFruit

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#*h--#'
'######').

	game := OrchardGame on: board randomizingWith: self.
	game tick.

	self assert: 2 equals: game points.
	self
		assert: game stringRepresentationOfBoard
		equals: #(
'######'
'#-RW-#'
'#h=--#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test04GameStartsWithCeroPoints

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#*h--#'
'######').

	game := OrchardGame on: board randomizingWith: self.
	self assert: 0 equals: game points! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test05HarvesterCannotMoveIntoHedge

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#h---#'
'######').

	game := OrchardGame on: board randomizingWith: self.
	game tick.
	
	self assert: 0 equals: game points.
	self assert: game stringRepresentationOfBoard equals: #(
'######'
'#-RW-#'
'#h---#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test06HarvesterCanMoveIntoBareGround

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#=h--#'
'######').

	game := OrchardGame on: board randomizingWith: self.
	game tick.
	
	self assert: 0 equals: game points.
	self assert: game stringRepresentationOfBoard equals: #(
'######'
'#-RW-#'
'#h=--#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test07HarvesterMovesCorrecltyMoreThanOneTick

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#--h-#'
'######').

	game := OrchardGame on: board randomizingWith: self.
	game tick; tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'######'
'#-RW-#'
'#h==-#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test08HarvesterCanMoveRight

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#--h-#'
'######').

	game := OrchardGame on: board randomizingWith: self.
	game startMovingHarvesterRight.
	game tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'######'
'#-RW-#'
'#--=h#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test09HarvesterCanMoveUp

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#h---#'
'######').

	game := OrchardGame on: board randomizingWith: self.
	game startMovingHarvesterUp.
	game tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'######'
'#hRW-#'
'#=---#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test10HarvesterCanMoveDown

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#hRW-#'
'#----#'
'######').

	game := OrchardGame on: board randomizingWith: self.
	game startMovingHarvesterDown.
	game tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'######'
'#=RW-#'
'#h---#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test11RookStartsMovingLeftOnFourthTick

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#-h--#'
'######').

	game := OrchardGame on: board randomizingWith: self.
	3 timesRepeat: [game tick].
	game tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'######'
'#R=W-#'
'#h=--#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test12WrenStartsMovingRightOnFifthTick

	| board game |

	board := StringOrchardBoard representedAs:#(
'#######'
'#--RW-#'
'#--h--#'
'#######').

	game := OrchardGame on: board randomizingWith: self.
	4 timesRepeat: [game tick].
	game tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'#######'
'#R-==W#'
'#h==--#'
'#######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test13DroneLeavePreviousElementWhenMoving

	| board game |

	board := StringOrchardBoard representedAs:#(
'#######'
'#--RW-#'
'#--h--#'
'#######').

	game := OrchardGame on: board randomizingWith: self.
	4 timesRepeat: [game tick].
	game tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'#######'
'#R-==W#'
'#h==--#'
'#######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test14DroneCanCatchHarvester

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#h---#'
'######').

	game := OrchardGame on: board randomizingWith: self.
	game startMovingHarvesterUp.
	3 timesRepeat: [game tick].
	game tick.
	
	self assert: 2 equals: game harvesterLives.
	self assert: game stringRepresentationOfBoard equals: #(
'######'
'#R=W-#'
'#h---#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test15DroneKeepsLargeFruit

	| board game |

	board := StringOrchardBoard representedAs:#(
'#######'
'#-*RW-#'
'#-h---#'
'#######').

	game := OrchardGame on: board randomizingWith: self.
	4 timesRepeat: [game tick].
	game tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'#######'
'#R*==W#'
'#h=---#'
'#######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:49:54'!
test16DroneKeepsBareGround

	| board game |

	board := StringOrchardBoard representedAs:#(
'#######'
'#-=RW-#'
'#-h---#'
'#######').

	game := OrchardGame on: board randomizingWith: self.
	4 timesRepeat: [game tick].
	game tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'#######'
'#R===W#'
'#h=---#'
'#######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:54:02'!
test17DroneMovesRightWhenHitsAHedgeAndRandomDisplacmentSelectorsIs5

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#h---#'
'######').

	nextIntegers := ReadStream on: #(5).
	game := OrchardGame on: board randomizingWith: self.
	4 timesRepeat: [game tick].
	game tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'######'
'#-R=W#'
'#h---#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:58:47'!
test18DroneMovesDownWhenHitsAHedgeAndRandomDisplacmentSelectorsIs4

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#---h#'
'######').

	nextIntegers := ReadStream on: #(4).
	game := OrchardGame on: board randomizingWith: self.
	game startMovingHarvesterRight.
	4 timesRepeat: [game tick].
	game tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'######'
'#-==W#'
'#R--h#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 20:59:48'!
test19DroneMovesUpWhenHitsAHedgeAndRandomDisplacmentSelectorsIs3

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#---h#'
'#-RW-#'
'######').

	nextIntegers := ReadStream on: #(3).
	game := OrchardGame on: board randomizingWith: self.
	game startMovingHarvesterRight.
	4 timesRepeat: [game tick].
	game tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'######'
'#R--h#'
'#-==W#'
'######').! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/28/2024 21:06:19'!
test20DroneMovesLeftWhenHitsAHedgeAndRandomDisplacmentSelectorsIs2AndsDisplacementWhen1

	| board game |

	board := StringOrchardBoard representedAs:#(
'#####'
'#--h#'
'#RW-#'
'#####').

	nextIntegers := ReadStream on: #(1 1 1 2).
	game := OrchardGame on: board randomizingWith: self.
	game startMovingHarvesterRight.
	5 timesRepeat: [game tick].
	game tick.
	
	self assert: game stringRepresentationOfBoard equals: #(
'#####'
'#--h#'
'#RW-#'
'#####').
! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/29/2024 15:27:46'!
test21GameIsOverWhenHarvesterHasNoLives

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-R*W#'
'#-h--#'
'######').

	nextIntegers := ReadStream on: #(4 5 1 1 1).
	game := OrchardGame on: board randomizingWith: self.
	game tick.
	game startMovingHarvesterUp.
	7 timesRepeat: [game tick].
	game startMovingHarvesterRight.
	6 timesRepeat: [game tick].

	self assert: game isOver.
	self assert: 0 equals: game harvesterLives.
	self assert: game stringRepresentationOfBoard equals: #(
'######'
'#==*W#'
'#=h=R#'
'######').
! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/29/2024 15:19:39'!
test22GameIsOverWhenThereNoMoreFruits

	| board game |

	board := StringOrchardBoard representedAs:#(
'#####'
'#=RW#'
'#*-h#'
'#####').

	nextIntegers := ReadStream on: #().
	game := OrchardGame on: board randomizingWith: self.
	2 timesRepeat: [game tick].
	
	self assert: game isOver.
	self assert: 3 equals: game harvesterLives.
! !

!OrchardGameTest methodsFor: 'tests' stamp: 'HAW 11/29/2024 15:32:20'!
test23CannotPlayIfGameIsOver

	| board game |

	board := StringOrchardBoard representedAs:#(
'#####'
'#=RW#'
'#*-h#'
'#####').

	nextIntegers := ReadStream on: #().
	game := OrchardGame on: board randomizingWith: self.
	2 timesRepeat: [game tick].
	
	self assert: game isOver.
	
	self assertCannotDo: [ game tick ] in: game.
	self assertCannotDo: [ game startMovingHarvesterDown ] in: game.
	self assertCannotDo: [ game startMovingHarvesterUp ] in: game.
	self assertCannotDo: [ game startMovingHarvesterRight ] in: game.
	self assertCannotDo: [ game startMovingHarvesterLeft ] in: game.
! !

!OrchardGameTest methodsFor: 'tests' stamp: 'TRN 12/3/2024 01:40:03'!
test24GameIsNotOverWhenDronesHoverOverFruits

	| board game |

	board := StringOrchardBoard representedAs:#(
'#####'
'#-RW#'
'#*-h#'
'#####').

	nextIntegers := ReadStream on: #().
	game := OrchardGame on: board randomizingWith: self.
	4 timesRepeat: [game tick].
	
	self deny: game isOver.
	self assert: game stringRepresentationOfBoard equals:#(
'#####'
'#R=W#'
'#h==#'
'#####') .
! !


!OrchardGameTest methodsFor: 'random simulation' stamp: 'HAW 11/29/2024 16:04:52'!
nextInteger: aLimit

	self assert: 5 equals: aLimit.
	self deny: nextIntegers atEnd.
	
	^nextIntegers next! !


!OrchardGameTest methodsFor: 'assertions' stamp: 'HAW 11/29/2024 15:31:53'!
assertCannotDo: aBlock in: game 

	^ self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: game gameIsOverErrorDescription equals: anError messageText.
			self assert: game stringRepresentationOfBoard equals:#(
'#####'
'#=RW#'
'#h==#'
'#####'). ]! !


!classDefinition: #StringOrchardBoardTest category: #'OrchardHarvester'!
TestCase subclass: #StringOrchardBoardTest
	instanceVariableNames: 'visitedElements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OrchardHarvester'!

!StringOrchardBoardTest methodsFor: 'tests' stamp: 'HAW 11/22/2024 10:48:10'!
test01CannotCreateABoardWithoutTheHarvester

	self 
		should: [ StringOrchardBoard representedAs: #('RW') ]
		raise: Error - MessageNotUnderstood 
		withMessageText: (StringOrchardBoard characterIsMissingErrorDescriptionFor: StringOrchardBoard harvesterName)
		! !

!StringOrchardBoardTest methodsFor: 'tests' stamp: 'HAW 11/22/2024 10:48:10'!
test02CannotCreateABoardWithMoreThanOneHarvester

	self 
		should: [ StringOrchardBoard representedAs: #('RWhh') ]
		raise: Error - MessageNotUnderstood 
		withMessageText: (StringOrchardBoard shouldBeUniqueErrorDescriptionFor: StringOrchardBoard harvesterName)
		! !

!StringOrchardBoardTest methodsFor: 'tests' stamp: 'HAW 11/22/2024 10:48:10'!
test03CannotCreateABoardWithoutRook

	self 
		should: [ StringOrchardBoard representedAs: #('hW') ]
		raise: Error - MessageNotUnderstood 
		withMessageText: (StringOrchardBoard characterIsMissingErrorDescriptionFor: StringOrchardBoard rookName)! !

!StringOrchardBoardTest methodsFor: 'tests' stamp: 'HAW 11/22/2024 14:32:55'!
test04CannotCreateABoardWithMoreThanOneRook

	self 
		should: [ StringOrchardBoard representedAs: #('hRRW') ]
		raise: Error - MessageNotUnderstood 
		withMessageText: (StringOrchardBoard shouldBeUniqueErrorDescriptionFor: StringOrchardBoard rookName)! !

!StringOrchardBoardTest methodsFor: 'tests' stamp: 'HAW 11/22/2024 10:50:33'!
test05CannotCreateABoardWithoutWren

	self 
		should: [ StringOrchardBoard representedAs: #('hR') ]
		raise: Error - MessageNotUnderstood 
		withMessageText: (StringOrchardBoard characterIsMissingErrorDescriptionFor: StringOrchardBoard wrenName)! !

!StringOrchardBoardTest methodsFor: 'tests' stamp: 'HAW 11/22/2024 10:50:40'!
test06CannotCreateABoardWithMoreThanOneWren

	self 
		should: [ StringOrchardBoard representedAs: #('hRWW') ]
		raise: Error - MessageNotUnderstood 
		withMessageText: (StringOrchardBoard shouldBeUniqueErrorDescriptionFor: StringOrchardBoard wrenName)! !

!StringOrchardBoardTest methodsFor: 'tests' stamp: 'HAW 11/22/2024 10:50:49'!
test07AllRowsHaveSameSize

	self 
		should: [ StringOrchardBoard representedAs: #('hRW' '') ]
		raise: Error - MessageNotUnderstood 
		withMessageText: StringOrchardBoard rowsMustHaveSameSizeErrorDescription! !

!StringOrchardBoardTest methodsFor: 'tests' stamp: 'HAW 11/22/2024 10:51:00'!
test08VisitElementsWithRightPosition

	| board |
	
	visitedElements := Dictionary new.
	
	board := StringOrchardBoard representedAs: #('hRW#-*=').
	board visitElementsWith: self.
	
	self assert: (visitedElements at: #harvester) equals: 1@1.
	self assert: (visitedElements at: #rook) equals: 2@1.
	self assert: (visitedElements at: #wren) equals: 3@1.
	self assert: (visitedElements at: #hedge) equals: 4@1.
	self assert: (visitedElements at: #smallFruit) equals: 5@1.
	self assert: (visitedElements at: #largeFruit) equals: 6@1.
	self assert: (visitedElements at: #bareGround) equals: 7@1.
	self assert: visitedElements size equals: 7
	
	
	! !

!StringOrchardBoardTest methodsFor: 'tests' stamp: 'HAW 11/22/2024 10:51:11'!
test09InvalidCharactersAreNotAllowed

	self 
		should: [ StringOrchardBoard representedAs: #('hRWx') ]
		raise: Error - MessageNotUnderstood 
		withMessageText: (StringOrchardBoard notAllowCharaterErrorDescriptionFor: $x)! !

!StringOrchardBoardTest methodsFor: 'tests' stamp: 'HAW 11/22/2024 16:42:59'!
test10BoardTranslationExample
"
	MAKE THIS TEST PASS BEFORE STARTING: it fails because at the harvester's position (h) it puts a string instead of #harvester
"
	| board translator |
	
	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#-h=-#'
'######').

	translator := BoardTranslatorExample on: board.
	
	self assert: translator stringRepresentationOfBoard equals: #(
'######'
'#-RW-#'
'#-h=-#'
'######').
! !


!StringOrchardBoardTest methodsFor: 'visiting board elements' stamp: 'HAW 11/20/2024 17:16:25'!
visitLargeFruitAt: position 
	
	visitedElements at: #largeFruit put: position ! !

!StringOrchardBoardTest methodsFor: 'visiting board elements' stamp: 'HAW 11/20/2024 17:15:27'!
visitRookAt: position 
	
	visitedElements at: #rook put: position ! !

!StringOrchardBoardTest methodsFor: 'visiting board elements' stamp: 'HAW 11/20/2024 17:15:56'!
visitWrenAt: position 
	
	visitedElements at: #wren put: position ! !

!StringOrchardBoardTest methodsFor: 'visiting board elements' stamp: 'HAW 11/20/2024 17:15:10'!
visitHarvesterAt: position 
	
	visitedElements at: #harvester put: position ! !

!StringOrchardBoardTest methodsFor: 'visiting board elements' stamp: 'HAW 11/20/2024 17:16:14'!
visitSmallFruitAt: position 
	
	visitedElements at: #smallFruit put: position ! !

!StringOrchardBoardTest methodsFor: 'visiting board elements' stamp: 'HAW 11/20/2024 17:17:12'!
visitBareGroundAt: position 
	
	visitedElements at: #bareGround put: position ! !

!StringOrchardBoardTest methodsFor: 'visiting board elements' stamp: 'HAW 11/20/2024 17:16:05'!
visitHedgeAt: position 
	
	visitedElements at: #hedge put: position ! !


!classDefinition: #BoardTranslatorExample category: #'OrchardHarvester'!
Object subclass: #BoardTranslatorExample
	instanceVariableNames: 'board boardExtent'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OrchardHarvester'!

!BoardTranslatorExample methodsFor: 'string representation' stamp: 'HAW 11/22/2024 14:38:51'!
characterRepresentationOf: anElement
	
	(anElement = #smallFruit) ifTrue: [ ^StringOrchardBoard smallFruitCharacter ].
	(anElement = #largeFruit) ifTrue: [ ^StringOrchardBoard largeFruitCharacter ].
	(anElement = #rook) ifTrue: [ ^StringOrchardBoard rookCharacter ].
	(anElement = #wren) ifTrue: [ ^StringOrchardBoard wrenCharacter ].
	(anElement = #bareGround) ifTrue: [ ^StringOrchardBoard bareGroundCharacter ].
	(anElement = #hedge) ifTrue: [ ^StringOrchardBoard hedgeCharacter ].
	(anElement = #harvester) ifTrue: [ ^StringOrchardBoard harvesterCharacter ].
	
	self error: 'Unknown orchard element type'! !

!BoardTranslatorExample methodsFor: 'string representation' stamp: 'HAW 11/22/2024 14:45:23'!
representationOfRowNumber: y
	
	^String streamContents: [ :rowStream |
		1 to: boardExtent x do: [ :x |
			rowStream nextPut: (self characterRepresentationOf: (board at: x@y))]]! !

!BoardTranslatorExample methodsFor: 'string representation' stamp: 'LL 11/22/2024 10:44:29'!
stringRepresentationOfBoard
	
	| rows |
	
	rows := OrderedCollection new.

	1 to: boardExtent y do: [ :y | 
		rows add: (self representationOfRowNumber: y) ].
	
	^rows asArray! !


!BoardTranslatorExample methodsFor: 'string board visiting' stamp: 'LL 11/22/2024 11:42:38'!
visitLargeFruitAt: aPosition 
	
	board at: aPosition put: #largeFruit! !

!BoardTranslatorExample methodsFor: 'string board visiting' stamp: 'LL 11/22/2024 11:40:34'!
visitRookAt: aPosition 
	
	board at: aPosition put: #rook! !

!BoardTranslatorExample methodsFor: 'string board visiting' stamp: 'LL 11/22/2024 11:43:04'!
visitWrenAt: aPosition 
	
	board at: aPosition put: #wren! !

!BoardTranslatorExample methodsFor: 'string board visiting' stamp: 'HAW 11/28/2024 19:24:18'!
visitHarvesterAt: aPosition 
	
	board at: aPosition put: #harvester! !

!BoardTranslatorExample methodsFor: 'string board visiting' stamp: 'LL 11/22/2024 11:43:22'!
visitSmallFruitAt: aPosition 
	
	board at: aPosition put: #smallFruit! !

!BoardTranslatorExample methodsFor: 'string board visiting' stamp: 'LL 11/22/2024 11:43:30'!
visitBareGroundAt: aPosition

	board at: aPosition put: #bareGround
	
	! !

!BoardTranslatorExample methodsFor: 'string board visiting' stamp: 'LL 11/22/2024 11:43:35'!
visitHedgeAt: aPosition 
	
	board at: aPosition put: #hedge! !


!BoardTranslatorExample methodsFor: 'initialization' stamp: 'HAW 11/22/2024 14:43:18'!
initializeOn: aBoard

	board := Dictionary new.
	boardExtent := aBoard extent.
	aBoard visitElementsWith: self! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'BoardTranslatorExample class' category: #'OrchardHarvester'!
BoardTranslatorExample class
	instanceVariableNames: ''!

!BoardTranslatorExample class methodsFor: 'instance creation' stamp: 'LL 11/22/2024 10:37:38'!
on: aBoard

	^self new initializeOn: aBoard! !


!classDefinition: #OrchardElement category: #'OrchardHarvester'!
Object subclass: #OrchardElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OrchardHarvester'!

!OrchardElement methodsFor: 'testing' stamp: 'HAW 12/3/2024 09:27:25'!
isOnFruit

	^false! !

!OrchardElement methodsFor: 'testing' stamp: 'HAW 11/29/2024 15:22:08'!
isFruit

	^false! !


!OrchardElement methodsFor: 'drone moving' stamp: 'HAW 11/29/2024 15:45:24'!
drone: aDrone wantsToMoveIntoIn: anOrchardGame

	self subclassResponsibility! !


!OrchardElement methodsFor: 'representation' stamp: 'HAW 11/29/2024 15:45:04'!
characterRepresentation

	self subclassResponsibility! !


!OrchardElement methodsFor: 'harvester moving' stamp: 'HAW 11/29/2024 15:45:29'!
harvesterWantsToMoveIntoIn: anOrchardGame

	self subclassResponsibility! !


!classDefinition: #OrchardActor category: #'OrchardHarvester'!
OrchardElement subclass: #OrchardActor
	instanceVariableNames: 'position displacement'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OrchardHarvester'!

!OrchardActor methodsFor: 'moving' stamp: 'HAW 11/28/2024 20:19:11'!
startMovingDown
	
	displacement := 0@1! !

!OrchardActor methodsFor: 'moving' stamp: 'HAW 11/28/2024 20:19:15'!
startMovingLeft

	^ displacement := -1@0! !

!OrchardActor methodsFor: 'moving' stamp: 'HAW 11/28/2024 20:19:19'!
startMovingRight
	
	displacement := 1@0! !

!OrchardActor methodsFor: 'moving' stamp: 'HAW 11/28/2024 20:19:24'!
startMovingUp
	
	displacement := 0@-1! !


!OrchardActor methodsFor: 'representation' stamp: 'HAW 11/28/2024 20:18:28'!
characterRepresentation

	self subclassResponsibility! !


!OrchardActor methodsFor: 'position' stamp: 'HAW 11/28/2024 20:19:01'!
nextPosition

	^ self position + displacement! !

!OrchardActor methodsFor: 'position' stamp: 'HAW 11/28/2024 20:19:06'!
position
	
	^position! !


!classDefinition: #Drone category: #'OrchardHarvester'!
OrchardActor subclass: #Drone
	instanceVariableNames: 'previousElement charRepresentation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OrchardHarvester'!

!Drone methodsFor: 'moving' stamp: 'HAW 11/28/2024 20:41:24'!
moveWithPreviousElement: aPreviousElement

	previousElement := aPreviousElement.
	^position := self nextPosition ! !

!Drone methodsFor: 'moving' stamp: 'HAW 11/28/2024 20:28:29'!
previousElement
	
	^previousElement! !


!Drone methodsFor: 'initialization' stamp: 'HAW 11/29/2024 15:37:57'!
initializeLocatedAt: aPosition representedWith: aCharRepresentation 
	
	position := aPosition.
	charRepresentation := aCharRepresentation.
	previousElement := BareGround new.
! !


!Drone methodsFor: 'representation' stamp: 'HAW 11/29/2024 15:37:10'!
characterRepresentation
	
	^charRepresentation ! !


!Drone methodsFor: 'testing' stamp: 'HAW 12/3/2024 09:30:11'!
isOnFruit

	^previousElement isFruit ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Drone class' category: #'OrchardHarvester'!
Drone class
	instanceVariableNames: ''!

!Drone class methodsFor: 'instance creation' stamp: 'HAW 11/29/2024 15:36:52'!
rookLocatedAt: aPosition

	^(self locatedAt: aPosition representedWith: StringOrchardBoard rookCharacter)
		startMovingLeft;
		yourself ! !

!Drone class methodsFor: 'instance creation' stamp: 'HAW 11/29/2024 15:38:25'!
wrenLocatedAt: aPosition

	^(self locatedAt: aPosition representedWith: StringOrchardBoard wrenCharacter)
		startMovingRight;
		yourself ! !

!Drone class methodsFor: 'instance creation' stamp: 'HAW 11/29/2024 15:36:22'!
locatedAt: aPosition representedWith: aCharRepresentation 
	
	^self new initializeLocatedAt: aPosition representedWith: aCharRepresentation ! !


!classDefinition: #Harvester category: #'OrchardHarvester'!
OrchardActor subclass: #Harvester
	instanceVariableNames: 'lives initialPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OrchardHarvester'!

!Harvester methodsFor: 'initialization' stamp: 'HAW 11/28/2024 20:40:33'!
initializeLocatedAt: anInitialPosition 
	
	position := initialPosition := anInitialPosition.
	lives := 3.
	
	self startMovingLeft ! !


!Harvester methodsFor: 'moving' stamp: 'HAW 11/29/2024 15:11:14'!
die
	
	lives := lives - 1.
	position := initialPosition.
	
	self startMovingLeft ! !

!Harvester methodsFor: 'moving' stamp: 'HAW 11/29/2024 15:10:00'!
lives
	
	^lives ! !

!Harvester methodsFor: 'moving' stamp: 'HAW 11/28/2024 20:28:41'!
move

	^ position := self nextPosition! !


!Harvester methodsFor: 'representation' stamp: 'HAW 11/28/2024 19:49:45'!
characterRepresentation

	^StringOrchardBoard harvesterCharacter ! !


!Harvester methodsFor: 'drone moving' stamp: 'HAW 11/28/2024 20:38:22'!
drone: aDrone wantsToMoveIntoIn: anOrchardGame 
	
	anOrchardGame droneWantsToMoveIntoHarvester: aDrone! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Harvester class' category: #'OrchardHarvester'!
Harvester class
	instanceVariableNames: ''!

!Harvester class methodsFor: 'instance creation' stamp: 'HAW 11/29/2024 15:54:16'!
locatedAt: anInitialPosition 
	
	^self new initializeLocatedAt: anInitialPosition ! !


!classDefinition: #Fruit category: #'OrchardHarvester'!
OrchardElement subclass: #Fruit
	instanceVariableNames: 'pointsToAdd charRepresentation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OrchardHarvester'!

!Fruit methodsFor: 'initialization' stamp: 'HAW 11/29/2024 15:41:04'!
initializePointsToAddWhenCollected: aPointsToAdd charRepresentation: aCharRepresentation 
	
	pointsToAdd := aPointsToAdd.
	charRepresentation := aCharRepresentation.! !


!Fruit methodsFor: 'points' stamp: 'HAW 11/29/2024 15:42:05'!
pointsToAdd
	
	^pointsToAdd! !


!Fruit methodsFor: 'representation' stamp: 'HAW 11/29/2024 15:43:10'!
characterRepresentation
	
	^charRepresentation ! !


!Fruit methodsFor: 'drone moving' stamp: 'HAW 11/29/2024 15:42:41'!
drone: aDrone wantsToMoveIntoIn: anOrchardGame 
	
	anOrchardGame drone: aDrone wantsToMoveIntoFruit: self! !


!Fruit methodsFor: 'testing' stamp: 'HAW 11/29/2024 15:43:33'!
isFruit
	
	^true! !


!Fruit methodsFor: 'harvester moving' stamp: 'HAW 11/29/2024 15:41:31'!
harvesterWantsToMoveIntoIn: anOrchardGame 
	
	anOrchardGame harvesterWantsToMoveIntoFruit: self! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Fruit class' category: #'OrchardHarvester'!
Fruit class
	instanceVariableNames: ''!

!Fruit class methodsFor: 'instance creation' stamp: 'HAW 11/29/2024 15:40:34'!
largeFruit
	
	^self pointsToAddWhenCollected: 2 charRepresentation: StringOrchardBoard largeFruitCharacter ! !

!Fruit class methodsFor: 'instance creation' stamp: 'HAW 11/29/2024 15:40:58'!
pointsToAddWhenCollected: aPointsToAdd charRepresentation: aCharRepresentation 
	
	^self new initializePointsToAddWhenCollected: aPointsToAdd charRepresentation: aCharRepresentation ! !

!Fruit class methodsFor: 'instance creation' stamp: 'HAW 11/29/2024 15:44:02'!
smallFruit
	
	^self pointsToAddWhenCollected: 1 charRepresentation: StringOrchardBoard smallFruitCharacter ! !


!classDefinition: #BareGround category: #'OrchardHarvester'!
OrchardElement subclass: #BareGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OrchardHarvester'!

!BareGround methodsFor: 'representation' stamp: 'HAW 11/28/2024 19:58:39'!
characterRepresentation
	
	^StringOrchardBoard bareGroundCharacter ! !


!BareGround methodsFor: 'drone moving' stamp: 'HAW 11/28/2024 20:47:06'!
drone: aDrone wantsToMoveIntoIn: anOrchardGame 
	
	anOrchardGame drone: aDrone wantsToMoveIntoBareGround: self! !


!BareGround methodsFor: 'harvester moving' stamp: 'HAW 11/28/2024 19:57:57'!
harvesterWantsToMoveIntoIn: anOrchardGame 
	
	anOrchardGame harvesterWantsToMoveIntoBareGround
	! !


!classDefinition: #Hedge category: #'OrchardHarvester'!
OrchardElement subclass: #Hedge
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OrchardHarvester'!

!Hedge methodsFor: 'representation' stamp: 'HAW 11/28/2024 19:53:40'!
characterRepresentation
	
	^StringOrchardBoard hedgeCharacter ! !


!Hedge methodsFor: 'drone moving' stamp: 'HAW 11/28/2024 20:50:23'!
drone: aDrone wantsToMoveIntoIn: anOrchardGame 
	
	anOrchardGame drone: aDrone wantsToMoveIntoHedge: self ! !


!Hedge methodsFor: 'harvester moving' stamp: 'HAW 11/28/2024 19:54:25'!
harvesterWantsToMoveIntoIn: anOrchardGame 
	
	anOrchardGame harvesterWantsToMoveIntoHedge! !


!classDefinition: #OrchardGame category: #'OrchardHarvester'!
Object subclass: #OrchardGame
	instanceVariableNames: 'board boardExtent points harvester ticks rook wren random'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OrchardHarvester'!

!OrchardGame methodsFor: 'string representation' stamp: 'HAW 11/29/2024 16:06:41'!
representationOfRowNumber: y
	
	^String streamContents: [ :rowStream |
		1 to: boardExtent x do: [ :x |
			rowStream nextPut: (board at: x@y) characterRepresentation ]]! !

!OrchardGame methodsFor: 'string representation' stamp: 'HAW 11/28/2024 19:28:59'!
stringRepresentationOfBoard
	
	| rows |
	
	rows := OrderedCollection new.

	1 to: boardExtent y do: [ :y | 
		rows add: (self representationOfRowNumber: y) ].
	
	^rows asArray! !


!OrchardGame methodsFor: 'string board visiting' stamp: 'HAW 11/29/2024 15:39:47'!
visitLargeFruitAt: aPosition 
	
	board at: aPosition put: Fruit largeFruit! !

!OrchardGame methodsFor: 'string board visiting' stamp: 'HAW 11/29/2024 15:35:55'!
visitRookAt: aPosition 
	
	rook := Drone rookLocatedAt: aPosition.
	board at: aPosition put: rook.! !

!OrchardGame methodsFor: 'string board visiting' stamp: 'HAW 11/29/2024 15:38:34'!
visitWrenAt: aPosition 
	
	wren := Drone wrenLocatedAt: aPosition.
	board at: aPosition put: wren! !

!OrchardGame methodsFor: 'string board visiting' stamp: 'HAW 11/28/2024 19:46:12'!
visitHarvesterAt: aPosition 
	
	harvester := Harvester locatedAt: aPosition.
	board at: aPosition put: harvester! !

!OrchardGame methodsFor: 'string board visiting' stamp: 'HAW 11/29/2024 15:43:50'!
visitSmallFruitAt: aPosition 
	
	board at: aPosition put: Fruit smallFruit! !

!OrchardGame methodsFor: 'string board visiting' stamp: 'HAW 11/28/2024 19:57:40'!
visitBareGroundAt: aPosition

	board at: aPosition put: BareGround new
	
	! !

!OrchardGame methodsFor: 'string board visiting' stamp: 'HAW 11/28/2024 19:52:39'!
visitHedgeAt: aPosition 
	
	board at: aPosition put: Hedge new! !


!OrchardGame methodsFor: 'initialization' stamp: 'HAW 11/29/2024 15:32:58'!
initializeOn: aBoard randomizingWith: aRandom 

	board := Dictionary new.
	boardExtent := aBoard extent.
	aBoard visitElementsWith: self.
	
	points := 0.
	ticks := 0.
	random := aRandom.
	
	self startMovingHarvesterLeft ! !


!OrchardGame methodsFor: 'lives/points' stamp: 'HAW 11/28/2024 20:32:44'!
harvesterLives
	
	^harvester lives! !

!OrchardGame methodsFor: 'lives/points' stamp: 'HAW 11/28/2024 19:36:19'!
points
	
	^points! !


!OrchardGame methodsFor: 'assertions' stamp: 'HAW 11/29/2024 15:29:16'!
assertGameIsNotOver

	^ self isOver ifTrue: [ self error: self gameIsOverErrorDescription ]! !

!OrchardGame methodsFor: 'assertions' stamp: 'HAW 11/29/2024 15:25:53'!
gameIsOverErrorDescription
	
	^'Game is over'! !


!OrchardGame methodsFor: 'drone moving' stamp: 'HAW 11/29/2024 15:43:00'!
drone: aDrone wantsToMoveIntoFruit: aFruit 
	
	self move: aDrone withPreviousElement: aFruit ! !

!OrchardGame methodsFor: 'drone moving' stamp: 'HAW 11/28/2024 20:47:26'!
drone: aDrone wantsToMoveIntoBareGround: aBareGround 
	
	board at: aDrone position put: aDrone previousElement.
	board at: (aDrone moveWithPreviousElement: aBareGround) put: aDrone ! !

!OrchardGame methodsFor: 'drone moving' stamp: 'HAW 11/29/2024 15:52:17'!
drone: aDrone wantsToMoveIntoHedge: aHedge 
	
	| randomDisplacementSelector |
	
	randomDisplacementSelector := random nextInteger: 5.
	
	randomDisplacementSelector = 1 ifTrue: [ ^self ].
	randomDisplacementSelector = 2 ifTrue: [ aDrone startMovingLeft ].
	randomDisplacementSelector = 3 ifTrue: [ aDrone startMovingUp ].
	randomDisplacementSelector = 4 ifTrue: [ aDrone startMovingDown ].
	randomDisplacementSelector = 5 ifTrue: [ aDrone startMovingRight ].
	
	self tryToMoveDrone: aDrone 
	! !

!OrchardGame methodsFor: 'drone moving' stamp: 'HAW 11/29/2024 15:51:45'!
droneWantsToMoveIntoHarvester: aDrone 
	
	harvester die.
	
	self move: aDrone withPreviousElement: BareGround new.
	board at: harvester position put: harvester.
	
	ticks := 0.! !

!OrchardGame methodsFor: 'drone moving' stamp: 'HAW 11/29/2024 15:51:08'!
move: aDrone withPreviousElement: anOrchardElement

	board at: aDrone position put: aDrone previousElement.
	board at: (aDrone moveWithPreviousElement: anOrchardElement) put: aDrone! !

!OrchardGame methodsFor: 'drone moving' stamp: 'HAW 11/29/2024 15:52:17'!
tryToMoveDrone: aDrone

	| elementAtNextPosition |
	
	elementAtNextPosition := board at: aDrone nextPosition.
	elementAtNextPosition drone: aDrone wantsToMoveIntoIn: self.
! !

!OrchardGame methodsFor: 'drone moving' stamp: 'HAW 11/29/2024 15:52:17'!
tryToMoveDrones

	ticks > 3 ifTrue: [ self tryToMoveDrone: rook ].
	ticks > 4 ifTrue: [ self tryToMoveDrone: wren ]! !


!OrchardGame methodsFor: 'testing' stamp: 'HAW 12/3/2024 09:30:52'!
areThereNoFruits
	
	^board noneSatisfy: [ :anOrchardElement | anOrchardElement isFruit or: [ anOrchardElement isOnFruit ]]! !

!OrchardGame methodsFor: 'testing' stamp: 'HAW 11/29/2024 15:49:58'!
isOver
	
	^self harvesterLives = 0 or: [ self areThereNoFruits ]! !


!OrchardGame methodsFor: 'harvester moving' stamp: 'HAW 11/28/2024 20:11:27'!
moveHarvester

	board at: harvester position put: BareGround new.
	board at: harvester move put: harvester! !

!OrchardGame methodsFor: 'harvester moving' stamp: 'HAW 11/29/2024 15:41:59'!
harvesterWantsToMoveIntoFruit: aFruit 
	
	points := points + aFruit pointsToAdd.
	self moveHarvester ! !

!OrchardGame methodsFor: 'harvester moving' stamp: 'HAW 11/28/2024 19:59:32'!
harvesterWantsToMoveIntoBareGround
	
	self moveHarvester  
	! !

!OrchardGame methodsFor: 'harvester moving' stamp: 'HAW 11/28/2024 19:54:33'!
harvesterWantsToMoveIntoHedge
	
	! !

!OrchardGame methodsFor: 'harvester moving' stamp: 'HAW 11/28/2024 20:21:51'!
tryToMoveHarvester
	
	| elementAtNextPosition |
	
	elementAtNextPosition := board at: harvester nextPosition.
	elementAtNextPosition harvesterWantsToMoveIntoIn: self.
! !


!OrchardGame methodsFor: 'actions' stamp: 'HAW 11/29/2024 15:29:30'!
startMovingHarvesterDown
	
	self assertGameIsNotOver.
	
	harvester startMovingDown! !

!OrchardGame methodsFor: 'actions' stamp: 'HAW 11/29/2024 15:33:33'!
startMovingHarvesterLeft 

	self assertGameIsNotOver.
	
	harvester startMovingLeft ! !

!OrchardGame methodsFor: 'actions' stamp: 'HAW 11/29/2024 15:32:38'!
startMovingHarvesterRight
	
	self assertGameIsNotOver.
	
	harvester startMovingRight! !

!OrchardGame methodsFor: 'actions' stamp: 'HAW 11/29/2024 15:32:43'!
startMovingHarvesterUp
	
	self assertGameIsNotOver.
	
	harvester startMovingUp! !

!OrchardGame methodsFor: 'actions' stamp: 'HAW 11/29/2024 15:52:05'!
tick
	
	self assertGameIsNotOver.
	
	ticks := ticks + 1.
	
	self tryToMoveHarvester.
	self tryToMoveDrones.
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OrchardGame class' category: #'OrchardHarvester'!
OrchardGame class
	instanceVariableNames: ''!

!OrchardGame class methodsFor: 'instance creation' stamp: 'HAW 11/28/2024 20:55:38'!
on: aBoard randomizingWith: aRandom 

	^self new initializeOn: aBoard randomizingWith: aRandom! !


!classDefinition: #StringOrchardBoard category: #'OrchardHarvester'!
Object subclass: #StringOrchardBoard
	instanceVariableNames: 'stringRepresentation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'OrchardHarvester'!

!StringOrchardBoard methodsFor: 'initialization' stamp: 'HAW 11/18/2024 19:29:26'!
initializeRepresentedAs: aStringRepresentation 
	
	stringRepresentation := aStringRepresentation.! !


!StringOrchardBoard methodsFor: 'element character' stamp: 'HAW 11/20/2024 17:23:48'!
largeFruitCharacter

	^self class largeFruitCharacter! !

!StringOrchardBoard methodsFor: 'element character' stamp: 'HAW 11/20/2024 17:24:20'!
rookCharacter

	^ self class rookCharacter ! !

!StringOrchardBoard methodsFor: 'element character' stamp: 'HAW 11/20/2024 17:24:30'!
wrenCharacter

	^ self class wrenCharacter ! !

!StringOrchardBoard methodsFor: 'element character' stamp: 'HAW 11/20/2024 17:24:52'!
harvesterCharacter

	^ self class harvesterCharacter ! !

!StringOrchardBoard methodsFor: 'element character' stamp: 'HAW 11/20/2024 17:25:15'!
smallFruitCharacter

	^self class smallFruitCharacter ! !

!StringOrchardBoard methodsFor: 'element character' stamp: 'HAW 11/20/2024 17:25:37'!
bareGroundCharacter

	^self class bareGroundCharacter ! !

!StringOrchardBoard methodsFor: 'element character' stamp: 'HAW 11/20/2024 17:26:00'!
hedgeCharacter

	^self class hedgeCharacter! !


!StringOrchardBoard methodsFor: 'testing' stamp: 'HAW 11/20/2024 17:20:21'!
isLargeFruit: anElement

	^ anElement = self largeFruitCharacter! !

!StringOrchardBoard methodsFor: 'testing' stamp: 'HAW 11/20/2024 17:20:36'!
isRook: anElement

	^ anElement = self rookCharacter! !

!StringOrchardBoard methodsFor: 'testing' stamp: 'HAW 11/20/2024 17:21:09'!
isWren: anElement

	^ anElement = self wrenCharacter! !

!StringOrchardBoard methodsFor: 'testing' stamp: 'HAW 11/20/2024 17:21:17'!
isHarvester: anElement

	^ anElement = self harvesterCharacter! !

!StringOrchardBoard methodsFor: 'testing' stamp: 'HAW 11/20/2024 17:20:12'!
isSmallFruit: anElement

	^ anElement = self smallFruitCharacter! !

!StringOrchardBoard methodsFor: 'testing' stamp: 'HAW 11/20/2024 17:21:29'!
isBareGround: anElement

	^ anElement = self bareGroundCharacter! !

!StringOrchardBoard methodsFor: 'testing' stamp: 'HAW 11/20/2024 17:20:03'!
isHedge: anElement

	^ anElement = self hedgeCharacter! !


!StringOrchardBoard methodsFor: 'visiting' stamp: 'HAW 11/22/2024 14:38:19'!
visit: anElement at: position with: anOrchardBoardVisitor

	(self isHedge: anElement) ifTrue: [ ^anOrchardBoardVisitor visitHedgeAt: position ].
	(self isSmallFruit: anElement) ifTrue: [ ^anOrchardBoardVisitor visitSmallFruitAt: position ].
	(self isLargeFruit: anElement) ifTrue: [ ^anOrchardBoardVisitor visitLargeFruitAt: position ].
	(self isRook: anElement) ifTrue: [ ^anOrchardBoardVisitor visitRookAt: position ].
	(self isWren: anElement) ifTrue: [ ^anOrchardBoardVisitor visitWrenAt: position ].
	(self isHarvester: anElement) ifTrue: [ ^anOrchardBoardVisitor visitHarvesterAt: position ].
	(self isBareGround: anElement) ifTrue: [ ^anOrchardBoardVisitor visitBareGroundAt: position ].
	
	"No hay necesidad de generar un error porque no se permite crear un board con caracteres distintos a todos estos - Hernan"! !

!StringOrchardBoard methodsFor: 'visiting' stamp: 'HAW 11/20/2024 17:22:41'!
visitElementsWith: anOrchardBoardVisitor

	stringRepresentation withIndexDo: [ :aRow :y |
		aRow withIndexDo: [ :anElement :x | 
			self visit: anElement at: x@y with: anOrchardBoardVisitor.]]! !


!StringOrchardBoard methodsFor: 'extent' stamp: 'HAW 11/22/2024 10:50:10'!
extent
	
	"There is always a row and their size is the same to all - Hernan"
	^stringRepresentation first size @ stringRepresentation size! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'StringOrchardBoard class' category: #'OrchardHarvester'!
StringOrchardBoard class
	instanceVariableNames: ''!

!StringOrchardBoard class methodsFor: 'instance creation' stamp: 'HAW 11/22/2024 10:48:32'!
representedAs: aStringRepresentation 
	
	| elementCharactersCount |
	
	elementCharactersCount := self elementCharacterCountOf: aStringRepresentation.	
	self asserltAllActorsAreIn: elementCharactersCount.
	"If I get here the there is always a row - Hernan"
	self assertAllRowsHaveSameSizeIn: aStringRepresentation.
	
	^self new initializeRepresentedAs: aStringRepresentation 
	! !


!StringOrchardBoard class methodsFor: 'error description' stamp: 'HAW 11/20/2024 16:58:30'!
characterIsMissingErrorDescriptionFor: aCharacterName
	
	^aCharacterName, ' is missing'! !

!StringOrchardBoard class methodsFor: 'error description' stamp: 'HAW 11/20/2024 17:39:12'!
notAllowCharaterErrorDescriptionFor: aCharacter

	^'Character ', aCharacter asString, ' is not allowed'! !

!StringOrchardBoard class methodsFor: 'error description' stamp: 'HAW 11/20/2024 17:07:31'!
rowsMustHaveSameSizeErrorDescription
	
	^'Rows must have same number of columns'! !

!StringOrchardBoard class methodsFor: 'error description' stamp: 'HAW 11/20/2024 16:58:01'!
shouldBeUniqueErrorDescriptionFor: aCharacterName
	
	^'There should be only one ', aCharacterName ! !


!StringOrchardBoard class methodsFor: 'elements characters' stamp: 'HAW 11/21/2024 20:17:42'!
allowedCharacters
	
	^ {
	self harvesterCharacter.
	self rookCharacter.
	self wrenCharacter.
	self hedgeCharacter.
	self largeFruitCharacter.
	self smallFruitCharacter.
	self bareGroundCharacter.
	}! !

!StringOrchardBoard class methodsFor: 'elements characters' stamp: 'HAW 11/20/2024 17:24:06'!
largeFruitCharacter
	
	^ $*! !

!StringOrchardBoard class methodsFor: 'elements characters' stamp: 'HAW 11/20/2024 16:56:25'!
rookCharacter
	
	^$R! !

!StringOrchardBoard class methodsFor: 'elements characters' stamp: 'HAW 11/20/2024 16:56:42'!
wrenCharacter
	
	^$W! !

!StringOrchardBoard class methodsFor: 'elements characters' stamp: 'HAW 11/20/2024 16:41:25'!
harvesterCharacter
	
	^$h! !

!StringOrchardBoard class methodsFor: 'elements characters' stamp: 'HAW 11/20/2024 17:25:24'!
smallFruitCharacter
	
	^ $-! !

!StringOrchardBoard class methodsFor: 'elements characters' stamp: 'HAW 11/20/2024 17:25:46'!
bareGroundCharacter
	
	^ $=! !

!StringOrchardBoard class methodsFor: 'elements characters' stamp: 'HAW 11/20/2024 17:26:06'!
hedgeCharacter
	
	^ $#! !


!StringOrchardBoard class methodsFor: 'character names' stamp: 'HAW 11/20/2024 17:02:12'!
rookName

	^ #rook! !

!StringOrchardBoard class methodsFor: 'character names' stamp: 'HAW 11/20/2024 17:02:29'!
wrenName

	^ #wren! !

!StringOrchardBoard class methodsFor: 'character names' stamp: 'HAW 11/20/2024 17:02:05'!
harvesterName

	^ #harvester! !


!StringOrchardBoard class methodsFor: 'assertions' stamp: 'HAW 11/21/2024 19:59:27'!
asserltAllActorsAreIn: elementCharactersCount

	{ self harvesterName. self rookName. self wrenName } do: [ :aCharacterName | 
		self assertActorIsCorrect: aCharacterName in: elementCharactersCount ]! !

!StringOrchardBoard class methodsFor: 'assertions' stamp: 'HAW 11/20/2024 17:49:04'!
assert: anElementCharacter isAllowed: allowedCharacters

	(allowedCharacters includes: anElementCharacter) ifFalse: [ self error: (self notAllowCharaterErrorDescriptionFor: anElementCharacter) ]! !

!StringOrchardBoard class methodsFor: 'assertions' stamp: 'HAW 11/20/2024 17:48:41'!
assertActorIsCorrect: aCharacterName in: elements 
	
	| characterIdentifier |
	
	characterIdentifier := self perform: (aCharacterName, #Character) asSymbol.
	(elements includes: characterIdentifier)
		ifFalse: [ self error: (self characterIsMissingErrorDescriptionFor: aCharacterName) ].
		
	(elements occurrencesOf: characterIdentifier) > 1
		ifTrue: [ self error: (self shouldBeUniqueErrorDescriptionFor: aCharacterName) ].
! !

!StringOrchardBoard class methodsFor: 'assertions' stamp: 'HAW 11/20/2024 17:49:16'!
assertAllRowsHaveSameSizeIn: aStringRepresentation

	(aStringRepresentation allSatisfy: [ :aRow | aRow size = aStringRepresentation first size ]) ifFalse: [ 
		self error: self rowsMustHaveSameSizeErrorDescription ]! !

!StringOrchardBoard class methodsFor: 'assertions' stamp: 'HAW 11/20/2024 17:49:30'!
elementCharacterCountOf: aStringRepresentation

	| elementCharactersCount allowedCharacters |
	
	elementCharactersCount := Bag new.
	allowedCharacters := self allowedCharacters.
	
	aStringRepresentation do: [ :aRow |
		aRow do: [ :anElementCharacter | 
			self assert: anElementCharacter isAllowed: allowedCharacters.
			elementCharactersCount add: anElementCharacter ]].
	
	^elementCharactersCount ! !
