'From Cuis7.9 [latest update: #8182] on 14 September 2026 at 9:46:31 pm'!
'Description Seabed survey crawler: processes command sequences with repeated commands, sonar detected grounds (firm sand, silt and boulder) and guarded runs that are undone when they fail.'!
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
	instanceVariableNames: 'appliedCommands'
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

!classDefinition: #CrawlerSonar category: #SurveyCrawler!
Object subclass: #CrawlerSonar
	instanceVariableNames: 'groundByPosition'
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
	instanceVariableNames: 'random'
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


!CrawlerCommand commentStamp: '<historical>' prior: 0!
I am a command a crawler processes. I know how to be applied to a crawler and how many times the command sequence says I have to be applied.!

!CrawlerEndGuardedRunCommand commentStamp: '<historical>' prior: 0!
I make a crawler finish the guarded run it is processing.!

!CrawlerRepeatableCommand commentStamp: '<historical>' prior: 0!
I am a command that can be followed by a digit in the command sequence, which says that I have to be applied that digit plus two more times.!

!CrawlerAdvanceCommand commentStamp: '<historical>' prior: 0!
I make a crawler advance one cell towards where it is facing.!

!CrawlerRetreatCommand commentStamp: '<historical>' prior: 0!
I make a crawler retreat one cell from where it is facing.!

!CrawlerTurnClockwiseCommand commentStamp: '<historical>' prior: 0!
I make a crawler turn clockwise.!

!CrawlerTurnCounterClockwiseCommand commentStamp: '<historical>' prior: 0!
I make a crawler turn counter clockwise.!

!CrawlerStartGuardedRunCommand commentStamp: '<historical>' prior: 0!
I make a crawler start a guarded run.!

!CrawlerFacing commentStamp: '<historical>' prior: 0!
I am the direction a crawler faces. I know the displacement it does when it advances and which facing it gets when it turns.!

!CrawlerFacingDown commentStamp: '<historical>' prior: 0!
I am the facing of a crawler that advances downwards.!

!CrawlerFacingLeft commentStamp: '<historical>' prior: 0!
I am the facing of a crawler that advances to the left.!

!CrawlerFacingRight commentStamp: '<historical>' prior: 0!
I am the facing of a crawler that advances to the right.!

!CrawlerFacingUp commentStamp: '<historical>' prior: 0!
I am the facing of a crawler that advances upwards.!

!CrawlerRun commentStamp: '<historical>' prior: 0!
I am the way a crawler is processing its commands. I decide whether the commands applied can be undone and whether the crawler is allowed to move over silt.!

!CrawlerGuardedRun commentStamp: '<historical>' prior: 0!
I am the run of a crawler between an open parenthesis and a close parenthesis. I remember every command I apply so the crawler can go back to where the guarded run started when one of them fails. I do not let the crawler move over silt because sliding is unpredictable.!

!CrawlerUnguardedRun commentStamp: '<historical>' prior: 0!
I am the run of a crawler that is not being guarded. The commands I apply can not be undone and the crawler slides when it moves over silt.!

!CrawlerSonar commentStamp: '<historical>' prior: 0!
I am the sonar of a crawler. I know the ground of the seabed positions that were surveyed, answering firm sand for any other position.!

!SeabedGround commentStamp: '<historical>' prior: 0!
I am the ground of a seabed position. I decide how a crawler moves towards me and whether it can turn over me.!

!BoulderGround commentStamp: '<historical>' prior: 0!
I am a boulder, the ground a crawler can neither move to nor turn over.!

!FirmSandGround commentStamp: '<historical>' prior: 0!
I am firm sand, the ground where a crawler moves and turns as expected.!

!SiltGround commentStamp: '<historical>' prior: 0!
I am silt, the ground where a crawler slides an unexpected number of cells, never further than my maximum sliding distance. I do not affect turning.!

!SurveyCrawler commentStamp: '<historical>' prior: 0!
I am a seabed survey crawler. I know the position I am at, the direction I am facing, the sonar I use to know the ground I will end up on before moving or turning, and the run I am processing commands in. I process sequences of commands where each of a, t, h and g can be followed by a digit to be repeated, and where the commands written between parentheses are a guarded run: when one of them fails I undo the movements I made since the guarded run started.!

!FixedRandom commentStamp: '<historical>' prior: 0!
I answer always the same number, so tests can exercise the sliding of a crawler over silt.!

!SurveyCrawlerTest commentStamp: '<historical>' prior: 0!
I test a seabed survey crawler processing commands over the grounds its sonar detects.!

!CrawlerCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:40:48 am (UTC)'!
applyTo: aCrawler

	self subclassResponsibility ! !

!CrawlerCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:40:48 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility ! !

!CrawlerCommand methodsFor: 'repetitions' stamp: 'HAW 15/Sep/2026, 12:40:48 am (UTC)'!
timesToBeAppliedIn: aCommandStream

	^1! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:40:48 am (UTC)'!
for: aCharacter

	^self allSubclasses 
		detect: [ :aCommandClass | aCommandClass canHandle: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass new ]
		ifNone: [ self signalInvalidCommand ]! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:40:48 am (UTC)'!
canHandle: aCharacter

	^false! !

!CrawlerCommand class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:40:49 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!CrawlerCommand class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:40:49 am (UTC)'!
signalInvalidCommand

	self error: self invalidCommandErrorDescription! !

!CrawlerEndGuardedRunCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
applyTo: aCrawler

	aCrawler endGuardedRun! !

!CrawlerEndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
canHandle: aCharacter

	^aCharacter = $)! !

!CrawlerRepeatableCommand methodsFor: 'repetitions' stamp: 'HAW 15/Sep/2026, 12:40:49 am (UTC)'!
isRepeatedIn: aCommandStream

	^aCommandStream atEnd not and: [ aCommandStream peek isDigit ]! !

!CrawlerRepeatableCommand methodsFor: 'repetitions' stamp: 'HAW 15/Sep/2026, 12:40:49 am (UTC)'!
numberOfRepetitionsIn: aCommandStream

	^(self isRepeatedIn: aCommandStream)
		ifTrue: [ aCommandStream next digitValue + self class minimumNumberOfRepetitions ]
		ifFalse: [ 0 ]! !

!CrawlerRepeatableCommand methodsFor: 'repetitions' stamp: 'HAW 15/Sep/2026, 12:40:49 am (UTC)'!
timesToBeAppliedIn: aCommandStream

	^1 + (self numberOfRepetitionsIn: aCommandStream)! !

!CrawlerRepeatableCommand class methodsFor: 'repetitions' stamp: 'HAW 15/Sep/2026, 12:40:49 am (UTC)'!
minimumNumberOfRepetitions

	^2! !

!CrawlerAdvanceCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
applyTo: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
undoOn: aCrawler

	aCrawler moveBackwards! !

!CrawlerAdvanceCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
canHandle: aCharacter

	^aCharacter = $a! !

!CrawlerRetreatCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
applyTo: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
undoOn: aCrawler

	aCrawler moveForwards! !

!CrawlerRetreatCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
canHandle: aCharacter

	^aCharacter = $t! !

!CrawlerTurnClockwiseCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
applyTo: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateCounterClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
canHandle: aCharacter

	^aCharacter = $h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
applyTo: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
canHandle: aCharacter

	^aCharacter = $g! !

!CrawlerStartGuardedRunCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
applyTo: aCrawler

	aCrawler startGuardedRun! !

!CrawlerStartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:40:58 am (UTC)'!
canHandle: aCharacter

	^aCharacter = $(! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
turnedClockwise

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
turnedCounterClockwise

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
advanceDirection

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
retreatDirection

	^self advanceDirection negated! !

!CrawlerFacing class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 10:07:01 pm (UTC)'!
facingName

	self subclassResponsibility ! !

!CrawlerFacing class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
facing: aFacingName

	^self subclasses 
		detect: [ :aCrawlerFacingClass | aCrawlerFacingClass isFor: aFacingName ]
		ifFound: [ :aCrawlerFacingClass | aCrawlerFacingClass new ]
		ifNone: [ self error: self invalidFacingErrorDescription ]! !

!CrawlerFacing class methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 8:01:33 pm (UTC)'!
isFor: aFacingName

	^self facingName = aFacingName ! !

!CrawlerFacing class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
advanceDirection
	
	^0@-1! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
turnedClockwise
	
	^CrawlerFacingLeft new! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
turnedCounterClockwise
	
	^CrawlerFacingRight new! !

!CrawlerFacingDown class methodsFor: 'facing name' stamp: 'HAW 15/Sep/2026, 12:39:35 am (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
advanceDirection
	
	^-1@0! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
turnedClockwise
	
	^CrawlerFacingUp new! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
turnedCounterClockwise
	
	^CrawlerFacingDown new! !

!CrawlerFacingLeft class methodsFor: 'facing name' stamp: 'HAW 15/Sep/2026, 12:39:35 am (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:39:35 am (UTC)'!
advanceDirection
	
	^1@0! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:39:35 am (UTC)'!
turnedClockwise
	
	^CrawlerFacingDown new! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:39:35 am (UTC)'!
turnedCounterClockwise
	
	^CrawlerFacingUp new! !

!CrawlerFacingRight class methodsFor: 'facing name' stamp: 'HAW 15/Sep/2026, 12:39:35 am (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
advanceDirection
	
	^0@1! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
turnedClockwise
	
	^CrawlerFacingRight new! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:39:34 am (UTC)'!
turnedCounterClockwise
	
	^CrawlerFacingLeft new! !

!CrawlerFacingUp class methodsFor: 'facing name' stamp: 'HAW 15/Sep/2026, 12:39:35 am (UTC)'!
facingName

	^#Up! !

!CrawlerRun methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:40:22 am (UTC)'!
apply: aCommand to: aCrawler

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:40:22 am (UTC)'!
remember: aCommand

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:40:22 am (UTC)'!
slide: aCrawler by: aSlide

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 15/Sep/2026, 12:40:22 am (UTC)'!
assertHasFinished

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 15/Sep/2026, 12:40:22 am (UTC)'!
endGuardedRunOn: aCrawler

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 15/Sep/2026, 12:40:22 am (UTC)'!
startGuardedRunOn: aCrawler

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 15/Sep/2026, 12:40:22 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility ! !

!CrawlerGuardedRun methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
apply: aCommand to: aCrawler

	aCommand applyTo: aCrawler.
	aCrawler remember: aCommand! !

!CrawlerGuardedRun methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
remember: aCommand

	appliedCommands add: aCommand! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
slide: aCrawler by: aSlide

	self class signalCanNotMoveOverSilt! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
assertHasFinished

	self class signalGuardedRunNotFinished! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler runUnguarded! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
startGuardedRunOn: aCrawler

	self class signalGuardedRunAlreadyStarted! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
undoOn: aCrawler

	appliedCommands reverseDo: [ :aCommand | aCommand undoOn: aCrawler ].
	aCrawler runUnguarded! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
initialize

	appliedCommands := OrderedCollection new! !

!CrawlerGuardedRun class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
starting

	^self new initialize! !

!CrawlerGuardedRun class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
canNotMoveOverSiltErrorDescription

	^'Can not move over silt during a guarded run'! !

!CrawlerGuardedRun class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
guardedRunAlreadyStartedErrorDescription

	^'Can not start a guarded run inside another guarded run'! !

!CrawlerGuardedRun class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
guardedRunNotFinishedErrorDescription

	^'Guarded run was not finished'! !

!CrawlerGuardedRun class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
signalCanNotMoveOverSilt

	self error: self canNotMoveOverSiltErrorDescription! !

!CrawlerGuardedRun class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
signalGuardedRunAlreadyStarted

	self error: self guardedRunAlreadyStartedErrorDescription! !

!CrawlerGuardedRun class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:40:39 am (UTC)'!
signalGuardedRunNotFinished

	self error: self guardedRunNotFinishedErrorDescription! !

!CrawlerUnguardedRun methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:40:28 am (UTC)'!
apply: aCommand to: aCrawler

	aCommand applyTo: aCrawler! !

!CrawlerUnguardedRun methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:40:28 am (UTC)'!
remember: aCommand
! !

!CrawlerUnguardedRun methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:40:28 am (UTC)'!
slide: aCrawler by: aSlide

	aCrawler moveBy: aSlide! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 15/Sep/2026, 12:40:28 am (UTC)'!
assertHasFinished
! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 15/Sep/2026, 12:40:28 am (UTC)'!
endGuardedRunOn: aCrawler

	self class signalGuardedRunNotStarted! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 15/Sep/2026, 12:40:28 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler runGuarded! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 15/Sep/2026, 12:40:28 am (UTC)'!
undoOn: aCrawler
! !

!CrawlerUnguardedRun class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:40:28 am (UTC)'!
starting

	^self new! !

!CrawlerUnguardedRun class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:40:28 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'Can not finish a guarded run that has not started'! !

!CrawlerUnguardedRun class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:40:28 am (UTC)'!
signalGuardedRunNotStarted

	self error: self guardedRunNotStartedErrorDescription! !

!CrawlerSonar methodsFor: 'detecting' stamp: 'HAW 15/Sep/2026, 12:39:49 am (UTC)'!
groundAt: aPosition

	^groundByPosition at: aPosition ifAbsent: [ FirmSandGround new ]! !

!CrawlerSonar methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:39:49 am (UTC)'!
initializeDetecting: aGroundByPosition

	groundByPosition := aGroundByPosition! !

!CrawlerSonar class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:39:49 am (UTC)'!
detecting: aGroundByPosition

	^self new initializeDetecting: aGroundByPosition copy! !

!CrawlerSonar class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:39:49 am (UTC)'!
detectingFirmSandEverywhere

	^self detecting: Dictionary new! !

!SeabedGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	self subclassResponsibility ! !

!SeabedGround methodsFor: 'crawler turning' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
turnCrawler: aCrawler to: aFacing

	aCrawler faceTo: aFacing! !

!BoulderGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	self class signalBoulderFound! !

!BoulderGround methodsFor: 'crawler turning' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
turnCrawler: aCrawler to: aFacing

	self class signalBoulderFound! !

!BoulderGround class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
boulderFoundErrorDescription
	
	^'Can not move nor turn over a boulder'! !

!BoulderGround class methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
signalBoulderFound
	
	self error: self boulderFoundErrorDescription! !

!FirmSandGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	aCrawler moveBy: aDirection! !

!SiltGround methodsFor: 'crawler moving' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	aCrawler slideBy: aDirection * self slidingDistance! !

!SiltGround methodsFor: 'sliding' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
slidingDistance

	^random nextInteger: self class maximumSlidingDistance! !

!SiltGround methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
initializeSlidingWith: aRandom

	random := aRandom! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
slidingRandomly

	^self slidingWith: Random new! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
slidingWith: aRandom

	^self new initializeSlidingWith: aRandom! !

!SiltGround class methodsFor: 'sliding' stamp: 'HAW 15/Sep/2026, 12:39:44 am (UTC)'!
maximumSlidingDistance

	^10! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:41:20 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	run := CrawlerUnguardedRun starting! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
faceTo: aFacing

	facing := aFacing! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
rotateClockwise

	self faceTo: facing turnedClockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
rotateCounterClockwise

	self faceTo: facing turnedCounterClockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
turnClockwise
	
	self turnTo: facing turnedClockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
turnCounterClockwise
	
	self turnTo: facing turnedCounterClockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
turnTo: aFacing

	(sonar groundAt: position) turnCrawler: self to: aFacing! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
advance
	
	self moveTowards: facing advanceDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
moveBackwards

	self moveBy: facing retreatDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
moveBy: aDisplacement

	position := position + aDisplacement! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
moveForwards

	self moveBy: facing advanceDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) moveCrawler: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
retreat
	
	self moveTowards: facing retreatDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
slideBy: aSlide

	run slide: self by: aSlide! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:41:20 am (UTC)'!
apply: aCommand

	run apply: aCommand to: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:41:20 am (UTC)'!
applyAllCommandsOf: aSequenceOfCommands

	| commands |
	
	commands := ReadStream on: aSequenceOfCommands.
	[ commands atEnd ] whileFalse: [ self applyNextCommandFrom: commands ].
	run assertHasFinished! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:41:20 am (UTC)'!
applyNextCommandFrom: aCommandStream

	| command |
	
	command := CrawlerCommand for: aCommandStream next.
	(command timesToBeAppliedIn: aCommandStream) timesRepeat: [ self apply: command ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:41:20 am (UTC)'!
process: aSequenceOfCommands

	[ self applyAllCommandsOf: aSequenceOfCommands ]
		on: Error
		do: [ :anError | 
			self undoGuardedRun.
			anError pass ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:41:20 am (UTC)'!
remember: aCommand

	run remember: aCommand! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
endGuardedRun

	run endGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
runGuarded

	run := CrawlerGuardedRun starting! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
runUnguarded

	run := CrawlerUnguardedRun starting! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
startGuardedRun

	run startGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:41:31 am (UTC)'!
undoGuardedRun

	run undoOn: self! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:41:20 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar
	
	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		sonar: aSonar! !

!FixedRandom methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:42:43 am (UTC)'!
initializeAnswering: aNumber

	number := aNumber! !

!FixedRandom methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 12:42:43 am (UTC)'!
nextInteger: aLimit

	^number! !

!FixedRandom class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:42:43 am (UTC)'!
answering: aNumber

	^self new initializeAnswering: aNumber! !

!SurveyCrawlerTest methodsFor: 'crawler creation' stamp: 'HAW 15/Sep/2026, 12:42:43 am (UTC)'!
crawlerAt: aPosition facing: aFacingName detecting: aGroundByPosition

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: (CrawlerSonar detecting: aGroundByPosition)! !

!SurveyCrawlerTest methodsFor: 'crawler creation' stamp: 'HAW 15/Sep/2026, 12:42:43 am (UTC)'!
crawlerAt: aPosition facing: aFacingName withBoulderAt: aBoulderPosition

	^self 
		crawlerAt: aPosition 
		facing: aFacingName 
		detecting: (Dictionary newFrom: { aBoulderPosition -> BoulderGround new })! !

!SurveyCrawlerTest methodsFor: 'crawler creation' stamp: 'HAW 15/Sep/2026, 12:42:43 am (UTC)'!
crawlerAt: aPosition facing: aFacingName withSiltAt: aSiltPosition sliding: aNumberOfCells

	^self 
		crawlerAt: aPosition 
		facing: aFacingName 
		detecting: (Dictionary newFrom: { aSiltPosition -> (SiltGround slidingWith: (FixedRandom answering: aNumberOfCells)) })! !

!SurveyCrawlerTest methodsFor: 'crawler creation' stamp: 'HAW 15/Sep/2026, 12:42:43 am (UTC)'!
crawlerOnFirmSandAt: aPosition facing: aFacingName

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: CrawlerSonar detectingFirmSandEverywhere! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 15/Sep/2026, 12:43:05 am (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 15/Sep/2026, 12:43:05 am (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 15/Sep/2026, 12:43:05 am (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - moving' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - turning' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - turning' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - turning' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests - turning' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - turning' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - turning' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests - commands' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - commands' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - commands' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - commands' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - creation' stamp: 'HAW 15/Sep/2026, 12:43:06 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X sonar: CrawlerSonar detectingFirmSandEverywhere ]
		raise: Error
		withMessageText: CrawlerFacing invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'tests - repetitions' stamp: 'HAW 15/Sep/2026, 12:43:25 am (UTC)'!
test17aFollowedByZeroAdvancesThreeTimes

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetitions' stamp: 'HAW 15/Sep/2026, 12:43:26 am (UTC)'!
test18aFollowedByNineAdvancesTwelveTimes

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetitions' stamp: 'HAW 15/Sep/2026, 12:43:26 am (UTC)'!
test19tFollowedByZeroRetreatsThreeTimes

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 't0'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetitions' stamp: 'HAW 15/Sep/2026, 12:43:26 am (UTC)'!
test20hFollowedByZeroTurnsClockwiseThreeTimes

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetitions' stamp: 'HAW 15/Sep/2026, 12:43:26 am (UTC)'!
test21gFollowedByZeroTurnsCounterClockwiseThreeTimes

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetitions' stamp: 'HAW 15/Sep/2026, 12:43:26 am (UTC)'!
test22ADigitCanNotStartACommandSequence

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '0' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetitions' stamp: 'HAW 15/Sep/2026, 12:43:26 am (UTC)'!
test23ACommandCanNotBeFollowedByMoreThanOneDigit

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@5 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetitions' stamp: 'HAW 15/Sep/2026, 12:43:26 am (UTC)'!
test24ADigitRepeatsOnlyTheCommandBeforeIt

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'ah0'.
	
	self assert: (crawler isAt: 1@3 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:43:44 am (UTC)'!
test25CanNotAdvanceOverABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@3.
	
	self 
		should: [ crawler process: 'a' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:43:44 am (UTC)'!
test26CanNotRetreatOverABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@1.
	
	self 
		should: [ crawler process: 't' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:43:44 am (UTC)'!
test27CanNotTurnClockwiseWhenStandingOverABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@2.
	
	self 
		should: [ crawler process: 'h' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:43:44 am (UTC)'!
test28CanNotTurnCounterClockwiseWhenStandingOverABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@2.
	
	self 
		should: [ crawler process: 'g' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:43:44 am (UTC)'!
test29CommandsAfterFindingABoulderAreNotProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@4.
	
	self 
		should: [ crawler process: 'aah' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:44:38 am (UTC)'!
test47CanMoveAwayFromABoulderItIsStandingOver

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@2.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 12:43:44 am (UTC)'!
test30AdvancingOverSiltSlidesTheCrawlerForward

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@3 sliding: 4.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 12:43:44 am (UTC)'!
test31RetreatingOverSiltSlidesTheCrawlerBackwards

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@1 sliding: 3.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 12:43:44 am (UTC)'!
test32SlidingOverSiltNeverGoesFurtherThanTenCells

	| crawler |
	
	100 timesRepeat: [
		crawler := self 
			crawlerAt: 1@2 
			facing: #Up 
			detecting: (Dictionary newFrom: { (1@3) -> SiltGround slidingRandomly }).
		crawler process: 'a'.
		self assert: ((3 to: 12) anySatisfy: [ :aHeight | crawler isAt: 1@aHeight facing: #Up ]) ]! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 12:43:44 am (UTC)'!
test33TurningOverSiltIsNotAffectedBySliding

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@2 sliding: 4.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:11 am (UTC)'!
test34GuardedRunProcessesItsCommands

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: '(aa)'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:11 am (UTC)'!
test35GuardedRunUndoesItsMovementsWhenFindingABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:11 am (UTC)'!
test36GuardedRunUndoesItsTurnsWhenFindingABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 2@2.
	
	self 
		should: [ crawler process: '(ha)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:11 am (UTC)'!
test37CanNotMoveOverSiltDuringAGuardedRun

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@3 sliding: 4.
	
	self 
		should: [ crawler process: '(a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerGuardedRun canNotMoveOverSiltErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:11 am (UTC)'!
test38GuardedRunUndoesItsMovementsWhenFindingAnInvalidCommand

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ax)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:11 am (UTC)'!
test39CanNotStartAGuardedRunInsideAGuardedRun

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerGuardedRun guardedRunAlreadyStartedErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:11 am (UTC)'!
test40GuardedRunMustBeFinishedBeforeTheCommandSequenceEnds

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerGuardedRun guardedRunNotFinishedErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:11 am (UTC)'!
test41CanNotFinishAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: CrawlerUnguardedRun guardedRunNotStartedErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:11 am (UTC)'!
test42SeveralGuardedRunsCanBeProcessedInACommandSequence

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: '(a)h(a)'.
	
	self assert: (crawler isAt: 2@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:12 am (UTC)'!
test43GuardedRunUndoesEachRepetitionOfARepeatedCommand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@5.
	
	self 
		should: [ crawler process: '(a0)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:12 am (UTC)'!
test44MovementsMadeOutsideAGuardedRunAreNotUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@5.
	
	self 
		should: [ crawler process: 'aa(a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BoulderGround boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:12 am (UTC)'!
test45EmptyGuardedRunDoesNothing

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: '()'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:12 am (UTC)'!
test46CommandsCanBeProcessedAfterAGuardedRunFailed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@4.
	
	[ crawler process: '(aa)' ] on: Error do: [ :anError | anError return ].
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:44:38 am (UTC)'!
test48CanTurnOverSiltDuringAGuardedRun

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@2 sliding: 4.
	
	crawler process: '(h)'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !
