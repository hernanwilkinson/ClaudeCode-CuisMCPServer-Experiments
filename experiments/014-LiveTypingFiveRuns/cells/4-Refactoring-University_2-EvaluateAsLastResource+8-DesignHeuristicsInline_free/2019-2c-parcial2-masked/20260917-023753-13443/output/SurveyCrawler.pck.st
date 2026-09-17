'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:42:41 am'!
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

!classDefinition: #CrawlerMovementCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerMovementCommand
	instanceVariableNames: 'repetitions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerMovementCommand class' category: #SurveyCrawler!
CrawlerMovementCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerAdvanceCommand category: #SurveyCrawler!
CrawlerMovementCommand subclass: #CrawlerAdvanceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerAdvanceCommand class' category: #SurveyCrawler!
CrawlerAdvanceCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRetreatCommand category: #SurveyCrawler!
CrawlerMovementCommand subclass: #CrawlerRetreatCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRetreatCommand class' category: #SurveyCrawler!
CrawlerRetreatCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerTurnClockwiseCommand category: #SurveyCrawler!
CrawlerMovementCommand subclass: #CrawlerTurnClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurnClockwiseCommand class' category: #SurveyCrawler!
CrawlerTurnClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerTurnCounterClockwiseCommand category: #SurveyCrawler!
CrawlerMovementCommand subclass: #CrawlerTurnCounterClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurnCounterClockwiseCommand class' category: #SurveyCrawler!
CrawlerTurnCounterClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #GuardedRunEndCommand category: #SurveyCrawler!
CrawlerCommand subclass: #GuardedRunEndCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'GuardedRunEndCommand class' category: #SurveyCrawler!
GuardedRunEndCommand class
	instanceVariableNames: ''!

!classDefinition: #GuardedRunStartCommand category: #SurveyCrawler!
CrawlerCommand subclass: #GuardedRunStartCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'GuardedRunStartCommand class' category: #SurveyCrawler!
GuardedRunStartCommand class
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
	instanceVariableNames: 'undoMovements'
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

!classDefinition: #SurveyCrawlerTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerTest class
	instanceVariableNames: ''!


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
commandClassFor: aCharacter

	^self allSubclasses 
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifNone: [ self error: SurveyCrawler invalidCommandErrorDescription ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
nextFrom: aCommandStream

	^(self commandClassFor: aCommandStream next) readFrom: aCommandStream! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
readFrom: aCommandStream

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
isFor: aCharacter

	^false! !

!CrawlerMovementCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
initializeRepeated: aNumberOfTimes

	repetitions := aNumberOfTimes! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
executeOn: aCrawler

	repetitions timesRepeat: [ self executeOnceOn: aCrawler ]! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
executeOnceOn: aCrawler

	self subclassResponsibility! !

!CrawlerMovementCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
readFrom: aCommandStream

	^self repeated: 1 + (self extraRepetitionsFrom: aCommandStream)! !

!CrawlerMovementCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
repeated: aNumberOfTimes

	^self new initializeRepeated: aNumberOfTimes! !

!CrawlerMovementCommand class methodsFor: 'repetitions' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
extraRepetitionsFrom: aCommandStream

	^(self isRepetitionNextIn: aCommandStream)
		ifTrue: [ aCommandStream next digitValue + 2 ]
		ifFalse: [ 0 ]! !

!CrawlerMovementCommand class methodsFor: 'repetitions' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
isRepetitionNextIn: aCommandStream

	^aCommandStream atEnd not and: [ aCommandStream peek isDigit ]! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
executeOnceOn: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
isFor: aCharacter

	^aCharacter = $a! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
executeOnceOn: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
isFor: aCharacter

	^aCharacter = $t! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:41:26 am (UTC)'!
executeOnceOn: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
isFor: aCharacter

	^aCharacter = $h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:41:26 am (UTC)'!
executeOnceOn: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:41:26 am (UTC)'!
isFor: aCharacter

	^aCharacter = $g! !

!GuardedRunEndCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:41:26 am (UTC)'!
executeOn: aCrawler

	aCrawler endGuardedRun! !

!GuardedRunEndCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:41:26 am (UTC)'!
isFor: aCharacter

	^aCharacter = $)! !

!GuardedRunStartCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 5:41:26 am (UTC)'!
executeOn: aCrawler

	aCrawler startGuardedRun! !

!GuardedRunStartCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:41:26 am (UTC)'!
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

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
assertIsFinished

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
endGuardedRun

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
startGuardedRun

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
assertCanSlide

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
registerUndoMovement: anUndoMovement

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
undoMovements

	self subclassResponsibility! !

!GuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
initialize

	undoMovements := OrderedCollection new! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
assertIsFinished

	self error: SurveyCrawler unfinishedGuardedRunErrorDescription! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
endGuardedRun

	^UnguardedRun new! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
startGuardedRun

	self error: SurveyCrawler nestedGuardedRunErrorDescription! !

!GuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
assertCanSlide

	self error: SurveyCrawler canNotSlideOnSiltDuringGuardedRunErrorDescription! !

!GuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
registerUndoMovement: anUndoMovement

	undoMovements add: anUndoMovement! !

!GuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
undoMovements

	undoMovements reverseDo: [ :anUndoMovement | anUndoMovement value ]! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
assertIsFinished! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
endGuardedRun

	self error: SurveyCrawler guardedRunNotStartedErrorDescription! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
startGuardedRun

	^GuardedRun new! !

!UnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
assertCanSlide! !

!UnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
registerUndoMovement: anUndoMovement! !

!UnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
undoMovements! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
receive: aCrawler movingTo: aDestination towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
assertAllowsTurning

	self subclassResponsibility! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
receive: aCrawler movingTo: aDestination towards: aDirection

	self error: SurveyCrawler canNotMoveToBoulderErrorDescription! !

!Boulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
assertAllowsTurning

	self error: SurveyCrawler canNotTurnOnBoulderErrorDescription! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
receive: aCrawler movingTo: aDestination towards: aDirection

	aCrawler moveTo: aDestination! !

!FirmSand methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
assertAllowsTurning! !

!Silt methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
initializeSlidingWith: aRandom

	random := aRandom! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
extraSlidingCells

	^(random nextInteger: self slidingLimit) - 1! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
receive: aCrawler movingTo: aDestination towards: aDirection

	aCrawler slideTo: aDestination + (aDirection * self extraSlidingCells)! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
slidingLimit

	^10! !

!Silt methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
assertAllowsTurning! !

!Silt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:41:25 am (UTC)'!
slidingWith: aRandom

	^self new initializeSlidingWith: aRandom! !

!Sonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
initializeDetecting: aGroundsByPosition

	groundsByPosition := aGroundsByPosition! !

!Sonar methodsFor: 'detecting' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSand new ]! !

!Sonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
detecting: aGroundsByPosition

	^self new initializeDetecting: aGroundsByPosition copy! !

!Sonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
detectingOnlyFirmSand

	^self detecting: Dictionary new! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
initializeAt: aPosition facing: aFacing equippedWith: aSonar

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
turnClockwise
	
	(sonar groundAt: position) assertAllowsTurning.
	facing turnClockwise: self.
	runMode registerUndoMovement: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
turnCounterClockwise
	
	(sonar groundAt: position) assertAllowsTurning.
	facing turnCounterClockwise: self.
	runMode registerUndoMovement: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
moveDown
	
	self moveTowards: 0@-1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
moveLeft
	
	self moveTowards: -1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
moveRight
	
	self moveTowards: 1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
moveTo: aDestination

	| displacement |
	
	displacement := aDestination - position.
	position := aDestination.
	runMode registerUndoMovement: [ position := position - displacement ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
moveTowards: aDirection

	| destination |
	
	destination := position + aDirection.
	(sonar groundAt: destination) receive: self movingTo: destination towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
moveUp
	
	self moveTowards: 0@1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
slideTo: aSlideDestination

	runMode assertCanSlide.
	self moveTo: aSlideDestination! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
executeCommandsIn: aSequenceOfCommands

	| commands |
	
	commands := ReadStream on: aSequenceOfCommands.
	[ commands atEnd ] whileFalse: [ (CrawlerCommand nextFrom: commands) executeOn: self ].
	runMode assertIsFinished! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
process: aSequenceOfCommands

	[ self executeCommandsIn: aSequenceOfCommands ]
		on: Error
		do: [ :anError | self undoGuardedRunMovementsFailedWith: anError ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
endGuardedRun

	runMode := runMode endGuardedRun! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
startGuardedRun

	runMode := runMode startGuardedRun! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
undoGuardedRunMovementsFailedWith: anError

	runMode undoMovements.
	runMode := UnguardedRun new.
	anError pass! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
at: aPosition facing: aFacingName
	
	^self at: aPosition facing: aFacingName equippedWith: Sonar detectingOnlyFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
at: aPosition facing: aFacingName equippedWith: aSonar
	
	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) equippedWith: aSonar! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
canNotMoveToBoulderErrorDescription
	
	^'Can not move to a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
canNotSlideOnSiltDuringGuardedRunErrorDescription
	
	^'Can not slide on silt during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
canNotTurnOnBoulderErrorDescription
	
	^'Can not turn on a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
guardedRunNotStartedErrorDescription
	
	^'Can not finish a guarded run that was not started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'Can not start a guarded run during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:41:24 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'Guarded run was not finished'! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
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

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
crawlerAt1At2FacingUpOver: aGroundsByPosition

	^SurveyCrawler at: 1@2 facing: #Up equippedWith: (Sonar detecting: aGroundsByPosition)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
test17DigitZeroAfterAdvanceAdvancesThreeTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
test18DigitNineAfterAdvanceAdvancesTwelveTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
test19DigitAfterRetreatRepeatsRetreat

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
test20DigitAfterTurnClockwiseRepeatsTurnClockwise

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
test21DigitAfterTurnCounterClockwiseRepeatsTurnCounterClockwise

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
test22DigitWithoutPreviousCommandIsInvalid

	self 
		should: [ (SurveyCrawler at: 1@2 facing: #Up) process: '0' ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidCommandErrorDescription! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
test23SecondDigitInARowIsInvalidAndKeepsPreviousRepetitions

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@5
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
test24DigitAfterGuardedRunStartIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(0)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
test25AdvanceToBoulderFailsAndCrawlerDoesNotMove

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 1@3 -> Boulder new).
	
	self 
		should: [ crawler process: 'a' ]
		failWith: SurveyCrawler canNotMoveToBoulderErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
test26RetreatToBoulderFailsAndCrawlerDoesNotMove

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 1@1 -> Boulder new).
	
	self 
		should: [ crawler process: 't' ]
		failWith: SurveyCrawler canNotMoveToBoulderErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
test27TurnCounterClockwiseOnBoulderFailsAndCrawlerDoesNotTurn

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 1@2 -> Boulder new).
	
	self 
		should: [ crawler process: 'g' ]
		failWith: SurveyCrawler canNotTurnOnBoulderErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:42:18 am (UTC)'!
