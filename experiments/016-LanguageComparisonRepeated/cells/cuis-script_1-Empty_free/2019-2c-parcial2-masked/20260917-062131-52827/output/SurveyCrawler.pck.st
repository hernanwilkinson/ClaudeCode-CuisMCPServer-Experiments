'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:25:57 am'!
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
	instanceVariableNames: 'slideDistanceGenerator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SiltGround class' category: #SurveyCrawler!
SiltGround class
	instanceVariableNames: ''!

!classDefinition: #SimulatedSonar category: #SurveyCrawler!
Object subclass: #SimulatedSonar
	instanceVariableNames: 'groundTypesByPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SimulatedSonar class' category: #SurveyCrawler!
SimulatedSonar class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar runMode lastRepeatableCommand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #SlideDistanceGeneratorStub category: #'SurveyCrawler-Tests'!
Object subclass: #SlideDistanceGeneratorStub
	instanceVariableNames: 'distance requestedLimit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SlideDistanceGeneratorStub class' category: #'SurveyCrawler-Tests'!
SlideDistanceGeneratorStub class
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

!CrawlerRunMode methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
finishCommandSequenceFor: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
process: aCommand for: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
endGuardedRunFor: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
startGuardedRunFor: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
slide: aCrawler towards: aDirection cells: aNumberOfCells

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
recordUndoAction: anUndoAction

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
initialize

	undoActions := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
finishCommandSequenceFor: aCrawler

	self undoMovementsOf: aCrawler.
	aCrawler signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
process: aCommand for: aCrawler

	[ aCrawler processCommand: aCommand ]
		on: Error
		do: [ :anError |
			self undoMovementsOf: aCrawler.
			anError pass ]! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
endGuardedRunFor: aCrawler

	aCrawler endGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
startGuardedRunFor: aCrawler

	aCrawler signalNestedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
slide: aCrawler towards: aDirection cells: aNumberOfCells

	aCrawler signalSiltFoundInGuardedRun! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
recordUndoAction: anUndoAction

	undoActions add: anUndoAction! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
undoMovementsOf: aCrawler

	aCrawler endGuardedRun.
	undoActions reverseDo: [ :anUndoAction | anUndoAction value ]! !

!CrawlerGuardedRun class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
new

	^super new initialize! !

!CrawlerNormalRun methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
finishCommandSequenceFor: aCrawler

	! !

!CrawlerNormalRun methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
process: aCommand for: aCrawler

	aCrawler processCommand: aCommand! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
endGuardedRunFor: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
startGuardedRunFor: aCrawler

	aCrawler startGuardedRun! !

!CrawlerNormalRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
slide: aCrawler towards: aDirection cells: aNumberOfCells

	aCrawler displaceBy: aDirection * aNumberOfCells! !

!CrawlerNormalRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
recordUndoAction: anUndoAction

	! !

!SeabedGround methodsFor: 'crawler movement' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'crawler movement' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
turnCrawler: aCrawler doing: aTurnAction undoneBy: anUndoAction

	self subclassResponsibility! !

!BoulderGround methodsFor: 'crawler movement' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!BoulderGround methodsFor: 'crawler movement' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
turnCrawler: aCrawler doing: aTurnAction undoneBy: anUndoAction

	aCrawler signalBoulderFound! !

!FirmSandGround methodsFor: 'crawler movement' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	aCrawler displaceBy: aDirection! !

!FirmSandGround methodsFor: 'crawler movement' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
turnCrawler: aCrawler doing: aTurnAction undoneBy: anUndoAction

	aCrawler changeFacingDoing: aTurnAction undoneBy: anUndoAction! !

!SiltGround methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
initializeSlidingWith: aSlideDistanceGenerator

	slideDistanceGenerator := aSlideDistanceGenerator! !

!SiltGround methodsFor: 'crawler movement' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	aCrawler 
		slideTowards: aDirection 
		cells: (slideDistanceGenerator nextInteger: self class maximumSlideDistance)! !

!SiltGround methodsFor: 'crawler movement' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
turnCrawler: aCrawler doing: aTurnAction undoneBy: anUndoAction

	aCrawler changeFacingDoing: aTurnAction undoneBy: anUndoAction! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
new

	^self slidingWith: Random new! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
slidingWith: aSlideDistanceGenerator

	^self basicNew initializeSlidingWith: aSlideDistanceGenerator! !

!SiltGround class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
maximumSlideDistance

	^10! !

!SimulatedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
initializeWithGroundTypes: aDictionaryOfGroundTypesByPosition

	groundTypesByPosition := aDictionaryOfGroundTypesByPosition! !

!SimulatedSonar methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
groundTypeAt: aPosition

	^groundTypesByPosition at: aPosition ifAbsent: [ FirmSandGround new ]! !

!SimulatedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
allFirmSand

	^self withGroundTypes: Dictionary new! !

!SimulatedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
withGroundTypes: aDictionaryOfGroundTypesByPosition

	^self new initializeWithGroundTypes: aDictionaryOfGroundTypesByPosition! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
boulderFoundErrorDescription
	
	^'Boulder found'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
guardedRunNotStartedErrorDescription
	
	^'Can not finish a guarded run that was not started'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:48:45 pm (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
invalidRepetitionErrorDescription
	
	^'A repetition digit must follow a movement command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
signalBoulderFound
	
	self error: self boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
signalGuardedRunNotStarted
	
	self error: self guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:50:26 pm (UTC)'!
signalInvalidCommand
	
	self error: self invalidCommandErrorDescription ! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
signalInvalidRepetition
	
	self error: self invalidRepetitionErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
signalNestedGuardedRun
	
	self error: self nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
signalSiltFoundInGuardedRun
	
	self error: self siltFoundInGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
siltFoundInGuardedRunErrorDescription
	
	^'Silt found during a guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'Guarded run was not finished'! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	runMode := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
changeFacingDoing: aTurnAction undoneBy: anUndoAction

	aTurnAction value.
	runMode recordUndoAction: anUndoAction! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
turnClockwise
	
	self 
		turnDoing: [ facing turnClockwise: self ]
		undoneBy: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
turnCounterClockwise
	
	self 
		turnDoing: [ facing turnCounterClockwise: self ]
		undoneBy: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
turnDoing: aTurnAction undoneBy: anUndoAction

	(sonar groundTypeAt: position) turnCrawler: self doing: aTurnAction undoneBy: anUndoAction! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:19 pm (UTC)'!
isAdvanceCommand: aCommand

	^aCommand = $a ! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
isEndGuardedRunCommand: aCommand

	^aCommand = $)! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:51 pm (UTC)'!
isRetreatCommand: aCommand

	^aCommand = $t! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
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

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
displaceBy: aDisplacement

	position := position + aDisplacement.
	runMode recordUndoAction: [ self displaceBy: aDisplacement negated ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
moveDown
	
	self moveTowards: 0@-1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
moveLeft
	
	self moveTowards: -1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
moveRight
	
	self moveTowards: 1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
moveTowards: aDirection

	(sonar groundTypeAt: position + aDirection) moveCrawler: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
moveUp
	
	self moveTowards: 0@1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
slideTowards: aDirection cells: aNumberOfCells

	runMode slide: self towards: aDirection cells: aNumberOfCells! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
process: aSequenceOfCommands

	lastRepeatableCommand := nil.
	aSequenceOfCommands do: [ :aCommand | runMode process: aCommand for: self ].
	runMode finishCommandSequenceFor: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
processCommand: aCommand

	| commandToRepeat |
	
	commandToRepeat := lastRepeatableCommand.
	lastRepeatableCommand := nil.
	
	aCommand isDigit ifTrue: [ ^self repeat: commandToRepeat times: aCommand digitValue + 2 ].
	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^runMode startGuardedRunFor: self ].
	(self isEndGuardedRunCommand: aCommand) ifTrue: [ ^runMode endGuardedRunFor: self ].
	
	self processMovementCommand: aCommand.
	lastRepeatableCommand := aCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
processMovementCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].

	self signalInvalidCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
repeat: aCommand times: aNumberOfRepetitions

	aCommand ifNil: [ ^self signalInvalidRepetition ].
	
	aNumberOfRepetitions timesRepeat: [ self processMovementCommand: aCommand ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
endGuardedRun

	runMode := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
startGuardedRun

	runMode := CrawlerGuardedRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
at: aPosition facing: aFacingName

	^self at: aPosition facing: aFacingName sonar: SimulatedSonar allFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SlideDistanceGeneratorStub methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
initializeAlwaysSliding: aDistance

	distance := aDistance! !

!SlideDistanceGeneratorStub methodsFor: 'generating' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
nextInteger: aLimit

	requestedLimit := aLimit.
	^distance! !

!SlideDistanceGeneratorStub methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
requestedLimit

	^requestedLimit! !

!SlideDistanceGeneratorStub class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:24:15 am (UTC)'!
alwaysSliding: aDistance

	^self new initializeAlwaysSliding: aDistance! !

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

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
should: aBlock failWith: anErrorDescription andLeave: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'sonars' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
sonarWith: aGroundType at: aPosition

	^SimulatedSonar withGroundTypes: (Dictionary new at: aPosition put: aGroundType; yourself)! !

!SurveyCrawlerTest methodsFor: 'sonars' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
sonarWithBoulderAt: aPosition

	^self sonarWith: BoulderGround new at: aPosition! !

!SurveyCrawlerTest methodsFor: 'sonars' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
sonarWithSiltAt: aPosition sliding: aDistance

	^self sonarWith: (SiltGround slidingWith: (SlideDistanceGeneratorStub alwaysSliding: aDistance)) at: aPosition! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test17DigitAfterAdvanceRepeatsItDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test18DigitValueIsAddedToTheRepetitions

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test19DigitAfterRetreatRepeatsIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test20DigitAfterTurningRepeatsIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0g1'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test21OnlyTheLastCommandIsRepeated

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'ha0'.
	
	self assert: (crawler isAt: 4@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test22DigitCanNotStartACommandSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '3' ] 
		failWith: crawler invalidRepetitionErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test23RepetitionIsASingleDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ] 
		failWith: crawler invalidRepetitionErrorDescription 
		andLeave: crawler at: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test24RepetitionDoesNotApplyToGuardedRunDelimiters

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)0' ] 
		failWith: crawler invalidRepetitionErrorDescription 
		andLeave: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test25RepetitionDoesNotSpanCommandSequences

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	crawler process: 'a'.
	
	self 
		should: [ crawler process: '0' ] 
		failWith: crawler invalidRepetitionErrorDescription 
		andLeave: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test26RepetitionDoesNotApplyToInvalidCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x0' ] 
		failWith: crawler invalidCommandErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test27CanNotAdvanceToABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@3).
	
	self 
		should: [ crawler process: 'a' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test28CanNotRetreatToABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right sonar: (self sonarWithBoulderAt: 0@2).
	
	self 
		should: [ crawler process: 't' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@2 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test29CanNotTurnCounterClockwiseOnABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@2).
	
	self 
		should: [ crawler process: 'g' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test30CanNotTurnClockwiseOnABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@2).
	
	self 
		should: [ crawler process: 'h' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test31CommandsBeforeTheBoulderAreKeptOutsideAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@4).
	
	self 
		should: [ crawler process: 'aaa' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test32RepetitionStopsAtABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@5).
	
	self 
		should: [ crawler process: 'a5' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test33BoulderOnAnotherPositionDoesNotAffectMovement

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 2@3).
	
	crawler process: 'ag'.
	
	self assert: (crawler isAt: 1@3 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test34AdvancingToSiltSlidesInTheMovingDirection

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@3 sliding: 4).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test35RetreatingToSiltSlidesInTheMovingDirection

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left sonar: (self sonarWithSiltAt: 2@2 sliding: 3).
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 4@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test36SiltSlidesAtMostTenCells

	| crawler slideDistanceGenerator |
	
	slideDistanceGenerator := SlideDistanceGeneratorStub alwaysSliding: 1.
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (self sonarWith: (SiltGround slidingWith: slideDistanceGenerator) at: 1@3).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up).
	self assert: slideDistanceGenerator requestedLimit equals: 10! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test37SiltSlidesARandomNumberOfCellsWithinTheLimit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: SiltGround new at: 1@3).
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aY | crawler isAt: 1@aY facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test38SiltDoesNotAffectTurning

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@2 sliding: 5).
	
	crawler process: 'hhg'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test39GuardedRunWithoutProblemsKeepsItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aah)a'.
	
	self assert: (crawler isAt: 2@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test40BoulderInAGuardedRunReturnsToTheInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@4).
	
	self 
		should: [ crawler process: '(aa)' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test41GuardedRunUndoesEveryKindOfMovement

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 7@3).
	
	self 
		should: [ crawler process: '(ahaagttha1gaa)' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test42SiltInAGuardedRunReturnsToTheInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@5 sliding: 1).
	
	self 
		should: [ crawler process: 'h(gaaa)' ] 
		failWith: crawler siltFoundInGuardedRunErrorDescription 
		andLeave: crawler at: 1@2 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test43SiltDoesNotAffectTurningInAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@2 sliding: 1).
	
	crawler process: '(h)'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test44InvalidCommandInAGuardedRunReturnsToTheInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(ahx)' ] 
		failWith: crawler invalidCommandErrorDescription 
		andLeave: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test45InvalidRepetitionInAGuardedRunReturnsToTheInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a01)' ] 
		failWith: crawler invalidRepetitionErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test46SequenceCanHaveSeveralGuardedRuns

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test47OnlyTheFailingGuardedRunIsUndone

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@6).
	
	self 
		should: [ crawler process: '(a)a(aa)' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test48CanNotStartAGuardedRunInsideAnotherOne

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ] 
		failWith: crawler nestedGuardedRunErrorDescription 
		andLeave: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test49GuardedRunMustBeFinished

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ] 
		failWith: crawler unfinishedGuardedRunErrorDescription 
		andLeave: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test50CanNotFinishAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)a' ] 
		failWith: crawler guardedRunNotStartedErrorDescription 
		andLeave: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test51GuardedRunIsFinishedAfterAFailure

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self should: [ crawler process: '(ax)' ] raise: Error - MessageNotUnderstood.
	self 
		should: [ crawler process: ')' ] 
		failWith: crawler guardedRunNotStartedErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test52UnfinishedGuardedRunDoesNotSpanCommandSequences

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self should: [ crawler process: '(a' ] raise: Error - MessageNotUnderstood.
	crawler process: '(a)'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 9:25:28 am (UTC)'!
test53SiltOutsideAGuardedRunIsNotUndoneByALaterGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@3 sliding: 3).
	
	self 
		should: [ crawler process: 'a(ax' ] 
		failWith: crawler invalidCommandErrorDescription 
		andLeave: crawler at: 1@5 facing: #Up! !
