'From Cuis7.9 [latest update: #8182] on 14 September 2026 at 9:30:55 pm'!
'Description Seabed survey crawler: repeated commands, sonar detecting firm sand, silt and boulders, and guarded runs that undo what the crawler did when something goes wrong'!
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

!classDefinition: #CrawlerNoCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerNoCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerNoCommand class' category: #SurveyCrawler!
CrawlerNoCommand class
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
	instanceVariableNames: 'repetitions'
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

!classDefinition: #CrawlerNormalRun category: #SurveyCrawler!
CrawlerRun subclass: #CrawlerNormalRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerNormalRun class' category: #SurveyCrawler!
CrawlerNormalRun class
	instanceVariableNames: ''!

!classDefinition: #CrawlerSonar category: #SurveyCrawler!
Object subclass: #CrawlerSonar
	instanceVariableNames: 'grounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerSonar class' category: #SurveyCrawler!
CrawlerSonar class
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

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar run'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: ''!

!classDefinition: #FixedSlideDistanceGenerator category: #'SurveyCrawler-Tests'!
Object subclass: #FixedSlideDistanceGenerator
	instanceVariableNames: 'slideDistance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'FixedSlideDistanceGenerator class' category: #'SurveyCrawler-Tests'!
FixedSlideDistanceGenerator class
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


!CrawlerCommand commentStamp: '<historical>' prior: 0!
I am one of the commands a survey crawler processes. I know how to execute myself on a crawler, knowing the command executed before me, and I answer the command the crawler has to remember as the last one executed.

My class knows which command each character of a sequence of commands means.!

!CrawlerEndGuardedRunCommand commentStamp: '<historical>' prior: 0!
I am the command $), which makes a survey crawler finish the guarded run it is processing.!

!CrawlerNoCommand commentStamp: '<historical>' prior: 0!
I am the command a survey crawler remembers when there is no previous command to repeat, either because it has not executed any yet or because the last one it executed can not be repeated. Trying to repeat me is an invalid command.!

!CrawlerRepeatableCommand commentStamp: '<historical>' prior: 0!
I am a command that can be repeated by the digit written after me.!

!CrawlerAdvanceCommand commentStamp: '<historical>' prior: 0!
I am the command $a, which makes a survey crawler advance.!

!CrawlerRetreatCommand commentStamp: '<historical>' prior: 0!
I am the command $t, which makes a survey crawler retreat.!

!CrawlerTurnClockwiseCommand commentStamp: '<historical>' prior: 0!
I am the command $h, which makes a survey crawler turn clockwise.!

!CrawlerTurnCounterClockwiseCommand commentStamp: '<historical>' prior: 0!
I am the command $g, which makes a survey crawler turn counter clockwise.!

!CrawlerRepetitionCommand commentStamp: '<historical>' prior: 0!
I am a digit written after a repeatable command. I know how many more times that command has to be executed, which is my digit value plus two.!

