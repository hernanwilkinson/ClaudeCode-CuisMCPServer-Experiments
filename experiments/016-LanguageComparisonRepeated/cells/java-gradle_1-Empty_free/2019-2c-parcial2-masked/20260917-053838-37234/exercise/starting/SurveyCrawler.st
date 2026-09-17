!classDefinition: #SurveyCrawlerTest category: #'SurveyCrawler'!
TestCase subclass: #SurveyCrawlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:32:07'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:32:38'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:33:00'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:34:11'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:34:03'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:35:16'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: crawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:35:37'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:35:52'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:36:09'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:36:32'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:37:31'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:38:17'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:38:40'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:39:01'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:39:23'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:39:54'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [SurveyCrawler at: 1@2 facing: #X ]
		raise: Error
		withExceptionDo: [:anError |
			self assert: SurveyCrawler invalidFacingErrorDescription equals: anError messageText ]! !


!classDefinition: #SurveyCrawler category: #'SurveyCrawler'!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 6/30/2018 19:48:45'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 6/30/2018 19:50:26'!
signalInvalidCommand
	
	self error: self invalidCommandErrorDescription ! !


!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 8/22/2019 12:02:37'!
initializeAt: aPosition facing: aFacing

	position := aPosition.
	facing := aFacing ! !


!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:14:20'!
faceRight
	
	facing := CrawlerFacingRight new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:16:30'!
faceUp
	
	facing := CrawlerFacingUp new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:16:05'!
faceDown
	
	facing := CrawlerFacingDown new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:14:38'!
faceLeft
	
	facing := CrawlerFacingLeft new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:07:11'!
turnCounterClockwise
	
	facing turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:14:00'!
turnClockwise
	
	facing turnClockwise: self! !


!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 8/22/2019 12:00:30'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 7/6/2018 18:16:51'!
isRetreatCommand: aCommand

	^aCommand = $t! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 7/6/2018 18:16:19'!
isAdvanceCommand: aCommand

	^aCommand = $a ! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 7/6/2018 18:17:51'!
isTurnCounterClockwiseCommand: aCommand

	^aCommand = $g! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 7/6/2018 18:17:21'!
isTurnClockwiseCommand: aCommand

	^aCommand = $h! !


!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:05:20'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:15:01'!
moveRight
	
	position := position + (1@0)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:05:55'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:13:12'!
moveUp
	
	position := position + (0@1)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:13:34'!
moveDown
	
	position := position + (0@-1)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:15:32'!
moveLeft
	
	position := position + (-1@0)! !


!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 6/30/2018 19:48:26'!
process: aSequenceOfCommands

	aSequenceOfCommands do: [:aCommand | self processCommand: aCommand ]
! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 8/22/2019 12:08:50'!
processCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].

	self signalInvalidCommand.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SurveyCrawler class' category: #'SurveyCrawler'!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 8/22/2019 12:01:48'!
at: aPosition facing: aFacingName
	
	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName)! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 7/2/2018 16:26:14'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !


!classDefinition: #CrawlerFacing category: #'SurveyCrawler'!
Object subclass: #CrawlerFacing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:06:17'!
turnCounterClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:08:23'!
turnClockwise: aCrawler

	self subclassResponsibility ! !


!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 7/2/2018 19:07:42'!
isFacing: aFacingName

	^self class isFor: aFacingName! !


!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:05:20'!
retreat: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:05:54'!
advance: aCrawler

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CrawlerFacing class' category: #'SurveyCrawler'!
CrawlerFacing class
	instanceVariableNames: ''!

!CrawlerFacing class methodsFor: 'facing name' stamp: 'HAW 7/2/2018 19:07:01'!
facingName

	self subclassResponsibility ! !


!CrawlerFacing class methodsFor: 'instance creation' stamp: 'HAW 8/22/2019 12:02:00'!
facing: aFacingName

	^self subclasses 
		detect: [ :aCrawlerFacingClass | aCrawlerFacingClass isFor: aFacingName ]
		ifFound: [ :aCrawlerFacingClass | aCrawlerFacingClass new ]
		ifNone: [ self error: SurveyCrawler invalidFacingErrorDescription ]! !


!CrawlerFacing class methodsFor: 'testing' stamp: 'HAW 7/2/2018 17:01:33'!
isFor: aFacingName

	^self facingName = aFacingName ! !


!classDefinition: #CrawlerFacingRight category: #'SurveyCrawler'!
CrawlerFacing subclass: #CrawlerFacingRight
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:09:19'!
retreat: aCrawler
	
	^aCrawler moveLeft! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:09:28'!
advance: aCrawler
	
	^aCrawler moveRight! !


!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:09:42'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:09:54'!
turnClockwise: aCrawler
	
	^aCrawler faceDown! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CrawlerFacingRight class' category: #'SurveyCrawler'!
CrawlerFacingRight class
	instanceVariableNames: ''!

!CrawlerFacingRight class methodsFor: 'as yet unclassified' stamp: 'HAW 7/2/2018 17:01:53'!
facingName

	^#Right! !


!classDefinition: #CrawlerFacingUp category: #'SurveyCrawler'!
CrawlerFacing subclass: #CrawlerFacingUp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:10:12'!
retreat: aCrawler
	
	^aCrawler moveDown! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:10:23'!
advance: aCrawler
	
	^aCrawler moveUp! !


!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:10:40'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:10:51'!
turnClockwise: aCrawler
	
	^aCrawler faceRight! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CrawlerFacingUp class' category: #'SurveyCrawler'!
CrawlerFacingUp class
	instanceVariableNames: ''!

!CrawlerFacingUp class methodsFor: 'as yet unclassified' stamp: 'HAW 7/2/2018 17:03:11'!
facingName

	^#Up! !


!classDefinition: #CrawlerFacingDown category: #'SurveyCrawler'!
CrawlerFacing subclass: #CrawlerFacingDown
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:11:15'!
retreat: aCrawler
	
	^aCrawler moveUp! !

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:11:25'!
advance: aCrawler
	
	^aCrawler moveDown! !


!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:11:55'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:11:50'!
turnClockwise: aCrawler
	
	^aCrawler faceLeft! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CrawlerFacingDown class' category: #'SurveyCrawler'!
CrawlerFacingDown class
	instanceVariableNames: ''!

!CrawlerFacingDown class methodsFor: 'as yet unclassified' stamp: 'HAW 7/2/2018 17:03:17'!
facingName

	^#Down! !


!classDefinition: #CrawlerFacingLeft category: #'SurveyCrawler'!
CrawlerFacing subclass: #CrawlerFacingLeft
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:12:07'!
retreat: aCrawler

	^aCrawler moveRight! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:12:15'!
advance: aCrawler
	
	^aCrawler moveLeft! !


!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:12:26'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:12:41'!
turnClockwise: aCrawler
	
	^aCrawler faceUp! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CrawlerFacingLeft class' category: #'SurveyCrawler'!
CrawlerFacingLeft class
	instanceVariableNames: ''!

!CrawlerFacingLeft class methodsFor: 'as yet unclassified' stamp: 'HAW 7/2/2018 17:03:23'!
facingName

	^#Left! !