test28TurnClockwiseOnBoulderFailsAndCrawlerDoesNotTurn

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 1@2 -> Boulder new).
	
	self 
		should: [ crawler process: 'h' ]
		failWith: SurveyCrawler canNotTurnOnBoulderErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test29BoulderBeyondDestinationDoesNotStopMovement

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 1@4 -> Boulder new).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test30AdvanceToSiltSlidesARandomNumberOfCellsForward

	| crawler slidingCells |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 1@3 -> (Silt slidingWith: (Random seed: 42))).
	slidingCells := (Random seed: 42) nextInteger: 10.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@(2 + slidingCells) facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test31RetreatToSiltSlidesARandomNumberOfCellsBackwards

	| crawler slidingCells |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 1@1 -> (Silt slidingWith: (Random seed: 7))).
	slidingCells := (Random seed: 7) nextInteger: 10.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@(2 - slidingCells) facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test32SlidingOnSiltNeverGoesBeyondTenCells

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 1@3 -> (Silt slidingWith: Random new)).
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aVerticalPosition | crawler isAt: 1@aVerticalPosition facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test33CrawlerTurnsOnSiltAsOnFirmSand

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 1@2 -> (Silt slidingWith: Random new)).
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test34FinishedGuardedRunProcessesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a(ah)a'.
	
	self assert: (crawler isAt: 2@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test35BoulderDuringGuardedRunReturnsCrawlerToGuardedRunStart

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 1@4 -> Boulder new).
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: SurveyCrawler canNotMoveToBoulderErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test36FailedGuardedRunUndoesTurnsAndMovements

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 3@3 -> Boulder new).
	
	self 
		should: [ crawler process: '(ahta0)' ]
		failWith: SurveyCrawler canNotMoveToBoulderErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test37SiltDuringGuardedRunFailsAndReturnsCrawlerToGuardedRunStart

	| crawler |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 1@4 -> (Silt slidingWith: Random new)).
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: SurveyCrawler canNotSlideOnSiltDuringGuardedRunErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test38InvalidCommandDuringGuardedRunReturnsCrawlerToGuardedRunStart

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(ahx)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:42:26 am (UTC)'!
test39FailedGuardedRunDoesNotUndoPreviousGuardedRuns

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aha(aagt3)aa(hx)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 4@-1
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test40GuardedRunStartedDuringGuardedRunFailsAndReturnsCrawlerToFirstGuardedRunStart

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		failWith: SurveyCrawler nestedGuardedRunErrorDescription
		leaving: crawler
		at: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test41UnfinishedGuardedRunFailsAndReturnsCrawlerToGuardedRunStart

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		failWith: SurveyCrawler unfinishedGuardedRunErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test42FinishingNotStartedGuardedRunFails

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		failWith: SurveyCrawler guardedRunNotStartedErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test43FailedGuardedRunDoesNotLeaveCrawlerGuardedForNextProcessing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	[ crawler process: '(ax' ] on: Error do: [ :anError | anError return ].
	
	self 
		should: [ crawler process: 'ax' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 5:42:19 am (UTC)'!
test44SiltOutsideGuardedRunDoesNotFailAfterAFinishedGuardedRun

	| crawler slidingCells |
	
	crawler := self crawlerAt1At2FacingUpOver: (Dictionary with: 1@4 -> (Silt slidingWith: (Random seed: 42))).
	slidingCells := (Random seed: 42) nextInteger: 10.
	
	crawler process: '(a)a'.
	
	self assert: (crawler isAt: 1@(3 + slidingCells) facing: #Up)! !
