'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:08:07 am'!
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

!classDefinition: #GuardedRun category: #SurveyCrawler!
CrawlerRun subclass: #GuardedRun
	instanceVariableNames: 'undoActions finished'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'GuardedRun class' category: #SurveyCrawler!
GuardedRun class
	instanceVariableNames: ''!

!classDefinition: #UnguardedRun category: #SurveyCrawler!
CrawlerRun subclass: #UnguardedRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'UnguardedRun class' category: #SurveyCrawler!
UnguardedRun class
	instanceVariableNames: ''!

!classDefinition: #SeabedGround category: #SurveyCrawler!
Object subclass: #SeabedGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedGround class' category: #SurveyCrawler!
SeabedGround class
	instanceVariableNames: ''!

!classDefinition: #BoulderGround category: #SurveyCrawler!
SeabedGround subclass: #BoulderGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'BoulderGround class' category: #SurveyCrawler!
BoulderGround class
	instanceVariableNames: ''!

!classDefinition: #FirmSandGround category: #SurveyCrawler!
SeabedGround subclass: #FirmSandGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'FirmSandGround class' category: #SurveyCrawler!
FirmSandGround class
	instanceVariableNames: ''!

!classDefinition: #SiltGround category: #SurveyCrawler!
SeabedGround subclass: #SiltGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SiltGround class' category: #SurveyCrawler!
SiltGround class
	instanceVariableNames: ''!

!classDefinition: #SimulatedSonar category: #SurveyCrawler!
Object subclass: #SimulatedSonar
	instanceVariableNames: 'groundTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SimulatedSonar class' category: #SurveyCrawler!
SimulatedSonar class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar slidingDistanceGenerator run lastCommand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #SlidingDistanceGeneratorStub category: #'SurveyCrawler-Tests'!
Object subclass: #SlidingDistanceGeneratorStub
	instanceVariableNames: 'slidingDistance requestedLimit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SlidingDistanceGeneratorStub class' category: #'SurveyCrawler-Tests'!
SlidingDistanceGeneratorStub class
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

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:06:50 am (UTC)'!
direction

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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:06:50 am (UTC)'!
direction
	
	^0@-1! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:50 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:55 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingDown class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:17 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:06:50 am (UTC)'!
direction
	
	^-1@0! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:41 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:26 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingLeft class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:23 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:06:50 am (UTC)'!
direction
	
	^1@0! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:54 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:42 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingRight class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:01:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:06:50 am (UTC)'!
direction
	
	^0@1! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:51 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:40 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingUp class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:11 pm (UTC)'!
facingName

	^#Up! !

!CrawlerRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
finishOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
register: anUndoAction

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
siltReachedBy: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
startGuardedRunOf: aCrawler

	self subclassResponsibility! !

!GuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
finishOn: aCrawler

	finished := true! !

!GuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
initialize

	undoActions := OrderedCollection new.
	finished := false! !

!GuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
isFinished

	^finished! !

!GuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
register: anUndoAction

	undoActions add: anUndoAction! !

!GuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
siltReachedBy: aCrawler

	aCrawler signalSiltReachedDuringGuardedRun! !

!GuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler signalNestedGuardedRun! !

!GuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
undo

	undoActions reverseDo: [ :anUndoAction | anUndoAction value ]! !

!UnguardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
finishOn: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!UnguardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
register: anUndoAction

	"Movements outside a guarded run are not undone"! !

!UnguardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
siltReachedBy: aCrawler

	"Sliding on silt is not a problem outside a guarded run"! !

!UnguardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
startGuardedRunOf: aCrawler

	^GuardedRun new! !

!SeabedGround methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
keepSliding: aCrawler cells: aNumberOfCells towards: aDirection

	aCrawler moveOneCellTowards: aDirection.
	aCrawler slide: aNumberOfCells - 1 cellsTowards: aDirection! !

!SeabedGround methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
turn: aCrawler doing: aTurn

	^aTurn value! !

!BoulderGround methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
keepSliding: aCrawler cells: aNumberOfCells towards: aDirection

	"The crawler stops sliding in front of the boulder"! !

!BoulderGround methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!BoulderGround methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
turn: aCrawler doing: aTurn

	aCrawler signalBoulderFound! !

!FirmSandGround methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler moveOneCellTowards: aDirection! !

