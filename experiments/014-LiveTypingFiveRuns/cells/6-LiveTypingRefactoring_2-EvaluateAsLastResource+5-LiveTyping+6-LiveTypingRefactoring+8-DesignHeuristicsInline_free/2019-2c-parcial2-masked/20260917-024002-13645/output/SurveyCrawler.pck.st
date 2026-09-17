'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:45:19 am'!
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

!classDefinition: #NoPreviousCommand category: #SurveyCrawler!
CrawlerCommand subclass: #NoPreviousCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'NoPreviousCommand class' category: #SurveyCrawler!
NoPreviousCommand class
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

!classDefinition: #RepeatableCommand category: #SurveyCrawler!
CrawlerCommand subclass: #RepeatableCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'RepeatableCommand class' category: #SurveyCrawler!
RepeatableCommand class
	instanceVariableNames: ''!

!classDefinition: #AdvanceCommand category: #SurveyCrawler!
RepeatableCommand subclass: #AdvanceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'AdvanceCommand class' category: #SurveyCrawler!
AdvanceCommand class
	instanceVariableNames: ''!

!classDefinition: #RetreatCommand category: #SurveyCrawler!
RepeatableCommand subclass: #RetreatCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'RetreatCommand class' category: #SurveyCrawler!
RetreatCommand class
	instanceVariableNames: ''!

!classDefinition: #TurnClockwiseCommand category: #SurveyCrawler!
RepeatableCommand subclass: #TurnClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'TurnClockwiseCommand class' category: #SurveyCrawler!
TurnClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #TurnCounterClockwiseCommand category: #SurveyCrawler!
RepeatableCommand subclass: #TurnCounterClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'TurnCounterClockwiseCommand class' category: #SurveyCrawler!
TurnCounterClockwiseCommand class
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

!classDefinition: #CrawlerRunMode category: #SurveyCrawler!
Object subclass: #CrawlerRunMode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRunMode class' category: #SurveyCrawler!
CrawlerRunMode class
	instanceVariableNames: ''!

!classDefinition: #GuardedRun category: #SurveyCrawler!
CrawlerRunMode subclass: #GuardedRun
	instanceVariableNames: 'movements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'GuardedRun class' category: #SurveyCrawler!
GuardedRun class
	instanceVariableNames: ''!

!classDefinition: #UnguardedRun category: #SurveyCrawler!
CrawlerRunMode subclass: #UnguardedRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'UnguardedRun class' category: #SurveyCrawler!
UnguardedRun class
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

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar slideDistances runMode lastCommand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: ''!

!classDefinition: #PredictableRandom category: #'SurveyCrawler-Tests'!
Object subclass: #PredictableRandom
	instanceVariableNames: 'integer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'PredictableRandom class' category: #'SurveyCrawler-Tests'!
PredictableRandom class
	instanceVariableNames: ''!

!classDefinition: #SimulatedSonar category: #'SurveyCrawler-Tests'!
Object subclass: #SimulatedSonar
	instanceVariableNames: 'groundsByPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SimulatedSonar class' category: #'SurveyCrawler-Tests'!
SimulatedSonar class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
repeatOn: aCrawler times: aNumberOfRepetitions

	aCrawler signalInvalidRepetition! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
for: aCommandCharacter

	^self allSubclasses 
		detect: [ :aCommandClass | aCommandClass isFor: aCommandCharacter ]
		ifFound: [ :aCommandClass | aCommandClass representedBy: aCommandCharacter ]
		ifNone: [ self error: SurveyCrawler invalidCommandErrorDescription ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
representedBy: aCommandCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
isFor: aCommandCharacter

	^false! !

!EndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
executeOn: aCrawler

	aCrawler endGuardedRun! !

!EndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter = $)! !

!NoPreviousCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
executeOn: aCrawler! !

!RepeatLastCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
initializeRepetitions: aNumberOfRepetitions

	repetitions := aNumberOfRepetitions! !

!RepeatLastCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
executeOn: aCrawler

	aCrawler repeatLastCommand: repetitions! !

!RepeatLastCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter isDigit! !

!RepeatLastCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
representedBy: aCommandCharacter

	^self new initializeRepetitions: aCommandCharacter digitValue + 2! !

!RepeatableCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
repeatOn: aCrawler times: aNumberOfRepetitions

	aNumberOfRepetitions timesRepeat: [ self executeOn: aCrawler ]! !

!AdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!AdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter = $a! !

!RetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!RetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter = $t! !

!TurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!TurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter = $h! !

!TurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!TurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter = $g! !

!StartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
executeOn: aCrawler

	aCrawler startGuardedRun! !

!StartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter = $(! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:08:23 pm (UTC)'!
turnClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:06:17 pm (UTC)'!
turnCounterClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
advance: aCrawler

	aCrawler moveTowards: self direction! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
direction

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
retreat: aCrawler

	aCrawler moveTowards: self direction negated! !

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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
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

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
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

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
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

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
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

!CrawlerMovement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerClockwiseTurn methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateCounterClockwise! !

!CrawlerCounterClockwiseTurn methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateClockwise! !

!CrawlerDisplacement methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
initializeBy: aDisplacement

	displacement := aDisplacement! !

!CrawlerDisplacement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
undoOn: aCrawler

	aCrawler shiftBy: displacement negated! !

!CrawlerDisplacement class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
by: aDisplacement

	^self new initializeBy: aDisplacement! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
assertFinishedOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
assertSlidingAllowedOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
endGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
startGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'recording' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
record: aMovement

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'recovering' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
recover: aCrawler from: anError

	self subclassResponsibility! !

!GuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
initialize

	movements := OrderedCollection new! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
assertFinishedOn: aCrawler

	aCrawler signalUnfinishedGuardedRun! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
assertSlidingAllowedOn: aCrawler

	aCrawler signalSlidOnSiltDuringGuardedRun! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
endGuardedRunOf: aCrawler

	aCrawler beUnguarded! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler signalNestedGuardedRun! !

!GuardedRun methodsFor: 'recording' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
record: aMovement

	movements addFirst: aMovement! !

!GuardedRun methodsFor: 'recovering' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
recover: aCrawler from: anError

	movements do: [ :aMovement | aMovement undoOn: aCrawler ].
	aCrawler beUnguarded.
	anError pass! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
assertFinishedOn: aCrawler! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
assertSlidingAllowedOn: aCrawler! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
endGuardedRunOf: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler beGuarded! !

!UnguardedRun methodsFor: 'recording' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
record: aMovement! !

!UnguardedRun methodsFor: 'recovering' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
recover: aCrawler from: anError

	anError pass! !

!SeabedGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
allowTurningOf: aCrawler

	self subclassResponsibility! !

!SeabedGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	self subclassResponsibility! !

!Boulder methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
allowTurningOf: aCrawler

	aCrawler signalCanNotTurnOnBoulder! !

!Boulder methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler signalBoulderAhead! !

!FirmSand methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
allowTurningOf: aCrawler! !

!FirmSand methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler displaceBy: aDirection! !

!Silt methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
allowTurningOf: aCrawler! !

!Silt methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler slideTowards: aDirection! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
signalBoulderAhead
	
	self error: self class boulderAheadErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
signalCanNotTurnOnBoulder
	
	self error: self class canNotTurnOnBoulderErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
signalGuardedRunNotStarted
	
	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
signalInvalidCommand
	
	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
signalInvalidRepetition
	
	self error: self class invalidRepetitionErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
signalNestedGuardedRun
	
	self error: self class nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
signalSlidOnSiltDuringGuardedRun
	
	self error: self class slidOnSiltDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:43:34 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
initializeAt: aPosition facing: aFacing sensingWith: aSonar slidingWith: aRandom

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slideDistances := aRandom.
	runMode := UnguardedRun new.
	lastCommand := NoPreviousCommand new! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
rotateClockwise
	
	facing turnClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
rotateCounterClockwise
	
	facing turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
turnClockwise
	
	(sonar groundAt: position) allowTurningOf: self.
	self rotateClockwise.
	runMode record: CrawlerClockwiseTurn new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
turnCounterClockwise
	
	(sonar groundAt: position) allowTurningOf: self.
	self rotateCounterClockwise.
	runMode record: CrawlerCounterClockwiseTurn new! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
displaceBy: aDisplacement

	self shiftBy: aDisplacement.
	runMode record: (CrawlerDisplacement by: aDisplacement)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) receive: self movingTowards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
shiftBy: aDisplacement

	position := position + aDisplacement! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
slideTowards: aDirection

	self displaceBy: aDirection * (slideDistances nextInteger: self class maximumSlideDistance).
	runMode assertSlidingAllowedOn: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
