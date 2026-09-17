'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 4:18:20 am'!
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

!classDefinition: #CrawlerNonRepeatableCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerNonRepeatableCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerNonRepeatableCommand class' category: #SurveyCrawler!
CrawlerNonRepeatableCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerEndGuardedRunCommand category: #SurveyCrawler!
CrawlerNonRepeatableCommand subclass: #CrawlerEndGuardedRunCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerEndGuardedRunCommand class' category: #SurveyCrawler!
CrawlerEndGuardedRunCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerInvalidCommand category: #SurveyCrawler!
CrawlerNonRepeatableCommand subclass: #CrawlerInvalidCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerInvalidCommand class' category: #SurveyCrawler!
CrawlerInvalidCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerNoCommand category: #SurveyCrawler!
CrawlerNonRepeatableCommand subclass: #CrawlerNoCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerNoCommand class' category: #SurveyCrawler!
CrawlerNoCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRepetitionCommand category: #SurveyCrawler!
CrawlerNonRepeatableCommand subclass: #CrawlerRepetitionCommand
	instanceVariableNames: 'repetitions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRepetitionCommand class' category: #SurveyCrawler!
CrawlerRepetitionCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerStartGuardedRunCommand category: #SurveyCrawler!
CrawlerNonRepeatableCommand subclass: #CrawlerStartGuardedRunCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerStartGuardedRunCommand class' category: #SurveyCrawler!
CrawlerStartGuardedRunCommand class
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
	instanceVariableNames: 'displacement'
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
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Silt class' category: #SurveyCrawler!
Silt class
	instanceVariableNames: ''!

!classDefinition: #SeabedSonarSimulator category: #SurveyCrawler!
Object subclass: #SeabedSonarSimulator
	instanceVariableNames: 'groundsByPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedSonarSimulator class' category: #SurveyCrawler!
SeabedSonarSimulator class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar slideDistances run lastCommand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #MaximumSlideDistanceStub category: #'SurveyCrawler-Tests'!
Object subclass: #MaximumSlideDistanceStub
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'MaximumSlideDistanceStub class' category: #'SurveyCrawler-Tests'!
MaximumSlideDistanceStub class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:48 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:48 am (UTC)'!
repeat: aNumberOfRepetitions on: aCrawler

	self subclassResponsibility! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:16:48 am (UTC)'!
for: aCharacter

	^self allSubclasses 
		detect: [ :aCommandClass | aCommandClass handles: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass newFor: aCharacter ]
		ifNone: [ CrawlerInvalidCommand new ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:16:48 am (UTC)'!
newFor: aCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:16:48 am (UTC)'!
handles: aCharacter

	^false! !

!CrawlerNonRepeatableCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
repeat: aNumberOfRepetitions on: aCrawler

	aCrawler signalInvalidCommand! !

!CrawlerEndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
executeOn: aCrawler

	aCrawler endGuardedRun! !

!CrawlerEndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
handles: aCharacter

	^aCharacter = $)! !

!CrawlerInvalidCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
executeOn: aCrawler

	aCrawler signalInvalidCommand! !

!CrawlerNoCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
executeOn: aCrawler

	^self! !

!CrawlerRepetitionCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
initializeRepeating: aNumberOfRepetitions

	repetitions := aNumberOfRepetitions! !

!CrawlerRepetitionCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
executeOn: aCrawler

	aCrawler repeatLastCommand: repetitions! !

!CrawlerRepetitionCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
handles: aCharacter

	^aCharacter isDigit! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
newFor: aCharacter

	^self repeating: aCharacter digitValue + 2! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
repeating: aNumberOfRepetitions

	^self new initializeRepeating: aNumberOfRepetitions! !

!CrawlerStartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
executeOn: aCrawler

	aCrawler startGuardedRun! !

!CrawlerStartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
handles: aCharacter

	^aCharacter = $(! !

!CrawlerRepeatableCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:48 am (UTC)'!
repeat: aNumberOfRepetitions on: aCrawler

	aNumberOfRepetitions timesRepeat: [ self executeOn: aCrawler ]! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
handles: aCharacter

	^aCharacter = $a! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
handles: aCharacter

	^aCharacter = $t! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
handles: aCharacter

	^aCharacter = $h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
handles: aCharacter

	^aCharacter = $g! !

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

!CrawlerMovement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 7:16:50 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerClockwiseTurn methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 7:16:50 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateCounterClockwise! !

!CrawlerCounterClockwiseTurn methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 7:16:50 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateClockwise! !

!CrawlerDisplacement methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:16:50 am (UTC)'!
initializeBy: aDisplacement

	displacement := aDisplacement! !

!CrawlerDisplacement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 7:16:50 am (UTC)'!
undoOn: aCrawler

	aCrawler shiftBy: displacement negated! !

!CrawlerDisplacement class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:16:50 am (UTC)'!
by: aDisplacement

	^self new initializeBy: aDisplacement! !

!CrawlerRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
endGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
execute: aCommand on: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
finishProcessingOf: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
startGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
record: aMovement

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
slide: aCrawler towards: aDirection

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
initialize

	movements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
endGuardedRunOf: aCrawler

	aCrawler beInUnguardedRun! !

!CrawlerGuardedRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
execute: aCommand on: aCrawler

	[ aCommand executeOn: aCrawler ]
		on: Error
		do: [ :anError |
			self undoOn: aCrawler.
			anError pass ]! !

!CrawlerGuardedRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
finishProcessingOf: aCrawler

	self undoOn: aCrawler.
	aCrawler signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler signalNestedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
undoOn: aCrawler

	movements reverseDo: [ :aMovement | aMovement undoOn: aCrawler ].
	aCrawler beInUnguardedRun! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:16:50 am (UTC)'!
record: aMovement

	movements add: aMovement! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:16:50 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler signalSiltInGuardedRun! !

!CrawlerUnguardedRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
endGuardedRunOf: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerUnguardedRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
execute: aCommand on: aCrawler

	aCommand executeOn: aCrawler! !

!CrawlerUnguardedRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
finishProcessingOf: aCrawler

	^self! !

!CrawlerUnguardedRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler beInGuardedRun! !

!CrawlerUnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
record: aMovement

	^self! !

!CrawlerUnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler slideFreelyTowards: aDirection! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
assertCanTurn: aCrawler

	self subclassResponsibility! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!Boulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
assertCanTurn: aCrawler

	aCrawler signalBoulderFound! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler displaceBy: aDirection! !

!FirmSand methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
assertCanTurn: aCrawler

	^self! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slideTowards: aDirection! !

!Silt methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
assertCanTurn: aCrawler

	^self! !

!SeabedSonarSimulator methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
initializeSensing: aGroundsByPosition

	groundsByPosition := aGroundsByPosition! !

!SeabedSonarSimulator methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSand new ]! !

!SeabedSonarSimulator class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
allFirmSand

	^self sensing: Dictionary new! !

!SeabedSonarSimulator class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:16:49 am (UTC)'!
sensing: aGroundsByPosition

	^self new initializeSensing: aGroundsByPosition copy! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
signalBoulderFound
	
	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
signalGuardedRunNotStarted
	
	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
signalInvalidCommand
	
	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
signalNestedGuardedRun
	
	self error: self class nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
signalSiltInGuardedRun
	
	self error: self class siltInGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
initializeAt: aPosition facing: aFacing withSonar: aSonar slidingWith: aSlideDistanceGenerator

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slideDistances := aSlideDistanceGenerator.
	run := CrawlerUnguardedRun new.
	lastCommand := CrawlerNoCommand new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
rotateClockwise
	
	facing turnClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
rotateCounterClockwise
	
	facing turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
turnClockwise
	
	self assertCanTurn.
	self rotateClockwise.
	run record: CrawlerClockwiseTurn new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
turnCounterClockwise
	
	self assertCanTurn.
	self rotateCounterClockwise.
	run record: CrawlerCounterClockwiseTurn new! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
displaceBy: aDisplacement
	
	self shiftBy: aDisplacement.
	run record: (CrawlerDisplacement by: aDisplacement)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
moveDown
	
	self moveTowards: 0@-1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
