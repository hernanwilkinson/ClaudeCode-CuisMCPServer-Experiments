'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:32:10 am'!
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

!classDefinition: #CrawlerEndOfSequenceCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerEndOfSequenceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerEndOfSequenceCommand class' category: #SurveyCrawler!
CrawlerEndOfSequenceCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerFinishGuardedRunCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerFinishGuardedRunCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFinishGuardedRunCommand class' category: #SurveyCrawler!
CrawlerFinishGuardedRunCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerInvalidCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerInvalidCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerInvalidCommand class' category: #SurveyCrawler!
CrawlerInvalidCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRepeatableCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerRepeatableCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRepeatableCommand class' category: #SurveyCrawler!
CrawlerRepeatableCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerAdvanceCommand category: #SurveyCrawler!
CrawlerRepeatableCommand subclass: #CrawlerAdvanceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerAdvanceCommand class' category: #SurveyCrawler!
CrawlerAdvanceCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRetreatCommand category: #SurveyCrawler!
CrawlerRepeatableCommand subclass: #CrawlerRetreatCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRetreatCommand class' category: #SurveyCrawler!
CrawlerRetreatCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerTurnClockwiseCommand category: #SurveyCrawler!
CrawlerRepeatableCommand subclass: #CrawlerTurnClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurnClockwiseCommand class' category: #SurveyCrawler!
CrawlerTurnClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerTurnCounterClockwiseCommand category: #SurveyCrawler!
CrawlerRepeatableCommand subclass: #CrawlerTurnCounterClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurnCounterClockwiseCommand class' category: #SurveyCrawler!
CrawlerTurnCounterClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRepetitionCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerRepetitionCommand
	instanceVariableNames: 'times'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRepetitionCommand class' category: #SurveyCrawler!
CrawlerRepetitionCommand class
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

!classDefinition: #CrawlerStartOfSequenceCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerStartOfSequenceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerStartOfSequenceCommand class' category: #SurveyCrawler!
CrawlerStartOfSequenceCommand class
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

!classDefinition: #CrawlerMovement category: #SurveyCrawler!
Object subclass: #CrawlerMovement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerMovement class' category: #SurveyCrawler!
CrawlerMovement class
	instanceVariableNames: ''!

!classDefinition: #CrawlerClockwiseTurn category: #SurveyCrawler!
CrawlerMovement subclass: #CrawlerClockwiseTurn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerClockwiseTurn class' category: #SurveyCrawler!
CrawlerClockwiseTurn class
	instanceVariableNames: ''!

!classDefinition: #CrawlerCounterClockwiseTurn category: #SurveyCrawler!
CrawlerMovement subclass: #CrawlerCounterClockwiseTurn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerCounterClockwiseTurn class' category: #SurveyCrawler!
CrawlerCounterClockwiseTurn class
	instanceVariableNames: ''!

!classDefinition: #CrawlerDisplacement category: #SurveyCrawler!
CrawlerMovement subclass: #CrawlerDisplacement
	instanceVariableNames: 'offset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerDisplacement class' category: #SurveyCrawler!
CrawlerDisplacement class
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
	instanceVariableNames: 'random'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Silt class' category: #SurveyCrawler!
Silt class
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

!classDefinition: #SeabedSonarSimulator category: #'SurveyCrawler-Tests'!
SeabedSonar subclass: #SeabedSonarSimulator
	instanceVariableNames: 'grounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SeabedSonarSimulator class' category: #'SurveyCrawler-Tests'!
SeabedSonarSimulator class
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

!classDefinition: #FixedRandom category: #'SurveyCrawler-Tests'!
Object subclass: #FixedRandom
	instanceVariableNames: 'number'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'FixedRandom class' category: #'SurveyCrawler-Tests'!
FixedRandom class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self executeOn: aCrawler! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler

	aCrawler signalInvalidCommand! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
createFor: aCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
endOfSequence

	^CrawlerEndOfSequenceCommand new! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
for: aCharacter

	^(self allSubclasses 
		detect: [ :aCommandClass | aCommandClass handles: aCharacter ]
		ifNone: [ CrawlerInvalidCommand ]) createFor: aCharacter! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
startOfSequence

	^CrawlerStartOfSequenceCommand new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
handles: aCharacter

	^false! !

!CrawlerEndOfSequenceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler

	aCrawler finishSequence! !

!CrawlerFinishGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler

	aCrawler finishGuardedRun! !

!CrawlerFinishGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
handles: aCharacter

	^aCharacter = $)! !

!CrawlerInvalidCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler

	aCrawler signalInvalidCommand! !

!CrawlerRepeatableCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler

	aNumberOfTimes timesRepeat: [ self executeOn: aCrawler ]! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
handles: aCharacter

	^aCharacter = $a! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
handles: aCharacter

	^aCharacter = $t! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
handles: aCharacter

	^aCharacter = $h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
handles: aCharacter

	^aCharacter = $g! !

!CrawlerRepetitionCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
initializeRepeating: aNumberOfTimes

	times := aNumberOfTimes! !

!CrawlerRepetitionCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler

	aCrawler signalInvalidCommand! !

!CrawlerRepetitionCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aPreviousCommand repeat: times on: aCrawler! !

!CrawlerRepetitionCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
handles: aCharacter

	^aCharacter isDigit! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
createFor: aCharacter

	^self repeating: aCharacter digitValue + self minimumRepetitions! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
minimumRepetitions

	^2! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
repeating: aNumberOfTimes

	^self new initializeRepeating: aNumberOfTimes! !

!CrawlerStartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler

	aCrawler startGuardedRun! !

!CrawlerStartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
handles: aCharacter

	^aCharacter = $(! !

!CrawlerStartOfSequenceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
executeOn: aCrawler

	! !

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

!CrawlerMovement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerClockwiseTurn methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateCounterClockwise! !

!CrawlerCounterClockwiseTurn methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateClockwise! !

!CrawlerDisplacement methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
initializeBy: anOffset

	offset := anOffset! !

!CrawlerDisplacement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
undoOn: aCrawler

	aCrawler displaceBy: offset negated! !

!CrawlerDisplacement class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
by: anOffset

	^self new initializeBy: anOffset! !

!CrawlerRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
execute: aCommand after: aPreviousCommand on: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'recording' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
record: aMovement

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
assertCanSlideOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
finishGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
finishSequenceOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
startGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
initialize

	movements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
execute: aCommand after: aPreviousCommand on: aCrawler

	[ aCommand executeOn: aCrawler after: aPreviousCommand ]
		on: Error
		do: [ :anError |
			self rollBack: aCrawler.
			anError pass ]! !

!CrawlerGuardedRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
rollBack: aCrawler

	aCrawler beUnguarded.
	movements reverseDo: [ :aMovement | aMovement undoOn: aCrawler ]! !

!CrawlerGuardedRun methodsFor: 'recording' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
record: aMovement

	movements add: aMovement! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
assertCanSlideOn: aCrawler

	aCrawler signalSiltDuringGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
finishGuardedRunOn: aCrawler

	aCrawler beUnguarded! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
finishSequenceOn: aCrawler

	aCrawler signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler signalNestedGuardedRun! !

!CrawlerUnguardedRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
execute: aCommand after: aPreviousCommand on: aCrawler

	aCommand executeOn: aCrawler after: aPreviousCommand! !

!CrawlerUnguardedRun methodsFor: 'recording' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
record: aMovement

	! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
assertCanSlideOn: aCrawler

	! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
finishGuardedRunOn: aCrawler

	aCrawler signalNoGuardedRunToFinish! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:48 am (UTC)'!
finishSequenceOn: aCrawler

	! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler beGuarded! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
assertCanTurn: aCrawler

	self subclassResponsibility! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler signalBoulderAhead! !

!Boulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
assertCanTurn: aCrawler

	aCrawler signalCanNotTurnOnBoulder! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler displaceBy: aDirection! !

!FirmSand methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
assertCanTurn: aCrawler

	! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
cellsToSlide

	^random nextInteger: self class maximumCellsToSlide! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slideBy: aDirection * self cellsToSlide! !

!Silt methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
assertCanTurn: aCrawler

	! !

!Silt methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
initializeSlidingWith: aRandom

	random := aRandom! !

!Silt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
slidingRandomly

	^self slidingWith: Random new! !

!Silt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
slidingWith: aRandom

	^self new initializeSlidingWith: aRandom! !

!Silt class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:30:47 am (UTC)'!
maximumCellsToSlide

	^10! !

!SeabedSonar methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
groundAt: aPosition

	self subclassResponsibility! !

!SeabedSonarSimulator methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:31:51 am (UTC)'!
initializeDetecting: aGroundsByPosition

	grounds := aGroundsByPosition! !

!SeabedSonarSimulator methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 6:31:51 am (UTC)'!
groundAt: aPosition

	^grounds at: aPosition ifAbsent: [ FirmSand new ]! !

!SeabedSonarSimulator class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:31:51 am (UTC)'!
detecting: aGroundsByPosition

	^self new initializeDetecting: aGroundsByPosition! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
signalBoulderAhead
	
	self error: self class boulderAheadErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
signalCanNotTurnOnBoulder
	
	self error: self class canNotTurnOnBoulderErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
signalInvalidCommand
	
	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
signalNestedGuardedRun
	
	self error: self class nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
signalNoGuardedRunToFinish
	
	self error: self class noGuardedRunToFinishErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
signalSiltDuringGuardedRun
	
	self error: self class siltDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	run := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
assertCanTurn
	
	(sonar groundAt: position) assertCanTurn: self! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
rotateClockwise
	
	facing turnClockwise: self.
	run record: CrawlerClockwiseTurn new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
rotateCounterClockwise
	
	facing turnCounterClockwise: self.
	run record: CrawlerCounterClockwiseTurn new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
turnClockwise
	
	self assertCanTurn.
	self rotateClockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
turnCounterClockwise
	
	self assertCanTurn.
	self rotateCounterClockwise! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
displaceBy: anOffset
	
	position := position + anOffset.
	run record: (CrawlerDisplacement by: anOffset)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
moveDown
	
	self moveTowards: 0@-1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
moveLeft
	
	self moveTowards: -1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
moveRight
	
	self moveTowards: 1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
moveTowards: aDirection
	
	(sonar groundAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
moveUp
	
	self moveTowards: 0@1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
slideBy: anOffset
	
	self displaceBy: anOffset.
	run assertCanSlideOn: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
execute: aCommand after: aPreviousCommand

	run execute: aCommand after: aPreviousCommand on: self.
	^aCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
process: aSequenceOfCommands

	| lastCommand |
	
	lastCommand := aSequenceOfCommands 
		inject: CrawlerCommand startOfSequence
		into: [ :aPreviousCommand :aCharacter | 
			self execute: (CrawlerCommand for: aCharacter) after: aPreviousCommand ].
	self execute: CrawlerCommand endOfSequence after: lastCommand! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
beGuarded
	
	run := CrawlerGuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
beUnguarded
	
	run := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
finishGuardedRun
	
	run finishGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
finishSequence
	
	run finishSequenceOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
startGuardedRun
	
	run startGuardedRunOn: self! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:45 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar
	
	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
boulderAheadErrorDescription
	
	^'Can not move onto a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
canNotTurnOnBoulderErrorDescription
	
	^'Can not turn on a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'Can not start a guarded run inside another one'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
noGuardedRunToFinishErrorDescription
	
	^'There is no guarded run to finish'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
siltDuringGuardedRunErrorDescription
	
	^'Slid on silt during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:46 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'Guarded run was not finished'! !

!FixedRandom methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
initializeAlways: aNumber

	number := aNumber! !

!FixedRandom methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
nextInteger: aLimit

	^number! !

!FixedRandom class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:31:51 am (UTC)'!
always: aNumber

	^self new initializeAlways: aNumber! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	self 
		should: (self crawlerAt: 1@2 facing: #Up)
		failProcessing: 'x'
		with: SurveyCrawler invalidCommandErrorDescription
		stayingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ self crawlerAt: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
crawlerAt: aPosition facing: aFacingName

	^self crawlerAt: aPosition facing: aFacingName over: Dictionary new! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
crawlerAt: aPosition facing: aFacingName over: aGroundsByPosition

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: (SeabedSonarSimulator detecting: aGroundsByPosition)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
crawlerAt: aPosition facing: aFacingName with: aGround at: aGroundPosition

	^self 
		crawlerAt: aPosition 
		facing: aFacingName 
		over: (Dictionary with: aGroundPosition -> aGround)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
should: aCrawler failProcessing: aSequenceOfCommands with: anErrorDescription stayingAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test17DigitAfterAdvanceAdvancesDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test18DigitAfterRetreatRetreatsDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test19DigitAfterClockwiseTurnTurnsDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test20DigitAfterCounterClockwiseTurnTurnsDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test21DigitAtTheBeginningOfTheSequenceIsInvalid

	self 
		should: (self crawlerAt: 1@2 facing: #Up)
		failProcessing: '0'
		with: SurveyCrawler invalidCommandErrorDescription
		stayingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test22RepetitionIsASingleDigitSoASecondDigitIsInvalid

	self 
		should: (self crawlerAt: 1@2 facing: #Up)
		failProcessing: 'a00'
		with: SurveyCrawler invalidCommandErrorDescription
		stayingAt: 1@5
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test23DigitAfterGuardedRunIsInvalid

	self 
		should: (self crawlerAt: 1@2 facing: #Up)
		failProcessing: '(a)0'
		with: SurveyCrawler invalidCommandErrorDescription
		stayingAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test24CanNotAdvanceOntoABoulder

	self 
		should: (self crawlerAt: 1@2 facing: #Up with: Boulder new at: 1@3)
		failProcessing: 'a'
		with: SurveyCrawler boulderAheadErrorDescription
		stayingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test25CanNotRetreatOntoABoulder

	self 
		should: (self crawlerAt: 1@2 facing: #Right with: Boulder new at: 0@2)
		failProcessing: 't'
		with: SurveyCrawler boulderAheadErrorDescription
		stayingAt: 1@2
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test26CanNotTurnCounterClockwiseOnABoulder

	self 
		should: (self crawlerAt: 1@2 facing: #Up with: Boulder new at: 1@2)
		failProcessing: 'g'
		with: SurveyCrawler canNotTurnOnBoulderErrorDescription
		stayingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test27CanNotTurnClockwiseOnABoulder

	self 
		should: (self crawlerAt: 1@2 facing: #Up with: Boulder new at: 1@2)
		failProcessing: 'h'
		with: SurveyCrawler canNotTurnOnBoulderErrorDescription
		stayingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test28AdvancingOntoSiltSlidesAsManyCellsAsTheRandomAnswers

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up with: (Silt slidingWith: (FixedRandom always: 4)) at: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test29AdvancingOntoSiltSlidesAtMostTenCells

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up with: Silt slidingRandomly at: 1@3.
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aY | crawler isAt: 1@aY facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test30RetreatingOntoSiltSlidesBackwards

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up with: (Silt slidingWith: (FixedRandom always: 3)) at: 1@1.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test31TurningOnSiltIsLikeTurningOnFirmSand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up with: Silt slidingRandomly at: 1@2.
	
	crawler process: 'hhg'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test32GuardedRunWithoutProblemsExecutesItsCommands

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: '(aht)'.
	
	self assert: (crawler isAt: 0@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test33BoulderDuringGuardedRunReturnsToWhereItStarted

	self 
		should: (self crawlerAt: 1@2 facing: #Up with: Boulder new at: 1@4)
		failProcessing: '(aa)'
		with: SurveyCrawler boulderAheadErrorDescription
		stayingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test34TurnsAreUndoneWhenGuardedRunFails

	self 
		should: (self crawlerAt: 1@2 facing: #Up with: Boulder new at: 3@3)
		failProcessing: '(ahgha0)'
		with: SurveyCrawler boulderAheadErrorDescription
		stayingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test35SiltDuringGuardedRunReturnsToWhereItStarted

	self 
		should: (self crawlerAt: 1@2 facing: #Up with: (Silt slidingWith: (FixedRandom always: 5)) at: 1@4)
		failProcessing: '(aa)'
		with: SurveyCrawler siltDuringGuardedRunErrorDescription
		stayingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test36InvalidCommandDuringGuardedRunReturnsToWhereItStarted

	self 
		should: (self crawlerAt: 1@2 facing: #Up)
		failProcessing: '(aht1x)'
		with: SurveyCrawler invalidCommandErrorDescription
		stayingAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test37CommandsBeforeFailingGuardedRunAreNotUndone

	self 
		should: (self crawlerAt: 1@2 facing: #Up)
		failProcessing: 'ah(ax)'
		with: SurveyCrawler invalidCommandErrorDescription
		stayingAt: 1@3
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test38FailingGuardedRunDoesNotUndoAPreviousFinishedGuardedRun

	self 
		should: (self crawlerAt: 1@2 facing: #Up)
		failProcessing: '(aa)(ax)'
		with: SurveyCrawler invalidCommandErrorDescription
		stayingAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test39SeveralGuardedRunsCanBeProcessedInASequence

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:52 am (UTC)'!
test40NestedGuardedRunIsInvalidAndReturnsToWhereTheOuterOneStarted

	self 
		should: (self crawlerAt: 1@2 facing: #Up)
		failProcessing: 'aa(aa(ht)a)'
		with: SurveyCrawler nestedGuardedRunErrorDescription
		stayingAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:53 am (UTC)'!
test41UnfinishedGuardedRunIsInvalidAndReturnsToWhereItStarted

	self 
		should: (self crawlerAt: 1@2 facing: #Up)
		failProcessing: 'a(aa'
		with: SurveyCrawler unfinishedGuardedRunErrorDescription
		stayingAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:53 am (UTC)'!
test42FinishingAGuardedRunThatWasNotStartedIsInvalid

	self 
		should: (self crawlerAt: 1@2 facing: #Up)
		failProcessing: 'a)'
		with: SurveyCrawler noGuardedRunToFinishErrorDescription
		stayingAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:53 am (UTC)'!
test43CrawlerCanStartANewGuardedRunAfterAFailedOne

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	[ crawler process: '(ax)' ] on: Error - MessageNotUnderstood do: [ :anError | anError return ].
	
	crawler process: '(a)'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !
