'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 4:24:22 am'!
'Description '!
!provides: 'SurveyCrawler' 1 1!
SystemOrganization addCategory: #SurveyCrawler!
SystemOrganization addCategory: #'SurveyCrawler-Tests'!


!classDefinition: #CrawlerCommand category: #SurveyCrawler!
Object subclass: #CrawlerCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerCommand class' category: #SurveyCrawler!
CrawlerCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerEndGuardedRunCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerEndGuardedRunCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerEndGuardedRunCommand class' category: #SurveyCrawler!
CrawlerEndGuardedRunCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerMovementCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerMovementCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerMovementCommand class' category: #SurveyCrawler!
CrawlerMovementCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerAdvanceCommand category: #SurveyCrawler!
CrawlerMovementCommand subclass: #CrawlerAdvanceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerAdvanceCommand class' category: #SurveyCrawler!
CrawlerAdvanceCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRetreatCommand category: #SurveyCrawler!
CrawlerMovementCommand subclass: #CrawlerRetreatCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRetreatCommand class' category: #SurveyCrawler!
CrawlerRetreatCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerTurnClockwiseCommand category: #SurveyCrawler!
CrawlerMovementCommand subclass: #CrawlerTurnClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurnClockwiseCommand class' category: #SurveyCrawler!
CrawlerTurnClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerTurnCounterClockwiseCommand category: #SurveyCrawler!
CrawlerMovementCommand subclass: #CrawlerTurnCounterClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurnCounterClockwiseCommand class' category: #SurveyCrawler!
CrawlerTurnCounterClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRepetitionCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerRepetitionCommand
	instanceVariableNames: 'numberOfRepetitions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRepetitionCommand class' category: #SurveyCrawler!
CrawlerRepetitionCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerSequenceStartCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerSequenceStartCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerSequenceStartCommand class' category: #SurveyCrawler!
CrawlerSequenceStartCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerStartGuardedRunCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerStartGuardedRunCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerStartGuardedRunCommand class' category: #SurveyCrawler!
CrawlerStartGuardedRunCommand class
	instanceVariableNames: ''!

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

!classDefinition: #SeabedGround category: #SurveyCrawler!
Object subclass: #SeabedGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedGround class' category: #SurveyCrawler!
SeabedGround class
	instanceVariableNames: ''!

!classDefinition: #SeabedBoulder category: #SurveyCrawler!
SeabedGround subclass: #SeabedBoulder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedBoulder class' category: #SurveyCrawler!
SeabedBoulder class
	instanceVariableNames: ''!

!classDefinition: #SeabedFirmSand category: #SurveyCrawler!
SeabedGround subclass: #SeabedFirmSand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedFirmSand class' category: #SurveyCrawler!
SeabedFirmSand class
	instanceVariableNames: ''!

!classDefinition: #SeabedSilt category: #SurveyCrawler!
SeabedGround subclass: #SeabedSilt
	instanceVariableNames: 'slideDistanceRandom'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedSilt class' category: #SurveyCrawler!
SeabedSilt class
	instanceVariableNames: ''!

!classDefinition: #SeabedMapSonar category: #SurveyCrawler!
Object subclass: #SeabedMapSonar
	instanceVariableNames: 'grounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedMapSonar class' category: #SurveyCrawler!
SeabedMapSonar class
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

!classDefinition: #SlideDistanceRandomStub category: #'SurveyCrawler-Tests'!
Object subclass: #SlideDistanceRandomStub
	instanceVariableNames: 'distance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SlideDistanceRandomStub class' category: #'SurveyCrawler-Tests'!
SlideDistanceRandomStub class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
repeat: aNumberOfRepetitions on: aCrawler

	aCrawler signalInvalidRepetition! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
for: aCharacter

	^self allSubclasses 
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass newFor: aCharacter ]
		ifNone: [ self error: SurveyCrawler invalidCommandErrorDescription ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
newFor: aCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
isFor: aCharacter

	^false! !

!CrawlerEndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler endGuardedRun! !

!CrawlerEndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
isFor: aCharacter

	^aCharacter = $)! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self executeOn: aCrawler! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
repeat: aNumberOfRepetitions on: aCrawler

	aNumberOfRepetitions timesRepeat: [ self executeOn: aCrawler ]! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
isFor: aCharacter

	^aCharacter = $a! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
isFor: aCharacter

	^aCharacter = $t! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
isFor: aCharacter

	^aCharacter = $h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
isFor: aCharacter

	^aCharacter = $g! !

!CrawlerRepetitionCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
initializeRepeating: aNumberOfRepetitions

	numberOfRepetitions := aNumberOfRepetitions! !

!CrawlerRepetitionCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aPreviousCommand repeat: numberOfRepetitions on: aCrawler! !

!CrawlerRepetitionCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
isFor: aCharacter

	^aCharacter isDigit! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
newFor: aCharacter

	^self repeating: aCharacter digitValue + self minimumRepetitions! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
repeating: aNumberOfRepetitions

	^self new initializeRepeating: aNumberOfRepetitions! !

!CrawlerRepetitionCommand class methodsFor: 'repeating' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
minimumRepetitions

	^2! !

!CrawlerSequenceStartCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	^self! !

!CrawlerStartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler startGuardedRun! !

!CrawlerStartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
isFor: aCharacter

	^aCharacter = $(! !

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

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
endGuardedRunOf: aCrawler
	
	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
finishOf: aCrawler
	
	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
recover: aCrawler from: anError
	
	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
startGuardedRunOf: aCrawler
	
	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
registerUndo: anUndoAction
	
	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
slide: aCrawler on: aSilt towards: aDirection
	
	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
initialize
	
	undoActions := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
endGuardedRunOf: aCrawler
	
	aCrawler runUnguarded! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
finishOf: aCrawler
	
	aCrawler signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
recover: aCrawler from: anError
	
	undoActions reverseDo: [ :anUndoAction | anUndoAction value ].
	aCrawler runUnguarded.
	anError pass! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
startGuardedRunOf: aCrawler
	
	aCrawler signalGuardedRunAlreadyStarted! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
registerUndo: anUndoAction
	
	undoActions add: anUndoAction! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
slide: aCrawler on: aSilt towards: aDirection
	
	aCrawler signalSiltFoundDuringGuardedRun! !

!CrawlerUnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
endGuardedRunOf: aCrawler
	
	aCrawler signalGuardedRunNotStarted! !

!CrawlerUnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
finishOf: aCrawler
	
	^self! !

!CrawlerUnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
recover: aCrawler from: anError
	
	anError pass! !

!CrawlerUnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
startGuardedRunOf: aCrawler
	
	aCrawler runGuarded! !

!CrawlerUnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
registerUndo: anUndoAction
	
	^self! !

!CrawlerUnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:42 am (UTC)'!
slide: aCrawler on: aSilt towards: aDirection
	
	aCrawler displaceBy: aDirection * aSilt slideDistance! !

!SeabedGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
assertCanTurn: aCrawler
	
	self subclassResponsibility! !

!SeabedGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
receive: aCrawler movingTowards: aDirection
	
	self subclassResponsibility! !

!SeabedBoulder methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
assertCanTurn: aCrawler
	
	aCrawler signalBoulderFound! !

!SeabedBoulder methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
receive: aCrawler movingTowards: aDirection
	
	aCrawler signalBoulderFound! !

!SeabedFirmSand methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
assertCanTurn: aCrawler
	
	^self! !

!SeabedFirmSand methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
receive: aCrawler movingTowards: aDirection
	
	aCrawler displaceBy: aDirection! !

!SeabedSilt methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
assertCanTurn: aCrawler
	
	^self! !

!SeabedSilt methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
receive: aCrawler movingTowards: aDirection
	
	aCrawler slideOn: self towards: aDirection! !

!SeabedSilt methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
slideDistance
	
	^slideDistanceRandom nextInteger: self class slideLimit! !

!SeabedSilt methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
initializeSlidingWith: aSlideDistanceRandom
	
	slideDistanceRandom := aSlideDistanceRandom! !

!SeabedSilt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
slidingRandomly
	
	^self slidingWith: Random new! !

!SeabedSilt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
slidingWith: aSlideDistanceRandom
	
	^self new initializeSlidingWith: aSlideDistanceRandom! !

!SeabedSilt class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
slideLimit
	
	^10! !

!SeabedMapSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
initializeWithGrounds: aGroundByPosition
	
	grounds := aGroundByPosition copy! !

!SeabedMapSonar methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
groundAt: aPosition
	
	^grounds at: aPosition ifAbsent: [ SeabedFirmSand new ]! !

!SeabedMapSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
overFirmSand
	
	^self withGrounds: Dictionary new! !

!SeabedMapSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
withGrounds: aGroundByPosition
	
	^self new initializeWithGrounds: aGroundByPosition! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
signalBoulderFound
	
	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
signalGuardedRunAlreadyStarted
	
	self error: self class guardedRunAlreadyStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
signalGuardedRunNotStarted
	
	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
signalInvalidRepetition
	
	self error: self class invalidRepetitionErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
signalSiltFoundDuringGuardedRun
	
	self error: self class siltFoundDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:22:40 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	run := CrawlerUnguardedRun new! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
turnClockwise
	
	(sonar groundAt: position) assertCanTurn: self.
	facing turnClockwise: self.
	run registerUndo: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
turnCounterClockwise
	
	(sonar groundAt: position) assertCanTurn: self.
	facing turnCounterClockwise: self.
	run registerUndo: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
displaceBy: aDisplacement
	
	position := position + aDisplacement.
	run registerUndo: [ position := position - aDisplacement ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
moveDown
	
	self moveTowards: 0@-1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
moveLeft
	
	self moveTowards: -1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
moveRight
	
	self moveTowards: 1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
moveTowards: aDirection
	
	(sonar groundAt: position + aDirection) receive: self movingTowards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
moveUp
	
	self moveTowards: 0@1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
slideOn: aSilt towards: aDirection
	
	run slide: self on: aSilt towards: aDirection! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 7:22:40 am (UTC)'!
process: aSequenceOfCommands

	[ self processEach: aSequenceOfCommands.
	run finishOf: self ]
		on: Error
		do: [ :anError | run recover: self from: anError ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 7:22:40 am (UTC)'!
processEach: aSequenceOfCommands

	aSequenceOfCommands
		inject: CrawlerSequenceStartCommand new
		into: [ :aPreviousCommand :aCharacter | 
			(CrawlerCommand for: aCharacter) executeOn: self after: aPreviousCommand ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
endGuardedRun
	
	run endGuardedRunOf: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
runGuarded
	
	run := CrawlerGuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
runUnguarded
	
	run := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:22:41 am (UTC)'!
startGuardedRun
	
	run startGuardedRunOf: self! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:22:40 am (UTC)'!
at: aPosition facing: aFacingName
	
	^self at: aPosition facing: aFacingName sonar: SeabedMapSonar overFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:22:40 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar
	
	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:21:10 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:22:40 am (UTC)'!
boulderFoundErrorDescription
	
	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:22:40 am (UTC)'!
guardedRunAlreadyStartedErrorDescription
	
	^'Guarded run already started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:22:40 am (UTC)'!
guardedRunNotStartedErrorDescription
	
	^'Guarded run not started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:22:40 am (UTC)'!
invalidRepetitionErrorDescription
	
	^'Only advance, retreat and turn commands can be repeated'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:22:40 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription
	
	^'Silt found during guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:22:40 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'Guarded run not finished'! !

!SlideDistanceRandomStub methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:22:43 am (UTC)'!
initializeAnswering: aDistance

	distance := aDistance! !

!SlideDistanceRandomStub methodsFor: 'random' stamp: 'HAW 17/Sep/2026, 7:22:43 am (UTC)'!
nextInteger: aLimit

	^distance! !

!SlideDistanceRandomStub class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:22:43 am (UTC)'!
answering: aDistance

	^self new initializeAnswering: aDistance! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
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

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
should: aCrawler failProcessing: aSequenceOfCommands with: anErrorDescription remainingAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'grounds' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
boulder

	^SeabedBoulder new! !

!SurveyCrawlerTest methodsFor: 'grounds' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
siltSliding: aDistance

	^SeabedSilt slidingWith: (SlideDistanceRandomStub answering: aDistance)! !

!SurveyCrawlerTest methodsFor: 'grounds' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
sonarWith: aGroundByPositionAssociations

	^SeabedMapSonar withGrounds: (Dictionary newFrom: aGroundByPositionAssociations)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test17DigitAfterAdvanceAdvancesDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test18DigitAfterRetreatRetreatsDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test19DigitAfterTurnClockwiseTurnsDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test20DigitAfterTurnCounterClockwiseTurnsDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test21RepetitionIsProcessedAmongOtherCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a9ha'.
	
	self assert: (crawler isAt: 2@14 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test22DigitAtTheBeginningIsAnInvalidRepetition

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up)
		failProcessing: '3'
		with: SurveyCrawler invalidRepetitionErrorDescription
		remainingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test23DigitAfterADigitIsAnInvalidRepetition

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up)
		failProcessing: 'a33'
		with: SurveyCrawler invalidRepetitionErrorDescription
		remainingAt: 1@8
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:24:03 am (UTC)'!
test24DigitAfterGuardedRunStartIsAnInvalidRepetitionAndUndoesTheGuardedRun

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up)
		failProcessing: 'a(3'
		with: SurveyCrawler invalidRepetitionErrorDescription
		remainingAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test25DigitAfterGuardedRunEndIsAnInvalidRepetition

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up)
		failProcessing: '(aa)3'
		with: SurveyCrawler invalidRepetitionErrorDescription
		remainingAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test26AdvanceToFirmSandMovesOneCell

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (self sonarWith: { 1@3 -> SeabedFirmSand new }).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test27CanNotAdvanceToABoulder

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@3 -> self boulder }))
		failProcessing: 'a'
		with: SurveyCrawler boulderFoundErrorDescription
		remainingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test28CanNotRetreatToABoulder

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@1 -> self boulder }))
		failProcessing: 't'
		with: SurveyCrawler boulderFoundErrorDescription
		remainingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test29CanNotTurnClockwiseOnABoulder

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@2 -> self boulder }))
		failProcessing: 'h'
		with: SurveyCrawler boulderFoundErrorDescription
		remainingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test30CanNotTurnCounterClockwiseOnABoulder

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@2 -> self boulder }))
		failProcessing: 'g'
		with: SurveyCrawler boulderFoundErrorDescription
		remainingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test31AdvanceFromABoulderToFirmSandMovesOneCell

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@2 -> self boulder }).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test32AdvanceToSiltSlidesForwardTheRandomDistance

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@3 -> (self siltSliding: 4) }).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test33RetreatToSiltSlidesBackwardTheRandomDistance

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right sonar: (self sonarWith: { 0@2 -> (self siltSliding: 3) }).
	
	crawler process: 't'.
	
	self assert: (crawler isAt: -2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test34TurnOnSiltTurnsAsOnFirmSand

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@2 -> (self siltSliding: 4) }).
	
	crawler process: 'hhg'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test35AdvanceToSiltSlidesAtMostTenCells

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@3 -> SeabedSilt slidingRandomly }).
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aY | crawler isAt: 1@aY facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test36BoulderStopsARepetitionWhereItIsFound

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@5 -> self boulder }))
		failProcessing: 'a1'
		with: SurveyCrawler boulderFoundErrorDescription
		remainingAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test37GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aah)'.
	
	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test38BoulderInGuardedRunReturnsToWhereItStarted

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@4 -> self boulder }))
		failProcessing: '(aa)'
		with: SurveyCrawler boulderFoundErrorDescription
		remainingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test39FailingGuardedRunUndoesItsTurnsAndMovements

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 3@3 -> self boulder }))
		failProcessing: '(ahaa)'
		with: SurveyCrawler boulderFoundErrorDescription
		remainingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test40SiltInGuardedRunReturnsToWhereItStarted

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@4 -> (self siltSliding: 4) }))
		failProcessing: '(aa)'
		with: SurveyCrawler siltFoundDuringGuardedRunErrorDescription
		remainingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test41InvalidCommandInGuardedRunReturnsToWhereItStarted

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up)
		failProcessing: '(ahx)'
		with: SurveyCrawler invalidCommandErrorDescription
		remainingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:24:03 am (UTC)'!
test42FailingGuardedRunDoesNotUndoCommandsProcessedBeforeIt

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up)
		failProcessing: 'ah(ax)'
		with: SurveyCrawler invalidCommandErrorDescription
		remainingAt: 1@3
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test43GuardedRunStartedInsideAnotherReturnsToWhereTheOuterStarted

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up)
		failProcessing: 'aa(aa(ht)a)'
		with: SurveyCrawler guardedRunAlreadyStartedErrorDescription
		remainingAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test44UnfinishedGuardedRunReturnsToWhereItStarted

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up)
		failProcessing: 'a(aa'
		with: SurveyCrawler unfinishedGuardedRunErrorDescription
		remainingAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test45SeveralGuardedRunsAreProcessedInOneSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test46FailingGuardedRunDoesNotUndoAPreviousFinishedOne

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up)
		failProcessing: '(aa)(hax)'
		with: SurveyCrawler invalidCommandErrorDescription
		remainingAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test47GuardedRunEndWithoutItsStartIsInvalid

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up)
		failProcessing: 'a)'
		with: SurveyCrawler guardedRunNotStartedErrorDescription
		remainingAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:55 am (UTC)'!
test48FailingGuardedRunUndoesItsRepetitions

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up)
		failProcessing: '(a3h1x)'
		with: SurveyCrawler invalidCommandErrorDescription
		remainingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
test49FailingGuardedRunStartedOnSiltReturnsToItWithoutSliding

	self 
		should: (SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@2 -> (self siltSliding: 4) }))
		failProcessing: '(ax)'
		with: SurveyCrawler invalidCommandErrorDescription
		remainingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
test50SequenceAfterAFailedGuardedRunIsNotGuarded

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: { 1@3 -> (self siltSliding: 4) }).
	self should: [ crawler process: '(x' ] raise: Error - MessageNotUnderstood.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
test51ProcessingAnotherSequenceDoesNotUndoAFinishedGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	crawler process: '(aa)'.
	
	self should: [ crawler process: '(ax)' ] raise: Error - MessageNotUnderstood.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !
