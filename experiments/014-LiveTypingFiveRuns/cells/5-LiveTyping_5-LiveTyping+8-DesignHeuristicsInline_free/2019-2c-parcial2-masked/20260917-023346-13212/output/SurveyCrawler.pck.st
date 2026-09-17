'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:39:33 am'!
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

!classDefinition: #NonRepeatableCrawlerCommand category: #SurveyCrawler!
CrawlerCommand subclass: #NonRepeatableCrawlerCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'NonRepeatableCrawlerCommand class' category: #SurveyCrawler!
NonRepeatableCrawlerCommand class
	instanceVariableNames: ''!

!classDefinition: #EndGuardedRunCommand category: #SurveyCrawler!
NonRepeatableCrawlerCommand subclass: #EndGuardedRunCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'EndGuardedRunCommand class' category: #SurveyCrawler!
EndGuardedRunCommand class
	instanceVariableNames: ''!

!classDefinition: #NoCommand category: #SurveyCrawler!
NonRepeatableCrawlerCommand subclass: #NoCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'NoCommand class' category: #SurveyCrawler!
NoCommand class
	instanceVariableNames: ''!

!classDefinition: #RepeatCommand category: #SurveyCrawler!
NonRepeatableCrawlerCommand subclass: #RepeatCommand
	instanceVariableNames: 'repetitions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'RepeatCommand class' category: #SurveyCrawler!
RepeatCommand class
	instanceVariableNames: ''!

!classDefinition: #StartGuardedRunCommand category: #SurveyCrawler!
NonRepeatableCrawlerCommand subclass: #StartGuardedRunCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'StartGuardedRunCommand class' category: #SurveyCrawler!
StartGuardedRunCommand class
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
	instanceVariableNames: 'position facing sonar slideDistanceGenerator currentRun'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: ''!

!classDefinition: #RandomStub category: #'SurveyCrawler-Tests'!
Object subclass: #RandomStub
	instanceVariableNames: 'nextIntegerBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'RandomStub class' category: #'SurveyCrawler-Tests'!
RandomStub class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
repeat: aNumberOfRepetitions on: aCrawler

	self subclassResponsibility! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
for: aCharacter

	^self allSubclasses 
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass from: aCharacter ]
		ifNone: [ self error: SurveyCrawler invalidCommandErrorDescription ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
from: aCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
isFor: aCharacter

	^false! !

!NonRepeatableCrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
repeat: aNumberOfRepetitions on: aCrawler

	self error: SurveyCrawler commandCanNotBeRepeatedErrorDescription! !

!EndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler endGuardedRun! !

!EndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
isFor: aCharacter

	^aCharacter = $)! !

!NoCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand! !

!RepeatCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
initializeTimes: aNumberOfRepetitions

	repetitions := aNumberOfRepetitions! !

!RepeatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aPreviousCommand repeat: repetitions on: aCrawler! !

!RepeatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
isFor: aCharacter

	^aCharacter isDigit! !

!RepeatCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
from: aCharacter

	^self times: aCharacter digitValue + 2! !

!RepeatCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
times: aNumberOfRepetitions

	^self new initializeTimes: aNumberOfRepetitions! !

!StartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler startGuardedRun! !

!StartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
isFor: aCharacter

	^aCharacter = $(! !

!RepeatableCrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!RepeatableCrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self executeOn: aCrawler! !

!RepeatableCrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
repeat: aNumberOfRepetitions on: aCrawler

	aNumberOfRepetitions timesRepeat: [ self executeOn: aCrawler ]! !

!AdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!AdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
isFor: aCharacter

	^aCharacter = $a! !

!RetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!RetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
isFor: aCharacter

	^aCharacter = $t! !

!TurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!TurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
isFor: aCharacter

	^aCharacter = $h! !

!TurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!TurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
isFor: aCharacter

	^aCharacter = $g! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
clockwise

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
counterClockwise

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
advanceDirection

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
retreatDirection

	^self advanceDirection negated! !

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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
advanceDirection

	^0@-1! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
clockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
counterClockwise

	^CrawlerFacingRight new! !

!CrawlerFacingDown class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:17 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
advanceDirection

	^-1@0! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
clockwise

	^CrawlerFacingUp new! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
counterClockwise

	^CrawlerFacingDown new! !

!CrawlerFacingLeft class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:23 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
advanceDirection

	^1@0! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
clockwise

	^CrawlerFacingDown new! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
counterClockwise

	^CrawlerFacingUp new! !

!CrawlerFacingRight class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:01:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
advanceDirection

	^0@1! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
clockwise

	^CrawlerFacingRight new! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
counterClockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingUp class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:11 pm (UTC)'!
facingName

	^#Up! !

!CrawlerMovement methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
applyTo: aCrawler

	self subclassResponsibility! !

!CrawlerMovement methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerClockwiseTurn methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
applyTo: aCrawler

	aCrawler turnFacingClockwise! !

!CrawlerClockwiseTurn methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
undoOn: aCrawler

	aCrawler turnFacingCounterClockwise! !

!CrawlerCounterClockwiseTurn methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
applyTo: aCrawler

	aCrawler turnFacingCounterClockwise! !

!CrawlerCounterClockwiseTurn methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
undoOn: aCrawler

	aCrawler turnFacingClockwise! !

!CrawlerDisplacement methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
initializeBy: aDisplacement

	displacement := aDisplacement! !

!CrawlerDisplacement methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
applyTo: aCrawler

	aCrawler displacePositionBy: displacement! !

!CrawlerDisplacement methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
undoOn: aCrawler

	aCrawler displacePositionBy: displacement negated! !

!CrawlerDisplacement class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
by: aDisplacement

	^self new initializeBy: aDisplacement! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
endGuardedRun

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
startGuardedRun

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
assertCanSlide

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
assertFinished

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
record: aMovement

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
undoMovementsOn: aCrawler

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
initialize

	movements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
endGuardedRun

	^CrawlerUnguardedRun new! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
startGuardedRun

	self error: SurveyCrawler nestedGuardedRunErrorDescription! !

!CrawlerGuardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
assertCanSlide

	self error: SurveyCrawler siltFoundDuringGuardedRunErrorDescription! !

!CrawlerGuardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
assertFinished

	self error: SurveyCrawler unfinishedGuardedRunErrorDescription! !

!CrawlerGuardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
record: aMovement

	movements add: aMovement! !

!CrawlerGuardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
undoMovementsOn: aCrawler

	movements reverseDo: [ :aMovement | aMovement undoOn: aCrawler ]! !

!CrawlerUnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
endGuardedRun

	self error: SurveyCrawler guardedRunNotStartedErrorDescription! !

!CrawlerUnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
startGuardedRun

	^CrawlerGuardedRun new! !

!CrawlerUnguardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
assertCanSlide! !

!CrawlerUnguardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
assertFinished! !

!CrawlerUnguardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
record: aMovement! !

!CrawlerUnguardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
undoMovementsOn: aCrawler! !

!SeabedGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
turn: aCrawler with: aTurn

	self subclassResponsibility! !

!Boulder methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!Boulder methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
turn: aCrawler with: aTurn

	aCrawler signalBoulderFound! !

!FirmSand methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler displaceTowards: aDirection! !

!FirmSand methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
turn: aCrawler with: aTurn

	aCrawler apply: aTurn! !

!Silt methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slideTowards: aDirection! !

!Silt methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
turn: aCrawler with: aTurn

	aCrawler apply: aTurn! !

!SeabedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
initializeDetecting: aGroundsByPosition

	groundsByPosition := aGroundsByPosition! !

!SeabedSonar methodsFor: 'detecting' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSand new ]! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
detecting: aGroundsByPosition

	^self new initializeDetecting: aGroundsByPosition! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:37:28 am (UTC)'!
onFirmSand

	^self detecting: Dictionary new! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
signalBoulderFound

	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar slidingWith: aSlideDistanceGenerator

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slideDistanceGenerator := aSlideDistanceGenerator.
	currentRun := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
turnClockwise

	self turnWith: CrawlerClockwiseTurn new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
turnCounterClockwise

	self turnWith: CrawlerCounterClockwiseTurn new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
turnFacingClockwise

	facing := facing clockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
turnFacingCounterClockwise

	facing := facing counterClockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
turnWith: aTurn

	(sonar groundAt: position) turn: self with: aTurn! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
advance

	self moveTowards: facing advanceDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
displacePositionBy: aDisplacement

	position := position + aDisplacement! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
displaceTowards: aDirection

	self apply: (CrawlerDisplacement by: aDirection)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
retreat

	self moveTowards: facing retreatDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
slideDistance

	^slideDistanceGenerator nextInteger: self class maximumSlideDistance! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
slideTowards: aDirection

	currentRun assertCanSlide.
	self apply: (CrawlerDisplacement by: aDirection * self slideDistance)! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
process: aSequenceOfCommands

	[ self processCommandsIn: aSequenceOfCommands ]
		on: Error
		do: [ :anError | self recoverFrom: anError ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
processCommand: aCharacter after: aPreviousCommand

	| command |
	
	command := CrawlerCommand for: aCharacter.
	command executeOn: self after: aPreviousCommand.
	^command! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
processCommandsIn: aSequenceOfCommands

	aSequenceOfCommands 
		inject: NoCommand new 
		into: [ :aPreviousCommand :aCharacter | self processCommand: aCharacter after: aPreviousCommand ].
	currentRun assertFinished! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
recoverFrom: anError

	currentRun undoMovementsOn: self.
	currentRun := CrawlerUnguardedRun new.
	anError pass! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
endGuardedRun

	currentRun := currentRun endGuardedRun! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
startGuardedRun

	currentRun := currentRun startGuardedRun! !

!SurveyCrawler methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
apply: aMovement

	aMovement applyTo: self.
	currentRun record: aMovement! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:37:26 am (UTC)'!
at: aPosition facing: aFacingName

	^self at: aPosition facing: aFacingName sonar: SeabedSonar onFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self 
		at: aPosition 
		facing: aFacingName 
		sonar: aSonar 
		slidingWith: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar slidingWith: aSlideDistanceGenerator

	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		sonar: aSonar 
		slidingWith: aSlideDistanceGenerator! !

!SurveyCrawler class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
maximumSlideDistance

	^10! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
boulderFoundErrorDescription

	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
commandCanNotBeRepeatedErrorDescription

	^'Only advance, retreat and turn commands can be repeated'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'A guarded run can not be finished without being started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
invalidFacingErrorDescription

	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
nestedGuardedRunErrorDescription

	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription

	^'Silt found during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:37:27 am (UTC)'!
unfinishedGuardedRunErrorDescription

	^'The guarded run was not finished'! !

!RandomStub methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
initializeNextIntegerWith: aBlock

	nextIntegerBlock := aBlock! !

!RandomStub methodsFor: 'random' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
nextInteger: aLimit

	^nextIntegerBlock value: aLimit! !

!RandomStub class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:37:29 am (UTC)'!
nextIntegerWith: aBlock

	^self new initializeNextIntegerWith: aBlock! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:37:39 am (UTC)'!
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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:37:39 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
crawlerFacingUpAt1At2Over: aGround at: aPosition

	^SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (SeabedSonar detecting: (Dictionary with: aPosition -> aGround))! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
crawlerFacingUpAt1At2OverSiltAt: aPosition slidingWith: aSlideDistanceBlock

	^SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (SeabedSonar detecting: (Dictionary with: aPosition -> Silt new))
		slidingWith: (RandomStub nextIntegerWith: aSlideDistanceBlock)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test17DigitAfterAdvanceRepeatsAdvanceTheDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test18DigitAfterRetreatRepeatsRetreatTheDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test19DigitAfterTurnClockwiseRepeatsTurnClockwiseTheDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test20DigitAfterTurnCounterClockwiseRepeatsTurnCounterClockwiseTheDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:39:13 am (UTC)'!
test21NineAfterAdvanceAdvancesTwelveTimesInTotal

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test22DigitWithoutPreviousCommandCanNotBeProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '0' ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler commandCanNotBeRepeatedErrorDescription! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test23DigitAfterDigitCanNotBeProcessedAndCommandsBeforeItRemainProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler commandCanNotBeRepeatedErrorDescription.
			self assert: (crawler isAt: 1@5 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test24DigitAfterGuardedRunStartCanNotBeProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(0' ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler commandCanNotBeRepeatedErrorDescription! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test25DigitAfterGuardedRunEndCanNotBeProcessedAndGuardedRunIsKept

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(a)0' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler commandCanNotBeRepeatedErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test26AdvanceOntoBoulderSignalsErrorAndCrawlerDoesNotMove

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Over: Boulder new at: 1@3.
	
	self 
		should: [ crawler process: 'a' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test27RetreatOntoBoulderSignalsErrorAndCrawlerDoesNotMove

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Over: Boulder new at: 1@1.
	
	self 
		should: [ crawler process: 't' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test28TurnClockwiseOnBoulderSignalsErrorAndCrawlerDoesNotTurn

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Over: Boulder new at: 1@2.
	
	self 
		should: [ crawler process: 'h' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test29TurnCounterClockwiseOnBoulderSignalsErrorAndCrawlerDoesNotTurn

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Over: Boulder new at: 1@2.
	
	self 
		should: [ crawler process: 'g' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test30AdvanceOntoSiltSlidesTheGeneratedDistanceForward

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2OverSiltAt: 1@3 slidingWith: [ :aLimit | 3 ].
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test31RetreatOntoSiltSlidesTheGeneratedDistanceBackwards

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2OverSiltAt: 1@1 slidingWith: [ :aLimit | 2 ].
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@0 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test32SlideOnSiltIsLimitedToTenCells

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2OverSiltAt: 1@3 slidingWith: [ :aLimit | aLimit ].
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test33AdvanceOntoSiltWithRandomSlideEndsBetweenOneAndTenCellsForward

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (SeabedSonar detecting: (Dictionary with: 1@3 -> Silt new)).
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aY | crawler isAt: 1@aY facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test34TurnOnSiltTurnsAsOnFirmSand

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2OverSiltAt: 1@2 slidingWith: [ :aLimit | 3 ].
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test35BoulderOutsideGuardedRunKeepsTheMovementsBeforeIt

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Over: Boulder new at: 1@5.
	
	self 
		should: [ crawler process: 'aaa' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test36GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aa)'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test37BoulderInGuardedRunSignalsErrorAndUndoesItsMovements

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Over: Boulder new at: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test38FailedGuardedRunUndoesTurnsAndDisplacements

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Over: Boulder new at: 3@3.
	
	self 
		should: [ crawler process: '(ahaa)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:08 am (UTC)'!
test39SiltInGuardedRunSignalsErrorAndUndoesItsMovements

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2OverSiltAt: 2@3 slidingWith: [ :aLimit | 3 ].
	
	self 
		should: [ crawler process: '(haga)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler siltFoundDuringGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:01 am (UTC)'!
test40InvalidCommandInGuardedRunSignalsErrorAndUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ahx)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:02 am (UTC)'!
test41NestedGuardedRunSignalsErrorAndUndoesTheOuterGuardedRunMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler nestedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:02 am (UTC)'!
test42UnfinishedGuardedRunSignalsErrorAndUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler unfinishedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:02 am (UTC)'!
test43EndOfGuardedRunWithoutStartSignalsErrorAndKeepsPreviousMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler guardedRunNotStartedErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:02 am (UTC)'!
test44SeveralGuardedRunsWithRepetitionsAreProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:02 am (UTC)'!
test45FailedGuardedRunOnlyUndoesItsOwnMovements

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Over: Boulder new at: 1@6.
	
	self 
		should: [ crawler process: 'a(a)(aa)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:02 am (UTC)'!
test46ErrorAfterGuardedRunEndDoesNotUndoMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)ax' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:02 am (UTC)'!
test47FailedGuardedRunUndoesRepeatedMovements

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2Over: Boulder new at: 1@6.
	
	self 
		should: [ crawler process: '(a3)' ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:02 am (UTC)'!
test48AfterAnUnfinishedGuardedRunANewGuardedRunCanBeStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	self should: [ crawler process: '(a' ] raise: Error - MessageNotUnderstood.
	
	crawler process: '(a)'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:39:02 am (UTC)'!
test49SiltAfterGuardedRunEndSlides

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2OverSiltAt: 1@4 slidingWith: [ :aLimit | 2 ].
	
	crawler process: '(a)a'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !
