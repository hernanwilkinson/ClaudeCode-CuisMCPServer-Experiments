'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:57:51 am'!
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
	instanceVariableNames: 'undoMovements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerGuardedRun class' category: #SurveyCrawler!
CrawlerGuardedRun class
	instanceVariableNames: ''!

!classDefinition: #CrawlerNormalRun category: #SurveyCrawler!
CrawlerRun subclass: #CrawlerNormalRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerNormalRun class' category: #SurveyCrawler!
CrawlerNormalRun class
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
	instanceVariableNames: 'random'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SiltGround class' category: #SurveyCrawler!
SiltGround class
	instanceVariableNames: ''!

!classDefinition: #SimulatedSonar category: #SurveyCrawler!
Object subclass: #SimulatedSonar
	instanceVariableNames: 'groundsByPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SimulatedSonar class' category: #SurveyCrawler!
SimulatedSonar class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar run'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #LimitAnsweringRandom category: #'SurveyCrawler-Tests'!
Object subclass: #LimitAnsweringRandom
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'LimitAnsweringRandom class' category: #'SurveyCrawler-Tests'!
LimitAnsweringRandom class
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

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
assertIsFinishedFor: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
endGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
startGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
assertAllowsSlidingOf: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
recordUndo: anUndoMovement

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
undo

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
initialize

	undoMovements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
assertIsFinishedFor: aCrawler

	aCrawler signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
endGuardedRunOf: aCrawler

	aCrawler runNormally! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler signalNestedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
assertAllowsSlidingOf: aCrawler

	aCrawler signalSiltReachedDuringGuardedRun! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
recordUndo: anUndoMovement

	undoMovements addFirst: anUndoMovement! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
undo

	undoMovements do: [ :anUndoMovement | anUndoMovement value ]! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
assertIsFinishedFor: aCrawler! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
endGuardedRunOf: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler runGuarded! !

!CrawlerNormalRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
assertAllowsSlidingOf: aCrawler! !

!CrawlerNormalRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
recordUndo: anUndoMovement! !

!CrawlerNormalRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
undo! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
assertAllowsTurningOf: aCrawler

	self subclassResponsibility! !

!BoulderGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler signalBoulderAhead! !

!BoulderGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
assertAllowsTurningOf: aCrawler

	aCrawler signalCanNotTurnOnBoulder! !

!FirmSandGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler stepTowards: aDirection! !

!FirmSandGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
assertAllowsTurningOf: aCrawler! !

!SiltGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler slideTowards: aDirection distance: (random nextInteger: self class slidingLimit)! !

!SiltGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
assertAllowsTurningOf: aCrawler! !

!SiltGround methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
initializeSlidingWith: aRandom

	random := aRandom! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
slidingRandomly

	^self slidingWith: Random new! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
slidingWith: aRandom

	^self new initializeSlidingWith: aRandom! !

!SiltGround class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
slidingLimit

	^10! !

!SimulatedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
initializeDetecting: aGroundsByPosition

	groundsByPosition := aGroundsByPosition! !

!SimulatedSonar methodsFor: 'detecting' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSandGround new ]! !

!SimulatedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
detecting: aGroundsByPosition

	^self new initializeDetecting: aGroundsByPosition copy! !

!SimulatedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
overFirmSand

	^self detecting: Dictionary new! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
signalBoulderAhead
	
	self error: self class boulderAheadErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
signalCanNotTurnOnBoulder
	
	self error: self class canNotTurnOnBoulderErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
signalGuardedRunNotStarted
	
	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
signalInvalidCommand
	
	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
signalInvalidRepetition
	
	self error: self class invalidRepetitionErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
signalNestedGuardedRun
	
	self error: self class nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
signalSiltReachedDuringGuardedRun
	
	self error: self class siltReachedDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	run := CrawlerNormalRun new! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
turnClockwise
	
	(sonar groundAt: position) assertAllowsTurningOf: self.
	facing turnClockwise: self.
	run recordUndo: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
turnCounterClockwise
	
	(sonar groundAt: position) assertAllowsTurningOf: self.
	facing turnCounterClockwise: self.
	run recordUndo: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:19 pm (UTC)'!
isAdvanceCommand: aCommand

	^aCommand = $a ! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
isEndGuardedRunCommand: aCommand

	^aCommand = $)! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
isMovementCommand: aCommand

	^(self isAdvanceCommand: aCommand) or: [ self isRetreatCommand: aCommand ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
isRepeatableCommand: aCommand

	^(self isMovementCommand: aCommand) or: [ self isTurnCommand: aCommand ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:51 pm (UTC)'!
isRetreatCommand: aCommand

	^aCommand = $t! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
isStartGuardedRunCommand: aCommand

	^aCommand = $(! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:21 pm (UTC)'!
isTurnClockwiseCommand: aCommand

	^aCommand = $h! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
isTurnCommand: aCommand

	^(self isTurnClockwiseCommand: aCommand) or: [ self isTurnCounterClockwiseCommand: aCommand ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:51 pm (UTC)'!
isTurnCounterClockwiseCommand: aCommand

	^aCommand = $g! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
moveDown
	
	self moveTowards: 0@-1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
moveLeft
	
	self moveTowards: -1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
moveRight
	
	self moveTowards: 1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
moveTowards: aDirection
	
	(sonar groundAt: position + aDirection) receive: self movingTowards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
moveUp
	
	self moveTowards: 0@1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
slideTowards: aDirection distance: aDistance
	
	run assertAllowsSlidingOf: self.
	self stepTowards: aDirection * aDistance! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
stepTowards: aDisplacement
	
	position := position + aDisplacement.
	run recordUndo: [ position := position - aDisplacement ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
assertIsRepeatable: aCommand

	(self isRepeatableCommand: aCommand) ifFalse: [ self signalInvalidRepetition ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
noPreviousCommand

	^Character null! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
process: aSequenceOfCommands

	[ self processAll: aSequenceOfCommands.
	run assertIsFinishedFor: self ]
		on: Error
		do: [ :anError |
			self recoverFromFailedRun.
			anError pass ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
processAll: aSequenceOfCommands

	aSequenceOfCommands
		inject: self noPreviousCommand
		into: [ :aPreviousCommand :aCommand | self processCommand: aCommand after: aPreviousCommand ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
processCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].
	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^ run startGuardedRunOf: self ].
	(self isEndGuardedRunCommand: aCommand) ifTrue: [ ^ run endGuardedRunOf: self ].

	self signalInvalidCommand.! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
processCommand: aCommand after: aPreviousCommand

	aCommand isDigit
		ifTrue: [ self repeat: aPreviousCommand times: aCommand digitValue + 2 ]
		ifFalse: [ self processCommand: aCommand ].
	^aCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
repeat: aCommand times: aNumberOfRepetitions

	self assertIsRepeatable: aCommand.
	aNumberOfRepetitions timesRepeat: [ self processCommand: aCommand ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
recoverFromFailedRun

	run undo.
	self runNormally! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
runGuarded

	run := CrawlerGuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:56:36 am (UTC)'!
runNormally

	run := CrawlerNormalRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
at: aPosition facing: aFacingName
	
	^self at: aPosition facing: aFacingName sonar: SimulatedSonar overFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar
	
	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
boulderAheadErrorDescription
	
	^'Can not move onto a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
canNotTurnOnBoulderErrorDescription
	
	^'Can not turn on a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
guardedRunNotStartedErrorDescription
	
	^'Guarded run was not started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
invalidRepetitionErrorDescription
	
	^'Only a, t, h and g commands can be repeated'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
siltReachedDuringGuardedRunErrorDescription
	
	^'Silt reached during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:56:35 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'Guarded run was not finished'! !

!LimitAnsweringRandom methodsFor: 'random' stamp: 'HAW 17/Sep/2026, 6:56:37 am (UTC)'!
nextInteger: aLimit

	^aLimit! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertThat: crawler
		failsProcessing: 'x'
		with: SurveyCrawler invalidCommandErrorDescription
		endingAt: 1@2
		facing: #Up! !

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

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
assertThat: aCrawler failsProcessing: aSequenceOfCommands with: anErrorDescription endingAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
crawlerFacingUpAt: aPosition over: aGroundsByPosition

	^SurveyCrawler 
		at: aPosition 
		facing: #Up 
		sonar: (SimulatedSonar detecting: aGroundsByPosition)! !

!SurveyCrawlerTest methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
crawlerFacingUpAt: aPosition withBoulderAt: aBoulderPosition

	^self crawlerFacingUpAt: aPosition over: (Dictionary with: aBoulderPosition -> BoulderGround new)! !

!SurveyCrawlerTest methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
crawlerFacingUpAt: aPosition withSiltSlidingToTheLimitAt: aSiltPosition

	^self 
		crawlerFacingUpAt: aPosition 
		over: (Dictionary with: aSiltPosition -> (SiltGround slidingWith: LimitAnsweringRandom new))! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test17DigitAfterAdvanceRepeatsItDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test18DigitAfterRetreatRepeatsItDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test19DigitAfterTurnClockwiseRepeatsItDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h2'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test20DigitAfterTurnCounterClockwiseRepeatsItDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test21NineIsTheLargestRepetition

	| crawler |
	
	crawler := SurveyCrawler at: 0@0 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 0@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test22DigitWithoutPreviousCommandIsAnInvalidRepetition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertThat: crawler
		failsProcessing: '0'
		with: SurveyCrawler invalidRepetitionErrorDescription
		endingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test23RepetitionIsASingleDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertThat: crawler
		failsProcessing: 'a00'
		with: SurveyCrawler invalidRepetitionErrorDescription
		endingAt: 1@5
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test24StartOfGuardedRunCanNotBeRepeated

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertThat: crawler
		failsProcessing: 'a(0'
		with: SurveyCrawler invalidRepetitionErrorDescription
		endingAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test25EndOfGuardedRunCanNotBeRepeated

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertThat: crawler
		failsProcessing: '(a)0'
		with: SurveyCrawler invalidRepetitionErrorDescription
		endingAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test26AdvancingOntoFirmSandMovesOneCell

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 over: (Dictionary with: 1@3 -> FirmSandGround new).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test27CanNotAdvanceOntoABoulder

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withBoulderAt: 1@3.
	
	self 
		assertThat: crawler
		failsProcessing: 'a'
		with: SurveyCrawler boulderAheadErrorDescription
		endingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test28CanNotRetreatOntoABoulder

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withBoulderAt: 1@1.
	
	self 
		assertThat: crawler
		failsProcessing: 't'
		with: SurveyCrawler boulderAheadErrorDescription
		endingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test29CanNotTurnCounterClockwiseOnABoulder

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withBoulderAt: 1@2.
	
	self 
		assertThat: crawler
		failsProcessing: 'g'
		with: SurveyCrawler canNotTurnOnBoulderErrorDescription
		endingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test30CanNotTurnClockwiseOnABoulder

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withBoulderAt: 1@2.
	
	self 
		assertThat: crawler
		failsProcessing: 'h'
		with: SurveyCrawler canNotTurnOnBoulderErrorDescription
		endingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test31BoulderOutsideAGuardedRunKeepsTheMovementsAlreadyDone

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withBoulderAt: 1@4.
	
	self 
		assertThat: crawler
		failsProcessing: 'aa'
		with: SurveyCrawler boulderAheadErrorDescription
		endingAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test32AdvancingOntoSiltSlidesUpToTheSlidingLimit

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withSiltSlidingToTheLimitAt: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test33RetreatingOntoSiltSlidesBackwards

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withSiltSlidingToTheLimitAt: 1@1.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test34AdvancingOntoRandomSiltSlidesBetweenOneAndTenCells

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 over: (Dictionary with: 1@3 -> SiltGround slidingRandomly).
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aVerticalPosition | crawler isAt: 1@aVerticalPosition facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test35SiltDoesNotAffectTurning

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withSiltSlidingToTheLimitAt: 1@2.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:38 am (UTC)'!
test36GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aha)'.
	
	self assert: (crawler isAt: 2@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test37BoulderDuringGuardedRunUndoesMovementsToItsStart

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withBoulderAt: 1@4.
	
	self 
		assertThat: crawler
		failsProcessing: '(aa)'
		with: SurveyCrawler boulderAheadErrorDescription
		endingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:38 am (UTC)'!
test38FailedGuardedRunUndoesTurnsAndRetreats

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withBoulderAt: 0@1.
	
	self 
		assertThat: crawler
		failsProcessing: '(tga)'
		with: SurveyCrawler boulderAheadErrorDescription
		endingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test39SiltDuringGuardedRunUndoesMovementsToItsStart

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withSiltSlidingToTheLimitAt: 1@4.
	
	self 
		assertThat: crawler
		failsProcessing: '(aa)'
		with: SurveyCrawler siltReachedDuringGuardedRunErrorDescription
		endingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test40InvalidCommandDuringGuardedRunUndoesMovementsToItsStart

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertThat: crawler
		failsProcessing: '(ahx)'
		with: SurveyCrawler invalidCommandErrorDescription
		endingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test41InvalidRepetitionDuringGuardedRunUndoesMovementsToItsStart

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertThat: crawler
		failsProcessing: '(a11)'
		with: SurveyCrawler invalidRepetitionErrorDescription
		endingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test42RepetitionsDuringFailedGuardedRunAreUndone

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withBoulderAt: 1@7.
	
	self 
		assertThat: crawler
		failsProcessing: '(a9)'
		with: SurveyCrawler boulderAheadErrorDescription
		endingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test43SeveralGuardedRunsCanBeProcessedInOneSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:38 am (UTC)'!
test44FailedGuardedRunDoesNotUndoMovementsDoneBeforeIt

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withBoulderAt: 2@4.
	
	self 
		assertThat: crawler
		failsProcessing: 'a(a)h(a)'
		with: SurveyCrawler boulderAheadErrorDescription
		endingAt: 1@4
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test45GuardedRunCanNotBeStartedInsideAnotherOne

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertThat: crawler
		failsProcessing: 'aa(aa(ht)a)'
		with: SurveyCrawler nestedGuardedRunErrorDescription
		endingAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test46UnfinishedGuardedRunUndoesMovementsToItsStart

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertThat: crawler
		failsProcessing: 'a(aa'
		with: SurveyCrawler unfinishedGuardedRunErrorDescription
		endingAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test47GuardedRunCanNotBeEndedWithoutBeingStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertThat: crawler
		failsProcessing: 'a)a'
		with: SurveyCrawler guardedRunNotStartedErrorDescription
		endingAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test48SiltAfterGuardedRunEndsSlides

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withSiltSlidingToTheLimitAt: 1@4.
	
	crawler process: '(a)a'.
	
	self assert: (crawler isAt: 1@13 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test49SiltAfterFailedGuardedRunSlides

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withSiltSlidingToTheLimitAt: 1@3.
	
	self should: [ crawler process: '(x)' ] raise: Error - MessageNotUnderstood.
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:57:29 am (UTC)'!
test50UndoingAGuardedRunStartedOnSiltDoesNotSlide

	| crawler |
	
	crawler := self crawlerFacingUpAt: 1@2 withSiltSlidingToTheLimitAt: 1@2.
	
	self 
		assertThat: crawler
		failsProcessing: '(aax)'
		with: SurveyCrawler invalidCommandErrorDescription
		endingAt: 1@2
		facing: #Up! !
