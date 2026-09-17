'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 5:26:57 am'!
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

!classDefinition: #CrawlerRunMode category: #SurveyCrawler!
Object subclass: #CrawlerRunMode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRunMode class' category: #SurveyCrawler!
CrawlerRunMode class
	instanceVariableNames: ''!

!classDefinition: #CrawlerGuardedRun category: #SurveyCrawler!
CrawlerRunMode subclass: #CrawlerGuardedRun
	instanceVariableNames: 'undoMovements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerGuardedRun class' category: #SurveyCrawler!
CrawlerGuardedRun class
	instanceVariableNames: ''!

!classDefinition: #CrawlerNormalRun category: #SurveyCrawler!
CrawlerRunMode subclass: #CrawlerNormalRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerNormalRun class' category: #SurveyCrawler!
CrawlerNormalRun class
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

!classDefinition: #BoulderGround category: #SurveyCrawler!
SeabedGroundType subclass: #BoulderGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'BoulderGround class' category: #SurveyCrawler!
BoulderGround class
	instanceVariableNames: ''!

!classDefinition: #FirmSandGround category: #SurveyCrawler!
SeabedGroundType subclass: #FirmSandGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'FirmSandGround class' category: #SurveyCrawler!
FirmSandGround class
	instanceVariableNames: ''!

!classDefinition: #SiltGround category: #SurveyCrawler!
SeabedGroundType subclass: #SiltGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SiltGround class' category: #SurveyCrawler!
SiltGround class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar random runMode lastRepeatableCommand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #RandomSimulator category: #'SurveyCrawler-Tests'!
Object subclass: #RandomSimulator
	instanceVariableNames: 'integerToReturn limitsAskedFor'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'RandomSimulator class' category: #'SurveyCrawler-Tests'!
RandomSimulator class
	instanceVariableNames: ''!

!classDefinition: #SonarSimulator category: #'SurveyCrawler-Tests'!
Object subclass: #SonarSimulator
	instanceVariableNames: 'groundTypes'
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

!CrawlerRunMode methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
registerUndoMovement: anUndoMovement

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
slide: aCrawler by: aDelta

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
abortOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
assertFinishedOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
endGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
startGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
initialize

	undoMovements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
registerUndoMovement: anUndoMovement

	undoMovements addFirst: anUndoMovement! !

!CrawlerGuardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
slide: aCrawler by: aDelta

	aCrawler signalSiltFoundInGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
abortOn: aCrawler

	aCrawler abortGuardedRunUndoing: undoMovements! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
assertFinishedOn: aCrawler

	aCrawler signalGuardedRunNotFinished! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler endGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler signalNestedGuardedRun! !

!CrawlerNormalRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
registerUndoMovement: anUndoMovement

	! !

!CrawlerNormalRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
slide: aCrawler by: aDelta

	aCrawler slideUncontrolledBy: aDelta! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
abortOn: aCrawler

	! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
assertFinishedOn: aCrawler

	! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler startGuardedRun! !

!SeabedGroundType methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
move: aCrawler by: aDelta

	self subclassResponsibility! !

!SeabedGroundType methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
turn: aCrawler doing: aTurnBlock

	self subclassResponsibility! !

!BoulderGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
move: aCrawler by: aDelta

	aCrawler signalBoulderFound! !

!BoulderGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
turn: aCrawler doing: aTurnBlock

	aCrawler signalBoulderFound! !

!FirmSandGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
move: aCrawler by: aDelta

	aCrawler stepBy: aDelta! !

!FirmSandGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
turn: aCrawler doing: aTurnBlock

	aTurnBlock value! !

!SiltGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
move: aCrawler by: aDelta

	aCrawler slideBy: aDelta! !

!SiltGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
turn: aCrawler doing: aTurnBlock

	aTurnBlock value! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
boulderFoundErrorDescription
	
	^'Boulder found'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
guardedRunNotFinishedErrorDescription
	
	^'Guarded run was not finished'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
guardedRunNotStartedErrorDescription
	
	^'Can not end a guarded run that was not started'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:48:45 pm (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
invalidRepetitionErrorDescription
	
	^'Only a, t, h and g commands can be repeated'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'Can not start a guarded run inside another guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
signalBoulderFound
	
	self error: self boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
signalGuardedRunNotFinished
	
	self error: self guardedRunNotFinishedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
signalGuardedRunNotStarted
	
	self error: self guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:50:26 pm (UTC)'!
signalInvalidCommand
	
	self error: self invalidCommandErrorDescription ! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
signalInvalidRepetition
	
	self error: self invalidRepetitionErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
signalNestedGuardedRun
	
	self error: self nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
signalSiltFoundInGuardedRun
	
	self error: self siltFoundInGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
siltFoundInGuardedRunErrorDescription
	
	^'Silt found during guarded run'! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:25:45 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar random: aRandom

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	random := aRandom.
	runMode := CrawlerNormalRun new.
	lastRepeatableCommand := self nonRepeatableCommand! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:25:45 am (UTC)'!
turnClockwise
	
	self groundTypeHere turn: self doing: [ facing turnClockwise: self ].
	runMode registerUndoMovement: [ self turnCounterClockwise ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:25:45 am (UTC)'!
turnCounterClockwise
	
	self groundTypeHere turn: self doing: [ facing turnCounterClockwise: self ].
	runMode registerUndoMovement: [ self turnClockwise ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:19 pm (UTC)'!
isAdvanceCommand: aCommand

	^aCommand = $a ! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
isEndGuardedRunCommand: aCommand

	^aCommand = $)! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:51 pm (UTC)'!
isRetreatCommand: aCommand

	^aCommand = $t! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
isStartGuardedRunCommand: aCommand

	^aCommand = $(! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:21 pm (UTC)'!
isTurnClockwiseCommand: aCommand

	^aCommand = $h! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:51 pm (UTC)'!
isTurnCounterClockwiseCommand: aCommand

	^aCommand = $g! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:45 am (UTC)'!
advance
	
	facing advance: self.
	runMode registerUndoMovement: [ self retreat ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
maximumSlidingCells
	
	^10! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
moveBy: aDelta
	
	(sonar groundTypeAt: position + aDelta) move: self by: aDelta! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:45 am (UTC)'!
moveDown
	
	self moveBy: 0@-1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:45 am (UTC)'!
moveLeft
	
	self moveBy: -1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:45 am (UTC)'!
moveRight
	
	self moveBy: 1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
moveUp
	
	self moveBy: 0@1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:45 am (UTC)'!
retreat
	
	facing retreat: self.
	runMode registerUndoMovement: [ self advance ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
slideBy: aDelta
	
	runMode slide: self by: aDelta! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
slideUncontrolledBy: aDelta
	
	self stepBy: aDelta * (random nextInteger: self maximumSlidingCells)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
stepBy: aDelta
	
	position := position + aDelta! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
nonRepeatableCommand

	^[ self signalInvalidRepetition ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
process: aSequenceOfCommands

	lastRepeatableCommand := self nonRepeatableCommand.
	[ aSequenceOfCommands do: [:aCommand | self processCommand: aCommand ].
	  runMode assertFinishedOn: self ]
		on: Error
		do: [ :anError |
			runMode abortOn: self.
			anError pass ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
processCommand: aCommand

	aCommand isDigit ifTrue: [ ^self repeatLastCommandAccordingTo: aCommand digitValue ].
	
	lastRepeatableCommand := self nonRepeatableCommand.
	(self isAdvanceCommand: aCommand) ifTrue: [ ^self processRepeatableCommand: [ self advance ] ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^self processRepeatableCommand: [ self retreat ] ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^self processRepeatableCommand: [ self turnClockwise ] ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^self processRepeatableCommand: [ self turnCounterClockwise ] ].
	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^runMode startGuardedRunOn: self ].
	(self isEndGuardedRunCommand: aCommand) ifTrue: [ ^runMode endGuardedRunOn: self ].

	self signalInvalidCommand.! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
processRepeatableCommand: aCommandBlock

	aCommandBlock value.
	lastRepeatableCommand := aCommandBlock! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
repeatLastCommandAccordingTo: aDigitValue

	| commandToRepeat |
	
	commandToRepeat := lastRepeatableCommand.
	lastRepeatableCommand := self nonRepeatableCommand.
	
	aDigitValue + 2 timesRepeat: commandToRepeat! !

!SurveyCrawler methodsFor: 'sonar' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
groundTypeHere
	
	^sonar groundTypeAt: position! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
abortGuardedRunUndoing: undoMovements

	self endGuardedRun.
	undoMovements do: [ :anUndoMovement | anUndoMovement value ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
endGuardedRun

	runMode := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
startGuardedRun

	runMode := CrawlerGuardedRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar
	
	^self at: aPosition facing: aFacingName sonar: aSonar random: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:25:46 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar random: aRandom
	
	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar random: aRandom! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!RandomSimulator methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
initializeReturning: anInteger

	integerToReturn := anInteger.
	limitsAskedFor := OrderedCollection new! !

!RandomSimulator methodsFor: 'random' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
nextInteger: aLimit

	limitsAskedFor add: aLimit.
	^integerToReturn! !

!RandomSimulator methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
limitsAskedFor

	^limitsAskedFor! !

!RandomSimulator class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
returning: anInteger

	^self new initializeReturning: anInteger! !

!SonarSimulator methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
initialize

	groundTypes := Dictionary new! !

!SonarSimulator methodsFor: 'ground types' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
boulderAt: aPosition

	groundTypes at: aPosition put: BoulderGround new! !

!SonarSimulator methodsFor: 'ground types' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
groundTypeAt: aPosition

	^groundTypes at: aPosition ifAbsent: [ FirmSandGround new ]! !

!SonarSimulator methodsFor: 'ground types' stamp: 'HAW 17/Sep/2026, 8:25:47 am (UTC)'!
siltAt: aPosition

	groundTypes at: aPosition put: SiltGround new! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: crawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [SurveyCrawler at: 1@2 facing: #X sonar: SonarSimulator new ]
		raise: Error
		withExceptionDo: [:anError |
			self assert: SurveyCrawler invalidFacingErrorDescription equals: anError messageText ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:30 am (UTC)'!
test17DigitRepeatsLastCommandDigitPlusTwoTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:30 am (UTC)'!
test18NineIsTheBiggestRepetition

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:30 am (UTC)'!
test19RetreatCanBeRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:30 am (UTC)'!
test20TurnsCanBeRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h0g1'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:30 am (UTC)'!
test21RepetitionCanNotBeTheFirstCommand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '0' with: crawler invalidRepetitionErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test22RepetitionCanNotBeRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a00' with: crawler invalidRepetitionErrorDescription andBeAt: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test23LastCommandIsNotRememberedBetweenProcessedSequences

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'a'.
	
	self should: crawler failProcessing: '0' with: crawler invalidRepetitionErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test24GuardedRunDelimitersCanNotBeRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(a)0' with: crawler invalidRepetitionErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test25CanNotAdvanceToABoulder

	| crawler sonar |
	
	sonar := SonarSimulator new.
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: crawler failProcessing: 'a' with: crawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test26CanNotRetreatToABoulder

	| crawler sonar |
	
	sonar := SonarSimulator new.
	sonar boulderAt: 1@1.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: crawler failProcessing: 't' with: crawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test27CanNotTurnCounterClockwiseOnABoulder

	| crawler sonar |
	
	sonar := SonarSimulator new.
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: crawler failProcessing: 'g' with: crawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test28CanNotTurnClockwiseOnABoulder

	| crawler sonar |
	
	sonar := SonarSimulator new.
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: crawler failProcessing: 'h' with: crawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test29CommandsBeforeFindingABoulderAreKeptOutsideAGuardedRun

	| crawler sonar |
	
	sonar := SonarSimulator new.
	sonar boulderAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: crawler failProcessing: 'aa' with: crawler boulderFoundErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test30AdvancingToSiltSlidesARandomNumberOfCellsUpToTen

	| crawler sonar random |
	
	sonar := SonarSimulator new.
	sonar siltAt: 1@3.
	random := RandomSimulator returning: 4.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar random: random.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up).
	self assert: (OrderedCollection with: 10) equals: random limitsAskedFor! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:39 am (UTC)'!
test31RetreatingToSiltSlidesBackwards

	| crawler sonar |
	
	sonar := SonarSimulator new.
	sonar siltAt: 5@2.
	crawler := self crawlerAt: 4@2 facing: #Left sonar: sonar random: (RandomSimulator returning: 2).
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 6@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test32SlidingOnSiltEndsBetweenOneAndTenCellsAway

	| crawler sonar possiblePositions |
	
	sonar := SonarSimulator new.
	sonar siltAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	crawler process: 'a'.
	
	possiblePositions := (3 to: 12) collect: [ :y | 1@y ].
	self assert: (possiblePositions anySatisfy: [ :aPosition | crawler isAt: aPosition facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test33SiltDoesNotAffectTurning

	| crawler sonar |
	
	sonar := SonarSimulator new.
	sonar siltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	crawler process: 'hhg'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test34GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: '(aa)'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test35BoulderInAGuardedRunReturnsToWhereTheGuardedRunStarted

	| crawler sonar |
	
	sonar := SonarSimulator new.
	sonar boulderAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: crawler failProcessing: '(aa)' with: crawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test36AllMovementsOfAGuardedRunAreUndone

	| crawler sonar |
	
	sonar := SonarSimulator new.
	sonar boulderAt: 2@3.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: crawler failProcessing: '(hagtaa)' with: crawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test37SiltInAGuardedRunReturnsToWhereTheGuardedRunStarted

	| crawler sonar random |
	
	sonar := SonarSimulator new.
	sonar siltAt: 2@3.
	random := RandomSimulator returning: 1.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar random: random.
	
	self should: crawler failProcessing: '(aha)' with: crawler siltFoundInGuardedRunErrorDescription andBeAt: 1@2 facing: #Up.
	self assert: random limitsAskedFor isEmpty! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test38InvalidCommandInAGuardedRunReturnsToWhereTheGuardedRunStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a(ahx)' with: crawler invalidCommandErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:39 am (UTC)'!
test39InvalidRepetitionInAGuardedRunReturnsToWhereTheGuardedRunStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(a00)' with: crawler invalidRepetitionErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test40RepeatedCommandsInAGuardedRunAreUndone

	| crawler sonar |
	
	sonar := SonarSimulator new.
	sonar boulderAt: 1@7.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar.
	
	self should: crawler failProcessing: '(a3)' with: crawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test41SeveralGuardedRunsCanBeProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test42CanNotStartAGuardedRunInsideAnotherOne

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'aa(aa(ht)a)' with: crawler nestedGuardedRunErrorDescription andBeAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test43GuardedRunMustBeFinished

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a(aa' with: crawler guardedRunNotFinishedErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test44CanNotEndAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a)' with: crawler guardedRunNotStartedErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test45FailingGuardedRunOnlyUndoesItsOwnMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(a)a(ax)' with: crawler invalidCommandErrorDescription andBeAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test46ErrorsAfterAFinishedGuardedRunDoNotUndoIt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(a)x' with: crawler invalidCommandErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test47AbortedGuardedRunDoesNotAffectTheNextSequence

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self should: crawler failProcessing: '(ax' with: crawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a)' with: crawler guardedRunNotStartedErrorDescription andBeAt: 1@3 facing: #Up.
	self should: crawler failProcessing: '(ax)' with: crawler invalidCommandErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:26:31 am (UTC)'!
test48SiltOutsideAGuardedRunStillSlidesAfterAGuardedRun

	| crawler sonar |
	
	sonar := SonarSimulator new.
	sonar siltAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up sonar: sonar random: (RandomSimulator returning: 3).
	
	crawler process: '(a)a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 8:25:54 am (UTC)'!
crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: SonarSimulator new! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
crawlerAt: aPosition facing: aFacingName sonar: aSonar

	^SurveyCrawler at: aPosition facing: aFacingName sonar: aSonar! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 8:25:55 am (UTC)'!
crawlerAt: aPosition facing: aFacingName sonar: aSonar random: aRandom

	^SurveyCrawler at: aPosition facing: aFacingName sonar: aSonar random: aRandom! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 8:26:30 am (UTC)'!
should: aCrawler failProcessing: aSequenceOfCommands with: anErrorDescription andBeAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !
