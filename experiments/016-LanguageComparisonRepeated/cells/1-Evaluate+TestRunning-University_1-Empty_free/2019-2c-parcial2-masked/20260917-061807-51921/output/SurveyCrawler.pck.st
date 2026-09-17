'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:21:04 am'!
'Description '!
!provides: 'SurveyCrawler' 1 1!
SystemOrganization addCategory: #SurveyCrawler!
SystemOrganization addCategory: #'SurveyCrawler-Tests'!


!classDefinition: #CrawlerFacing category: #SurveyCrawler!
Object subclass: #CrawlerFacing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFacing class' category: #SurveyCrawler!
CrawlerFacing class
	instanceVariableNames: ''!

!classDefinition: #CrawlerFacingDown category: #SurveyCrawler!
CrawlerFacing subclass: #CrawlerFacingDown
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFacingDown class' category: #SurveyCrawler!
CrawlerFacingDown class
	instanceVariableNames: ''!

!classDefinition: #CrawlerFacingLeft category: #SurveyCrawler!
CrawlerFacing subclass: #CrawlerFacingLeft
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFacingLeft class' category: #SurveyCrawler!
CrawlerFacingLeft class
	instanceVariableNames: ''!

!classDefinition: #CrawlerFacingRight category: #SurveyCrawler!
CrawlerFacing subclass: #CrawlerFacingRight
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFacingRight class' category: #SurveyCrawler!
CrawlerFacingRight class
	instanceVariableNames: ''!

!classDefinition: #CrawlerFacingUp category: #SurveyCrawler!
CrawlerFacing subclass: #CrawlerFacingUp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFacingUp class' category: #SurveyCrawler!
CrawlerFacingUp class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRun category: #SurveyCrawler!
Object subclass: #CrawlerRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRun class' category: #SurveyCrawler!
CrawlerRun class
	instanceVariableNames: ''!

!classDefinition: #CrawlerGuardedRun category: #SurveyCrawler!
CrawlerRun subclass: #CrawlerGuardedRun
	instanceVariableNames: 'undoActions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerGuardedRun class' category: #SurveyCrawler!
CrawlerGuardedRun class
	instanceVariableNames: ''!

!classDefinition: #CrawlerUnguardedRun category: #SurveyCrawler!
CrawlerRun subclass: #CrawlerUnguardedRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerUnguardedRun class' category: #SurveyCrawler!
CrawlerUnguardedRun class
	instanceVariableNames: ''!

!classDefinition: #SeabedGroundType category: #SurveyCrawler!
Object subclass: #SeabedGroundType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedGroundType class' category: #SurveyCrawler!
SeabedGroundType class
	instanceVariableNames: ''!

!classDefinition: #SeabedBoulder category: #SurveyCrawler!
SeabedGroundType subclass: #SeabedBoulder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedBoulder class' category: #SurveyCrawler!
SeabedBoulder class
	instanceVariableNames: ''!

!classDefinition: #SeabedFirmSand category: #SurveyCrawler!
SeabedGroundType subclass: #SeabedFirmSand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedFirmSand class' category: #SurveyCrawler!
SeabedFirmSand class
	instanceVariableNames: ''!

!classDefinition: #SeabedSilt category: #SurveyCrawler!
SeabedGroundType subclass: #SeabedSilt
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedSilt class' category: #SurveyCrawler!
SeabedSilt class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar slideLengths run'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #SeabedSonarSimulator category: #'SurveyCrawler-Tests'!
Object subclass: #SeabedSonarSimulator
	instanceVariableNames: 'groundTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SeabedSonarSimulator class' category: #'SurveyCrawler-Tests'!
SeabedSonarSimulator class
	instanceVariableNames: ''!

!classDefinition: #SlideLengthSimulator category: #'SurveyCrawler-Tests'!
Object subclass: #SlideLengthSimulator
	instanceVariableNames: 'length'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SlideLengthSimulator class' category: #'SurveyCrawler-Tests'!
SlideLengthSimulator class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerTest class
	instanceVariableNames: ''!


!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:08:23 pm (UTC)'!
turnClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:06:17 pm (UTC)'!
turnCounterClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:54 pm (UTC)'!
advance: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 10:07:01 pm (UTC)'!
facingName

	self subclassResponsibility ! !

!CrawlerFacing class methodsFor: 'instance creation' stamp: 'HAW 22/Aug/2019, 3:02:00 pm (UTC)'!
facing: aFacingName

	^self subclasses 
		detect: [ :aCrawlerFacingClass | aCrawlerFacingClass isFor: aFacingName ]
		ifFound: [ :aCrawlerFacingClass | aCrawlerFacingClass new ]
		ifNone: [ self error: SurveyCrawler invalidFacingErrorDescription ]! !

!CrawlerFacing class methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 8:01:33 pm (UTC)'!
isFor: aFacingName

	^self facingName = aFacingName ! !

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:11:25 pm (UTC)'!
advance: aCrawler
	
	^aCrawler moveDown! !

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:11:15 pm (UTC)'!
retreat: aCrawler
	
	^aCrawler moveUp! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:50 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:55 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingDown class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:17 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:12:15 pm (UTC)'!
advance: aCrawler
	
	^aCrawler moveLeft! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:12:07 pm (UTC)'!
retreat: aCrawler

	^aCrawler moveRight! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:41 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:26 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingLeft class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:23 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:09:28 pm (UTC)'!
advance: aCrawler
	
	^aCrawler moveRight! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:09:19 pm (UTC)'!
retreat: aCrawler
	
	^aCrawler moveLeft! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:54 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:42 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingRight class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:01:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:10:23 pm (UTC)'!
advance: aCrawler
	
	^aCrawler moveUp! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:10:12 pm (UTC)'!
retreat: aCrawler
	
	^aCrawler moveDown! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:51 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:40 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingUp class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:11 pm (UTC)'!
facingName

	^#Up! !

!CrawlerRun methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
assertFinishedFor: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
endGuardedRunFor: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
startGuardedRunFor: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
slidOnSiltFor: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
registerUndo: anUndoAction

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
undo

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
initialize

	undoActions := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
assertFinishedFor: aCrawler

	aCrawler signalGuardedRunNotFinished! !

!CrawlerGuardedRun methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
endGuardedRunFor: aCrawler

	aCrawler endGuardedRun! !

!CrawlerGuardedRun methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
startGuardedRunFor: aCrawler

	aCrawler signalNestedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
slidOnSiltFor: aCrawler

	aCrawler signalSlidOnSiltDuringGuardedRun! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
registerUndo: anUndoAction

	undoActions add: anUndoAction! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
undo

	undoActions reverseDo: [ :anUndoAction | anUndoAction value ]! !

!CrawlerUnguardedRun methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
assertFinishedFor: aCrawler

	! !

!CrawlerUnguardedRun methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
endGuardedRunFor: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerUnguardedRun methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
startGuardedRunFor: aCrawler

	aCrawler startGuardedRun! !

!CrawlerUnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
slidOnSiltFor: aCrawler

	! !

!CrawlerUnguardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
registerUndo: anUndoAction

	! !

!CrawlerUnguardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
undo

	! !

!SeabedGroundType methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGroundType methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
turn: aCrawler to: aFacing

	self subclassResponsibility! !

!SeabedBoulder methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!SeabedBoulder methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
turn: aCrawler to: aFacing

	aCrawler signalBoulderFound! !

!SeabedFirmSand methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler changePositionBy: aDirection! !

!SeabedFirmSand methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
turn: aCrawler to: aFacing

	aCrawler changeFacingTo: aFacing! !

!SeabedSilt methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slideTowards: aDirection! !

