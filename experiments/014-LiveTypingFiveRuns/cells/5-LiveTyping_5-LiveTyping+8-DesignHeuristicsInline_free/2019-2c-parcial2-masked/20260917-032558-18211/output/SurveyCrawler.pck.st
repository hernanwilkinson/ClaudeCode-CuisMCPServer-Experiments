'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:31:53 am'!
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

!classDefinition: #InvalidCommand category: #SurveyCrawler!
CrawlerCommand subclass: #InvalidCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'InvalidCommand class' category: #SurveyCrawler!
InvalidCommand class
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

!classDefinition: #RepetitionCommand category: #SurveyCrawler!
CrawlerCommand subclass: #RepetitionCommand
	instanceVariableNames: 'repetitions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'RepetitionCommand class' category: #SurveyCrawler!
RepetitionCommand class
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
	instanceVariableNames: 'undoActions'
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

!classDefinition: #Ground category: #SurveyCrawler!
Object subclass: #Ground
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Ground class' category: #SurveyCrawler!
Ground class
	instanceVariableNames: ''!

!classDefinition: #Boulder category: #SurveyCrawler!
Ground subclass: #Boulder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Boulder class' category: #SurveyCrawler!
Boulder class
	instanceVariableNames: ''!

!classDefinition: #FirmSand category: #SurveyCrawler!
Ground subclass: #FirmSand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'FirmSand class' category: #SurveyCrawler!
FirmSand class
	instanceVariableNames: ''!

!classDefinition: #Silt category: #SurveyCrawler!
Ground subclass: #Silt
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Silt class' category: #SurveyCrawler!
Silt class
	instanceVariableNames: ''!

!classDefinition: #NoPreviousCommand category: #SurveyCrawler!
Object subclass: #NoPreviousCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'NoPreviousCommand class' category: #SurveyCrawler!
NoPreviousCommand class
	instanceVariableNames: ''!

!classDefinition: #SeabedSonar category: #SurveyCrawler!
Object subclass: #SeabedSonar
	instanceVariableNames: 'groundsByPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedSonar class' category: #SurveyCrawler!
SeabedSonar class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar slidingDistances runMode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: ''!

!classDefinition: #ScriptedRandom category: #'SurveyCrawler-Tests'!
Object subclass: #ScriptedRandom
	instanceVariableNames: 'distanceForLimit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'ScriptedRandom class' category: #'SurveyCrawler-Tests'!
ScriptedRandom class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
repeat: aNumberOfTimes timesOn: aCrawler

	aCrawler signalInvalidRepetition! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
for: aCharacter

	^self allSubclasses 
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass representedBy: aCharacter ]
		ifNone: [ InvalidCommand new ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
representedBy: aCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
isFor: aCharacter

	^false! !

!EndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler endGuardedRun! !

!EndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
isFor: aCharacter

	^aCharacter = $)! !

!InvalidCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler signalInvalidCommand! !

!RepeatableCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!RepeatableCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self executeOn: aCrawler! !

!RepeatableCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
repeat: aNumberOfTimes timesOn: aCrawler

	aNumberOfTimes timesRepeat: [ self executeOn: aCrawler ]! !

!AdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!AdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
isFor: aCharacter

	^aCharacter = $a! !

!RetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!RetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
isFor: aCharacter

	^aCharacter = $t! !

!TurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!TurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
isFor: aCharacter

	^aCharacter = $h! !

!TurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!TurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
isFor: aCharacter

	^aCharacter = $g! !

!RepetitionCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
initializeRepeating: aNumberOfRepetitions

	repetitions := aNumberOfRepetitions! !

!RepetitionCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aPreviousCommand repeat: repetitions timesOn: aCrawler! !

!RepetitionCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
isFor: aCharacter

	^aCharacter isDigit! !

!RepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
repeating: aNumberOfRepetitions

	^self new initializeRepeating: aNumberOfRepetitions! !

!RepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
representedBy: aCharacter

	^self repeating: aCharacter digitValue + 2! !

!StartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler startGuardedRun! !

!StartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
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

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:15 am (UTC)'!
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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:15 am (UTC)'!
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

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:15 am (UTC)'!
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

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:15 am (UTC)'!
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

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:15 am (UTC)'!
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

!CrawlerRunMode methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
assertFinishedOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
endGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
guard: aBlock on: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
startGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
slide: aCrawler towards: aDirection

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
registerUndo: anUndo

	self subclassResponsibility! !

!GuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
initialize

	undoActions := OrderedCollection new! !

!GuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
assertFinishedOn: aCrawler

	aCrawler signalUnfinishedGuardedRun! !

!GuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler beUnguarded! !

!GuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
guard: aBlock on: aCrawler

	^aBlock on: Error do: [ :anError |
		aCrawler undoGuardedRun.
		anError pass ]! !

!GuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler signalNestedGuardedRun! !

!GuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler signalSiltFoundDuringGuardedRun! !

!GuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
registerUndo: anUndo

	undoActions add: anUndo! !

!GuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
undo

	undoActions reverseDo: [ :anUndo | anUndo value ]! !

!UnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
assertFinishedOn: aCrawler

	^self! !

!UnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!UnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
guard: aBlock on: aCrawler

	^aBlock value! !

!UnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler beGuarded! !

!UnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler slideTowards: aDirection! !

!UnguardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
registerUndo: anUndo

	^self! !

!Ground methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	self subclassResponsibility! !

!Ground methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
slide: aCrawler towards: aDirection

	self subclassResponsibility! !

!Ground methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
allowTurningOf: aCrawler

	self subclassResponsibility! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler signalBoulderFound! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
slide: aCrawler towards: aDirection

	^self! !

!Boulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
allowTurningOf: aCrawler

	aCrawler signalCanNotTurnOnBoulder! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler stepTowards: aDirection! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler stepTowards: aDirection! !

!FirmSand methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
allowTurningOf: aCrawler

	^self! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler slideOnSiltTowards: aDirection! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler stepTowards: aDirection! !

!Silt methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
allowTurningOf: aCrawler

	^self! !

!NoPreviousCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
repeat: aNumberOfTimes timesOn: aCrawler

	aCrawler signalInvalidRepetition! !

!SeabedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
initializeMapping: aGroundsByPosition

	groundsByPosition := aGroundsByPosition! !

!SeabedSonar methodsFor: 'detecting' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSand new ]! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
mapping: aGroundsByPosition

	^self new initializeMapping: aGroundsByPosition copy! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:17 am (UTC)'!
overFirmSand

	^self mapping: Dictionary new! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
signalBoulderFound
	
	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
signalCanNotTurnOnBoulder
	
	self error: self class canNotTurnOnBoulderErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
signalGuardedRunNotStarted
	
	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
signalInvalidCommand
	
	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
signalInvalidRepetition
	
	self error: self class invalidRepetitionErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
signalNestedGuardedRun
	
	self error: self class nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
signalSiltFoundDuringGuardedRun
	
	self error: self class siltFoundDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
initializeAt: aPosition facing: aFacing detectingGroundWith: aSonar slidingWith: aRandom

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slidingDistances := aRandom.
	runMode := UnguardedRun new! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
turn: aTurn undoingWith: anUndo
	
	(sonar groundAt: position) allowTurningOf: self.
	aTurn value.
	runMode registerUndo: anUndo! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
turnClockwise
	
	self 
		turn: [ facing turnClockwise: self ] 
		undoingWith: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
turnCounterClockwise
	
	self 
		turn: [ facing turnCounterClockwise: self ] 
		undoingWith: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
advance
	
	self moveTowards: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) receive: self movingTowards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
retreat
	
	self moveTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
slideOnSiltTowards: aDirection

	runMode slide: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
slideStepTowards: aDirection

	(sonar groundAt: position + aDirection) slide: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
slideTowards: aDirection

	(slidingDistances nextInteger: self class slidingLimit) timesRepeat: [ self slideStepTowards: aDirection ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
stepTowards: aDirection

	position := position + aDirection.
	runMode registerUndo: [ position := position - aDirection ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
process: aSequenceOfCommands

	aSequenceOfCommands 
		inject: NoPreviousCommand new 
		into: [ :aPreviousCommand :aCharacter | self process: aCharacter after: aPreviousCommand ].
	self guard: [ runMode assertFinishedOn: self ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
process: aCharacter after: aPreviousCommand

	| command |
	
	command := CrawlerCommand for: aCharacter.
	self guard: [ command executeOn: self after: aPreviousCommand ].
	^command! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
beGuarded

	runMode := GuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
beUnguarded

	runMode := UnguardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
endGuardedRun

	runMode endGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
guard: aBlock

	^runMode guard: aBlock on: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
startGuardedRun

	runMode startGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
undoGuardedRun

	runMode undo.
	self beUnguarded! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:15 am (UTC)'!
at: aPosition facing: aFacingName
	
	^self 
		at: aPosition 
		facing: aFacingName 
		detectingGroundWith: SeabedSonar overFirmSand 
		slidingWith: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:15 am (UTC)'!
at: aPosition facing: aFacingName detectingGroundWith: aSonar slidingWith: aRandom
	
	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		detectingGroundWith: aSonar 
		slidingWith: aRandom! !

!SurveyCrawler class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:30:15 am (UTC)'!
slidingLimit

	^10! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
boulderFoundErrorDescription
	
	^'Can not move onto a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
canNotTurnOnBoulderErrorDescription
	
	^'Can not turn on a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
guardedRunNotStartedErrorDescription
	
	^'Can not finish a guarded run that was not started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:15 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:15 am (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:15 am (UTC)'!
invalidRepetitionErrorDescription
	
	^'Only advance, retreat and turn commands can be repeated'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'Can not start a guarded run inside another one'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription
	
	^'Can not move onto silt during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:30:16 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'Guarded run was not finished'! !

!ScriptedRandom methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
initializeAnswering: aDistanceForLimit

	distanceForLimit := aDistanceForLimit! !

!ScriptedRandom methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
nextInteger: aLimit

	^distanceForLimit value: aLimit! !

!ScriptedRandom class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:30:18 am (UTC)'!
answering: aDistanceForLimit

	^self new initializeAnswering: aDistanceForLimit! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
crawlerAt: aPosition facing: aFacingName over: aGroundsByPosition

	^self 
		crawlerAt: aPosition 
		facing: aFacingName 
		over: aGroundsByPosition 
		slidingAlways: 1! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
crawlerAt: aPosition facing: aFacingName over: aGroundsByPosition slidingAlways: aDistance

	^self 
		crawlerAt: aPosition 
		facing: aFacingName 
		over: aGroundsByPosition 
		slidingWith: (ScriptedRandom answering: [ :aLimit | aDistance ])! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
crawlerAt: aPosition facing: aFacingName over: aGroundsByPosition slidingWith: aRandom

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		detectingGroundWith: (SeabedSonar mapping: aGroundsByPosition asDictionary) 
		slidingWith: aRandom! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test17DigitAfterAdvanceRepeatsItTheDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test18NineAfterAdvanceRepeatsItElevenTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test19DigitAfterRetreatRepeatsIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test20DigitAfterTurnClockwiseRepeatsIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test21DigitAfterTurnCounterClockwiseRepeatsIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test22DigitRepeatsOnlyTheLastCommand

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'ha1'.
	
	self assert: (crawler isAt: 5@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test23DigitAtTheBeginningIsAnInvalidRepetition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '0' ] 
		failWith: SurveyCrawler invalidRepetitionErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test24DigitAfterADigitIsAnInvalidRepetitionAndKeepsPreviousMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ] 
		failWith: SurveyCrawler invalidRepetitionErrorDescription 
		leaving: crawler 
		at: 1@5 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test25DigitAfterGuardedRunStartIsAnInvalidRepetition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(0)' ] 
		failWith: SurveyCrawler invalidRepetitionErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test26DigitAfterGuardedRunEndIsAnInvalidRepetitionAndKeepsTheGuardedRunMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)0' ] 
		failWith: SurveyCrawler invalidRepetitionErrorDescription 
		leaving: crawler 
		at: 1@3 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test27DigitAfterAnInvalidCommandFailsAsInvalidCommand

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x0' ] 
		failWith: SurveyCrawler invalidCommandErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test28AdvancingOntoFirmSandMovesOneCell

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: { 1@3 -> FirmSand new }.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test29CanNotAdvanceOntoABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: { 1@3 -> Boulder new }.
	
	self 
		should: [ crawler process: 'a' ] 
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test30CanNotRetreatOntoABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: { 1@1 -> Boulder new }.
	
	self 
		should: [ crawler process: 't' ] 
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test31CanNotTurnClockwiseOnABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: { 1@2 -> Boulder new }.
	
	self 
		should: [ crawler process: 'h' ] 
		failWith: SurveyCrawler canNotTurnOnBoulderErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:18 am (UTC)'!
test32CanNotTurnCounterClockwiseOnABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: { 1@2 -> Boulder new }.
	
	self 
		should: [ crawler process: 'g' ] 
		failWith: SurveyCrawler canNotTurnOnBoulderErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test33CommandsAfterFindingABoulderAreNotProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: { 1@4 -> Boulder new }.
	
	self 
		should: [ crawler process: 'aaha' ] 
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler 
		at: 1@3 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test34AdvancingOntoSiltSlidesTheRandomDistance

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		over: { 1@3 -> Silt new } 
		slidingAlways: 4.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test35SlidingOnSiltIsLimitedToTenCells

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		over: { 1@3 -> Silt new } 
		slidingWith: (ScriptedRandom answering: [ :aLimit | aLimit ]).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test36RetreatingOntoSiltSlidesBackwards

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		over: { 1@1 -> Silt new } 
		slidingAlways: 3.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test37SlidingOnSiltStopsBeforeABoulder

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		over: { 1@3 -> Silt new. 1@5 -> Boulder new } 
		slidingAlways: 10.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test38SlidingWithARealRandomEndsWithinTheSlidingLimit

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		over: { 1@3 -> Silt new } 
		slidingWith: Random new.
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aY | crawler isAt: 1@aY facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test39SiltDoesNotAffectTurning

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: { 1@2 -> Silt new }.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test40GuardedRunWithoutProblemsKeepsItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(ah)'.
	
	self assert: (crawler isAt: 1@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test41EmptyGuardedRunDoesNothing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '()'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test42BoulderInGuardedRunUndoesItsMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: { 1@4 -> Boulder new }.
	
	self 
		should: [ crawler process: '(aa)' ] 
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test43FailedGuardedRunUndoesTurnsAndRetreats

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: { 0@3 -> Boulder new }.
	
	self 
		should: [ crawler process: '(htga)' ] 
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:27 am (UTC)'!
test44RepeatedMovementsOfAFailedGuardedRunAreUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: { 1@6 -> Boulder new }.
	
	self 
		should: [ crawler process: '(a3)' ] 
		failWith: SurveyCrawler boulderFoundErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test45SiltInGuardedRunUndoesItsMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: { 1@4 -> Silt new }.
	
	self 
		should: [ crawler process: '(aa)' ] 
		failWith: SurveyCrawler siltFoundDuringGuardedRunErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test46InvalidCommandInGuardedRunUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ahx)' ] 
		failWith: SurveyCrawler invalidCommandErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test47InvalidRepetitionInGuardedRunUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a00)' ] 
		failWith: SurveyCrawler invalidRepetitionErrorDescription 
		leaving: crawler 
		at: 1@2 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test48FailedGuardedRunOnlyUndoesTheMovementsInsideIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'ah(ax)' ] 
		failWith: SurveyCrawler invalidCommandErrorDescription 
		leaving: crawler 
		at: 1@3 
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test49SeveralGuardedRunsAreProcessedInOneSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test50FailedGuardedRunDoesNotUndoAPreviousFinishedOne

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(aa)(hx)' ] 
		failWith: SurveyCrawler invalidCommandErrorDescription 
		leaving: crawler 
		at: 1@4 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test51NestedGuardedRunFailsAndUndoesTheOuterGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ] 
		failWith: SurveyCrawler nestedGuardedRunErrorDescription 
		leaving: crawler 
		at: 1@4 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test52UnfinishedGuardedRunFailsAndUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ] 
		failWith: SurveyCrawler unfinishedGuardedRunErrorDescription 
		leaving: crawler 
		at: 1@3 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test53FinishingAGuardedRunThatWasNotStartedFails

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)a' ] 
		failWith: SurveyCrawler guardedRunNotStartedErrorDescription 
		leaving: crawler 
		at: 1@3 
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test54SiltAfterAFinishedGuardedRunSlides

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		over: { 1@4 -> Silt new } 
		slidingAlways: 3.
	
	crawler process: '(a)a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:31:19 am (UTC)'!
test55CrawlerIsUnguardedAgainAfterAFailedGuardedRun

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		over: { 1@3 -> Silt new } 
		slidingAlways: 2.
	self should: [ crawler process: '(x' ] raise: Error - MessageNotUnderstood.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !
