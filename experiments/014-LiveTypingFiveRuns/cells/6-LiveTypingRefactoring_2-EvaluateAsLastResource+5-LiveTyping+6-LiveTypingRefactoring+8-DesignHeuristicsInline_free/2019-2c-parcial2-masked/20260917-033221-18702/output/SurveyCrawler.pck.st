'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:36:47 am'!
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

!classDefinition: #CrawlerMovement category: #SurveyCrawler!
Object subclass: #CrawlerMovement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerMovement class' category: #SurveyCrawler!
CrawlerMovement class
	instanceVariableNames: ''!

!classDefinition: #CrawlerDisplacement category: #SurveyCrawler!
CrawlerMovement subclass: #CrawlerDisplacement
	instanceVariableNames: 'displacement'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerDisplacement class' category: #SurveyCrawler!
CrawlerDisplacement class
	instanceVariableNames: ''!

!classDefinition: #CrawlerTurn category: #SurveyCrawler!
CrawlerMovement subclass: #CrawlerTurn
	instanceVariableNames: 'previousFacing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurn class' category: #SurveyCrawler!
CrawlerTurn class
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
	instanceVariableNames: 'movements'
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
	instanceVariableNames: 'slidingDistanceGenerator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SiltGround class' category: #SurveyCrawler!
SiltGround class
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

!classDefinition: #SeabedSonarSimulator category: #'SurveyCrawler-Tests'!
Object subclass: #SeabedSonarSimulator
	instanceVariableNames: 'groundTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SeabedSonarSimulator class' category: #'SurveyCrawler-Tests'!
SeabedSonarSimulator class
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

!CrawlerMovement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerDisplacement methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
initializeBy: aDisplacement

	displacement := aDisplacement! !

!CrawlerDisplacement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
undoOn: aCrawler

	aCrawler displaceBy: displacement negated! !

!CrawlerDisplacement class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
by: aDisplacement

	^self new initializeBy: aDisplacement! !

!CrawlerTurn methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
initializeFrom: aPreviousFacing

	previousFacing := aPreviousFacing! !

!CrawlerTurn methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
undoOn: aCrawler

	aCrawler face: previousFacing! !

!CrawlerTurn class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
from: aPreviousFacing

	^self new initializeFrom: aPreviousFacing! !

!CrawlerRun methodsFor: 'recording' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
record: aMovement

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
slide: aCrawler by: aDisplacement

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
abort: aCrawler because: anError

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
assertIsFinishedFor: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
finishGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
startGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
initialize

	movements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'recording' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
record: aMovement

	movements add: aMovement! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
slide: aCrawler by: aDisplacement

	aCrawler signalSiltFoundInGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
abort: aCrawler because: anError

	aCrawler finishGuardedRun.
	movements reverseDo: [ :aMovement | aMovement undoOn: aCrawler ].
	anError pass! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
assertIsFinishedFor: aCrawler

	aCrawler signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
finishGuardedRunOf: aCrawler

	aCrawler finishGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler signalNestedGuardedRun! !

!CrawlerUnguardedRun methodsFor: 'recording' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
record: aMovement

	! !

!CrawlerUnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
slide: aCrawler by: aDisplacement

	aCrawler displaceBy: aDisplacement! !

!CrawlerUnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
abort: aCrawler because: anError

	anError pass! !

!CrawlerUnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
assertIsFinishedFor: aCrawler

	! !

!CrawlerUnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
finishGuardedRunOf: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerUnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler startGuardedRun! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
turn: aCrawler doing: aTurningBlock

	self subclassResponsibility! !

!BoulderGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!BoulderGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
turn: aCrawler doing: aTurningBlock

	aCrawler signalBoulderFound! !

!FirmSandGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler displaceBy: aDirection! !

!FirmSandGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
turn: aCrawler doing: aTurningBlock

	aTurningBlock value! !

!SiltGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slideBy: aDirection * self slidingDistance! !

!SiltGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
slidingDistance

	^slidingDistanceGenerator nextInteger: self class slidingLimit! !

!SiltGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
turn: aCrawler doing: aTurningBlock

	aTurningBlock value! !

!SiltGround methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
initializeSlidingWith: aSlidingDistanceGenerator

	slidingDistanceGenerator := aSlidingDistanceGenerator! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
slidingWith: aSlidingDistanceGenerator

	^self new initializeSlidingWith: aSlidingDistanceGenerator! !

!SiltGround class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
slidingLimit

	^10! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
signalBoulderFound
	
	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
signalGuardedRunNotStarted
	
	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
signalInvalidCommand
	
	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
signalNestedGuardedRun
	
	self error: self class nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
signalSiltFoundInGuardedRun
	
	self error: self class siltFoundInGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	run := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
face: aFacing
	
	run record: (CrawlerTurn from: facing).
	facing := aFacing! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
faceDown
	
	self face: CrawlerFacingDown new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
faceLeft
	
	self face: CrawlerFacingLeft new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
faceRight
	
	self face: CrawlerFacingRight new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
faceUp
	
	self face: CrawlerFacingUp new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
groundBelow
	
	^sonar groundTypeAt: position! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
turnClockwise
	
	self groundBelow turn: self doing: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
turnCounterClockwise
	
	self groundBelow turn: self doing: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:19 pm (UTC)'!
isAdvanceCommand: aCommand

	^aCommand = $a ! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
isFinishGuardedRunCommand: aCommand

	^aCommand = $)! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
isRepeatableCommand: aCommand

	^(self isAdvanceCommand: aCommand)
		or: [ (self isRetreatCommand: aCommand)
		or: [ (self isTurnClockwiseCommand: aCommand)
		or: [ self isTurnCounterClockwiseCommand: aCommand ] ] ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
isRepetitionNextIn: aCommandStream

	^aCommandStream atEnd not and: [ aCommandStream peek isDigit ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:51 pm (UTC)'!
isRetreatCommand: aCommand

	^aCommand = $t! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
isStartGuardedRunCommand: aCommand

	^aCommand = $(! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:21 pm (UTC)'!
isTurnClockwiseCommand: aCommand

	^aCommand = $h! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:51 pm (UTC)'!
isTurnCounterClockwiseCommand: aCommand

	^aCommand = $g! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
displaceBy: aDisplacement
	
	run record: (CrawlerDisplacement by: aDisplacement).
	position := position + aDisplacement! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
moveDown
	
	self moveTowards: 0@-1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
moveLeft
	
	self moveTowards: -1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
moveRight
	
	self moveTowards: 1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
moveTowards: aDirection
	
	(sonar groundTypeAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
moveUp
	
	self moveTowards: 0@1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
slideBy: aDisplacement
	
	run slide: self by: aDisplacement! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
process: aSequenceOfCommands

	[ self processAll: (ReadStream on: aSequenceOfCommands) ]
		on: Error
		do: [ :anError | run abort: self because: anError ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
processAll: aCommandStream

	[ aCommandStream atEnd ] whileFalse: [ self processNextCommandOf: aCommandStream ].
	run assertIsFinishedFor: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
processCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].
	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^ run startGuardedRunOf: self ].
	(self isFinishGuardedRunCommand: aCommand) ifTrue: [ ^ run finishGuardedRunOf: self ].

	self signalInvalidCommand.! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
processNextCommandOf: aCommandStream

	| command |
	
	command := aCommandStream next.
	self processCommand: command.
	(self isRepeatableCommand: command) ifTrue: [ self repeat: command asIndicatedIn: aCommandStream ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
repeat: aCommand asIndicatedIn: aCommandStream

	(self isRepetitionNextIn: aCommandStream) ifTrue: [
		(self repetitionsIndicatedBy: aCommandStream next) timesRepeat: [ self processCommand: aCommand ] ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
repetitionsIndicatedBy: aDigit

	^aDigit digitValue + 2! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
finishGuardedRun
	
	run := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:35:09 am (UTC)'!
startGuardedRun
	
	run := CrawlerGuardedRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar
	
	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
boulderFoundErrorDescription
	
	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
guardedRunNotStartedErrorDescription
	
	^'Guarded run was not started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'A guarded run can not be started during another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
siltFoundInGuardedRunErrorDescription
	
	^'Silt found during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:35:08 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'Guarded run was not finished'! !

!SeabedSonarSimulator methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
initializeDetecting: aGroundTypesByPosition

	groundTypes := aGroundTypesByPosition! !

!SeabedSonarSimulator methodsFor: 'detecting' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
groundTypeAt: aPosition

	^groundTypes at: aPosition ifAbsent: [ FirmSandGround new ]! !

!SeabedSonarSimulator class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:35:10 am (UTC)'!
detecting: aGroundTypesByPosition

	^self new initializeDetecting: aGroundTypesByPosition! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ self crawlerAt: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test17DigitAfterAdvanceAdvancesTwoMoreTimesThanTheDigit

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:34 am (UTC)'!
test18DigitAfterRetreatRetreatsTwoMoreTimesThanTheDigit

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't9'.
	
	self assert: (crawler isAt: 1@-10 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:34 am (UTC)'!
test19DigitAfterTurnClockwiseTurnsTwoMoreTimesThanTheDigit

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test20DigitAfterTurnCounterClockwiseTurnsTwoMoreTimesThanTheDigit

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test21DigitWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '3' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test22DigitAfterRepetitionIsInvalid

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@5 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test23DigitAfterGuardedRunFinishIsInvalid

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)0' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test24AdvancingToBoulderRaisesErrorAndCrawlerDoesNotMove

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@3.
	
	self 
		should: [ crawler process: 'a' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test25RetreatingToBoulderRaisesErrorAndCrawlerDoesNotMove

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@1.
	
	self 
		should: [ crawler process: 't' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
test26TurningOnBoulderRaisesErrorAndCrawlerDoesNotTurn

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@2.
	
	self 
		should: [ crawler process: 'g' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test27AdvancingToSiltSlidesTheDistanceGenerated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@3 slidingWith: self.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test28AdvancingToSiltSlidesBetweenOneAndTenCells

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@3 slidingWith: Random new.
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aCoordinate | crawler isAt: 1@aCoordinate facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test29RetreatingToSiltSlidesBackwards

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@1 slidingWith: self.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test30TurningOnSiltTurnsAsOnFirmSand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@2 slidingWith: self.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test31GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: '(ah)'.
	
	self assert: (crawler isAt: 1@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test32BoulderDuringGuardedRunRaisesErrorAndUndoesMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test33InvalidCommandDuringGuardedRunRaisesErrorAndUndoesMovementsAndTurns

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(hatgx)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test34SiltDuringGuardedRunRaisesErrorAndUndoesMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@4 slidingWith: self.
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler siltFoundInGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test35GuardedRunInsideGuardedRunRaisesErrorAndUndoesMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler nestedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test36UnfinishedGuardedRunRaisesErrorAndUndoesMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler unfinishedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test37FinishingNotStartedGuardedRunRaisesError

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler guardedRunNotStartedErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test38SeveralGuardedRunsAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test39ErrorAfterFinishedGuardedRunDoesNotUndoIt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(aa)x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test40BoulderDuringRepetitionInGuardedRunUndoesRepeatedMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@6.
	
	self 
		should: [ crawler process: '(a3)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:36:25 am (UTC)'!
test41GuardedRunStartedOnSiltUndoesMovementsBackOntoSilt

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary 
			with: 1@2 -> (SiltGround slidingWith: self) 
			with: 1@4 -> BoulderGround new).
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
crawlerAt: aPosition facing: aFacingName

	^self crawlerAt: aPosition facing: aFacingName detecting: Dictionary new! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
crawlerAt: aPosition facing: aFacingName detecting: aGroundTypesByPosition

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: (SeabedSonarSimulator detecting: aGroundTypesByPosition)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
crawlerAt: aPosition facing: aFacingName withBoulderAt: aBoulderPosition

	^self 
		crawlerAt: aPosition 
		facing: aFacingName 
		detecting: (Dictionary with: aBoulderPosition -> BoulderGround new)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
crawlerAt: aPosition facing: aFacingName withSiltAt: aSiltPosition slidingWith: aSlidingDistanceGenerator

	^self 
		crawlerAt: aPosition 
		facing: aFacingName 
		detecting: (Dictionary with: aSiltPosition -> (SiltGround slidingWith: aSlidingDistanceGenerator))! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:36:24 am (UTC)'!
nextInteger: aLimit

	^aLimit! !
