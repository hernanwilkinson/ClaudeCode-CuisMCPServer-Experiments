'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:26:17 am'!
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
	instanceVariableNames: 'undoingMovements'
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

!classDefinition: #Boulder category: #SurveyCrawler!
SeabedGround subclass: #Boulder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Boulder class' category: #SurveyCrawler!
Boulder class
	instanceVariableNames: ''!

!classDefinition: #FirmSand category: #SurveyCrawler!
SeabedGround subclass: #FirmSand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'FirmSand class' category: #SurveyCrawler!
FirmSand class
	instanceVariableNames: ''!

!classDefinition: #Silt category: #SurveyCrawler!
SeabedGround subclass: #Silt
	instanceVariableNames: 'slideLengthGenerator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Silt class' category: #SurveyCrawler!
Silt class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar run lastMovementCommand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #SonarSimulator category: #'SurveyCrawler-Tests'!
Object subclass: #SonarSimulator
	instanceVariableNames: 'groundsByPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SonarSimulator class' category: #'SurveyCrawler-Tests'!
SonarSimulator class
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

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:24:31 am (UTC)'!
direction

	self subclassResponsibility! !

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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:24:31 am (UTC)'!
direction

	^0@-1! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:50 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:55 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingDown class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 8:03:17 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:24:31 am (UTC)'!
direction

	^-1@0! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:41 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:26 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingLeft class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 8:03:23 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:24:31 am (UTC)'!
direction

	^1@0! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:54 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:42 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingRight class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 8:01:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:24:31 am (UTC)'!
direction

	^0@1! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:51 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:40 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingUp class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 8:03:11 pm (UTC)'!
facingName

	^#Up! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
assertIsFinishedFor: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
finishGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
startGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
record: anUndoingMovement

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
undoMovements

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
crawlerSlidOnSilt: aCrawler

	self subclassResponsibility! !

!GuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
initialize

	undoingMovements := OrderedCollection new! !

!GuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
assertIsFinishedFor: aCrawler

	aCrawler signalUnfinishedGuardedRun! !

!GuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
finishGuardedRunOf: aCrawler

	aCrawler finishGuardedRun! !

!GuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler signalNestedGuardedRun! !

!GuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
record: anUndoingMovement

	undoingMovements add: anUndoingMovement! !

!GuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
undoMovements

	undoingMovements reverseDo: [ :anUndoingMovement | anUndoingMovement value ]! !

!GuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
crawlerSlidOnSilt: aCrawler

	aCrawler signalSiltFoundDuringGuardedRun! !

!UnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
assertIsFinishedFor: aCrawler

	! !

!UnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
finishGuardedRunOf: aCrawler

	aCrawler signalNoGuardedRunToFinish! !

!UnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler startGuardedRun! !

!UnguardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
record: anUndoingMovement

	! !

!UnguardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
undoMovements

	! !

!UnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
crawlerSlidOnSilt: aCrawler

	! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:24:31 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:24:31 am (UTC)'!
assertCanTurnOn: aCrawler

	self subclassResponsibility! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!Boulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
assertCanTurnOn: aCrawler

	aCrawler signalBoulderFound! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:24:31 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler move: 1 cellsTowards: aDirection! !

!FirmSand methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:24:31 am (UTC)'!
assertCanTurnOn: aCrawler

	! !

!Silt methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
initializeSlidingUsing: aSlideLengthGenerator

	slideLengthGenerator := aSlideLengthGenerator! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slide: (slideLengthGenerator nextInteger: self class maximumSlideLength) cellsTowards: aDirection! !

!Silt methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
assertCanTurnOn: aCrawler

	! !

!Silt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
randomlySliding

	^self slidingUsing: Random new! !

!Silt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
slidingUsing: aSlideLengthGenerator

	^self new initializeSlidingUsing: aSlideLengthGenerator! !

!Silt class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:24:32 am (UTC)'!
maximumSlideLength

	^10! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
signalBoulderFound

	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
signalInvalidCommand

	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
signalNestedGuardedRun

	self error: self class nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
signalNoGuardedRunToFinish

	self error: self class noGuardedRunToFinishErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
signalSiltFoundDuringGuardedRun

	self error: self class siltFoundDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
signalUnfinishedGuardedRun

	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	run := UnguardedRun new.
	lastMovementCommand := #signalInvalidCommand! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:25:03 am (UTC)'!
assertCanTurn

	(sonar groundAt: position) assertCanTurnOn: self! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:25:03 am (UTC)'!
turnClockwise

	self assertCanTurn.
	facing turnClockwise: self.
	run record: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:25:03 am (UTC)'!
turnCounterClockwise

	self assertCanTurn.
	facing turnCounterClockwise: self.
	run record: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
advance

	self moveTowards: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:25:03 am (UTC)'!