moveLeft
	
	self moveTowards: -1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
moveRight
	
	self moveTowards: 1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
moveTowards: aDirection
	
	(sonar groundAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
moveUp
	
	self moveTowards: 0@1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
shiftBy: aDisplacement
	
	position := position + aDisplacement! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
slideFreelyTowards: aDirection
	
	self displaceBy: aDirection * (slideDistances nextInteger: self class slidingLimit)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
slideTowards: aDirection
	
	run slide: self towards: aDirection! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
process: aSequenceOfCommands

	lastCommand := CrawlerNoCommand new.
	aSequenceOfCommands do: [ :aCharacter | self processCommand: aCharacter ].
	run finishProcessingOf: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
processCommand: aCharacter

	| command |
	
	command := CrawlerCommand for: aCharacter.
	run execute: command on: self.
	lastCommand := command! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
repeatLastCommand: aNumberOfRepetitions

	lastCommand repeat: aNumberOfRepetitions on: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
beInGuardedRun

	run := CrawlerGuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:17:11 am (UTC)'!
beInUnguardedRun

	run := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
endGuardedRun

	run endGuardedRunOf: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
startGuardedRun

	run startGuardedRunOf: self! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
at: aPosition facing: aFacingName
	
	^self 
		at: aPosition 
		facing: aFacingName 
		withSonar: SeabedSonarSimulator allFirmSand 
		slidingWith: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
at: aPosition facing: aFacingName withSonar: aSonar slidingWith: aSlideDistanceGenerator
	
	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		withSonar: aSonar 
		slidingWith: aSlideDistanceGenerator! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
slidingLimit

	^10! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
boulderFoundErrorDescription
	
	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
guardedRunNotStartedErrorDescription
	
	^'Can not finish a guarded run that was not started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
siltInGuardedRunErrorDescription
	
	^'Silt found during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:17:10 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'Guarded run was not finished'! !

!MaximumSlideDistanceStub methodsFor: 'random' stamp: 'HAW 17/Sep/2026, 7:16:50 am (UTC)'!
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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'x' 
		on: crawler 
		failsWith: SurveyCrawler invalidCommandErrorDescription 
		leavingItAt: 1@2 
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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test17DigitAfterAdvanceAdvancesDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test18DigitAfterRetreatRetreatsDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:18:05 am (UTC)'!
test19DigitAfterTurnClockwiseTurnsClockwiseDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test20DigitAfterTurnCounterClockwiseTurnsCounterClockwiseDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test21DigitAsFirstCommandIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: '3' 
		on: crawler 
		failsWith: SurveyCrawler invalidCommandErrorDescription 
		leavingItAt: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test22DigitAfterDigitIsInvalidAndKeepsPreviousMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a01' 
		on: crawler 
		failsWith: SurveyCrawler invalidCommandErrorDescription 
		leavingItAt: 1@5 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test23DigitAfterGuardedRunEndIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a(a)3' 
		on: crawler 
		failsWith: SurveyCrawler invalidCommandErrorDescription 
		leavingItAt: 1@4 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test24DigitDoesNotRepeatCommandOfPreviousProcessing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	crawler process: 'a'.
	
	self 
		assertProcessing: '3' 
		on: crawler 
		failsWith: SurveyCrawler invalidCommandErrorDescription 
		leavingItAt: 1@3 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test25CanNotAdvanceToBoulder

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@3 -> Boulder new).
	
	self 
		assertProcessing: 'a' 
		on: crawler 
		failsWith: SurveyCrawler boulderFoundErrorDescription 
		leavingItAt: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test26CanNotRetreatToBoulder

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@1 -> Boulder new).
	
	self 
		assertProcessing: 't' 
		on: crawler 
		failsWith: SurveyCrawler boulderFoundErrorDescription 
		leavingItAt: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test27CanNotTurnClockwiseOnBoulder

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@2 -> Boulder new).
	
	self 
		assertProcessing: 'h' 
		on: crawler 
		failsWith: SurveyCrawler boulderFoundErrorDescription 
		leavingItAt: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test28CanNotTurnCounterClockwiseOnBoulder

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@2 -> Boulder new).
	
	self 
		assertProcessing: 'g' 
		on: crawler 
		failsWith: SurveyCrawler boulderFoundErrorDescription 
		leavingItAt: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test29BoulderOutOfGuardedRunKeepsPreviousMovements

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@4 -> Boulder new).
	
	self 
		assertProcessing: 'aah' 
		on: crawler 
		failsWith: SurveyCrawler boulderFoundErrorDescription 
		leavingItAt: 1@3 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test30AdvanceToSiltSlidesUpToTenCells

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@3 -> Silt new).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test31RetreatToSiltSlidesInRetreatDirection

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@1 -> Silt new).
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test32AdvanceToSiltWithRandomSlidingEndsBetweenOneAndTenCellsAway

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		withSonar: (SeabedSonarSimulator sensing: (Dictionary with: 1@3 -> Silt new)) 
		slidingWith: Random new.
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aY | crawler isAt: 1@aY facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test33TurningOnSiltTurnsNormally

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@2 -> Silt new).
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test34GuardedRunWithoutProblemsKeepsItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aah)'.
	
	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test35BoulderInGuardedRunReturnsToInitialPosition

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@4 -> Boulder new).
	
	self 
		assertProcessing: '(aa)' 
		on: crawler 
		failsWith: SurveyCrawler boulderFoundErrorDescription 
		leavingItAt: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:18:05 am (UTC)'!
test36FailedGuardedRunUndoesTurns

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 2@3 -> Boulder new).
	
	self 
		assertProcessing: '(aha)' 
		on: crawler 
		failsWith: SurveyCrawler boulderFoundErrorDescription 
		leavingItAt: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test37SiltInGuardedRunReturnsToInitialPosition

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@4 -> Silt new).
	
	self 
		assertProcessing: '(aa)' 
		on: crawler 
		failsWith: SurveyCrawler siltInGuardedRunErrorDescription 
		leavingItAt: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test38InvalidCommandInGuardedRunReturnsToInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: '(ahx)' 
		on: crawler 
		failsWith: SurveyCrawler invalidCommandErrorDescription 
		leavingItAt: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test39RepeatedCommandsInFailedGuardedRunAreUndone

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@6 -> Boulder new).
	
	self 
		assertProcessing: '(a3)' 
		on: crawler 
		failsWith: SurveyCrawler boulderFoundErrorDescription 
		leavingItAt: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test40NestedGuardedRunReturnsToOuterGuardedRunInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'aa(aa(ht)a)' 
		on: crawler 
		failsWith: SurveyCrawler nestedGuardedRunErrorDescription 
		leavingItAt: 1@4 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test41UnfinishedGuardedRunReturnsToItsInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a(aa' 
		on: crawler 
		failsWith: SurveyCrawler unfinishedGuardedRunErrorDescription 
		leavingItAt: 1@3 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test42SeveralGuardedRunsAreProcessedCorrectly

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test43FailedGuardedRunKeepsMovementsOfPreviousGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a(a)(ax)' 
		on: crawler 
		failsWith: SurveyCrawler invalidCommandErrorDescription 
		leavingItAt: 1@4 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test44CanNotEndAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a)' 
		on: crawler 
		failsWith: SurveyCrawler guardedRunNotStartedErrorDescription 
		leavingItAt: 1@3 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test45CrawlerIsNotInGuardedRunAfterAFailedOne

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@3 -> Silt new).
	[ crawler process: '(x' ] on: Error do: [ :anError | ].
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
test46CrawlerIsNotInGuardedRunAfterAnUnfinishedOne

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Sensing: (Dictionary with: 1@3 -> Silt new).
	[ crawler process: '(' ] on: Error do: [ :anError | ].
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
assertProcessing: aSequenceOfCommands on: aCrawler failsWith: anErrorDescription leavingItAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 7:17:57 am (UTC)'!
crawlerFacingUpAt1At2Sensing: aGroundsByPosition

	^SurveyCrawler 
		at: 1@2 
		facing: #Up 
		withSonar: (SeabedSonarSimulator sensing: aGroundsByPosition) 
		slidingWith: MaximumSlideDistanceStub new! !