!CrawlerStartGuardedRunCommand commentStamp: '<historical>' prior: 0!
I am the command $(, which makes a survey crawler start a guarded run.!

!CrawlerFacing commentStamp: '<historical>' prior: 0!
I am the direction a survey crawler is facing. I know the displacement it makes when it advances and the facings it gets when it turns clockwise or counter clockwise.

My subclasses are the four directions of the seabed grid, and each one is created by name with CrawlerFacing facing: #Up.!

!CrawlerFacingDown commentStamp: '<historical>' prior: 0!
I am the facing of a survey crawler that advances decreasing its y coordinate.!

!CrawlerFacingLeft commentStamp: '<historical>' prior: 0!
I am the facing of a survey crawler that advances decreasing its x coordinate.!

!CrawlerFacingRight commentStamp: '<historical>' prior: 0!
I am the facing of a survey crawler that advances increasing its x coordinate.!

!CrawlerFacingUp commentStamp: '<historical>' prior: 0!
I am the facing of a survey crawler that advances increasing its y coordinate.!

!CrawlerRun commentStamp: '<historical>' prior: 0!
I am the run a survey crawler is processing its commands in. I know how a crawler is affected by silt, whether a guarded run can be started or finished, whether the sequence of commands ended when it should have, and I keep the actions that undo what the crawler did.!

!CrawlerGuardedRun commentStamp: '<historical>' prior: 0!
I am a guarded run, the one a survey crawler processes the commands between $( and $) in. I know the actions that undo every movement and every turn the crawler made since I started, so it can return to where it was when anything goes wrong.

Movement on silt is unpredictable, so I do not allow it, and neither do I allow another guarded run to be started within me.!

!CrawlerNormalRun commentStamp: '<historical>' prior: 0!
I am an unguarded run. A crawler slides on silt while running me, nothing it does has to be undone, and a guarded run can be started but not finished within me.!

!CrawlerSonar commentStamp: '<historical>' prior: 0!
I am the sonar of a survey crawler. I know the ground of the positions of the seabed that are not firm sand, and I answer the ground a crawler will end up on when it moves to a position.

For example: CrawlerSonar detecting: { 1@3 -> BoulderGround new }!

!SeabedGround commentStamp: '<historical>' prior: 0!
I am the ground of a position of the seabed. I know the displacement a crawler really makes when it tries to move by a displacement onto me, and whether it can turn while standing on me.!

!BoulderGround commentStamp: '<historical>' prior: 0!
I am a boulder. A survey crawler can neither move onto me nor turn while standing on me, so I signal an error whenever it tries.!

!FirmSandGround commentStamp: '<historical>' prior: 0!
I am firm sand, the ground a survey crawler moves and turns on as expected.!

!SiltGround commentStamp: '<historical>' prior: 0!
I am silt. A survey crawler that moves onto me slides an unpredictable number of cells, never more than my maximum slide distance, in the direction it was going. Turning on me is as safe as turning on firm sand.

I know the generator that decides how far a crawler slides, which lets a deterministic one be used while testing.!

!SurveyCrawler commentStamp: '<historical>' prior: 0!
I am a seabed survey crawler. I know the position I am at, the direction I am facing, the sonar I sense the ground with and the run I am processing commands in.

I process a sequence of commands where $a advances, $t retreats, $h turns me clockwise, $g turns me counter clockwise, a digit repeats the last of those commands its value plus two times, and $( and $) delimit a guarded run, whose movements I undo when something goes wrong.

For example: (SurveyCrawler at: 1@2 facing: #Up) process: 'aa(ht3)'.!

!FixedSlideDistanceGenerator commentStamp: '<historical>' prior: 0!
I generate always the same slide distance, so that sliding on silt can be tested without depending on chance.!

!SurveyCrawlerTest commentStamp: '<historical>' prior: 0!
I test a seabed survey crawler.!

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:21:56 am (UTC)'!
executeAfter: aPreviousCommand on: aCrawler

	self subclassResponsibility ! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:21:56 am (UTC)'!
repeat: aNumberOfRepetitions on: aCrawler

	self class signalInvalidCommand! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:21:55 am (UTC)'!
for: aCharacter

	^self allSubclasses 
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass interpreting: aCharacter ]
		ifNone: [ self signalInvalidCommand ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:21:55 am (UTC)'!
interpreting: aCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:21:55 am (UTC)'!
isFor: aCharacter

	^false! !

!CrawlerCommand class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:21:55 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!CrawlerCommand class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:21:55 am (UTC)'!
signalInvalidCommand

	self error: self invalidCommandErrorDescription! !

!CrawlerEndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:13 am (UTC)'!
executeAfter: aPreviousCommand on: aCrawler

	aCrawler endGuardedRun.
	^CrawlerNoCommand new! !

!CrawlerEndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:22:13 am (UTC)'!
isFor: aCharacter

	^aCharacter = $)! !

!CrawlerRepeatableCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:04 am (UTC)'!
executeAfter: aPreviousCommand on: aCrawler

	self executeOn: aCrawler.
	^self! !

!CrawlerRepeatableCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:04 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility ! !

!CrawlerRepeatableCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:04 am (UTC)'!
repeat: aNumberOfRepetitions on: aCrawler

	aNumberOfRepetitions timesRepeat: [ self executeOn: aCrawler ]! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:04 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:22:04 am (UTC)'!
isFor: aCharacter

	^aCharacter = $a! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:04 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:22:04 am (UTC)'!
isFor: aCharacter

	^aCharacter = $t! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:04 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:22:04 am (UTC)'!
isFor: aCharacter

	^aCharacter = $h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:04 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:22:04 am (UTC)'!
isFor: aCharacter

	^aCharacter = $g! !

!CrawlerRepetitionCommand methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:22:12 am (UTC)'!
initializeRepeating: aNumberOfRepetitions

	repetitions := aNumberOfRepetitions! !

!CrawlerRepetitionCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:12 am (UTC)'!
executeAfter: aPreviousCommand on: aCrawler

	aPreviousCommand repeat: repetitions on: aCrawler.
	^CrawlerNoCommand new! !

!CrawlerRepetitionCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:22:12 am (UTC)'!
isFor: aCharacter

	^aCharacter isDigit! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:22:12 am (UTC)'!
interpreting: aCharacter

	^self repeating: aCharacter digitValue + self additionalRepetitions! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:22:12 am (UTC)'!
repeating: aNumberOfRepetitions

	^self new initializeRepeating: aNumberOfRepetitions! !

!CrawlerRepetitionCommand class methodsFor: 'repeating' stamp: 'HAW 15/Sep/2026, 12:22:12 am (UTC)'!
additionalRepetitions

	^2! !

!CrawlerStartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 12:22:13 am (UTC)'!
executeAfter: aPreviousCommand on: aCrawler

	aCrawler startGuardedRun.
	^CrawlerNoCommand new! !

!CrawlerStartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:22:13 am (UTC)'!
isFor: aCharacter

	^aCharacter = $(! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:22:26 am (UTC)'!
advanceDisplacement

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:22:26 am (UTC)'!
retreatDisplacement

	^self advanceDisplacement negated! !

!CrawlerFacing methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:22:26 am (UTC)'!
clockwise

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:22:26 am (UTC)'!
counterClockwise

	self subclassResponsibility ! !

!CrawlerFacing class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 10:07:01 pm (UTC)'!
facingName

	self subclassResponsibility ! !

!CrawlerFacing class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:22:26 am (UTC)'!
facing: aFacingName

	^self subclasses 
		detect: [ :aCrawlerFacingClass | aCrawlerFacingClass isFor: aFacingName ]
		ifFound: [ :aCrawlerFacingClass | aCrawlerFacingClass new ]
		ifNone: [ self signalInvalidFacing ]! !

!CrawlerFacing class methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 8:01:33 pm (UTC)'!
isFor: aFacingName

	^self facingName = aFacingName ! !

!CrawlerFacing class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:22:26 am (UTC)'!
invalidFacingErrorDescription

	^'Invalid facing'! !

!CrawlerFacing class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:22:26 am (UTC)'!
signalInvalidFacing

	self error: self invalidFacingErrorDescription! !

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:22:33 am (UTC)'!
advanceDisplacement

	^0@-1! !

!CrawlerFacingDown methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:22:33 am (UTC)'!
clockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingDown methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:22:33 am (UTC)'!
counterClockwise

	^CrawlerFacingRight new! !

!CrawlerFacingDown class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 8:03:17 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:22:33 am (UTC)'!
advanceDisplacement

	^-1@0! !

!CrawlerFacingLeft methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:22:33 am (UTC)'!
clockwise

	^CrawlerFacingUp new! !

!CrawlerFacingLeft methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:22:33 am (UTC)'!
counterClockwise

	^CrawlerFacingDown new! !

!CrawlerFacingLeft class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 8:03:23 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:22:33 am (UTC)'!
advanceDisplacement

	^1@0! !

!CrawlerFacingRight methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:22:33 am (UTC)'!
clockwise

	^CrawlerFacingDown new! !

!CrawlerFacingRight methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:22:33 am (UTC)'!
counterClockwise

	^CrawlerFacingUp new! !

!CrawlerFacingRight class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 8:01:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:22:33 am (UTC)'!
advanceDisplacement

	^0@1! !

!CrawlerFacingUp methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:22:33 am (UTC)'!
clockwise

	^CrawlerFacingRight new! !

!CrawlerFacingUp methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:22:33 am (UTC)'!
counterClockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingUp class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 8:03:11 pm (UTC)'!
facingName

	^#Up! !

!CrawlerRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
registerUndoAction: anUndoAction

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
undoAll

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
slideDisplacementFor: aDisplacement on: aSiltGround

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
assertIsFinished

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
endGuardedRunOf: aCrawler

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:21:30 am (UTC)'!
startGuardedRunOf: aCrawler

	self subclassResponsibility ! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:21:46 am (UTC)'!
initialize

	undoActions := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:21:46 am (UTC)'!
registerUndoAction: anUndoAction

	undoActions add: anUndoAction! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:21:46 am (UTC)'!
undoAll

	undoActions reverseDo: [ :anUndoAction | anUndoAction value ]! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:21:46 am (UTC)'!
slideDisplacementFor: aDisplacement on: aSiltGround

	self class signalCanNotMoveOnSilt! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:21:46 am (UTC)'!
assertIsFinished

	self class signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:23:30 am (UTC)'!
endGuardedRunOf: aCrawler

	aCrawler continueWith: CrawlerNormalRun new! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:21:46 am (UTC)'!
startGuardedRunOf: aCrawler

	self class signalCanNotStartGuardedRunWithinGuardedRun! !

!CrawlerGuardedRun class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:21:46 am (UTC)'!
canNotMoveOnSiltErrorDescription

	^'Can not move on silt during a guarded run'! !

!CrawlerGuardedRun class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:21:46 am (UTC)'!
canNotStartGuardedRunWithinGuardedRunErrorDescription

	^'Can not start a guarded run within a guarded run'! !

!CrawlerGuardedRun class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:21:46 am (UTC)'!
signalCanNotMoveOnSilt

	self error: self canNotMoveOnSiltErrorDescription! !

!CrawlerGuardedRun class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:21:46 am (UTC)'!
signalCanNotStartGuardedRunWithinGuardedRun

	self error: self canNotStartGuardedRunWithinGuardedRunErrorDescription! !

!CrawlerGuardedRun class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:21:46 am (UTC)'!
signalUnfinishedGuardedRun

	self error: self unfinishedGuardedRunErrorDescription! !

!CrawlerGuardedRun class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:21:46 am (UTC)'!
unfinishedGuardedRunErrorDescription

	^'The guarded run was not finished'! !

!CrawlerNormalRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:21:37 am (UTC)'!
registerUndoAction: anUndoAction

	^self! !

!CrawlerNormalRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:21:37 am (UTC)'!
undoAll

	^self! !

!CrawlerNormalRun methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:27:19 am (UTC)'!
slideDisplacementFor: aDisplacement on: aSiltGround

	^aSiltGround slideDisplacementFor: aDisplacement! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:21:37 am (UTC)'!
assertIsFinished

	^self! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:21:37 am (UTC)'!
endGuardedRunOf: aCrawler

	CrawlerCommand signalInvalidCommand! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:23:30 am (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler continueWith: CrawlerGuardedRun new! !

!CrawlerSonar methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:21:25 am (UTC)'!
initializeDetecting: aGroundByPosition

	grounds := aGroundByPosition! !

!CrawlerSonar methodsFor: 'detecting' stamp: 'HAW 15/Sep/2026, 12:21:25 am (UTC)'!
groundAt: aPosition

	^grounds at: aPosition ifAbsent: [ FirmSandGround new ]! !

!CrawlerSonar class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:21:25 am (UTC)'!
detecting: aGroundByPosition

	^self new initializeDetecting: (Dictionary newFrom: aGroundByPosition)! !

!CrawlerSonar class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:21:25 am (UTC)'!
detectingFirmSandEverywhere

	^self detecting: #()! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:21:15 am (UTC)'!
displacementFor: aDisplacement during: aRun

	self subclassResponsibility ! !

!SeabedGround methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:21:15 am (UTC)'!
turn: aCrawler to: aFacing

	self subclassResponsibility ! !

!BoulderGround methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:21:15 am (UTC)'!
displacementFor: aDisplacement during: aRun

	self class signalCanNotMoveOntoBoulder! !

!BoulderGround methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:21:15 am (UTC)'!
turn: aCrawler to: aFacing

	self class signalCanNotTurnOnBoulder! !

!BoulderGround class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:21:15 am (UTC)'!
canNotMoveOntoBoulderErrorDescription

	^'Can not move onto a boulder'! !

!BoulderGround class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:21:15 am (UTC)'!
canNotTurnOnBoulderErrorDescription

	^'Can not turn on a boulder'! !

!BoulderGround class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:21:15 am (UTC)'!
signalCanNotMoveOntoBoulder

	self error: self canNotMoveOntoBoulderErrorDescription! !

!BoulderGround class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:21:15 am (UTC)'!
signalCanNotTurnOnBoulder

	self error: self canNotTurnOnBoulderErrorDescription! !

!FirmSandGround methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:21:15 am (UTC)'!
displacementFor: aDisplacement during: aRun

	^aDisplacement! !

!FirmSandGround methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:21:15 am (UTC)'!
turn: aCrawler to: aFacing

	aCrawler faceTo: aFacing! !

!SiltGround methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:21:20 am (UTC)'!
initializeSlidingWith: aSlideDistanceGenerator

	slideDistanceGenerator := aSlideDistanceGenerator! !

!SiltGround methodsFor: 'sliding' stamp: 'HAW 15/Sep/2026, 12:27:18 am (UTC)'!
slideDisplacementFor: aDisplacement

	^aDisplacement * self slideDistance! !

!SiltGround methodsFor: 'sliding' stamp: 'HAW 15/Sep/2026, 12:21:21 am (UTC)'!
slideDistance

	^slideDistanceGenerator nextInteger: self class maximumSlideDistance! !

!SiltGround methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:21:21 am (UTC)'!
displacementFor: aDisplacement during: aRun

	^aRun slideDisplacementFor: aDisplacement on: self! !

!SiltGround methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:21:21 am (UTC)'!
turn: aCrawler to: aFacing

	aCrawler faceTo: aFacing! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:21:20 am (UTC)'!
slidingRandomly

	^self slidingWith: Random new! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:21:20 am (UTC)'!
slidingWith: aSlideDistanceGenerator

	^self new initializeSlidingWith: aSlideDistanceGenerator! !

!SiltGround class methodsFor: 'sliding' stamp: 'HAW 15/Sep/2026, 12:21:20 am (UTC)'!
maximumSlideDistance

	^10! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:23:13 am (UTC)'!
initializeAt: aPosition facing: aFacing sensingWith: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	run := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:23:13 am (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:23:20 am (UTC)'!
advance

	self moveBy: facing advanceDisplacement! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:23:20 am (UTC)'!
displaceBy: aDisplacement

	position := position + aDisplacement.
	run registerUndoAction: [ position := position - aDisplacement ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:23:20 am (UTC)'!
moveBy: aDisplacement

	| groundToMoveOnto |
	
	groundToMoveOnto := sonar groundAt: position + aDisplacement.
	self displaceBy: (groundToMoveOnto displacementFor: aDisplacement during: run)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:23:20 am (UTC)'!
retreat

	self moveBy: facing retreatDisplacement! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:23:20 am (UTC)'!
process: aSequenceOfCommands

	[ self processCommandsIn: (ReadStream on: aSequenceOfCommands) ]
		on: Error 
		do: [ :anError | 
			self abortRun.
			anError pass ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:27:19 am (UTC)'!
processCommandsIn: aCommandStream

	| lastCommand |
	
	lastCommand := CrawlerNoCommand new.
	[ aCommandStream atEnd ] whileFalse: [
		lastCommand := (CrawlerCommand for: aCommandStream next) 
			executeAfter: lastCommand 
			on: self ].
	run assertIsFinished! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:23:27 am (UTC)'!
faceTo: aFacing

	| previousFacing |
	
	previousFacing := facing.
	facing := aFacing.
	run registerUndoAction: [ facing := previousFacing ]! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:23:26 am (UTC)'!
turnClockwise

	self turnTo: facing clockwise! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:23:26 am (UTC)'!
turnCounterClockwise

	self turnTo: facing counterClockwise! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 12:23:26 am (UTC)'!
turnTo: aFacing

	(sonar groundAt: position) turn: self to: aFacing! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:27:19 am (UTC)'!
abortRun

	| interruptedRun |
	
	"The interrupted run is replaced before undoing it so that undoing does not register new undo actions"
	interruptedRun := run.
	self continueWith: CrawlerNormalRun new.
	interruptedRun undoAll! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:23:27 am (UTC)'!
continueWith: aRun

	run := aRun! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:23:27 am (UTC)'!
endGuardedRun

	run endGuardedRunOf: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:23:27 am (UTC)'!
startGuardedRun

	run startGuardedRunOf: self! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:23:13 am (UTC)'!
at: aPosition facing: aFacingName

	^self 
		at: aPosition 
		facing: aFacingName 
		sensingWith: CrawlerSonar detectingFirmSandEverywhere! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:23:13 am (UTC)'!
at: aPosition facing: aFacingName sensingWith: aSonar

	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		sensingWith: aSonar! !

!FixedSlideDistanceGenerator methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:23:37 am (UTC)'!
initializeGenerating: aSlideDistance

	slideDistance := aSlideDistance! !

!FixedSlideDistanceGenerator methodsFor: 'generating' stamp: 'HAW 15/Sep/2026, 12:23:37 am (UTC)'!
nextInteger: aMaximumSlideDistance

	^slideDistance! !

!FixedSlideDistanceGenerator class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:23:37 am (UTC)'!
generating: aSlideDistance

	^self new initializeGenerating: aSlideDistance! !

!SurveyCrawlerTest methodsFor: 'tests - commands' stamp: 'HAW 15/Sep/2026, 12:27:29 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - creation' stamp: 'HAW 15/Sep/2026, 12:23:45 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X ]
		raise: Error
		withMessageText: CrawlerFacing invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:24:36 am (UTC)'!
test17aFollowedBy0AdvancesThreeTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:24:36 am (UTC)'!
test18aFollowedBy3AdvancesSixTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a3'.
	
	self assert: (crawler isAt: 1@8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:24:36 am (UTC)'!
test19tFollowedBy0RetreatsThreeTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't0'.
	
	self assert: (crawler isAt: 1@ -1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:24:36 am (UTC)'!
test20hFollowedBy0TurnsClockwiseThreeTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:24:36 am (UTC)'!
test21gFollowedBy0TurnsCounterClockwiseThreeTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:27:29 am (UTC)'!
test22ADigitWithoutACommandToRepeatIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '0' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:27:29 am (UTC)'!
test23ADigitCanNotRepeatAnotherDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@5 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:27:29 am (UTC)'!
test24ADigitCanNotRepeatTheEndOfAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)0' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:27:44 am (UTC)'!
test25CanNotAdvanceOntoABoulder

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@3 -> BoulderGround new }).
	
	self 
		should: [ crawler process: 'a' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround canNotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:27:44 am (UTC)'!
test26CanNotRetreatOntoABoulder

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@1 -> BoulderGround new }).
	
	self 
		should: [ crawler process: 't' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround canNotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:27:44 am (UTC)'!
test27CanNotTurnClockwiseWhenOnABoulder

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@2 -> BoulderGround new }).
	
	self 
		should: [ crawler process: 'h' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround canNotTurnOnBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:27:44 am (UTC)'!
test28CanNotTurnCounterClockwiseWhenOnABoulder

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@2 -> BoulderGround new }).
	
	self 
		should: [ crawler process: 'g' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround canNotTurnOnBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:27:44 am (UTC)'!
test29CommandsProcessedBeforeFindingABoulderAreNotUndone

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@4 -> BoulderGround new }).
	
	self 
		should: [ crawler process: 'aa' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround canNotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 12:25:10 am (UTC)'!
test30AdvancingOntoSiltSlidesTheCrawlerForward

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@3 -> (self siltSliding: 3) }).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 12:25:10 am (UTC)'!
test31RetreatingOntoSiltSlidesTheCrawlerBackward

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@1 -> (self siltSliding: 4) }).
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@ -2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 12:27:59 am (UTC)'!
test32SlidingOnSiltDoesNotExceedTheMaximumSlideDistance

	| crawler reachablePositions |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@3 -> SiltGround slidingRandomly }).
	
	crawler process: 'a'.
	
	reachablePositions := (1 to: SiltGround maximumSlideDistance) 
		collect: [ :aSlideDistance | 1@(2 + aSlideDistance) ].
	self assert: (reachablePositions 
		anySatisfy: [ :aPosition | crawler isAt: aPosition facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 12:25:10 am (UTC)'!
test33TurningOnSiltWorksAsOnFirmSand

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@2 -> (self siltSliding: 3) }).
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:25:23 am (UTC)'!
test34GuardedRunProcessesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aa)'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:27:59 am (UTC)'!
test35GuardedRunUndoesItsMovementsWhenFindingABoulder

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@4 -> BoulderGround new }).
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround canNotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:27:59 am (UTC)'!
test36GuardedRunUndoesItsTurnsWhenFindingABoulder

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 2@2 -> BoulderGround new }).
	
	self 
		should: [ crawler process: '(ha)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround canNotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:27:59 am (UTC)'!
test37GuardedRunUndoesItsMovementsWhenFindingSilt

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@4 -> (self siltSliding: 3) }).
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerGuardedRun canNotMoveOnSiltErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:27:59 am (UTC)'!
test38GuardedRunUndoesItsMovementsWhenFindingAnInvalidCommand

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ax)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:25:35 am (UTC)'!
test39GuardedRunCanNotBeStartedWithinAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerGuardedRun canNotStartGuardedRunWithinGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:28:13 am (UTC)'!
test40GuardedRunMustBeFinished

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerGuardedRun unfinishedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:28:13 am (UTC)'!
test41AGuardedRunCanNotBeFinishedWhenItWasNotStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:25:35 am (UTC)'!
test42SeveralGuardedRunsAreProcessedInOneSequenceOfCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aa)h(aa)'.
	
	self assert: (crawler isAt: 3@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:28:13 am (UTC)'!
test43AFinishedGuardedRunIsNotUndoneByALaterFailure

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(aa)x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:28:13 am (UTC)'!
test44GuardedRunUndoesRepeatedMovements

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@6 -> BoulderGround new }).
	
	self 
		should: [ crawler process: '(a0a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround canNotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:28:13 am (UTC)'!
test45TheCrawlerProcessesCommandsAfterAGuardedRunFailed

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sensingWith: (CrawlerSonar detecting: { 1@4 -> BoulderGround new }).
	self 
		should: [ crawler process: '(aa)' ] 
		raise: Error - MessageNotUnderstood.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 24/Nov/2019, 8:32:07 pm (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 24/Nov/2019, 8:32:38 pm (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 24/Nov/2019, 8:33:00 pm (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 24/Nov/2019, 8:35:37 pm (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 24/Nov/2019, 8:35:52 pm (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 24/Nov/2019, 8:36:09 pm (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 24/Nov/2019, 8:38:17 pm (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 24/Nov/2019, 8:39:01 pm (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - turning' stamp: 'HAW 24/Nov/2019, 8:34:11 pm (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - turning' stamp: 'HAW 24/Nov/2019, 8:34:03 pm (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - turning' stamp: 'HAW 24/Nov/2019, 8:36:32 pm (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests - turning' stamp: 'HAW 24/Nov/2019, 8:37:31 pm (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - turning' stamp: 'HAW 24/Nov/2019, 8:38:40 pm (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - turning' stamp: 'HAW 24/Nov/2019, 8:39:23 pm (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 15/Sep/2026, 12:25:10 am (UTC)'!
siltSliding: aSlideDistance

	^SiltGround slidingWith: (FixedSlideDistanceGenerator generating: aSlideDistance)! !