displace: aNumberOfCells cellsTowards: aDirection

	position := position + (aDirection * aNumberOfCells)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:25:03 am (UTC)'!
move: aNumberOfCells cellsTowards: aDirection

	self displace: aNumberOfCells cellsTowards: aDirection.
	run record: [ self displace: aNumberOfCells cellsTowards: aDirection negated ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:25:03 am (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
retreat

	self moveTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:25:03 am (UTC)'!
slide: aNumberOfCells cellsTowards: aDirection

	self move: aNumberOfCells cellsTowards: aDirection.
	run crawlerSlidOnSilt: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
forgetLastMovementCommand

	lastMovementCommand := #signalInvalidCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
movementCommands

	^Dictionary new
		at: $a put: #advance;
		at: $t put: #retreat;
		at: $h put: #turnClockwise;
		at: $g put: #turnCounterClockwise;
		yourself! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
process: aSequenceOfCommands

	[ self processAll: aSequenceOfCommands ]
		on: Error
		do: [ :anError |
			self abortRun.
			anError pass ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
processAll: aSequenceOfCommands

	self forgetLastMovementCommand.
	aSequenceOfCommands do: [ :aCommand | self processCommand: aCommand ].
	run assertIsFinishedFor: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
processCommand: aCommand

	aCommand isDigit ifTrue: [ ^self repeatLastMovementCommand: aCommand digitValue + 2 ].
	aCommand = $( ifTrue: [ ^self processGuardedRunStart ].
	aCommand = $) ifTrue: [ ^self processGuardedRunFinish ].

	self processMovementCommand: aCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
processGuardedRunFinish

	self forgetLastMovementCommand.
	run finishGuardedRunOf: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
processGuardedRunStart

	self forgetLastMovementCommand.
	run startGuardedRunOf: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
processMovementCommand: aCommand

	lastMovementCommand := self movementCommands at: aCommand ifAbsent: [ ^self signalInvalidCommand ].
	self perform: lastMovementCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
repeatLastMovementCommand: aNumberOfTimes

	aNumberOfTimes timesRepeat: [ self perform: lastMovementCommand ].
	self forgetLastMovementCommand! !

!SurveyCrawler methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
abortRun

	| abortedRun |

	abortedRun := run.
	run := UnguardedRun new.
	abortedRun undoMovements! !

!SurveyCrawler methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
finishGuardedRun

	run := UnguardedRun new! !

!SurveyCrawler methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
startGuardedRun

	run := GuardedRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
boulderFoundErrorDescription

	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
nestedGuardedRunErrorDescription

	^'A guarded run can not be started during another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
noGuardedRunToFinishErrorDescription

	^'There is no guarded run to finish'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription

	^'Silt found during guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:25:02 am (UTC)'!
unfinishedGuardedRunErrorDescription

	^'Guarded run was not finished'! !

!SonarSimulator methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:25:03 am (UTC)'!
initializeWithGrounds: aGroundsByPosition

	groundsByPosition := aGroundsByPosition! !

!SonarSimulator methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 6:25:03 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSand new ]! !

!SonarSimulator class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:25:03 am (UTC)'!
onFirmSand

	^self withGrounds: Dictionary new! !

!SonarSimulator class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:25:03 am (UTC)'!
withGrounds: aGroundsByPosition

	^self new initializeWithGrounds: aGroundsByPosition! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:28 am (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:28 am (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:28 am (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:27 am (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:28 am (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:27 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:27 am (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:28 am (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:28 am (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:28 am (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:27 am (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:28 am (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:28 am (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:28 am (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:27 am (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:31 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self
		should: [ SurveyCrawler at: 1@2 facing: #X sonar: SonarSimulator onFirmSand ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test17aFollowedByZeroAdvancesThreeTimes

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	crawler process: 'a0'.

	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test18tFollowedByNineRetreatsTwelveTimes

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	crawler process: 't9'.

	self assert: (crawler isAt: 1@-10 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test19gFollowedByZeroTurnsCounterClockwiseThreeTimes

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	crawler process: 'g0'.

	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test20hFollowedByOneTurnsClockwiseFourTimes

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	crawler process: 'h1'.

	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test21SeveralGuardedRunsWithoutProblemsProcessAllCommands

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	crawler process: 'aha(aagt3)aa(ht)'.

	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test22GuardedRunWithoutProblemsKeepsItsMovements

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	crawler process: '(aah)'.

	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test23DigitAtTheBeginningIsAnInvalidCommand

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	self
		should: [ crawler process: '0' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test24DigitAfterDigitIsAnInvalidCommand

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	self
		should: [ crawler process: 'a00' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@5 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test25DigitAfterGuardedRunFinishIsAnInvalidCommand

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	self
		should: [ crawler process: '(a)0' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test26DigitAfterGuardedRunStartIsAnInvalidCommandAndCrawlerReturnsToGuardedRunStart

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	self
		should: [ crawler process: 'a(0)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test27AdvancingToABoulderFailsAndCrawlerDoesNotMove

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up with: Boulder new at: 1@3.

	self
		should: [ crawler process: 'a' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test28RetreatingToABoulderFailsAndCrawlerDoesNotMove

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up with: Boulder new at: 1@1.

	self
		should: [ crawler process: 't' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test29TurningCounterClockwiseOnABoulderFailsAndCrawlerDoesNotTurn

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up with: Boulder new at: 1@2.

	self
		should: [ crawler process: 'g' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test30TurningClockwiseOnABoulderFailsAndCrawlerDoesNotTurn

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up with: Boulder new at: 1@2.

	self
		should: [ crawler process: 'h' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test31RepeatedAdvanceStopsBeforeABoulder

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up with: Boulder new at: 1@4.

	self
		should: [ crawler process: 'a0' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test32BoulderDuringGuardedRunReturnsCrawlerToGuardedRunStart

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up with: Boulder new at: 1@4.

	self
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test33BoulderDuringGuardedRunUndoesTurns

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up with: Boulder new at: 2@2.

	self
		should: [ crawler process: '(ghha)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test34SiltDuringGuardedRunReturnsCrawlerToGuardedRunStart

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up with: Silt randomlySliding at: 1@4.

	self
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler siltFoundDuringGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test35InvalidCommandDuringGuardedRunReturnsCrawlerToGuardedRunStart

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	self
		should: [ crawler process: '(ahx)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test36FailedGuardedRunDoesNotUndoMovementsBeforeIt

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	self
		should: [ crawler process: 'a(ax)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test37FailedGuardedRunDoesNotUndoPreviousGuardedRuns

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	self
		should: [ crawler process: 'a(a)(ax)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test38FailedGuardedRunUndoesRepeatedCommands

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	self
		should: [ crawler process: '(h0a9x)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test39GuardedRunCanNotBeStartedDuringAnotherGuardedRun

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	self
		should: [ crawler process: 'aa(aa(ht)a)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler nestedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test40UnfinishedGuardedRunFailsAndReturnsCrawlerToGuardedRunStart

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	self
		should: [ crawler process: 'a(aa' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler unfinishedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:49 am (UTC)'!
test41FinishingAGuardedRunThatWasNotStartedFails

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.

	self
		should: [ crawler process: 'a)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler noGuardedRunToFinishErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:57 am (UTC)'!
test42AdvancingToSiltSlidesAsManyCellsAsGenerated

	| crawler expectedSlideLength |

	crawler := self crawlerAt: 1@2 facing: #Up with: (Silt slidingUsing: (Random seed: 7000)) at: 1@3.
	expectedSlideLength := (Random seed: 7000) nextInteger: Silt maximumSlideLength.

	crawler process: 'a'.

	self assert: (crawler isAt: 1@(2 + expectedSlideLength) facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:57 am (UTC)'!
test43AdvancingToSiltSlidesAtMostTenCells

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up with: Silt randomlySliding at: 1@3.

	crawler process: 'a'.

	self assert: ((3 to: 12) anySatisfy: [ :aVerticalPosition | crawler isAt: 1@aVerticalPosition facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:57 am (UTC)'!
test44RetreatingToSiltSlidesBackwards

	| crawler expectedSlideLength |

	crawler := self crawlerAt: 1@2 facing: #Up with: (Silt slidingUsing: (Random seed: 3000)) at: 1@1.
	expectedSlideLength := (Random seed: 3000) nextInteger: Silt maximumSlideLength.

	crawler process: 't'.

	self assert: (crawler isAt: 1@(2 - expectedSlideLength) facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:57 am (UTC)'!
test45TurningOnSiltTurnsAsOnFirmSand

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up with: Silt randomlySliding at: 1@2.

	crawler process: 'h'.

	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:57 am (UTC)'!
test46CommandsAfterAFailedGuardedRunAreNotGuarded

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	[ crawler process: '(a' ] on: Error do: [ :anError | ].

	self
		should: [ crawler process: 'ax' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:25:57 am (UTC)'!
test47LastCommandIsNotRepeatedInANewCommandSequence

	| crawler |

	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	crawler process: 'a'.

	self
		should: [ crawler process: '0' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'crawlers' stamp: 'HAW 17/Sep/2026, 6:25:27 am (UTC)'!
crawlerAt: aPosition facing: aFacingName with: aGround at: aGroundPosition

	^SurveyCrawler
		at: aPosition
		facing: aFacingName
		sonar: (SonarSimulator withGrounds: (Dictionary with: aGroundPosition -> aGround))! !

!SurveyCrawlerTest methodsFor: 'crawlers' stamp: 'HAW 17/Sep/2026, 6:25:27 am (UTC)'!
crawlerOnFirmSandAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: SonarSimulator onFirmSand! !