!SiltGround methodsFor: 'crawler interaction' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slideTowards: aDirection! !

!SimulatedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
initialize

	groundTypes := Dictionary new! !

!SimulatedSonar methodsFor: 'ground types' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
groundTypeAt: aPosition

	^groundTypes at: aPosition ifAbsent: [ FirmSandGround new ]! !

!SimulatedSonar methodsFor: 'ground types' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
placeBoulderAt: aPosition

	groundTypes at: aPosition put: BoulderGround new! !

!SimulatedSonar methodsFor: 'ground types' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
placeSiltAt: aPosition

	groundTypes at: aPosition put: SiltGround new! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
boulderFoundErrorDescription
	
	^'Boulder found'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
guardedRunNotStartedErrorDescription
	
	^'Guarded run finished without being started'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:48:45 pm (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
signalBoulderFound
	
	self error: self boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
signalGuardedRunNotStarted
	
	self error: self guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:50:26 pm (UTC)'!
signalInvalidCommand
	
	self error: self invalidCommandErrorDescription ! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
signalNestedGuardedRun
	
	self error: self nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
signalSiltReachedDuringGuardedRun
	
	self error: self siltReachedDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
siltReachedDuringGuardedRunErrorDescription
	
	^'Silt reached during guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:06:52 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'Guarded run not finished'! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar slidingDistanceGenerator: aSlidingDistanceGenerator

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slidingDistanceGenerator := aSlidingDistanceGenerator.
	run := UnguardedRun new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:16:05 pm (UTC)'!
faceDown
	
	facing := CrawlerFacingDown new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:14:38 pm (UTC)'!
faceLeft
	
	facing := CrawlerFacingLeft new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:14:20 pm (UTC)'!
faceRight
	
	facing := CrawlerFacingRight new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:16:30 pm (UTC)'!
faceUp
	
	facing := CrawlerFacingUp new! !

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

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
advance
	
	self moveTowards: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
moveOneCellTowards: aDirection
	
	position := position + aDirection.
	run register: [ position := position - aDirection ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
moveTowards: aDirection
	
	(sonar groundTypeAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
retreat
	
	self moveTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
slide: aNumberOfCells cellsTowards: aDirection
	
	aNumberOfCells > 0 ifTrue: [ 
		(sonar groundTypeAt: position + aDirection) keepSliding: self cells: aNumberOfCells towards: aDirection ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
slideTowards: aDirection
	
	self moveOneCellTowards: aDirection.
	self slide: (slidingDistanceGenerator nextInteger: self class slidingLimit) - 1 cellsTowards: aDirection.
	run siltReachedBy: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 22/Aug/2019, 3:08:50 pm (UTC)'!
processCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].

	self signalInvalidCommand.! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
process: aSequenceOfCommands

	| commands |
	
	commands := ReadStream on: aSequenceOfCommands.
	lastCommand := nil.
	[ commands atEnd ] whileFalse: [ self processNextCommandFrom: commands ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
processCommand: aCommand from: aStreamOfCommands

	(self isGuardedRunStartCommand: aCommand) ifTrue: [ ^self runGuardedFrom: aStreamOfCommands ].
	(self isGuardedRunEndCommand: aCommand) ifTrue: [ ^run finishOn: self ].
	
	self processCommand: aCommand! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
processCommandsOf: aGuardedRun from: aStreamOfCommands

	[ aGuardedRun isFinished ] whileFalse: [
		aStreamOfCommands atEnd ifTrue: [ ^self signalUnfinishedGuardedRun ].
		self processNextCommandFrom: aStreamOfCommands ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
processNextCommandFrom: aStreamOfCommands

	| command |
	
	command := aStreamOfCommands next.
	command isDigit
		ifTrue: [ self repeatLastCommand: command digitValue + 2 ]
		ifFalse: [ self processCommand: command from: aStreamOfCommands ].
	lastCommand := command! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
repeatLastCommand: aNumberOfTimes

	(self isRepeatableCommand: lastCommand) ifFalse: [ ^self signalInvalidCommand ].
	
	aNumberOfTimes timesRepeat: [ self processCommand: lastCommand ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
runGuardedFrom: aStreamOfCommands

	| guardedRun |
	
	guardedRun := run startGuardedRunOf: self.
	run := guardedRun.
	[ [ self processCommandsOf: guardedRun from: aStreamOfCommands ]
		on: Error
		do: [ :anError |
			guardedRun undo.
			anError pass ] ]
		ensure: [ run := UnguardedRun new ]! !

!SurveyCrawler methodsFor: 'commands' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
isGuardedRunEndCommand: aCommand

	^aCommand = $)! !

!SurveyCrawler methodsFor: 'commands' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
isGuardedRunStartCommand: aCommand

	^aCommand = $(! !

!SurveyCrawler methodsFor: 'commands' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
isRepeatableCommand: aCommand

	^(self isAdvanceCommand: aCommand) 
		or: [ (self isRetreatCommand: aCommand)
		or: [ (self isTurnClockwiseCommand: aCommand)
		or: [ self isTurnCounterClockwiseCommand: aCommand ] ] ]! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
turnClockwise
	
	self turnDoing: [ facing turnClockwise: self ] undoingWith: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
turnCounterClockwise
	
	self turnDoing: [ facing turnCounterClockwise: self ] undoingWith: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
turnDoing: aTurn undoingWith: anUndoTurn
	
	(sonar groundTypeAt: position) 
		turn: self 
		doing: [ 
			aTurn value.
			run register: anUndoTurn ]! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
at: aPosition facing: aFacingName
	
	^self at: aPosition facing: aFacingName sonar: SimulatedSonar new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar
	
	^self at: aPosition facing: aFacingName sonar: aSonar slidingDistanceGenerator: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar slidingDistanceGenerator: aSlidingDistanceGenerator
	
	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		sonar: aSonar 
		slidingDistanceGenerator: aSlidingDistanceGenerator! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 9:06:51 am (UTC)'!
slidingLimit
	
	^10! !

!SlidingDistanceGeneratorStub methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
initializeAnswering: aSlidingDistance

	slidingDistance := aSlidingDistance! !

!SlidingDistanceGeneratorStub methodsFor: 'generating' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
nextInteger: aLimit

	requestedLimit := aLimit.
	^slidingDistance! !

!SlidingDistanceGeneratorStub methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
requestedLimit

	^requestedLimit! !

!SlidingDistanceGeneratorStub class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
answering: aSlidingDistance

	^self new initializeAnswering: aSlidingDistance! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:32:07 pm (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:32:38 pm (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:33:00 pm (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:34:11 pm (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:34:03 pm (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:35:16 pm (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: crawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:35:37 pm (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:35:52 pm (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:36:09 pm (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:36:32 pm (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:37:31 pm (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:38:17 pm (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:38:40 pm (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:39:01 pm (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:39:23 pm (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:39:54 pm (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [SurveyCrawler at: 1@2 facing: #X ]
		raise: Error
		withExceptionDo: [:anError |
			self assert: SurveyCrawler invalidFacingErrorDescription equals: anError messageText ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
test17DigitRepeatsAdvanceTheDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
test18NineRepeatsTheLastCommandElevenTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
test19DigitRepeatsRetreat

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
test20DigitRepeatsTurns

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h2'.
	self assert: (crawler isAt: 1@2 facing: #Right).
	
	crawler process: 'g0'.
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
test21DigitWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '0' ]
		failWith: crawler invalidCommandErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
test22RepetitionIsASingleDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a12' ]
		failWith: crawler invalidCommandErrorDescription 
		leaving: crawler at: 1@6 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
test23RepetitionOnlyAppliesToMovementCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)0' ]
		failWith: crawler invalidCommandErrorDescription 
		leaving: crawler at: 1@3 facing: #Up.
	self 
		should: [ crawler process: '(0)' ]
		failWith: crawler invalidCommandErrorDescription 
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
test24RepetitionDoesNotSpanDifferentProcessCalls

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	crawler process: 'a'.
	
	self 
		should: [ crawler process: '0' ]
		failWith: crawler invalidCommandErrorDescription 
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
test25CanNotAdvanceToABoulder

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeBoulderAt: 1@3.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
	
	self 
		should: [ crawler process: 'a' ]
		failWith: crawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
test26CanNotRetreatToABoulder

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeBoulderAt: 1@1.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
	
	self 
		should: [ crawler process: 't' ]
		failWith: crawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test27CanNotTurnOnABoulder

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeBoulderAt: 1@2.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
	
	self 
		should: [ crawler process: 'g' ]
		failWith: crawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up.
	self 
		should: [ crawler process: 'h' ]
		failWith: crawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test28CommandsBeforeAProblemOutsideAGuardedRunAreKept

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeBoulderAt: 1@4.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
	
	self 
		should: [ crawler process: 'aah' ]
		failWith: crawler boulderFoundErrorDescription 
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test29AdvancingToSiltSlidesARandomNumberOfCells

	| sonar generator crawler |
	
	sonar := SimulatedSonar new.
	sonar placeSiltAt: 1@3.
	generator := SlidingDistanceGeneratorStub answering: 4.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar slidingDistanceGenerator: generator.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up).
	self assert: SurveyCrawler slidingLimit equals: generator requestedLimit.
	self assert: 10 equals: SurveyCrawler slidingLimit! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test30SlidingOneCellEndsOnTheSilt

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeSiltAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up on: sonar slidingDistance: 1.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test31RetreatingToSiltSlidesBackwards

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeSiltAt: 0@2.
	crawler := self crawlerAt: 1@2 facing: #Right on: sonar slidingDistance: 10.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: -9@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test32SlidingWithARealRandomEndsWithinTheSlidingLimit

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeSiltAt: 1@3.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :y | crawler isAt: 1@y facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test33SiltDoesNotAffectTurning

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeSiltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up on: sonar slidingDistance: 5.
	
	crawler process: 'hgg'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test34SlidingStopsInFrontOfABoulder

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeSiltAt: 1@3.
	sonar placeBoulderAt: 1@6.
	crawler := self crawlerAt: 1@2 facing: #Up on: sonar slidingDistance: 10.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test35GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aah)'.
	
	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test36EmptyGuardedRunDoesNothing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '()'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test37BoulderInAGuardedRunReturnsToTheInitialPosition

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeBoulderAt: 1@4.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: crawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test38ProblemInAGuardedRunUndoesAllKindOfMovements

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeBoulderAt: 0@0.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
	
	self 
		should: [ crawler process: '(gahtt)' ]
		failWith: crawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test39ProblemInRepeatedCommandsOfAGuardedRunUndoesThem

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeBoulderAt: 1@5.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
	
	self 
		should: [ crawler process: '(a3)' ]
		failWith: crawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test40SiltInAGuardedRunReturnsToTheInitialPosition

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeSiltAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up on: sonar slidingDistance: 3.
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: crawler siltReachedDuringGuardedRunErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test41TurningOnSiltInAGuardedRunIsNotAProblem

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeSiltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up on: sonar slidingDistance: 3.
	
	crawler process: '(h)'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test42InvalidCommandInAGuardedRunReturnsToTheInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ahx)' ]
		failWith: crawler invalidCommandErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test43GuardedRunsCanNotBeNested

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		failWith: crawler nestedGuardedRunErrorDescription 
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test44GuardedRunMustBeFinished

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		failWith: crawler unfinishedGuardedRunErrorDescription 
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test45GuardedRunCanNotBeFinishedWithoutBeingStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)a)' ]
		failWith: crawler guardedRunNotStartedErrorDescription 
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test46SeveralGuardedRunsCanBeProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test47ProblemInAGuardedRunDoesNotUndoPreviousGuardedRuns

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeBoulderAt: 1@5.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
	
	self 
		should: [ crawler process: '(a)a(aa)' ]
		failWith: crawler boulderFoundErrorDescription 
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:41 am (UTC)'!
test48GuardedRunEndsWhenProcessingFailsInsideIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	self should: [ crawler process: '(ax' ] raise: Error - MessageNotUnderstood.
	
	self 
		should: [ crawler process: ')' ]
		failWith: crawler guardedRunNotStartedErrorDescription 
		leaving: crawler at: 1@2 facing: #Up.
	crawler process: '(a)(a)'.
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:07:50 am (UTC)'!
test49SlidingOutsideAGuardedRunIsNotUndoneByALaterGuardedRun

	| sonar crawler |
	
	sonar := SimulatedSonar new.
	sonar placeSiltAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up on: sonar slidingDistance: 2.
	
	self 
		should: [ crawler process: 'a(hx)' ]
		failWith: crawler invalidCommandErrorDescription 
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'crawler creation' stamp: 'HAW 17/Sep/2026, 9:07:40 am (UTC)'!
crawlerAt: aPosition facing: aFacingName on: aSonar slidingDistance: aSlidingDistance

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: aSonar 
		slidingDistanceGenerator: (SlidingDistanceGeneratorStub answering: aSlidingDistance)! !