process: aSequenceOfCommands

	lastCommand := NoPreviousCommand new.
	[ aSequenceOfCommands do: [ :aCommandCharacter | self processCommand: aCommandCharacter ].
	runMode assertFinishedOn: self ]
		on: Error
		do: [ :anError | runMode recover: self from: anError ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
processCommand: aCommandCharacter

	| command |
	
	command := CrawlerCommand for: aCommandCharacter.
	command executeOn: self.
	lastCommand := command! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
repeatLastCommand: aNumberOfRepetitions

	lastCommand repeatOn: self times: aNumberOfRepetitions! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
beGuarded

	runMode := GuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
beUnguarded

	runMode := UnguardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
endGuardedRun

	runMode endGuardedRunOf: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
startGuardedRun

	runMode startGuardedRunOf: self! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
at: aPosition facing: aFacingName sensingWith: aSonar slidingWith: aRandom

	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		sensingWith: aSonar 
		slidingWith: aRandom! !

!SurveyCrawler class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
maximumSlideDistance

	^10! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
boulderAheadErrorDescription
	
	^'Can not move onto a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
canNotTurnOnBoulderErrorDescription
	
	^'Can not turn on a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
guardedRunNotStartedErrorDescription
	
	^'Can not finish a guarded run that was not started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
invalidRepetitionErrorDescription
	
	^'Only advance, retreat and turn commands can be repeated'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
slidOnSiltDuringGuardedRunErrorDescription
	
	^'Slid on silt during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:43:33 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'The guarded run was not finished'! !

!PredictableRandom methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
initializeAnswering: anInteger

	integer := anInteger! !

!PredictableRandom methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
nextInteger: aLimit

	^integer! !

!PredictableRandom class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
answering: anInteger

	^self new initializeAnswering: anInteger! !

!SimulatedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
initializeDetectingGroundsByPosition: aDictionary

	groundsByPosition := aDictionary! !

!SimulatedSonar methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSand new ]! !

!SimulatedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
detecting: aGround at: aPosition

	^self detectingGroundsByPosition: (Dictionary with: aPosition -> aGround)! !

!SimulatedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
detectingFirmSandEverywhere

	^self detectingGroundsByPosition: Dictionary new! !

!SimulatedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:43:35 am (UTC)'!
detectingGroundsByPosition: aDictionary

	^self new initializeDetectingGroundsByPosition: aDictionary! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	self 
		assertProcessing: 'x'
		by: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ self crawlerAt: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
assertProcessing: aSequenceOfCommands by: aCrawler failsWith: anErrorDescription leavingItAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
crawlerAt: aPosition facing: aFacingName

	^self crawlerAt: aPosition facing: aFacingName sensingWith: SimulatedSonar detectingFirmSandEverywhere! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
crawlerAt: aPosition facing: aFacingName sensingWith: aSonar

	^self 
		crawlerAt: aPosition 
		facing: aFacingName 
		sensingWith: aSonar 
		slidingWith: (PredictableRandom answering: 1)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
crawlerAt: aPosition facing: aFacingName sensingWith: aSonar slidingWith: aRandom

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sensingWith: aSonar 
		slidingWith: aRandom! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test17DigitZeroAfterAdvanceAdvancesTwoMoreTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test18DigitRepeatsLastCommandItsValuePlusTwoTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a7'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test19DigitAfterRetreatRetreatsRepeatedly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't0'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test20DigitAfterTurnClockwiseTurnsClockwiseRepeatedly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test21DigitAfterTurnCounterClockwiseTurnsCounterClockwiseRepeatedly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test22DigitWithoutPreviousCommandIsInvalid

	self 
		assertProcessing: '0'
		by: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidRepetitionErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test23RepetitionCanNotBeRepeatedSoOnlyOneDigitIsAllowed

	self 
		assertProcessing: 'a00'
		by: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidRepetitionErrorDescription
		leavingItAt: 1@5
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test24EndOfGuardedRunCanNotBeRepeated

	self 
		assertProcessing: '(a)0'
		by: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidRepetitionErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:44:48 am (UTC)'!
test25StartOfGuardedRunCanNotBeRepeated

	self 
		assertProcessing: 'a(0)'
		by: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidRepetitionErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test26DigitCanNotRepeatCommandOfAPreviousSequence

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'a'.
	
	self 
		assertProcessing: '0'
		by: crawler
		failsWith: SurveyCrawler invalidRepetitionErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test27CanNotAdvanceOntoABoulder

	self 
		assertProcessing: 'a'
		by: (self crawlerAt: 1@2 facing: #Up sensingWith: (SimulatedSonar detecting: Boulder new at: 1@3))
		failsWith: SurveyCrawler boulderAheadErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test28CanNotRetreatOntoABoulder

	self 
		assertProcessing: 't'
		by: (self crawlerAt: 1@2 facing: #Up sensingWith: (SimulatedSonar detecting: Boulder new at: 1@1))
		failsWith: SurveyCrawler boulderAheadErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test29CanNotTurnCounterClockwiseOnABoulder

	self 
		assertProcessing: 'g'
		by: (self crawlerAt: 1@2 facing: #Up sensingWith: (SimulatedSonar detecting: Boulder new at: 1@2))
		failsWith: SurveyCrawler canNotTurnOnBoulderErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test30CanNotTurnClockwiseOnABoulder

	self 
		assertProcessing: 'h'
		by: (self crawlerAt: 1@2 facing: #Up sensingWith: (SimulatedSonar detecting: Boulder new at: 1@2))
		failsWith: SurveyCrawler canNotTurnOnBoulderErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test31CommandsBeforeABoulderOutsideAGuardedRunAreNotUndone

	self 
		assertProcessing: 'aa'
		by: (self crawlerAt: 1@2 facing: #Up sensingWith: (SimulatedSonar detecting: Boulder new at: 1@4))
		failsWith: SurveyCrawler boulderAheadErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test32AdvancingOntoSiltSlidesARandomNumberOfCells

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		sensingWith: (SimulatedSonar detecting: Silt new at: 1@3) 
		slidingWith: (PredictableRandom answering: 3).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test33RetreatingOntoSiltSlidesBackwards

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Right 
		sensingWith: (SimulatedSonar detecting: Silt new at: 0@2) 
		slidingWith: (PredictableRandom answering: 4).
	
	crawler process: 't'.
	
	self assert: (crawler isAt: -3@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test34SiltDoesNotAffectTurning

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up sensingWith: (SimulatedSonar detecting: Silt new at: 1@2).
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test35SlidingOnSiltIsLimitedToTenCells

	| crawler slidDistances |
	
	slidDistances := (1 to: 100) collect: [ :aTry |
		crawler := self 
			crawlerAt: 1@2 
			facing: #Up 
			sensingWith: (SimulatedSonar detecting: Silt new at: 1@3) 
			slidingWith: Random new.
		crawler process: 'a'.
		(1 to: 10) detect: [ :aDistance | crawler isAt: 1@(2 + aDistance) facing: #Up ] ifNone: [ 0 ] ].
	
	self deny: (slidDistances includes: 0)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test36GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: '(ah)'.
	
	self assert: (crawler isAt: 1@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test37BoulderInGuardedRunReturnsCrawlerToWhereTheRunStarted

	self 
		assertProcessing: '(aa)'
		by: (self crawlerAt: 1@2 facing: #Up sensingWith: (SimulatedSonar detecting: Boulder new at: 1@4))
		failsWith: SurveyCrawler boulderAheadErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:44:57 am (UTC)'!
test38FailedGuardedRunUndoesTurnsAndRepetitions

	self 
		assertProcessing: '(ahag0a)'
		by: (self crawlerAt: 1@2 facing: #Up sensingWith: (SimulatedSonar detecting: Boulder new at: 2@2))
		failsWith: SurveyCrawler boulderAheadErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test39SiltInGuardedRunFailsAndUndoesTheSlide

	self 
		assertProcessing: '(ha)'
		by: (self 
			crawlerAt: 1@2 
			facing: #Up 
			sensingWith: (SimulatedSonar detecting: Silt new at: 2@2) 
			slidingWith: (PredictableRandom answering: 5))
		failsWith: SurveyCrawler slidOnSiltDuringGuardedRunErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test40InvalidCommandInGuardedRunReturnsCrawlerToWhereTheRunStarted

	self 
		assertProcessing: 'a(ahx)'
		by: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test41GuardedRunCanNotBeStartedInsideAnotherOne

	self 
		assertProcessing: 'aa(aa(ht)a)'
		by: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler nestedGuardedRunErrorDescription
		leavingItAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test42UnfinishedGuardedRunReturnsCrawlerToWhereTheRunStarted

	self 
		assertProcessing: 'a(aa'
		by: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler unfinishedGuardedRunErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test43GuardedRunCanNotBeFinishedWithoutBeingStarted

	self 
		assertProcessing: 'a)'
		by: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler guardedRunNotStartedErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test44SeveralGuardedRunsAreProcessedInOneSequence

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test45ProblemAfterAFinishedGuardedRunDoesNotUndoIt

	self 
		assertProcessing: '(ah)x'
		by: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@3
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test46FailedGuardedRunIsNotGuardingTheNextSequence

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self should: [ crawler process: '(ax' ] raise: Error - MessageNotUnderstood.
	
	self 
		assertProcessing: 'a)'
		by: crawler
		failsWith: SurveyCrawler guardedRunNotStartedErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:44:49 am (UTC)'!
test47BoulderInTheMiddleOfARepetitionInGuardedRunUndoesAllAdvances

	self 
		assertProcessing: '(a1)'
		by: (self crawlerAt: 1@2 facing: #Up sensingWith: (SimulatedSonar detecting: Boulder new at: 1@5))
		failsWith: SurveyCrawler boulderAheadErrorDescription
		leavingItAt: 1@2
		facing: #Up! !
