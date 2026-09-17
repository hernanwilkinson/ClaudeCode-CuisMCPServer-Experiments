'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 5:54:18 am'!
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
	instanceVariableNames: 'undoActions'
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

!classDefinition: #SeabedSonar category: #SurveyCrawler!
Object subclass: #SeabedSonar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedSonar class' category: #SurveyCrawler!
SeabedSonar class
	instanceVariableNames: ''!

!classDefinition: #MappedSeabedSonar category: #SurveyCrawler!
SeabedSonar subclass: #MappedSeabedSonar
	instanceVariableNames: 'groundTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'MappedSeabedSonar class' category: #SurveyCrawler!
MappedSeabedSonar class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar slideGenerator runMode lastRepeatableCommand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #SlideGeneratorStub category: #'SurveyCrawler-Tests'!
Object subclass: #SlideGeneratorStub
	instanceVariableNames: 'slide requestedLimit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SlideGeneratorStub class' category: #'SurveyCrawler-Tests'!
SlideGeneratorStub class
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

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:23 am (UTC)'!
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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:23 am (UTC)'!
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

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:23 am (UTC)'!
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

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:23 am (UTC)'!
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

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:23 am (UTC)'!
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

!CrawlerRunMode methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
guard: aBlock for: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
registerUndo: anUndoAction

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
assertNoGuardedRunIsOpenFor: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
finishGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
startGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
slideOnSilt: aCrawler towards: aDirection

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
initialize

	undoActions := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
guard: aBlock for: aCrawler

	aBlock 
		on: Error 
		do: [ :anError | 
			self undoMovementsOf: aCrawler.
			anError pass ]! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
registerUndo: anUndoAction

	undoActions add: anUndoAction! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
undoMovementsOf: aCrawler

	undoActions reverseDo: [ :anUndoAction | anUndoAction value ].
	aCrawler finishGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
assertNoGuardedRunIsOpenFor: aCrawler

	self guard: [ aCrawler signalGuardedRunNotFinished ] for: aCrawler! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
finishGuardedRunOf: aCrawler

	aCrawler finishGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler signalGuardedRunAlreadyStarted! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
slideOnSilt: aCrawler towards: aDirection

	aCrawler signalSiltFoundDuringGuardedRun! !

!CrawlerNormalRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
guard: aBlock for: aCrawler

	aBlock value! !

!CrawlerNormalRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
registerUndo: anUndoAction

	! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
assertNoGuardedRunIsOpenFor: aCrawler

	! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
finishGuardedRunOf: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler startGuardedRun! !

!CrawlerNormalRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
slideOnSilt: aCrawler towards: aDirection

	aCrawler slideTowards: aDirection! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
turn: aCrawler doing: aTurn

	self subclassResponsibility! !

!BoulderGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!BoulderGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
turn: aCrawler doing: aTurn

	aCrawler signalBoulderFound! !

!FirmSandGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler moveOneCellTowards: aDirection! !

!FirmSandGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
turn: aCrawler doing: aTurn

	aTurn value! !

!SiltGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slideOnSiltTowards: aDirection! !

!SiltGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
turn: aCrawler doing: aTurn

	aTurn value! !

!SeabedSonar methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
groundTypeAt: aPosition

	self subclassResponsibility! !

!MappedSeabedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
initializeWithGroundTypes: aDictionaryOfPositionsToGroundTypes

	groundTypes := aDictionaryOfPositionsToGroundTypes! !

!MappedSeabedSonar methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
groundTypeAt: aPosition

	^groundTypes at: aPosition ifAbsent: [ FirmSandGround new ]! !

!MappedSeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
allFirmSand

	^self withGroundTypes: Dictionary new! !

!MappedSeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:52:24 am (UTC)'!
withGroundTypes: aDictionaryOfPositionsToGroundTypes

	^self new initializeWithGroundTypes: aDictionaryOfPositionsToGroundTypes! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
invalidCommandErrorDescription
	
	^self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
signalBoulderFound

	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
signalGuardedRunAlreadyStarted

	self error: self class guardedRunAlreadyStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
signalGuardedRunNotFinished

	self error: self class guardedRunNotFinishedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
signalGuardedRunNotStarted

	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:50:26 pm (UTC)'!
signalInvalidCommand
	
	self error: self invalidCommandErrorDescription ! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
signalInvalidRepetition

	self error: self class invalidRepetitionErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
signalSiltFoundDuringGuardedRun

	self error: self class siltFoundDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar slideGenerator: aSlideGenerator

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slideGenerator := aSlideGenerator.
	runMode := CrawlerNormalRun new! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
turnClockwise
	
	self turnDoing: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
turnCounterClockwise
	
	self turnDoing: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
turnDoing: aTurn

	| previousFacing |
	
	previousFacing := facing.
	(sonar groundTypeAt: position) turn: self doing: aTurn.
	runMode registerUndo: [ facing := previousFacing ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:19 pm (UTC)'!
isAdvanceCommand: aCommand

	^aCommand = $a ! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
isFinishGuardedRunCommand: aCommand

	^aCommand = $)! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
isRepetitionCommand: aCommand

	^aCommand isDigit! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:51 pm (UTC)'!
isRetreatCommand: aCommand

	^aCommand = $t! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
isStartGuardedRunCommand: aCommand

	^aCommand = $(! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:21 pm (UTC)'!
isTurnClockwiseCommand: aCommand

	^aCommand = $h! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:51 pm (UTC)'!
isTurnCounterClockwiseCommand: aCommand

	^aCommand = $g! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
advance
	
	self moveTowards: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
displaceBy: anOffset

	position := position + anOffset.
	runMode registerUndo: [ position := position - anOffset ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
moveOneCellTowards: aDirection

	self displaceBy: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
moveTowards: aDirection

	(sonar groundTypeAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
retreat
	
	self moveTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
slideOnSiltTowards: aDirection

	runMode slideOnSilt: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
slideTowards: aDirection

	self displaceBy: aDirection * (slideGenerator nextInteger: self class maximumSlideOnSilt)! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
process: aSequenceOfCommands

	lastRepeatableCommand := nil.
	aSequenceOfCommands do: [ :aCommand | 
		runMode guard: [ self processCommand: aCommand ] for: self ].
	runMode assertNoGuardedRunIsOpenFor: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
processCommand: aCommand

	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^self processStartGuardedRun ].
	(self isFinishGuardedRunCommand: aCommand) ifTrue: [ ^self processFinishGuardedRun ].
	(self isRepetitionCommand: aCommand) ifTrue: [ ^self processRepetition: aCommand ].

	self processRepeatableCommand: aCommand.
	lastRepeatableCommand := aCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
processFinishGuardedRun

	lastRepeatableCommand := nil.
	runMode finishGuardedRunOf: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
processRepeatableCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^self turnCounterClockwise ].

	self signalInvalidCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
processRepetition: aDigit

	| commandToRepeat |
	
	lastRepeatableCommand ifNil: [ ^self signalInvalidRepetition ].
	commandToRepeat := lastRepeatableCommand.
	lastRepeatableCommand := nil.
	
	aDigit digitValue + self class extraRepetitions timesRepeat: [ self processRepeatableCommand: commandToRepeat ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
processStartGuardedRun

	lastRepeatableCommand := nil.
	runMode startGuardedRunOf: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
finishGuardedRun

	runMode := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
startGuardedRun

	runMode := CrawlerGuardedRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
at: aPosition facing: aFacingName

	^self at: aPosition facing: aFacingName sonar: MappedSeabedSonar allFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar slideGenerator: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar slideGenerator: aSlideGenerator

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar slideGenerator: aSlideGenerator! !

!SurveyCrawler class methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
maximumSlideOnSilt

	^10! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
boulderFoundErrorDescription

	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
guardedRunAlreadyStartedErrorDescription

	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
guardedRunNotFinishedErrorDescription

	^'Guarded run was not finished'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'Can not finish a guarded run that was not started'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
invalidRepetitionErrorDescription

	^'A repetition must follow a command that can be repeated'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:52:49 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription

	^'Silt found during guarded run'! !

!SurveyCrawler class methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:52:48 am (UTC)'!
extraRepetitions

	^2! !

!SlideGeneratorStub methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
initializeSliding: aNumberOfCells

	slide := aNumberOfCells! !

!SlideGeneratorStub methodsFor: 'generating' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
nextInteger: aLimit

	requestedLimit := aLimit.
	^slide! !

!SlideGeneratorStub methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
requestedLimit

	^requestedLimit! !

!SlideGeneratorStub class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
sliding: aNumberOfCells

	^self new initializeSliding: aNumberOfCells! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test17DigitRepeatsLastCommandDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test18RetreatCanBeRepeated

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't2'.
	
	self assert: (crawler isAt: 1@-3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:56 am (UTC)'!
test19TurnsCanBeRepeated

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h1g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test20RepetitionWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '3' ]
		failWith: SurveyCrawler invalidRepetitionErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test21RepetitionIsASingleDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		failWith: SurveyCrawler invalidRepetitionErrorDescription 
		leaving: crawler at: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test22RepetitionDoesNotCarryOverFromPreviousSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	crawler process: 'a'.
	
	self 
		should: [ crawler process: '0' ]
		failWith: SurveyCrawler invalidRepetitionErrorDescription 
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test23CanNotAdvanceToABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@3).
	
	self 
		should: [ crawler process: 'a' ]
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test24CanNotRetreatToABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right sonar: (self sonarWithBoulderAt: 0@2).
	
	self 
		should: [ crawler process: 't' ]
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test25CanNotTurnCounterClockwiseOnABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@2).
	
	self 
		should: [ crawler process: 'g' ]
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test26CanNotTurnClockwiseOnABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@2).
	
	self 
		should: [ crawler process: 'h' ]
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test27CommandsBeforeABoulderAreKeptOutsideAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@5).
	
	self 
		should: [ crawler process: 'a3' ]
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test28AdvancingOnSiltSlidesARandomNumberOfCells

	| crawler slideGenerator |
	
	slideGenerator := SlideGeneratorStub sliding: 4.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@3) slideGenerator: slideGenerator.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up).
	self assert: SurveyCrawler maximumSlideOnSilt equals: slideGenerator requestedLimit! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test29SlidingOnSiltIsLimitedToTenCells

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@3).
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :y | crawler isAt: 1@y facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test30RetreatingOnSiltSlidesBackwards

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left sonar: (self sonarWithSiltAt: 2@2) slideGenerator: (SlideGeneratorStub sliding: 10).
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 11@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
test31SiltDoesNotAffectTurning

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@2).
	
	crawler process: 'hhg'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test32GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aha)'.
	
	self assert: (crawler isAt: 2@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test33BoulderInGuardedRunReturnsToInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@4).
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:56 am (UTC)'!
test34FailedGuardedRunUndoesTurnsAndRepetitions

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 2@0).
	
	self 
		should: [ crawler process: '(ahagt0)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test35TurningOnABoulderInGuardedRunReturnsToInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 2@3).
	
	self 
		should: [ crawler process: '(ahag)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test36SiltInGuardedRunReturnsToInitialPositionWithoutSliding

	| crawler slideGenerator |
	
	slideGenerator := SlideGeneratorStub sliding: 5.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@4) slideGenerator: slideGenerator.
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: SurveyCrawler siltFoundDuringGuardedRunErrorDescription 
		leaving: crawler at: 1@2 facing: #Up.
	self assert: slideGenerator requestedLimit isNil! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test37TurningOnSiltInGuardedRunIsAllowed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@2).
	
	crawler process: '(h)'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test38InvalidCommandInGuardedRunReturnsToInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ahx)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription 
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test39CommandsBeforeAFailedGuardedRunAreNotUndone

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'ah(ax)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription 
		leaving: crawler at: 1@3 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test40ManyGuardedRunsCanBeProcessedInOneSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test41OnlyTheFailedGuardedRunIsUndone

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ah)a(ax)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription 
		leaving: crawler at: 2@3 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test42GuardedRunCanNotBeStartedInsideAnotherOne

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		failWith: SurveyCrawler guardedRunAlreadyStartedErrorDescription 
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test43GuardedRunMustBeFinished

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		failWith: SurveyCrawler guardedRunNotFinishedErrorDescription 
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test44CanNotFinishAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		failWith: SurveyCrawler guardedRunNotStartedErrorDescription 
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test45GuardedRunCanNotBeRepeated

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)0' ]
		failWith: SurveyCrawler invalidRepetitionErrorDescription 
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test46RepetitionCanNotStartAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(0)' ]
		failWith: SurveyCrawler invalidRepetitionErrorDescription 
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test47AfterAFailedGuardedRunCommandsAreNotGuarded

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	[ crawler process: '(ax' ] on: Error do: [ :anError | ].
	
	self 
		should: [ crawler process: 'ax' ]
		failWith: SurveyCrawler invalidCommandErrorDescription 
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:53:46 am (UTC)'!
test48SiltOutsideAGuardedRunDoesNotFailAfterAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@4) slideGenerator: (SlideGeneratorStub sliding: 2).
	
	crawler process: '(a)a'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'sonars' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
sonarWith: aGroundType at: aPosition

	^MappedSeabedSonar withGroundTypes: (Dictionary new at: aPosition put: aGroundType; yourself)! !

!SurveyCrawlerTest methodsFor: 'sonars' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
sonarWithBoulderAt: aPosition

	^self sonarWith: BoulderGround new at: aPosition! !

!SurveyCrawlerTest methodsFor: 'sonars' stamp: 'HAW 17/Sep/2026, 8:53:45 am (UTC)'!
sonarWithSiltAt: aPosition

	^self sonarWith: SiltGround new at: aPosition! !
