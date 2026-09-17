'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 5:59:02 am'!
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
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Silt class' category: #SurveyCrawler!
Silt class
	instanceVariableNames: ''!

!classDefinition: #SimulatedSonar category: #SurveyCrawler!
Object subclass: #SimulatedSonar
	instanceVariableNames: 'grounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SimulatedSonar class' category: #SurveyCrawler!
SimulatedSonar class
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
	instanceVariableNames: 'slideBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SlideGeneratorStub class' category: #'SurveyCrawler-Tests'!
SlideGeneratorStub class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerTest
	instanceVariableNames: 'sonar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerTest class
	instanceVariableNames: ''!


!CrawlerRunMode commentStamp: '<historical>' prior: 0!
How the crawler is running its commands: normally or in a guarded run!

!CrawlerGuardedRun commentStamp: '<historical>' prior: 0!
A guarded run remembers the opposite of every movement done so the crawler can go back to where it was when the guarded run started if there is any problem!

!SeabedGround commentStamp: '<historical>' prior: 0!
A ground type detected by the sonar. It decides how the crawler moves onto it and whether it can turn on it!

!SimulatedSonar commentStamp: '<historical>' prior: 0!
A sonar that knows the ground of each position from a chart. Positions not charted are firm sand!

!SurveyCrawler commentStamp: '<historical>' prior: 0!
A seabed survey crawler. It processes command sequences (with repetitions and guarded runs), asking its sonar for the ground it will end up on before moving or turning.!

!SlideGeneratorStub commentStamp: '<historical>' prior: 0!
Replaces Random so slides on silt are predictable in tests!

!SurveyCrawlerTest commentStamp: '<historical>' prior: 0!
Tests of the seabed survey crawler!

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

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
assertNoGuardedRunIsPendingOf: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
finishGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
recoverFrom: anError of: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
startGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
registerUndo: anUndoBlock

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
slide: aCrawler towards: aDirection

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
initialize

	undoMovements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
assertNoGuardedRunIsPendingOf: aCrawler

	aCrawler signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
finishGuardedRunOf: aCrawler

	aCrawler finishGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
recoverFrom: anError of: aCrawler

	undoMovements reverseDo: [ :anUndoBlock | anUndoBlock value ].
	aCrawler finishGuardedRun.
	anError pass! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler signalNestedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
registerUndo: anUndoBlock

	undoMovements add: anUndoBlock! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler signalSiltFoundInGuardedRun! !

!CrawlerGuardedRun class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
new

	^super new initialize! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
assertNoGuardedRunIsPendingOf: aCrawler! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
finishGuardedRunOf: aCrawler

	aCrawler signalNoGuardedRunToFinish! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
recoverFrom: anError of: aCrawler

	anError pass! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler startGuardedRun! !

!CrawlerNormalRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
registerUndo: anUndoBlock! !

!CrawlerNormalRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler slideTowards: aDirection! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:58:38 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
turn: aCrawler using: aTurnBlock

	self subclassResponsibility! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:58:38 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!Boulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
turn: aCrawler using: aTurnBlock

	aCrawler signalBoulderFound! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:58:38 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	aCrawler moveOnFirmSandTowards: aDirection! !

!FirmSand methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
turn: aCrawler using: aTurnBlock

	aTurnBlock value! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:58:38 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	aCrawler slideOnSiltTowards: aDirection! !

!Silt methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
turn: aCrawler using: aTurnBlock

	aTurnBlock value! !

!SimulatedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
initialize

	grounds := Dictionary new! !

!SimulatedSonar methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
groundAt: aPosition

	^grounds at: aPosition ifAbsent: [ FirmSand new ]! !

!SimulatedSonar methodsFor: 'charting' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
boulderAt: aPosition

	grounds at: aPosition put: Boulder new! !

!SimulatedSonar methodsFor: 'charting' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
siltAt: aPosition

	grounds at: aPosition put: Silt new! !

!SimulatedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
allFirmSand

	^self new initialize! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
boulderFoundErrorDescription
	
	^'Boulder found'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:48:45 pm (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
invalidRepetitionErrorDescription
	
	^'Only a, t, h and g commands can be repeated, with a single digit'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'Can not start a guarded run inside another guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
noGuardedRunToFinishErrorDescription
	
	^'There is no guarded run to finish'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
signalBoulderFound
	
	self error: self boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:50:26 pm (UTC)'!
signalInvalidCommand
	
	self error: self invalidCommandErrorDescription ! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
signalInvalidRepetition
	
	self error: self invalidRepetitionErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
signalNestedGuardedRun
	
	self error: self nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
signalNoGuardedRunToFinish
	
	self error: self noGuardedRunToFinishErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
signalSiltFoundInGuardedRun
	
	self error: self siltFoundInGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
siltFoundInGuardedRunErrorDescription
	
	^'Silt found during a guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'Guarded run was not finished'! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar slideGenerator: aSlideGenerator

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slideGenerator := aSlideGenerator.
	runMode := CrawlerNormalRun new.
	lastRepeatableCommand := self noCommandToRepeat! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
turnClockwise

	(sonar groundAt: position) turn: self using: [
		facing turnClockwise: self.
		runMode registerUndo: [ facing turnCounterClockwise: self ] ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
turnCounterClockwise

	(sonar groundAt: position) turn: self using: [
		facing turnCounterClockwise: self.
		runMode registerUndo: [ facing turnClockwise: self ] ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:19 pm (UTC)'!
isAdvanceCommand: aCommand

	^aCommand = $a ! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
isFinishGuardedRunCommand: aCommand

	^aCommand = $)! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
isRepetitionCommand: aCommand

	^aCommand isDigit! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:51 pm (UTC)'!
isRetreatCommand: aCommand

	^aCommand = $t! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
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

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
displaceBy: aDisplacement

	position := position + aDisplacement! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
moveDown
	
	self moveTowards: 0@-1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
moveLeft
	
	self moveTowards: -1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
moveOnFirmSandTowards: aDirection

	self displaceBy: aDirection.
	runMode registerUndo: [ self displaceBy: aDirection negated ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
moveRight
	
	self moveTowards: 1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:58:38 am (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) moveCrawler: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
moveUp
	
	self moveTowards: 0@1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
slideOnSiltTowards: aDirection

	runMode slide: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
slideTowards: aDirection

	self displaceBy: aDirection * (slideGenerator nextInteger: self class maximumSlide)! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
executeNotRepeatable: aCommandBlock

	lastRepeatableCommand := self noCommandToRepeat.
	aCommandBlock value! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
executeRepeatable: aCommandBlock

	lastRepeatableCommand := aCommandBlock.
	aCommandBlock value! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
noCommandToRepeat

	^[ self signalInvalidRepetition ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
process: aSequenceOfCommands

	lastRepeatableCommand := self noCommandToRepeat.
	[ aSequenceOfCommands do: [ :aCommand | self processCommand: aCommand ].
	  runMode assertNoGuardedRunIsPendingOf: self ]
		on: Error
		do: [ :anError | runMode recoverFrom: anError of: self ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
processCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^self executeRepeatable: [ self advance ] ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^self executeRepeatable: [ self retreat ] ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^self executeRepeatable: [ self turnClockwise ] ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^self executeRepeatable: [ self turnCounterClockwise ] ].
	(self isRepetitionCommand: aCommand) ifTrue: [ ^self repeatLastCommand: aCommand digitValue + 2 ].
	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^self executeNotRepeatable: [ runMode startGuardedRunOf: self ] ].
	(self isFinishGuardedRunCommand: aCommand) ifTrue: [ ^self executeNotRepeatable: [ runMode finishGuardedRunOf: self ] ].

	self signalInvalidCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
repeatLastCommand: numberOfRepetitions

	| commandToRepeat |
	
	commandToRepeat := lastRepeatableCommand.
	lastRepeatableCommand := self noCommandToRepeat.
	numberOfRepetitions timesRepeat: commandToRepeat! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
finishGuardedRun

	runMode := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
startGuardedRun

	runMode := CrawlerGuardedRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
at: aPosition facing: aFacingName

	^self at: aPosition facing: aFacingName sonar: SimulatedSonar allFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar slideGenerator: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar slideGenerator: aSlideGenerator

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar slideGenerator: aSlideGenerator! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:57:24 am (UTC)'!
maximumSlide

	^10! !

!SlideGeneratorStub methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
initializeAnswering: aBlockReceivingTheLimit

	slideBlock := aBlockReceivingTheLimit! !

!SlideGeneratorStub methodsFor: 'random' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
nextInteger: aLimit

	^slideBlock value: aLimit! !

!SlideGeneratorStub class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
answering: aBlockReceivingTheLimit

	^self new initializeAnswering: aBlockReceivingTheLimit! !

!SlideGeneratorStub class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
shouldNotBeUsed

	^self answering: [ :aLimit | self error: 'Slide generator should not be used' ]! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test17DigitRepeatsLastAdvanceDigitPlusTwoTimes
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'a0'.
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test18DigitRepeatsLastRetreatDigitPlusTwoTimes
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 't9'.
	self assert: (crawler isAt: 1@-10 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:38 am (UTC)'!
test19DigitRepeatsLastTurnClockwise
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'h0'.
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:38 am (UTC)'!
test20DigitRepeatsLastTurnCounterClockwise
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'g1'.
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:38 am (UTC)'!
test21DigitRepeatsOnlyTheLastCommand
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'ha0a'.
	self assert: (crawler isAt: 5@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test22DigitWithoutPreviousCommandIsInvalid
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: '3' with: crawler invalidRepetitionErrorDescription andIsAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test23RepetitionIsASingleDigit
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: 'a01' with: crawler invalidRepetitionErrorDescription andIsAt: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test24CanNotRepeatACommandOfAPreviousSequence
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'a'.
	self assert: crawler failsProcessing: '0' with: crawler invalidRepetitionErrorDescription andIsAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test25CanNotRepeatGuardedRunDelimiters
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: '(a)0' with: crawler invalidRepetitionErrorDescription andIsAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test26RepetitionStopsWhenABoulderIsFound
	| crawler |
	sonar boulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: 'a9' with: crawler boulderFoundErrorDescription andIsAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test27CanNotAdvanceToABoulder
	| crawler |
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: 'a' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test28CanNotRetreatToABoulder
	| crawler |
	sonar boulderAt: 0@2.
	crawler := self crawlerAt: 1@2 facing: #Right.
	self assert: crawler failsProcessing: 't' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test29CanNotTurnCounterClockwiseOnABoulder
	| crawler |
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: 'g' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test30CanNotTurnClockwiseOnABoulder
	| crawler |
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: 'h' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:38 am (UTC)'!
test31CommandsAfterABoulderAreNotProcessed
	| crawler |
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: 'hgah' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test32AdvancingToSiltSlidesARandomNumberOfCellsUpToTen
	| crawler requestedLimit |
	sonar siltAt: 1@3.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar slideGenerator: (SlideGeneratorStub answering: [ :aLimit | requestedLimit := aLimit. 4 ]).
	crawler process: 'a'.
	self assert: requestedLimit equals: 10.
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test33SlidingOnSiltEndsAtLeastOnTheSiltAndAtMostTenCellsAway
	| minimumSlider maximumSlider |
	sonar siltAt: 1@3.
	minimumSlider := SurveyCrawler at: 1@2 facing: #Up sonar: sonar slideGenerator: (SlideGeneratorStub answering: [ :aLimit | 1 ]).
	maximumSlider := SurveyCrawler at: 1@2 facing: #Up sonar: sonar slideGenerator: (SlideGeneratorStub answering: [ :aLimit | aLimit ]).
	minimumSlider process: 'a'.
	maximumSlider process: 'a'.
	self assert: (minimumSlider isAt: 1@3 facing: #Up).
	self assert: (maximumSlider isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test34RetreatingToSiltSlidesInTheDirectionItWasGoing
	| crawler |
	sonar siltAt: 0@2.
	crawler := SurveyCrawler at: 1@2 facing: #Right sonar: sonar slideGenerator: (SlideGeneratorStub answering: [ :aLimit | 3 ]).
	crawler process: 't'.
	self assert: (crawler isAt: -2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test35SiltDoesNotAffectTurning
	| crawler |
	sonar siltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'hhg'.
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test36RealSlidesAreBetweenOneAndTenCells
	| crawler |
	sonar siltAt: 1@3.
	100 timesRepeat: [
		crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
		crawler process: 'a'.
		self assert: ((3 to: 12) anySatisfy: [ :y | crawler isAt: 1@y facing: #Up ]) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test37GuardedRunWithoutProblemsProcessesItsCommands
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: '(aha)'.
	self assert: (crawler isAt: 2@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test38EmptyGuardedRunDoesNothing
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: '()'.
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test39GuardedRunUndoesMovementsWhenABoulderIsFound
	| crawler |
	sonar boulderAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: '(aa)' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:38 am (UTC)'!
test40GuardedRunUndoesTurnsAndRetreats
	| crawler |
	sonar boulderAt: 0@-2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: '(hatgt1ga)' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:38 am (UTC)'!
test41GuardedRunOnlyUndoesItsOwnMovements
	| crawler |
	sonar boulderAt: 2@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: 'a(a)h(aga)' with: crawler boulderFoundErrorDescription andIsAt: 1@4 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test42GuardedRunDoesNotSlideOnSiltAndUndoesMovements
	| crawler |
	sonar siltAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: '(a2)' with: crawler siltFoundInGuardedRunErrorDescription andIsAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test43GuardedRunUndoesMovementsWhenAnInvalidCommandIsFound
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: '(ahax)' with: crawler invalidCommandErrorDescription andIsAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test44GuardedRunUndoesMovementsWhenAnInvalidRepetitionIsFound
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: '(a22)' with: crawler invalidRepetitionErrorDescription andIsAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test45SeveralGuardedRunsCanBeProcessed
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'aha(aagt3)aa(ht)'.
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test46CanNotStartAGuardedRunInsideAnother
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: 'aa(aa(ht)a)' with: crawler nestedGuardedRunErrorDescription andIsAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test47GuardedRunMustBeFinished
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: 'a(aa' with: crawler unfinishedGuardedRunErrorDescription andIsAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test48CanNotFinishAGuardedRunThatWasNotStarted
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: 'a)a' with: crawler noGuardedRunToFinishErrorDescription andIsAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test49AfterAFailedGuardedRunTheCrawlerRunsNormallyAgain
	| crawler |
	sonar siltAt: 1@4.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar slideGenerator: (SlideGeneratorStub answering: [ :aLimit | 2 ]).
	self assert: crawler failsProcessing: '(aa' with: crawler siltFoundInGuardedRunErrorDescription andIsAt: 1@2 facing: #Up.
	crawler process: 'aa'.
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test50UndoingDoesNotDependOnTheGround
	| crawler |
	sonar siltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: '(a)(ax)' with: crawler invalidCommandErrorDescription andIsAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
test51FailingOutsideAGuardedRunDoesNotUndoMovements
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: '(a)ahx' with: crawler invalidCommandErrorDescription andIsAt: 1@4 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
setUp

	sonar := SimulatedSonar allFirmSand! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
assert: aCrawler failsProcessing: aSequenceOfCommands with: anErrorDescription andIsAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:58:16 am (UTC)'!
crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: sonar slideGenerator: SlideGeneratorStub shouldNotBeUsed! !
