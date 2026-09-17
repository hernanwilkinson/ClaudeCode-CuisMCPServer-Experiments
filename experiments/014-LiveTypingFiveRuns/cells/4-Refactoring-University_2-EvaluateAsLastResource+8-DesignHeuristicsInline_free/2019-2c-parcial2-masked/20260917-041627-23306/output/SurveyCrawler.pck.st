'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 4:20:59 am'!
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

!classDefinition: #EndGuardedRunCommand category: #SurveyCrawler!
CrawlerCommand subclass: #EndGuardedRunCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'EndGuardedRunCommand class' category: #SurveyCrawler!
EndGuardedRunCommand class
	instanceVariableNames: ''!

!classDefinition: #RepeatLastCommand category: #SurveyCrawler!
CrawlerCommand subclass: #RepeatLastCommand
	instanceVariableNames: 'repetitions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'RepeatLastCommand class' category: #SurveyCrawler!
RepeatLastCommand class
	instanceVariableNames: ''!

!classDefinition: #RepeatableCrawlerCommand category: #SurveyCrawler!
CrawlerCommand subclass: #RepeatableCrawlerCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'RepeatableCrawlerCommand class' category: #SurveyCrawler!
RepeatableCrawlerCommand class
	instanceVariableNames: ''!

!classDefinition: #AdvanceCommand category: #SurveyCrawler!
RepeatableCrawlerCommand subclass: #AdvanceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'AdvanceCommand class' category: #SurveyCrawler!
AdvanceCommand class
	instanceVariableNames: ''!

!classDefinition: #RetreatCommand category: #SurveyCrawler!
RepeatableCrawlerCommand subclass: #RetreatCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'RetreatCommand class' category: #SurveyCrawler!
RetreatCommand class
	instanceVariableNames: ''!

!classDefinition: #TurnClockwiseCommand category: #SurveyCrawler!
RepeatableCrawlerCommand subclass: #TurnClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'TurnClockwiseCommand class' category: #SurveyCrawler!
TurnClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #TurnCounterClockwiseCommand category: #SurveyCrawler!
RepeatableCrawlerCommand subclass: #TurnCounterClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'TurnCounterClockwiseCommand class' category: #SurveyCrawler!
TurnCounterClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #SequenceStartCommand category: #SurveyCrawler!
CrawlerCommand subclass: #SequenceStartCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SequenceStartCommand class' category: #SurveyCrawler!
SequenceStartCommand class
	instanceVariableNames: ''!

!classDefinition: #StartGuardedRunCommand category: #SurveyCrawler!
CrawlerCommand subclass: #StartGuardedRunCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'StartGuardedRunCommand class' category: #SurveyCrawler!
StartGuardedRunCommand class
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
	instanceVariableNames: 'slideRandom'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Silt class' category: #SurveyCrawler!
Silt class
	instanceVariableNames: ''!

!classDefinition: #Sonar category: #SurveyCrawler!
Object subclass: #Sonar
	instanceVariableNames: 'groundsByPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Sonar class' category: #SurveyCrawler!
Sonar class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar runMode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #RandomAnsweringLimit category: #'SurveyCrawler-Tests'!
Object subclass: #RandomAnsweringLimit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'RandomAnsweringLimit class' category: #'SurveyCrawler-Tests'!
RandomAnsweringLimit class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
repeat: aNumberOfTimes timesOn: aCrawler

	self error: SurveyCrawler invalidRepetitionErrorDescription! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
commandClassFor: aCharacter

	^self allSubclasses 
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifNone: [ self error: SurveyCrawler invalidCommandErrorDescription ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
for: aCharacter

	^(self commandClassFor: aCharacter) representedBy: aCharacter! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
representedBy: aCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
isFor: aCharacter

	^false! !

!EndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler endGuardedRun! !

!EndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
isFor: aCharacter

	^aCharacter = $)! !

!RepeatLastCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
initializeRepetitions: aNumberOfRepetitions

	repetitions := aNumberOfRepetitions! !

!RepeatLastCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aPreviousCommand repeat: repetitions timesOn: aCrawler! !

!RepeatLastCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
isFor: aCharacter

	^aCharacter isDigit! !

!RepeatLastCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
representedBy: aCharacter

	^self new initializeRepetitions: aCharacter digitValue + self minimumRepetitions! !

!RepeatLastCommand class methodsFor: 'repetitions' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
minimumRepetitions

	^2! !

!RepeatableCrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!RepeatableCrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self executeOn: aCrawler! !

!RepeatableCrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
repeat: aNumberOfTimes timesOn: aCrawler

	aNumberOfTimes timesRepeat: [ self executeOn: aCrawler ]! !

!AdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!AdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
isFor: aCharacter

	^aCharacter = $a! !

!RetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!RetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
isFor: aCharacter

	^aCharacter = $t! !

!TurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!TurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
isFor: aCharacter

	^aCharacter = $h! !

!TurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!TurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
isFor: aCharacter

	^aCharacter = $g! !

!SequenceStartCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand! !

!StartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler startGuardedRun! !

!StartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:20:37 am (UTC)'!
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

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
advance: aCrawler

	^aCrawler moveTowards: self direction! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
direction

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
retreat: aCrawler

	^aCrawler moveTowards: self direction negated! !

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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
direction

	^0@-1! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:50 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:55 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingDown class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:17 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
direction

	^-1@0! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:41 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:26 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingLeft class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:23 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
direction

	^1@0! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:54 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:42 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingRight class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:01:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
direction

	^0@1! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:51 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:40 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingUp class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:11 pm (UTC)'!
facingName

	^#Up! !

!CrawlerMovement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerClockwiseTurn methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateCounterClockwise! !

!CrawlerCounterClockwiseTurn methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateClockwise! !

!CrawlerDisplacement methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
initializeBy: aDisplacement

	displacement := aDisplacement! !

!CrawlerDisplacement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
undoOn: aCrawler

	aCrawler relocateBy: displacement negated! !

!CrawlerDisplacement class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
by: aDisplacement

	^self new initializeBy: aDisplacement! !

!CrawlerRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertAllowsSliding

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertCanEndGuardedRun

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertCanStartGuardedRun

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertIsFinished

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
record: aMovement

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
undoMovementsOn: aCrawler

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
initialize

	movements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertAllowsSliding

	self error: SurveyCrawler siltFoundDuringGuardedRunErrorDescription! !

!CrawlerGuardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertCanEndGuardedRun! !

!CrawlerGuardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertCanStartGuardedRun

	self error: SurveyCrawler guardedRunAlreadyStartedErrorDescription! !

!CrawlerGuardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertIsFinished

	self error: SurveyCrawler guardedRunNotFinishedErrorDescription! !

!CrawlerGuardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
record: aMovement

	movements add: aMovement! !

!CrawlerGuardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
undoMovementsOn: aCrawler

	movements reverseDo: [ :aMovement | aMovement undoOn: aCrawler ]! !

!CrawlerUnguardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertAllowsSliding! !

!CrawlerUnguardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertCanEndGuardedRun

	self error: SurveyCrawler guardedRunNotStartedErrorDescription! !

!CrawlerUnguardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertCanStartGuardedRun! !

!CrawlerUnguardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertIsFinished! !

!CrawlerUnguardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
record: aMovement! !

!CrawlerUnguardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
undoMovementsOn: aCrawler! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertAllowsTurning

	self subclassResponsibility! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
move: aCrawler towards: aDirection

	self error: SurveyCrawler boulderFoundErrorDescription! !

!Boulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertAllowsTurning

	self error: SurveyCrawler canNotTurnOnBoulderErrorDescription! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler displaceBy: aDirection! !

!FirmSand methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertAllowsTurning! !

!Silt methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
initializeSlidingWith: aRandom

	slideRandom := aRandom! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slideBy: aDirection * (slideRandom nextInteger: self class slidingLimit)! !

!Silt methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertAllowsTurning! !

!Silt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
slidingWith: aRandom

	^self new initializeSlidingWith: aRandom! !

!Silt class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
slidingLimit

	^10! !

!Sonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
initializeDetecting: aGroundsByPosition

	groundsByPosition := aGroundsByPosition! !

!Sonar methodsFor: 'detecting' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSand new ]! !

!Sonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
detecting: aGroundsByPosition

	^self new initializeDetecting: aGroundsByPosition copy! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	runMode := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
assertCanTurn
	
	(sonar groundAt: position) assertAllowsTurning! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
rotateClockwise
	
	facing turnClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
rotateCounterClockwise
	
	facing turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
turnClockwise
	
	self assertCanTurn.
	self rotateClockwise.
	runMode record: CrawlerClockwiseTurn new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 7:20:36 am (UTC)'!
turnCounterClockwise
	
	self assertCanTurn.
	self rotateCounterClockwise.
	runMode record: CrawlerCounterClockwiseTurn new! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
displaceBy: aDisplacement

	self relocateBy: aDisplacement.
	runMode record: (CrawlerDisplacement by: aDisplacement)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
relocateBy: aDisplacement

	position := position + aDisplacement! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
slideBy: aDisplacement

	runMode assertAllowsSliding.
	self displaceBy: aDisplacement! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
execute: aCommand after: aPreviousCommand

	aCommand executeOn: self after: aPreviousCommand.
	^aCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
executeAll: aSequenceOfCommands

	aSequenceOfCommands
		inject: SequenceStartCommand new
		into: [ :aPreviousCommand :aCharacter | self execute: (CrawlerCommand for: aCharacter) after: aPreviousCommand ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
process: aSequenceOfCommands

	[ self executeAll: aSequenceOfCommands.
	  runMode assertIsFinished ]
		on: Error
		do: [ :anError |
			self abortRun.
			anError pass ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
abortRun

	runMode undoMovementsOn: self.
	runMode := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
endGuardedRun

	runMode assertCanEndGuardedRun.
	runMode := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
startGuardedRun

	runMode assertCanStartGuardedRun.
	runMode := CrawlerGuardedRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
at: aPosition facing: aFacingName
	
	^self at: aPosition facing: aFacingName sonar: (Sonar detecting: Dictionary new)! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar
	
	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
boulderFoundErrorDescription

	^'Can not move onto a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
canNotTurnOnBoulderErrorDescription

	^'Can not turn on a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
guardedRunAlreadyStartedErrorDescription

	^'Can not start a guarded run inside another one'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
guardedRunNotFinishedErrorDescription

	^'Guarded run was not finished'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'Can not finish a guarded run that was not started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
invalidRepetitionErrorDescription

	^'Only advance, retreat and turn commands can be repeated'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:20:35 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription

	^'Can not move onto silt during a guarded run'! !

!RandomAnsweringLimit methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
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

!SurveyCrawlerTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
longestSlidingSilt

	^Silt slidingWith: RandomAnsweringLimit new! !

!SurveyCrawlerTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
upwardsCrawler

	^SurveyCrawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
upwardsCrawlerDetecting: aGround at: aPosition

	^SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (Sonar detecting: (Dictionary with: aPosition -> aGround))! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test17DigitZeroAfterAdvanceAdvancesThreeTimes

	| crawler |
	
	crawler := self upwardsCrawler.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test18DigitNineAfterAdvanceAdvancesTwelveTimes

	| crawler |
	
	crawler := self upwardsCrawler.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test19DigitAfterRetreatRepeatsRetreat

	| crawler |
	
	crawler := self upwardsCrawler.
	
	crawler process: 't0'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test20DigitAfterTurnClockwiseRepeatsTurnClockwise

	| crawler |
	
	crawler := self upwardsCrawler.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test21DigitAfterTurnCounterClockwiseRepeatsTurnCounterClockwise

	| crawler |
	
	crawler := self upwardsCrawler.
	
	crawler process: 'g1'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test22DigitWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := self upwardsCrawler.
	
	self 
		should: [ crawler process: '0' ]
		failWith: SurveyCrawler invalidRepetitionErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test23DigitAfterDigitIsInvalid

	| crawler |
	
	crawler := self upwardsCrawler.
	
	self 
		should: [ crawler process: 'a00' ]
		failWith: SurveyCrawler invalidRepetitionErrorDescription
		leaving: crawler at: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test24DigitAfterGuardedRunIsInvalid

	| crawler |
	
	crawler := self upwardsCrawler.
	
	self 
		should: [ crawler process: '(a)0' ]
		failWith: SurveyCrawler invalidRepetitionErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test25AdvancingOntoFirmSandMovesOneCell

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: FirmSand new at: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test26AdvancingOntoBoulderFailsAndCrawlerStaysStill

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: Boulder new at: 1@3.
	
	self 
		should: [ crawler process: 'a' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test27RetreatingOntoBoulderFailsAndCrawlerStaysStill

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: Boulder new at: 1@1.
	
	self 
		should: [ crawler process: 't' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test28TurningClockwiseOnBoulderFailsAndCrawlerKeepsFacing

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: Boulder new at: 1@2.
	
	self 
		should: [ crawler process: 'h' ]
		failWith: SurveyCrawler canNotTurnOnBoulderErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test29TurningCounterClockwiseOnBoulderFailsAndCrawlerKeepsFacing

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: Boulder new at: 1@2.
	
	self 
		should: [ crawler process: 'g' ]
		failWith: SurveyCrawler canNotTurnOnBoulderErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test30AdvancingOntoSiltSlidesUpToTenCells

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: self longestSlidingSilt at: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test31AdvancingOntoRandomSiltEndsBetweenOneAndTenCellsAhead

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: (Silt slidingWith: Random new) at: 1@3.
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aY | crawler isAt: 1@aY facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test32RetreatingOntoSiltSlidesBackwards

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: self longestSlidingSilt at: 1@1.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test33TurningOnSiltTurnsAsOnFirmSand

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: self longestSlidingSilt at: 1@2.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test34RepeatedAdvanceStopsAtBoulderKeepingMovementsDoneOutsideGuardedRun

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: Boulder new at: 1@4.
	
	self 
		should: [ crawler process: 'a0' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:47 am (UTC)'!
test35GuardedRunWithoutProblemsKeepsItsMovements

	| crawler |
	
	crawler := self upwardsCrawler.
	
	crawler process: '(aa)'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:48 am (UTC)'!
test36BoulderDuringGuardedRunFailsAndUndoesItsMovements

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: Boulder new at: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:48 am (UTC)'!
test37FailedGuardedRunUndoesTurnsAndRetreats

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: Boulder new at: 0@5.
	
	self 
		should: [ crawler process: '(ahtgaa)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:48 am (UTC)'!
test38SiltDuringGuardedRunFailsAndUndoesItsMovements

	| crawler |
	
	crawler := self upwardsCrawlerDetecting: self longestSlidingSilt at: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: SurveyCrawler siltFoundDuringGuardedRunErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:48 am (UTC)'!
test39InvalidCommandDuringGuardedRunFailsAndUndoesItsMovements

	| crawler |
	
	crawler := self upwardsCrawler.
	
	self 
		should: [ crawler process: '(ahx)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:48 am (UTC)'!
test40StartingGuardedRunInsideGuardedRunFailsAndUndoesItsMovements

	| crawler |
	
	crawler := self upwardsCrawler.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		failWith: SurveyCrawler guardedRunAlreadyStartedErrorDescription
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:48 am (UTC)'!
test41UnfinishedGuardedRunFailsAndUndoesItsMovements

	| crawler |
	
	crawler := self upwardsCrawler.
	
	self 
		should: [ crawler process: 'a(aa' ]
		failWith: SurveyCrawler guardedRunNotFinishedErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:48 am (UTC)'!
test42FinishingGuardedRunThatWasNotStartedFails

	| crawler |
	
	crawler := self upwardsCrawler.
	
	self 
		should: [ crawler process: 'a)' ]
		failWith: SurveyCrawler guardedRunNotStartedErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:48 am (UTC)'!
test43SeveralGuardedRunsAreProcessedInOneSequence

	| crawler |
	
	crawler := self upwardsCrawler.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:48 am (UTC)'!
test44FailedGuardedRunDoesNotUndoPreviousGuardedRun

	| crawler |
	
	crawler := self upwardsCrawler.
	
	self 
		should: [ crawler process: '(a)(ax)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:48 am (UTC)'!
test45CrawlerCanStartGuardedRunAfterAFailedOne

	| crawler |
	
	crawler := self upwardsCrawler.
	[ crawler process: '(aa' ] on: Error do: [ :anError | anError return ].
	
	crawler process: '(a)'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:48 am (UTC)'!
test46FailedGuardedRunUndoesRepeatedCommands

	| crawler |
	
	crawler := self upwardsCrawler.
	
	self 
		should: [ crawler process: '(a3hx)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:19:48 am (UTC)'!
test47FailureAfterGuardedRunDoesNotUndoIt

	| crawler |
	
	crawler := self upwardsCrawler.
	
	self 
		should: [ crawler process: '(a)x' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !
