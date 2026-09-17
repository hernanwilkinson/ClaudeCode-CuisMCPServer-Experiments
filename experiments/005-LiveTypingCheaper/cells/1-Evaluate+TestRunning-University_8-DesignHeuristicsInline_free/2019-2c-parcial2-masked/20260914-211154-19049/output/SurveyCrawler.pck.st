'From Cuis7.9 [latest update: #8182] on 14 September 2026 at 9:26:32 pm'!
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

!classDefinition: #AdvanceCommand category: #SurveyCrawler!
CrawlerCommand subclass: #AdvanceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'AdvanceCommand class' category: #SurveyCrawler!
AdvanceCommand class
	instanceVariableNames: ''!

!classDefinition: #RetreatCommand category: #SurveyCrawler!
CrawlerCommand subclass: #RetreatCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'RetreatCommand class' category: #SurveyCrawler!
RetreatCommand class
	instanceVariableNames: ''!

!classDefinition: #TurnClockwiseCommand category: #SurveyCrawler!
CrawlerCommand subclass: #TurnClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'TurnClockwiseCommand class' category: #SurveyCrawler!
TurnClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #TurnCounterClockwiseCommand category: #SurveyCrawler!
CrawlerCommand subclass: #TurnCounterClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'TurnCounterClockwiseCommand class' category: #SurveyCrawler!
TurnCounterClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerCommandInterpreter category: #SurveyCrawler!
Object subclass: #CrawlerCommandInterpreter
	instanceVariableNames: 'crawler commands lastCommand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerCommandInterpreter class' category: #SurveyCrawler!
CrawlerCommandInterpreter class
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

!classDefinition: #CrawlerGround category: #SurveyCrawler!
Object subclass: #CrawlerGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerGround class' category: #SurveyCrawler!
CrawlerGround class
	instanceVariableNames: ''!

!classDefinition: #BoulderGround category: #SurveyCrawler!
CrawlerGround subclass: #BoulderGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'BoulderGround class' category: #SurveyCrawler!
BoulderGround class
	instanceVariableNames: ''!

!classDefinition: #FirmSandGround category: #SurveyCrawler!
CrawlerGround subclass: #FirmSandGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'FirmSandGround class' category: #SurveyCrawler!
FirmSandGround class
	instanceVariableNames: ''!

!classDefinition: #SiltGround category: #SurveyCrawler!
CrawlerGround subclass: #SiltGround
	instanceVariableNames: 'random'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SiltGround class' category: #SurveyCrawler!
SiltGround class
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

!classDefinition: #CrawlerDisplacement category: #SurveyCrawler!
CrawlerMovement subclass: #CrawlerDisplacement
	instanceVariableNames: 'direction'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerDisplacement class' category: #SurveyCrawler!
CrawlerDisplacement class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRotation category: #SurveyCrawler!
CrawlerMovement subclass: #CrawlerRotation
	instanceVariableNames: 'facing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRotation class' category: #SurveyCrawler!
CrawlerRotation class
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

!classDefinition: #GuardedRun category: #SurveyCrawler!
CrawlerRun subclass: #GuardedRun
	instanceVariableNames: 'oppositeMovements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'GuardedRun class' category: #SurveyCrawler!
GuardedRun class
	instanceVariableNames: ''!

!classDefinition: #UnguardedRun category: #SurveyCrawler!
CrawlerRun subclass: #UnguardedRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'UnguardedRun class' category: #SurveyCrawler!
UnguardedRun class
	instanceVariableNames: ''!

!classDefinition: #NoCommand category: #SurveyCrawler!
Object subclass: #NoCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'NoCommand class' category: #SurveyCrawler!
NoCommand class
	instanceVariableNames: ''!

!classDefinition: #SeabedSonar category: #SurveyCrawler!
Object subclass: #SeabedSonar
	instanceVariableNames: 'grounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedSonar class' category: #SurveyCrawler!
SeabedSonar class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #PredeterminedRandom category: #'SurveyCrawler-Tests'!
Object subclass: #PredeterminedRandom
	instanceVariableNames: 'number'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'PredeterminedRandom class' category: #'SurveyCrawler-Tests'!
PredeterminedRandom class
	instanceVariableNames: ''!

!classDefinition: #SeabedSonarTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SeabedSonarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SeabedSonarTest class' category: #'SurveyCrawler-Tests'!
SeabedSonarTest class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerBoulderTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerBoulderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerBoulderTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerBoulderTest class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerGuardedRunTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerGuardedRunTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerGuardedRunTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerGuardedRunTest class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerRepeatedCommandTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerRepeatedCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerRepeatedCommandTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerRepeatedCommandTest class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerSiltTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerSiltTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerSiltTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerSiltTest class
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


!CrawlerCommandInterpreter commentStamp: '<historical>' prior: 0!
I interpret a sequence of commands, telling a SurveyCrawler what to do with each one of them.
A digit repeats the command right before it two more times than the digit value, so 'a0' advances three times.
I interpret one command at a time instead of reading them all first, so that the commands before an invalid one are executed.!

!SiltGround commentStamp: '<historical>' prior: 0!
I am the ground where the crawler slides an unpredictable number of cells, up to my sliding limit, in the direction it was moving.!

!GuardedRun commentStamp: '<historical>' prior: 0!
I execute the commands of a guarded run, remembering the opposite of every movement the crawler makes.
When something goes wrong I apply those opposite movements in reverse order, leaving the crawler where it was when I started, and I let the error continue to its handler.
I do not let the crawler move on silt because I would not be able to undo an unpredictable movement.!

!SeabedSonar commentStamp: '<historical>' prior: 0!
I know the ground the crawler will end up on at each position of the seabed. Every position I do not know about is firm sand.!

!PredeterminedRandom commentStamp: '<historical>' prior: 0!
I answer the number I was created with, so that the distance a crawler slides on silt can be predicted while testing.!

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
executeOn: aCrawler within: aRun

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler within: aRun

	aNumberOfTimes timesRepeat: [ self executeOn: aCrawler within: aRun ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
for: aCharacter

	^self subclasses 
		detect: [ :aCrawlerCommandClass | aCrawlerCommandClass isFor: aCharacter ]
		ifFound: [ :aCrawlerCommandClass | aCrawlerCommandClass new ]
		ifNone: [ self signalInvalidCommand ]! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
isFor: aCharacter

	^self character = aCharacter! !

!CrawlerCommand class methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
character

	self subclassResponsibility! !

!CrawlerCommand class methodsFor: 'signalling' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
signalInvalidCommand

	self error: self invalidCommandErrorDescription! !

!CrawlerCommand class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!AdvanceCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
executeOn: aCrawler within: aRun

	aCrawler advanceWithin: aRun! !

!AdvanceCommand class methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
character

	^$a! !

!RetreatCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
executeOn: aCrawler within: aRun

	aCrawler retreatWithin: aRun! !

!RetreatCommand class methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
character

	^$t! !

!TurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
executeOn: aCrawler within: aRun

	aCrawler turnClockwiseWithin: aRun! !

!TurnClockwiseCommand class methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
character

	^$h! !

!TurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
executeOn: aCrawler within: aRun

	aCrawler turnCounterClockwiseWithin: aRun! !

!TurnCounterClockwiseCommand class methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
character

	^$g! !

!CrawlerCommandInterpreter methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
initializeFor: aCrawler interpreting: aStreamOfCommands

	crawler := aCrawler.
	commands := aStreamOfCommands.
	lastCommand := NoCommand new! !

!CrawlerCommandInterpreter methodsFor: 'interpreting' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
execute: aCrawlerCommand within: aRun

	aCrawlerCommand executeOn: crawler within: aRun.
	lastCommand := aCrawlerCommand! !

!CrawlerCommandInterpreter methodsFor: 'interpreting' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
interpret

	| unguardedRun |
	
	unguardedRun := UnguardedRun new.
	[ commands atEnd ] whileFalse: [ self interpretNextWithin: unguardedRun ]! !

!CrawlerCommandInterpreter methodsFor: 'interpreting' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
interpretNextWithin: aRun

	| aCharacter |
	
	aCharacter := commands next.
	aCharacter isDigit ifTrue: [ ^self repeatLastCommand: aCharacter digitValue within: aRun ].
	aCharacter = self class startOfGuardedRun ifTrue: [ ^aRun startGuardedRunWith: self ].
	self execute: (CrawlerCommand for: aCharacter) within: aRun! !

!CrawlerCommandInterpreter methodsFor: 'interpreting' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
repeatLastCommand: aDigit within: aRun

	lastCommand repeat: aDigit + self class extraRepetitions on: crawler within: aRun.
	lastCommand := NoCommand new! !

!CrawlerCommandInterpreter methodsFor: 'interpreting guarded runs' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
interpretUpToEndOfGuardedRunWithin: aGuardedRun

	[ commands atEnd ] whileFalse: [ 
		self isAtEndOfGuardedRun ifTrue: [ ^self skipEndOfGuardedRun ].
		self interpretNextWithin: aGuardedRun ].
	
	self signalGuardedRunNotFinished! !

!CrawlerCommandInterpreter methodsFor: 'interpreting guarded runs' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
isAtEndOfGuardedRun

	^commands peek = self class endOfGuardedRun! !

!CrawlerCommandInterpreter methodsFor: 'interpreting guarded runs' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
skipEndOfGuardedRun

	commands next! !

!CrawlerCommandInterpreter methodsFor: 'interpreting guarded runs' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
startGuardedRun

	| guardedRun |
	
	guardedRun := GuardedRun new.
	lastCommand := NoCommand new.
	guardedRun protectCrawler: crawler while: [ self interpretUpToEndOfGuardedRunWithin: guardedRun ].
	lastCommand := NoCommand new! !

!CrawlerCommandInterpreter methodsFor: 'signalling' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
signalGuardedRunNotFinished

	self error: GuardedRun notFinishedErrorDescription! !

!CrawlerCommandInterpreter class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
for: aCrawler interpreting: aSequenceOfCommands

	^self new initializeFor: aCrawler interpreting: (ReadStream on: aSequenceOfCommands)! !

!CrawlerCommandInterpreter class methodsFor: 'command language' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
endOfGuardedRun

	^$)! !

!CrawlerCommandInterpreter class methodsFor: 'command language' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
extraRepetitions

	^2! !

!CrawlerCommandInterpreter class methodsFor: 'command language' stamp: 'HAW 15/Sep/2026, 12:22:34 am (UTC)'!
startOfGuardedRun

	^$(! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
clockwise

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
counterClockwise

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
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

!CrawlerFacingDown methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
clockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingDown methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
counterClockwise

	^CrawlerFacingRight new! !

!CrawlerFacingDown methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
direction

	^0@-1! !

!CrawlerFacingDown class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:17 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
clockwise

	^CrawlerFacingUp new! !

!CrawlerFacingLeft methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
counterClockwise

	^CrawlerFacingDown new! !

!CrawlerFacingLeft methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
direction

	^-1@0! !

!CrawlerFacingLeft class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:23 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
clockwise

	^CrawlerFacingDown new! !

!CrawlerFacingRight methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
counterClockwise

	^CrawlerFacingUp new! !

!CrawlerFacingRight methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
direction

	^1@0! !

!CrawlerFacingRight class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:01:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
clockwise

	^CrawlerFacingRight new! !

!CrawlerFacingUp methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
counterClockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingUp methodsFor: 'directions' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
direction

	^0@1! !

!CrawlerFacingUp class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:11 pm (UTC)'!
facingName

	^#Up! !

!CrawlerGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
moveCrawler: aCrawler towards: aDirection within: aRun

	self subclassResponsibility! !

!CrawlerGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
turnCrawler: aCrawler from: aFacing to: anotherFacing within: aRun

	self subclassResponsibility! !

!BoulderGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
moveCrawler: aCrawler towards: aDirection within: aRun

	self signalMovementBlocked! !

!BoulderGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
turnCrawler: aCrawler from: aFacing to: anotherFacing within: aRun

	self signalMovementBlocked! !

!BoulderGround methodsFor: 'signalling' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
signalMovementBlocked

	self error: self class movementBlockedErrorDescription! !

!BoulderGround class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
movementBlockedErrorDescription

	^'Movement blocked by a boulder'! !

!FirmSandGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
moveCrawler: aCrawler towards: aDirection within: aRun

	aRun stepCrawler: aCrawler towards: aDirection! !

!FirmSandGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
turnCrawler: aCrawler from: aFacing to: anotherFacing within: aRun

	aRun turnCrawler: aCrawler from: aFacing to: anotherFacing! !

!SiltGround methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
initializeSlidingWith: aRandom

	random := aRandom! !

!SiltGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
moveCrawler: aCrawler towards: aDirection within: aRun

	aRun slideCrawler: aCrawler towards: aDirection on: self! !

!SiltGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
slideCrawler: aCrawler towards: aDirection

	aCrawler moveBy: aDirection * self slidingDistance! !

!SiltGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
turnCrawler: aCrawler from: aFacing to: anotherFacing within: aRun

	aRun turnCrawler: aCrawler from: aFacing to: anotherFacing! !

!SiltGround methodsFor: 'sliding' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
slidingDistance

	^random nextInteger: self class slidingLimit! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
slidingWith: aRandom

	^self new initializeSlidingWith: aRandom! !

!SiltGround class methodsFor: 'sliding' stamp: 'HAW 15/Sep/2026, 12:21:40 am (UTC)'!
slidingLimit

	^10! !

!CrawlerMovement methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
applyTo: aCrawler

	self subclassResponsibility! !

!CrawlerDisplacement methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
initializeTowards: aDirection

	direction := aDirection! !

!CrawlerDisplacement methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
applyTo: aCrawler

	aCrawler moveBy: direction! !

!CrawlerDisplacement class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
towards: aDirection

	^self new initializeTowards: aDirection! !

!CrawlerRotation methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
initializeTowards: aFacing

	facing := aFacing! !

!CrawlerRotation methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
applyTo: aCrawler

	aCrawler faceTowards: facing! !

!CrawlerRotation class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
towards: aFacing

	^self new initializeTowards: aFacing! !

!CrawlerRun methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
slideCrawler: aCrawler towards: aDirection on: aSiltGround

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
stepCrawler: aCrawler towards: aDirection

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
turnCrawler: aCrawler from: aFacing to: anotherFacing

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'interpreting' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
startGuardedRunWith: anInterpreter

	self subclassResponsibility! !

!GuardedRun methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
initialize

	oppositeMovements := OrderedCollection new! !

!GuardedRun methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:22:10 am (UTC)'!
slideCrawler: aCrawler towards: aDirection on: aSiltGround

	self signalUnpredictableMovement! !

!GuardedRun methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
stepCrawler: aCrawler towards: aDirection

	aCrawler moveBy: aDirection.
	self willUndoWith: (CrawlerDisplacement towards: aDirection negated)! !

!GuardedRun methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:22:10 am (UTC)'!
turnCrawler: aCrawler from: aFacing to: anotherFacing

	aCrawler faceTowards: anotherFacing.
	self willUndoWith: (CrawlerRotation towards: aFacing)! !

!GuardedRun methodsFor: 'interpreting' stamp: 'HAW 15/Sep/2026, 12:22:10 am (UTC)'!
startGuardedRunWith: anInterpreter

	self signalAlreadyStarted! !

!GuardedRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:22:10 am (UTC)'!
protectCrawler: aCrawler while: aBlock

	aBlock 
		on: Error 
		do: [ :anError | 
			self undoOn: aCrawler.
			anError pass ]! !

!GuardedRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:22:10 am (UTC)'!
undoOn: aCrawler

	oppositeMovements reverseDo: [ :aCrawlerMovement | aCrawlerMovement applyTo: aCrawler ]! !

!GuardedRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:22:10 am (UTC)'!
willUndoWith: aCrawlerMovement

	oppositeMovements addLast: aCrawlerMovement! !

!GuardedRun methodsFor: 'signalling' stamp: 'HAW 15/Sep/2026, 12:22:10 am (UTC)'!
signalAlreadyStarted

	self error: self class alreadyStartedErrorDescription! !

!GuardedRun methodsFor: 'signalling' stamp: 'HAW 15/Sep/2026, 12:22:10 am (UTC)'!
signalUnpredictableMovement

	self error: self class unpredictableMovementErrorDescription! !

!GuardedRun class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:22:10 am (UTC)'!
alreadyStartedErrorDescription

	^'Can not start a guarded run during a guarded run'! !

!GuardedRun class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:22:10 am (UTC)'!
notFinishedErrorDescription

	^'Guarded run was not finished'! !

!GuardedRun class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:22:10 am (UTC)'!
unpredictableMovementErrorDescription

	^'Can not move on silt during a guarded run'! !

!UnguardedRun methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
slideCrawler: aCrawler towards: aDirection on: aSiltGround

	aSiltGround slideCrawler: aCrawler towards: aDirection! !

!UnguardedRun methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
stepCrawler: aCrawler towards: aDirection

	aCrawler moveBy: aDirection! !

!UnguardedRun methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
turnCrawler: aCrawler from: aFacing to: anotherFacing

	aCrawler faceTowards: anotherFacing! !

!UnguardedRun methodsFor: 'interpreting' stamp: 'HAW 15/Sep/2026, 12:22:09 am (UTC)'!
startGuardedRunWith: anInterpreter

	anInterpreter startGuardedRun! !

!NoCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:20 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler within: aRun

	CrawlerCommand signalInvalidCommand! !

!SeabedSonar methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:21:52 am (UTC)'!
initializeDetecting: aCollectionOfGrounds

	grounds := aCollectionOfGrounds! !

!SeabedSonar methodsFor: 'ground detection' stamp: 'HAW 15/Sep/2026, 12:21:52 am (UTC)'!
groundAt: aPosition

	^grounds at: aPosition ifAbsent: [ FirmSandGround new ]! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:21:51 am (UTC)'!
boulderAt: aCollectionOfPositions siltAt: anotherCollectionOfPositions

	^self 
		boulderAt: aCollectionOfPositions 
		siltAt: anotherCollectionOfPositions 
		slidingWith: Random new! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:21:51 am (UTC)'!
boulderAt: aCollectionOfPositions siltAt: anotherCollectionOfPositions slidingWith: aRandom

	self assertBoulderPositions: aCollectionOfPositions doNotHaveSiltAt: anotherCollectionOfPositions.

	^self new initializeDetecting: (self 
		groundsWithBoulderAt: aCollectionOfPositions 
		siltAt: anotherCollectionOfPositions 
		slidingWith: aRandom)! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:21:51 am (UTC)'!
firmSeabed

	^self boulderAt: #() siltAt: #()! !

!SeabedSonar class methodsFor: 'preconditions' stamp: 'HAW 15/Sep/2026, 12:21:52 am (UTC)'!
assertBoulderPositions: aCollectionOfPositions doNotHaveSiltAt: anotherCollectionOfPositions

	(aCollectionOfPositions anySatisfy: [ :aPosition | anotherCollectionOfPositions includes: aPosition ])
		ifTrue: [ self error: self groundCanNotBeBoulderAndSiltErrorDescription ]! !

!SeabedSonar class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:21:52 am (UTC)'!
groundCanNotBeBoulderAndSiltErrorDescription

	^'A ground can not be boulder and silt at the same time'! !

!SeabedSonar class methodsFor: 'ground detection' stamp: 'HAW 15/Sep/2026, 12:21:52 am (UTC)'!
groundsWithBoulderAt: aCollectionOfPositions siltAt: anotherCollectionOfPositions slidingWith: aRandom

	| detectedGrounds silt |
	
	detectedGrounds := Dictionary new.
	aCollectionOfPositions do: [ :aPosition | detectedGrounds at: aPosition put: BoulderGround new ].
	silt := SiltGround slidingWith: aRandom.
	anotherCollectionOfPositions do: [ :aPosition | detectedGrounds at: aPosition put: silt ].
	
	^detectedGrounds! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:22:47 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:22:47 am (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:22:48 am (UTC)'!
faceTowards: aFacing

	facing := aFacing! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:22:48 am (UTC)'!
moveBy: aDirection

	position := position + aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:22:48 am (UTC)'!
moveTowards: aDirection within: aRun

	(sonar groundAt: position + aDirection) moveCrawler: self towards: aDirection within: aRun! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:22:48 am (UTC)'!
turnTo: aFacing within: aRun

	(sonar groundAt: position) turnCrawler: self from: facing to: aFacing within: aRun! !

!SurveyCrawler methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:22:48 am (UTC)'!
advanceWithin: aRun

	self moveTowards: facing direction within: aRun! !

!SurveyCrawler methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:22:48 am (UTC)'!
process: aSequenceOfCommands

	(CrawlerCommandInterpreter for: self interpreting: aSequenceOfCommands) interpret! !

!SurveyCrawler methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:22:48 am (UTC)'!
retreatWithin: aRun

	self moveTowards: facing direction negated within: aRun! !

!SurveyCrawler methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:22:48 am (UTC)'!
turnClockwiseWithin: aRun

	self turnTo: facing clockwise within: aRun! !

!SurveyCrawler methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:22:48 am (UTC)'!
turnCounterClockwiseWithin: aRun

	self turnTo: facing counterClockwise within: aRun! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:22:47 am (UTC)'!
at: aPosition facing: aFacingName

	^self at: aPosition facing: aFacingName sonar: SeabedSonar firmSeabed! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:22:47 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!PredeterminedRandom methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:23:07 am (UTC)'!
initializeAnswering: aNumber

	number := aNumber! !

!PredeterminedRandom methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 12:23:07 am (UTC)'!
nextInteger: aLimit

	^number! !

!PredeterminedRandom class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:23:07 am (UTC)'!
answering: aNumber

	self assertIsValidNumber: aNumber.
	
	^self new initializeAnswering: aNumber! !

!PredeterminedRandom class methodsFor: 'preconditions' stamp: 'HAW 15/Sep/2026, 12:23:07 am (UTC)'!
assertIsValidNumber: aNumber

	aNumber strictlyPositive ifFalse: [ self error: self numberMustBeStrictlyPositiveErrorDescription ]! !

!PredeterminedRandom class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:23:07 am (UTC)'!
numberMustBeStrictlyPositiveErrorDescription

	^'The answered number must be strictly positive'! !

!SeabedSonarTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:25:04 am (UTC)'!
test01CanNotDetectBoulderAndSiltAtTheSamePosition

	self 
		should: [ SeabedSonar boulderAt: (Array with: 1@3) siltAt: (Array with: 1@3) ]
		raise: Error - MessageNotUnderstood
		withMessageText: SeabedSonar groundCanNotBeBoulderAndSiltErrorDescription! !

!SurveyCrawlerBoulderTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:47 am (UTC)'!
test01AdvancingToABoulderRaisesErrorAndDoesNotMove

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@3.
	
	self 
		should: [ crawler process: 'a' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround movementBlockedErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerBoulderTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:47 am (UTC)'!
test02RetreatingToABoulderRaisesErrorAndDoesNotMove

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@1.
	
	self 
		should: [ crawler process: 't' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround movementBlockedErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerBoulderTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:47 am (UTC)'!
test03TurningCounterClockwiseOnABoulderRaisesErrorAndDoesNotTurn

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@2.
	
	self 
		should: [ crawler process: 'g' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround movementBlockedErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerBoulderTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:47 am (UTC)'!
test04TurningClockwiseOnABoulderRaisesErrorAndDoesNotTurn

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@2.
	
	self 
		should: [ crawler process: 'h' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround movementBlockedErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerBoulderTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:47 am (UTC)'!
test05CommandsBeforeTheBoulderAreExecuted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@4.
	
	self 
		should: [ crawler process: 'aa' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround movementBlockedErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerBoulderTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:47 am (UTC)'!
test06ARepeatedCommandStopsAtTheBoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@4.
	
	self 
		should: [ crawler process: 'a0' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround movementBlockedErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerBoulderTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:47 am (UTC)'!
test07ABoulderAsideDoesNotBlockTheAdvance

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 2@2.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerBoulderTest methodsFor: 'crawler creation' stamp: 'HAW 15/Sep/2026, 12:23:47 am (UTC)'!
crawlerAt: aPosition facing: aFacingName withBoulderAt: anotherPosition

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: (SeabedSonar boulderAt: (Array with: anotherPosition) siltAt: #())! !

!SurveyCrawlerGuardedRunTest methodsFor: 'crawler creation' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
crawlerAt: aPosition facing: aFacingName withBoulderAt: anotherPosition

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: (SeabedSonar boulderAt: (Array with: anotherPosition) siltAt: #())! !

!SurveyCrawlerGuardedRunTest methodsFor: 'crawler creation' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
crawlerAt: aPosition facing: aFacingName withSiltAt: anotherPosition

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: (SeabedSonar boulderAt: #() siltAt: (Array with: anotherPosition))! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test01AGuardedRunWithoutProblemsExecutesAllItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aa)'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test02ABoulderDuringAGuardedRunUndoesTheMovementsAlreadyDone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround movementBlockedErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test03SiltDuringAGuardedRunRaisesErrorAndUndoesTheMovementsAlreadyDone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: GuardedRun unpredictableMovementErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test04AnInvalidCommandDuringAGuardedRunUndoesTheMovementsAlreadyDone

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ax)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test05TurnsDoneDuringAGuardedRunAreAlsoUndone

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ahax)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test06CommandsDoneBeforeAGuardedRunAreNotUndone

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(ax)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test07CommandsAfterAFailedGuardedRunAreNotExecuted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(x)aa' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test08AGuardedRunCanNotBeStartedDuringAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: GuardedRun alreadyStartedErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test09AGuardedRunThatIsNotFinishedUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: GuardedRun notFinishedErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test10FinishingAGuardedRunThatWasNotStartedIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:58 am (UTC)'!
test11ACommandSequenceCanHaveSeveralGuardedRuns

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a(ah)a(ha)'.
	
	self assert: (crawler isAt: 2@3 facing: #Down)! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test12RepeatedCommandsDoneDuringAGuardedRunAreUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@6.
	
	self 
		should: [ crawler process: '(a0a)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround movementBlockedErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test13TurningOnSiltIsAllowedDuringAGuardedRun

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@2.
	
	crawler process: '(h)'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test14ADigitCanNotRepeatTheCommandDoneBeforeAGuardedRunStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(0)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:51 am (UTC)'!
test15ADigitCanNotRepeatAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)0' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:23 am (UTC)'!
test01ADigitAfterAdvanceRepeatsItTwoMoreTimesThanTheDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:23 am (UTC)'!
test02TheBiggestDigitAfterAdvanceRepeatsItElevenMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:32 am (UTC)'!
test03ADigitAfterRetreatRepeatsTheRetreat

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:23 am (UTC)'!
test04ADigitAfterTurningClockwiseRepeatsTheTurn

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:23 am (UTC)'!
test05ADigitAfterTurningCounterClockwiseRepeatsTheTurn

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:23 am (UTC)'!
test06ADigitRepeatsOnlyTheCommandRightBeforeIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'at0'.
	
	self assert: (crawler isAt: 1@0 facing: #Up)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:23 am (UTC)'!
test07ADigitWithoutACommandBeforeItIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '0' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:23:23 am (UTC)'!
test08ADigitCanNotBeRepeatedByAnotherDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@5 facing: #Up) ]! !

!SurveyCrawlerSiltTest methodsFor: 'crawler creation' stamp: 'HAW 15/Sep/2026, 12:24:02 am (UTC)'!
crawlerAt: aPosition facing: aFacingName withSiltAt: anotherPosition sliding: aNumberOfCells

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: (SeabedSonar 
			boulderAt: #() 
			siltAt: (Array with: anotherPosition) 
			slidingWith: (PredeterminedRandom answering: aNumberOfCells))! !

!SurveyCrawlerSiltTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:02 am (UTC)'!
test01AdvancingToSiltSlidesAsManyCellsAsTheSiltDecides

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@3 sliding: 4.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerSiltTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:02 am (UTC)'!
test02AdvancingToSiltSlidingOneCellEndsAtTheSilt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@3 sliding: 1.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerSiltTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:02 am (UTC)'!
test03RetreatingToSiltSlidesBackwards

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@1 sliding: 3.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)! !

!SurveyCrawlerSiltTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:10 am (UTC)'!
test04AdvancingToSiltAlwaysEndsWithinTheSlidingLimit

	| sonar |
	
	sonar := SeabedSonar boulderAt: #() siltAt: (Array with: 1@3).
	
	100 timesRepeat: [
		| crawler |
		crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
		crawler process: 'a'.
		self assert: ((3 to: 12) anySatisfy: [ :aHeight | crawler isAt: 1@aHeight facing: #Up ]) ]! !

!SurveyCrawlerSiltTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:02 am (UTC)'!
test05TurningOnSiltTurnsAsOnFirmSand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@2 sliding: 5.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerSiltTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:24:02 am (UTC)'!
test06AdvancingFromSiltToFirmSandDoesNotSlide

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@2 sliding: 5.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:22:57 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
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
