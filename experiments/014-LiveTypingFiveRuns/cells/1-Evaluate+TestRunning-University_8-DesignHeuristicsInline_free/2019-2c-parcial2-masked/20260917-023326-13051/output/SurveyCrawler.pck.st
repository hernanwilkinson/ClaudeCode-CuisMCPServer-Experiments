'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:37:26 am'!
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
	instanceVariableNames: 'groundsByPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedSonar class' category: #SurveyCrawler!
SeabedSonar class
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

!classDefinition: #HighestRandomStub category: #'SurveyCrawler-Tests'!
Object subclass: #HighestRandomStub
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'HighestRandomStub class' category: #'SurveyCrawler-Tests'!
HighestRandomStub class
	instanceVariableNames: ''!

!classDefinition: #LowestRandomStub category: #'SurveyCrawler-Tests'!
Object subclass: #LowestRandomStub
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'LowestRandomStub class' category: #'SurveyCrawler-Tests'!
LowestRandomStub class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
executeOn: aCrawler readingFrom: aCommandsStream

	self executeOn: aCrawler! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
concreteCommandClasses

	^self allSubclasses reject: [ :aCommandClass | aCommandClass hasSubclasses ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
for: aCharacter

	^self concreteCommandClasses 
		detect: [ :aCommandClass | aCommandClass character = aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass new ]
		ifNone: [ self error: SurveyCrawler invalidCommandErrorDescription ]! !

!CrawlerCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
character

	self subclassResponsibility! !

!EndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
executeOn: aCrawler

	aCrawler endGuardedRun! !

!EndGuardedRunCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
character

	^$)! !

!RepeatableCrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
executeOn: aCrawler readingFrom: aCommandsStream

	(self repetitionsReadingFrom: aCommandsStream) timesRepeat: [ self executeOn: aCrawler ]! !

!RepeatableCrawlerCommand methodsFor: 'repetitions' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
isRepetitionNextIn: aCommandsStream

	^aCommandsStream atEnd not and: [ aCommandsStream peek isDigit ]! !

!RepeatableCrawlerCommand methodsFor: 'repetitions' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
repetitionsReadingFrom: aCommandsStream

	^(self isRepetitionNextIn: aCommandsStream)
		ifTrue: [ aCommandsStream next digitValue + self class repetitionsOffset ]
		ifFalse: [ 1 ]! !

!RepeatableCrawlerCommand class methodsFor: 'repetitions' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
repetitionsOffset

	^3! !

!AdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!AdvanceCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
character

	^$a! !

!RetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!RetreatCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
character

	^$t! !

!TurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!TurnClockwiseCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
character

	^$h! !

!TurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!TurnCounterClockwiseCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
character

	^$g! !

!StartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
executeOn: aCrawler

	aCrawler startGuardedRun! !

!StartGuardedRunCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 5:35:56 am (UTC)'!
character

	^$(! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:08:23 pm (UTC)'!
turnClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:06:17 pm (UTC)'!
turnCounterClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:35 am (UTC)'!
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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:35 am (UTC)'!
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

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:35 am (UTC)'!
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

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:35 am (UTC)'!
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

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:35 am (UTC)'!
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

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
assertIsFinished

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
endGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
startGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
assertCanSlide

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
recordUndo: anUndoAction

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
undo

	self subclassResponsibility! !

!GuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
initialize

	undoActions := OrderedCollection new! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
assertIsFinished

	self error: SurveyCrawler unfinishedGuardedRunErrorDescription! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler beUnguarded! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
startGuardedRunOn: aCrawler

	self error: SurveyCrawler nestedGuardedRunErrorDescription! !

!GuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
assertCanSlide

	self error: SurveyCrawler siltFoundDuringGuardedRunErrorDescription! !

!GuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
recordUndo: anUndoAction

	undoActions add: anUndoAction! !

!GuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
undo

	undoActions reverseDo: [ :anUndoAction | anUndoAction value ]! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
assertIsFinished

	! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
endGuardedRunOn: aCrawler

	self error: SurveyCrawler guardedRunNotStartedErrorDescription! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler beGuarded! !

!UnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
assertCanSlide

	! !

!UnguardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
recordUndo: anUndoAction

	! !

!UnguardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
undo

	! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
assertCanTurn

	! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	self signalBoulderFound! !

!Boulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
assertCanTurn

	self signalBoulderFound! !

!Boulder methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
signalBoulderFound

	self error: SurveyCrawler boulderFoundErrorDescription! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler displace: aDirection! !

!Silt methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
initializeSlidingWith: aRandom

	random := aRandom! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler slide: aDirection * (random nextInteger: self class slideLimit)! !

!Silt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
slidingWith: aRandom

	^self new initializeSlidingWith: aRandom! !

!Silt class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
slideLimit

	^10! !

!SeabedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
initializeDetecting: aGroundsByPosition

	groundsByPosition := aGroundsByPosition copy! !

!SeabedSonar methodsFor: 'detecting' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSand new ]! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
detecting: aGroundsByPosition

	^self new initializeDetecting: aGroundsByPosition! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:35:36 am (UTC)'!
overFirmSand

	^self detecting: Dictionary new! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
turnClockwise

	(sonar groundAt: position) assertCanTurn.
	facing turnClockwise: self.
	runMode recordUndo: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
turnCounterClockwise

	(sonar groundAt: position) assertCanTurn.
	facing turnCounterClockwise: self.
	runMode recordUndo: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
advance

	self move: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
displace: aDisplacement

	position := position + aDisplacement.
	runMode recordUndo: [ position := position - aDisplacement ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
move: aDirection

	(sonar groundAt: position + aDirection) receive: self movingTowards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
retreat

	self move: facing direction negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
slide: aDisplacement

	self displace: aDisplacement.
	runMode assertCanSlide! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
executeAll: aSequenceOfCommands

	| commandsStream |
	
	commandsStream := ReadStream on: aSequenceOfCommands.
	[ commandsStream atEnd ] whileFalse: [ 
		(CrawlerCommand for: commandsStream next) executeOn: self readingFrom: commandsStream ].
	runMode assertIsFinished! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
process: aSequenceOfCommands

	[ self executeAll: aSequenceOfCommands ]
		on: Error
		do: [ :anError | self undoGuardedRunBecause: anError ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
beGuarded

	runMode := GuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
beUnguarded

	runMode := UnguardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
endGuardedRun

	runMode endGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
startGuardedRun

	runMode startGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
undoGuardedRunBecause: anError

	runMode undo.
	self beUnguarded.
	anError pass! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
at: aPosition facing: aFacingName

	^self at: aPosition facing: aFacingName sonar: SeabedSonar overFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
boulderFoundErrorDescription

	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'Guarded run was not started'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
nestedGuardedRunErrorDescription

	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription

	^'Silt found during guarded run'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
unfinishedGuardedRunErrorDescription

	^'Guarded run was not finished'! !

!HighestRandomStub methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
nextInteger: aLimit

	^aLimit! !

!LowestRandomStub methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:35:57 am (UTC)'!
nextInteger: aLimit

	^1! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:21 am (UTC)'!
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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:21 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:38 am (UTC)'!
test17DigitZeroAfterAdvanceAdvancesThreeTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:37:01 am (UTC)'!
test18DigitNineAfterAdvanceAdvancesTwelveTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:38 am (UTC)'!
test19DigitOneAfterRetreatRetreatsFourTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:38 am (UTC)'!
test20DigitTwoAfterTurnClockwiseTurnsFiveTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h2'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:38 am (UTC)'!
test21DigitZeroAfterTurnCounterClockwiseTurnsThreeTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:38 am (UTC)'!
test22DigitWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '3' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:38 am (UTC)'!
test23SecondConsecutiveDigitIsInvalidAndPreviousRepetitionIsKept

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@5
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:38 am (UTC)'!
test24AdvanceTowardsBoulderFailsAndCrawlerDoesNotMove

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithBoulderAt: 1@3.
	
	self 
		should: [ crawler process: 'a' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:38 am (UTC)'!
test25RetreatTowardsBoulderFailsAndCrawlerDoesNotMove

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithBoulderAt: 1@1.
	
	self 
		should: [ crawler process: 't' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:38 am (UTC)'!
test26TurnCounterClockwiseOnBoulderFailsAndCrawlerDoesNotTurn

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithBoulderAt: 1@2.
	
	self 
		should: [ crawler process: 'g' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:38 am (UTC)'!
test27TurnClockwiseOnBoulderFailsAndCrawlerDoesNotTurn

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithBoulderAt: 1@2.
	
	self 
		should: [ crawler process: 'h' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:39 am (UTC)'!
test28RepeatedAdvanceStopsBeforeBoulder

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithBoulderAt: 1@4.
	
	self 
		should: [ crawler process: 'a0' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:39 am (UTC)'!
test29AdvanceOntoSiltWithShortestSlideMovesOneCell

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithSiltAt: 1@3 slidingWith: LowestRandomStub new.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:39 am (UTC)'!
test30AdvanceOntoSiltWithLongestSlideMovesTenCells

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithSiltAt: 1@3 slidingWith: HighestRandomStub new.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:39 am (UTC)'!
test31RetreatOntoSiltSlidesBackwards

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithSiltAt: 1@1 slidingWith: HighestRandomStub new.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:39 am (UTC)'!
test32AdvanceOntoSiltWithRandomSlideEndsWithinSlideLimit

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithSiltAt: 1@3 slidingWith: Random new.
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aY | crawler isAt: 1@aY facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:39 am (UTC)'!
test33TurningOnSiltIsNotAffected

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithSiltAt: 1@2 slidingWith: HighestRandomStub new.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:54 am (UTC)'!
test34GuardedRunWithoutProblemsMovesTheCrawler

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aa)'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:54 am (UTC)'!
test35BoulderInGuardedRunReturnsCrawlerToGuardedRunStart

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithBoulderAt: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:54 am (UTC)'!
test36FailedGuardedRunUndoesTurns

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithBoulderAt: 2@3.
	
	self 
		should: [ crawler process: '(aha)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:54 am (UTC)'!
test37FailedGuardedRunUndoesRepeatedCommands

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithBoulderAt: 1@6.
	
	self 
		should: [ crawler process: '(a2)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:54 am (UTC)'!
test38SiltInGuardedRunFailsAndReturnsCrawlerToGuardedRunStart

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpWithSiltAt: 1@3 slidingWith: HighestRandomStub new.
	
	self 
		should: [ crawler process: '(a)' ]
		failWith: SurveyCrawler siltFoundDuringGuardedRunErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:54 am (UTC)'!
test39InvalidCommandInGuardedRunReturnsCrawlerToGuardedRunStart

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ahx)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:54 am (UTC)'!
test40NestedGuardedRunFailsAndReturnsCrawlerToOuterGuardedRunStart

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		failWith: SurveyCrawler nestedGuardedRunErrorDescription
		leaving: crawler
		at: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:55 am (UTC)'!
test41UnfinishedGuardedRunFailsAndReturnsCrawlerToGuardedRunStart

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		failWith: SurveyCrawler unfinishedGuardedRunErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:37:01 am (UTC)'!
test42SeveralGuardedRunsInOneSequenceAreProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:55 am (UTC)'!
test43EndingAGuardedRunThatWasNotStartedFails

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		failWith: SurveyCrawler guardedRunNotStartedErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:55 am (UTC)'!
test44FailedGuardedRunOnlyUndoesItsOwnCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)h(ax)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:55 am (UTC)'!
test45FailureOutsideGuardedRunIsNotUndone

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'ahx' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:55 am (UTC)'!
test46AfterFailedGuardedRunANewGuardedRunCanBeProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	[ crawler process: '(ax' ] on: Error do: [ :anError | anError return ].
	
	crawler process: '(a)'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:36:55 am (UTC)'!
test47DigitAfterGuardedRunStartIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(0' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'crawlers' stamp: 'HAW 17/Sep/2026, 5:36:21 am (UTC)'!
crawlerAt1At2FacingUpOver: aGroundsByPosition

	^SurveyCrawler at: 1@2 facing: #Up sonar: (SeabedSonar detecting: aGroundsByPosition)! !

!SurveyCrawlerTest methodsFor: 'crawlers' stamp: 'HAW 17/Sep/2026, 5:36:21 am (UTC)'!
crawlerAt1At2FacingUpWithBoulderAt: aBoulderPosition

	^self crawlerAt1At2FacingUpOver: (Dictionary with: aBoulderPosition -> Boulder new)! !

!SurveyCrawlerTest methodsFor: 'crawlers' stamp: 'HAW 17/Sep/2026, 5:36:21 am (UTC)'!
crawlerAt1At2FacingUpWithSiltAt: aSiltPosition slidingWith: aRandom

	^self crawlerAt1At2FacingUpOver: (Dictionary with: aSiltPosition -> (Silt slidingWith: aRandom))! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:36:21 am (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !
