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

!BoardTranslatorExample methodsFor: 'string board visiting' stamp: 'HAW 11/22/2024 14:42:40'!
visitHarvesterAt: aPosition 
	
	board at: aPosition put: 'should be a harvester!!'! !

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

!BoardTranslatorExample class methodsFor: 'as yet unclassified' stamp: 'LL 11/22/2024 10:37:38'!
on: aBoard

	^self new initializeOn: aBoard! !


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