!SeabedSilt methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
turn: aCrawler to: aFacing

	aCrawler changeFacingTo: aFacing! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:48:45 pm (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:50:26 pm (UTC)'!
signalInvalidCommand
	
	self error: self invalidCommandErrorDescription ! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:20:01 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar slideLengths: aSlideLengthGenerator

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slideLengths := aSlideLengthGenerator.
	run := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:14:00 pm (UTC)'!
turnClockwise
	
	facing turnClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:07:11 pm (UTC)'!
turnCounterClockwise
	
	facing turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:19 pm (UTC)'!
isAdvanceCommand: aCommand

	^aCommand = $a ! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:51 pm (UTC)'!
isRetreatCommand: aCommand

	^aCommand = $t! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:21 pm (UTC)'!
isTurnClockwiseCommand: aCommand

	^aCommand = $h! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:51 pm (UTC)'!
isTurnCounterClockwiseCommand: aCommand

	^aCommand = $g! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
changePositionBy: aDelta

	position := position + aDelta.
	run registerUndo: [ position := position - aDelta ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
moveDown
	
	self moveTowards: 0@-1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
moveLeft
	
	self moveTowards: -1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
moveRight
	
	self moveTowards: 1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
moveTowards: aDirection

	(sonar groundTypeAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
moveUp
	
	self moveTowards: 0@1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
signalBoulderFound

	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
slideTowards: aDirection

	self changePositionBy: aDirection * (slideLengths nextInteger: self class siltSlidingLimit).
	run slidOnSiltFor: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 22/Aug/2019, 3:08:50 pm (UTC)'!
processCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].

	self signalInvalidCommand.! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
isGuardedRunEndCommand: aCommand

	^aCommand = $)! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
isGuardedRunStartCommand: aCommand

	^aCommand = $(! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:01 am (UTC)'!
process: aSequenceOfCommands

	| commands |
	
	commands := ReadStream on: aSequenceOfCommands.
	[ [ commands atEnd ] whileFalse: [ self processNextCommandFrom: commands ].
	  run assertFinishedFor: self ]
		on: Error
		do: [ :anError |
			run undo.
			run := CrawlerUnguardedRun new.
			anError pass ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:01 am (UTC)'!
processNextCommandFrom: commands

	| command |
	
	command := commands next.
	(self isGuardedRunStartCommand: command) ifTrue: [ ^run startGuardedRunFor: self ].
	(self isGuardedRunEndCommand: command) ifTrue: [ ^run endGuardedRunFor: self ].
	
	(self repetitionsFrom: commands) timesRepeat: [ self processCommand: command ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
repetitionsFrom: commands

	^(commands atEnd not and: [ commands peek isDigit ])
		ifTrue: [ commands next digitValue + 3 ]
		ifFalse: [ 1 ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
endGuardedRun

	run := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
signalGuardedRunNotFinished

	self error: self class guardedRunNotFinishedErrorDescription! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
signalGuardedRunNotStarted

	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
signalNestedGuardedRun

	self error: self class nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
signalSlidOnSiltDuringGuardedRun

	self error: self class slidOnSiltDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
startGuardedRun

	run := CrawlerGuardedRun new! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
changeFacingTo: aFacing

	| previousFacing |
	
	previousFacing := facing.
	facing := aFacing.
	run registerUndo: [ facing := previousFacing ]! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
faceDown
	
	self turnTo: CrawlerFacingDown new! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
faceLeft
	
	self turnTo: CrawlerFacingLeft new! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
faceRight
	
	self turnTo: CrawlerFacingRight new! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
faceUp
	
	self turnTo: CrawlerFacingUp new! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 9:20:02 am (UTC)'!
turnTo: aFacing

	(sonar groundTypeAt: position) turn: self to: aFacing! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:20:01 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar slideLengths: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:20:01 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar slideLengths: aSlideLengthGenerator

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar slideLengths: aSlideLengthGenerator! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 9:20:01 am (UTC)'!
siltSlidingLimit

	^10! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:20:01 am (UTC)'!
boulderFoundErrorDescription

	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:20:01 am (UTC)'!
guardedRunNotFinishedErrorDescription

	^'Guarded run not finished'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:20:01 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'Guarded run finished without being started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:20:01 am (UTC)'!
nestedGuardedRunErrorDescription

	^'Can not start a guarded run inside another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:20:01 am (UTC)'!
slidOnSiltDuringGuardedRunErrorDescription

	^'Slid on silt during a guarded run'! !

!SeabedSonarSimulator methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
initialize

	groundTypes := Dictionary new! !

!SeabedSonarSimulator methodsFor: 'configuring' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
boulderAt: aPosition

	groundTypes at: aPosition put: SeabedBoulder new! !

!SeabedSonarSimulator methodsFor: 'configuring' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
siltAt: aPosition

	groundTypes at: aPosition put: SeabedSilt new! !

!SeabedSonarSimulator methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
groundTypeAt: aPosition

	^groundTypes at: aPosition ifAbsent: [ SeabedFirmSand new ]! !

!SeabedSonarSimulator class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
new

	^super new initialize! !

!SlideLengthSimulator methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
initializeAlways: aLength

	length := aLength! !

!SlideLengthSimulator methodsFor: 'generating' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
nextInteger: aLimit

	^length! !

!SlideLengthSimulator class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:20:03 am (UTC)'!
always: aLength

	^self new initializeAlways: aLength! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: crawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [self crawlerAt: 1@2 facing: #X ]
		raise: Error
		withExceptionDo: [:anError |
			self assert: SurveyCrawler invalidFacingErrorDescription equals: anError messageText ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test17DigitRepeatsLastCommandDigitPlusTwoTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test18RepetitionWorksWithEveryMovementCommand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't1h0g2'.
	
	self assert: (crawler isAt: 1@-2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test19RepetitionWorksWithNineAsDigit

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test20RepetitionIsASingleDigit

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: 'a01' ] failWith: crawler invalidCommandErrorDescription leaving: crawler at: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test21DigitWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: '1' ] failWith: crawler invalidCommandErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test22GuardedRunDelimitersCanNotBeRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: '(a)1' ] failWith: crawler invalidCommandErrorDescription leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test23CanNotAdvanceOntoABoulder

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: [ crawler process: 'a' ] failWith: SurveyCrawler boulderFoundErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test24CanNotRetreatOntoABoulder

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar boulderAt: 1@1.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: [ crawler process: 't' ] failWith: SurveyCrawler boulderFoundErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test25CanNotTurnCounterClockwiseOnABoulder

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: [ crawler process: 'g' ] failWith: SurveyCrawler boulderFoundErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test26CanNotTurnClockwiseOnABoulder

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: [ crawler process: 'h' ] failWith: SurveyCrawler boulderFoundErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test27BoulderStopsRepetitionsWithoutGuardedRun

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar boulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: [ crawler process: 'a9' ] failWith: SurveyCrawler boulderFoundErrorDescription leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test28AdvancingOntoSiltSlidesInTheMovingDirection

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar siltAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test29RetreatingOntoSiltSlidesInTheMovingDirection

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar siltAt: 0@2.
	crawler := self crawlerAt: 1@2 facing: #Right sonar: sonar.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: -2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test30SlidingOnSiltIsAtMostTenCells

	| sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar siltAt: 1@3.
	100 timesRepeat: [ | crawler |
		crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
		crawler process: 'a'.
		self assert: ((3 to: 12) anySatisfy: [ :y | crawler isAt: 1@y facing: #Up ]) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:43 am (UTC)'!
test31SiltDoesNotAffectTurning

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar siltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	crawler process: 'hg0'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test32SuccessfulGuardedRunKeepsItsMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: '(aah)'.
	
	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test33BoulderDuringGuardedRunUndoesItsMovements

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar boulderAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: [ crawler process: '(aa)' ] failWith: SurveyCrawler boulderFoundErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
test34GuardedRunUndoesTurnsAndMovementsOnlySinceItStarted

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar boulderAt: 3@2.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: [ crawler process: 'ah(gtha1)' ] failWith: SurveyCrawler boulderFoundErrorDescription leaving: crawler at: 1@3 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:36 am (UTC)'!
test35SiltDuringGuardedRunUndoesItsMovements

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar siltAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: [ crawler process: '(hgaa)' ] failWith: SurveyCrawler slidOnSiltDuringGuardedRunErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:36 am (UTC)'!
test36InvalidCommandDuringGuardedRunUndoesItsMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: 'a(ahax)' ] failWith: crawler invalidCommandErrorDescription leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:43 am (UTC)'!
test37SequenceCanHaveManyGuardedRuns

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:36 am (UTC)'!
test38OnlyTheFailingGuardedRunIsUndone

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar boulderAt: 3@4.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: [ crawler process: '(aah)a(a)' ] failWith: SurveyCrawler boulderFoundErrorDescription leaving: crawler at: 2@4 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:36 am (UTC)'!
test39CanNotNestGuardedRuns

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: 'aa(aa(ht)a)' ] failWith: SurveyCrawler nestedGuardedRunErrorDescription leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:36 am (UTC)'!
test40GuardedRunMustBeFinished

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: 'a(aa' ] failWith: SurveyCrawler guardedRunNotFinishedErrorDescription leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:36 am (UTC)'!
test41CanNotFinishAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: 'a)a' ] failWith: SurveyCrawler guardedRunNotStartedErrorDescription leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:36 am (UTC)'!
test42CrawlerIsNotInGuardedRunAfterAFailedOne

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: '(a' ] raise: Error.
	crawler process: 'a(a)'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:20:36 am (UTC)'!
test43RepetitionsInsideGuardedRunAreUndone

	| crawler sonar |
	
	sonar := SeabedSonarSimulator new.
	sonar boulderAt: 1@7.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: [ crawler process: '(a9)' ] failWith: SurveyCrawler boulderFoundErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: SeabedSonarSimulator new! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
crawlerAt: aPosition facing: aFacingName sonar: aSonar

	^SurveyCrawler at: aPosition facing: aFacingName sonar: aSonar slideLengths: (SlideLengthSimulator always: 3)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:20:35 am (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !
