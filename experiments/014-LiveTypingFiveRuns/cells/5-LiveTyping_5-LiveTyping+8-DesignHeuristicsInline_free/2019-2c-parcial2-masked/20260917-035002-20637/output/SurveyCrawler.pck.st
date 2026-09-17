'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:55:28 am'!
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

!classDefinition: #CrawlerEndGuardedRunCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerEndGuardedRunCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerEndGuardedRunCommand class' category: #SurveyCrawler!
CrawlerEndGuardedRunCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerInvalidCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerInvalidCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerInvalidCommand class' category: #SurveyCrawler!
CrawlerInvalidCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerMovementCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerMovementCommand
	instanceVariableNames: ''
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

!classDefinition: #CrawlerNoCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerNoCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerNoCommand class' category: #SurveyCrawler!
CrawlerNoCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRepetitionCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerRepetitionCommand
	instanceVariableNames: 'additionalTimes'
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
	instanceVariableNames: 'undoMovements'
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
	instanceVariableNames: 'groundsByPosition'
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

!classDefinition: #SeabedBoulder category: #SurveyCrawler!
SeabedGround subclass: #SeabedBoulder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedBoulder class' category: #SurveyCrawler!
SeabedBoulder class
	instanceVariableNames: ''!

!classDefinition: #SeabedFirmSand category: #SurveyCrawler!
SeabedGround subclass: #SeabedFirmSand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedFirmSand class' category: #SurveyCrawler!
SeabedFirmSand class
	instanceVariableNames: ''!

!classDefinition: #SeabedSilt category: #SurveyCrawler!
SeabedGround subclass: #SeabedSilt
	instanceVariableNames: 'slideDistances'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedSilt class' category: #SurveyCrawler!
SeabedSilt class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar run'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #LongestSlideDistance category: #'SurveyCrawler-Tests'!
Object subclass: #LongestSlideDistance
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'LongestSlideDistance class' category: #'SurveyCrawler-Tests'!
LongestSlideDistance class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self executeOn: aCrawler.
	^self! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler

	aCrawler signalInvalidRepetition! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
createFor: aCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
for: aCharacter

	^(self allSubclasses
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifNone: [ CrawlerInvalidCommand ]) createFor: aCharacter! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
isFor: aCharacter

	^false! !

!CrawlerEndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
executeOn: aCrawler

	aCrawler endGuardedRun! !

!CrawlerEndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
isFor: aCharacter

	^aCharacter = $)! !

!CrawlerInvalidCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
executeOn: aCrawler

	aCrawler signalInvalidCommand! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler

	aNumberOfTimes timesRepeat: [ self executeOn: aCrawler ]! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
isFor: aCharacter

	^aCharacter = $a! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
isFor: aCharacter

	^aCharacter = $t! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
isFor: aCharacter

	^aCharacter = $h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
isFor: aCharacter

	^aCharacter = $g! !

!CrawlerNoCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
executeOn: aCrawler

	! !

!CrawlerRepetitionCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:54:13 am (UTC)'!
initializeAdditionalTimes: aNumberOfTimes

	additionalTimes := aNumberOfTimes! !

!CrawlerRepetitionCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:13 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aPreviousCommand repeat: additionalTimes on: aCrawler.
	^self! !

!CrawlerRepetitionCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:54:13 am (UTC)'!
isFor: aCharacter

	^aCharacter isDigit! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:54:13 am (UTC)'!
additionalTimes: aNumberOfTimes

	^self new initializeAdditionalTimes: aNumberOfTimes! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:54:13 am (UTC)'!
createFor: aCharacter

	^self additionalTimes: aCharacter digitValue + self minimumAdditionalTimes! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:54:13 am (UTC)'!
minimumAdditionalTimes

	^2! !

!CrawlerStartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
executeOn: aCrawler

	aCrawler startGuardedRun! !

!CrawlerStartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
isFor: aCharacter

	^aCharacter = $(! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
clockwise

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
counterClockwise

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
direction

	^0@-1! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
clockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
counterClockwise

	^CrawlerFacingRight new! !

!CrawlerFacingDown class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:17 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
direction

	^-1@0! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
clockwise

	^CrawlerFacingUp new! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
counterClockwise

	^CrawlerFacingDown new! !

!CrawlerFacingLeft class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:23 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
direction

	^1@0! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
clockwise

	^CrawlerFacingDown new! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
counterClockwise

	^CrawlerFacingUp new! !

!CrawlerFacingRight class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:01:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
direction

	^0@1! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
clockwise

	^CrawlerFacingRight new! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:10 am (UTC)'!
counterClockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingUp class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:11 pm (UTC)'!
facingName

	^#Up! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
assertIsFinishedOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
endGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
startGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
slide: aCrawler by: aDisplacement

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
register: anUndoMovement

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
undo

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
initialize

	undoMovements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
assertIsFinishedOn: aCrawler

	aCrawler signalGuardedRunNotFinished! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler runNormally! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler signalGuardedRunAlreadyStarted! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
slide: aCrawler by: aDisplacement

	aCrawler signalSiltFound! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
register: anUndoMovement

	undoMovements addFirst: anUndoMovement! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
undo

	undoMovements do: [ :anUndoMovement | anUndoMovement value ]! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
assertIsFinishedOn: aCrawler

	! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler runGuarded! !

!CrawlerNormalRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
slide: aCrawler by: aDisplacement

	aCrawler displaceBy: aDisplacement! !

!CrawlerNormalRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
register: anUndoMovement

	! !

!CrawlerNormalRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
undo

	! !

!CrawlerSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
initializeDetecting: aGroundsByPosition

	groundsByPosition := aGroundsByPosition! !

!CrawlerSonar methodsFor: 'detecting' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ SeabedFirmSand new ]! !

!CrawlerSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
detecting: aGroundsByPosition

	^self new initializeDetecting: aGroundsByPosition copy! !

!CrawlerSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
overFirmSand

	^self detecting: Dictionary new! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
turnClockwise: aCrawler

	aCrawler rotateClockwise! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
turnCounterClockwise: aCrawler

	aCrawler rotateCounterClockwise! !

!SeabedBoulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!SeabedBoulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
turnClockwise: aCrawler

	aCrawler signalBoulderFound! !

!SeabedBoulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
turnCounterClockwise: aCrawler

	aCrawler signalBoulderFound! !

!SeabedFirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler displaceBy: aDirection! !

!SeabedSilt methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
initializeSlidingWith: aSlideDistances

	slideDistances := aSlideDistances! !

!SeabedSilt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slideBy: aDirection * (slideDistances nextInteger: self class slideLimit)! !

!SeabedSilt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
randomlySliding

	^self slidingWith: Random new! !

!SeabedSilt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
slidingWith: aSlideDistances

	^self new initializeSlidingWith: aSlideDistances! !

!SeabedSilt class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:54:12 am (UTC)'!
slideLimit

	^10! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
signalBoulderFound

	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
signalGuardedRunAlreadyStarted

	self error: self class guardedRunAlreadyStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
signalGuardedRunNotFinished

	self error: self class guardedRunNotFinishedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
signalGuardedRunNotStarted

	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
signalInvalidCommand

	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
signalInvalidRepetition

	self error: self class invalidRepetitionErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
signalSiltFound

	self error: self class siltFoundErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	run := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
rotateClockwise

	facing := facing clockwise.
	run register: [ self rotateCounterClockwise ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
rotateCounterClockwise

	facing := facing counterClockwise.
	run register: [ self rotateClockwise ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
turnClockwise

	(sonar groundAt: position) turnClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
turnCounterClockwise

	(sonar groundAt: position) turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
advance

	self moveTowards: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
displaceBy: aDisplacement

	position := position + aDisplacement.
	run register: [ self displaceBy: aDisplacement negated ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
retreat

	self moveTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
slideBy: aDisplacement

	run slide: self by: aDisplacement! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
process: aSequenceOfCommands

	[ self processAll: aSequenceOfCommands ]
		on: Error - MessageNotUnderstood
		do: [ :anError | self recoverFrom: anError ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
processAll: aSequenceOfCommands

	aSequenceOfCommands
		inject: CrawlerNoCommand new
		into: [ :aPreviousCommand :aCharacter | (CrawlerCommand for: aCharacter) executeOn: self after: aPreviousCommand ].
	run assertIsFinishedOn: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
recoverFrom: anError

	| interruptedRun |

	interruptedRun := run.
	self runNormally.
	interruptedRun undo.
	anError pass! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
endGuardedRun

	run endGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
runGuarded

	run := CrawlerGuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
runNormally

	run := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
startGuardedRun

	run startGuardedRunOn: self! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
at: aPosition facing: aFacingName

	^self at: aPosition facing: aFacingName sonar: CrawlerSonar overFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
boulderFoundErrorDescription

	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
guardedRunAlreadyStartedErrorDescription

	^'A guarded run can not be started during another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
guardedRunNotFinishedErrorDescription

	^'The guarded run was not finished'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'A guarded run can not be finished without being started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
invalidFacingErrorDescription

	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
invalidRepetitionErrorDescription

	^'Only advance, retreat and turn commands can be repeated'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:54:11 am (UTC)'!
siltFoundErrorDescription

	^'Silt found during a guarded run'! !

!LongestSlideDistance methodsFor: 'random' stamp: 'HAW 17/Sep/2026, 6:54:59 am (UTC)'!
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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:54:59 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self
		assert: crawler
		failsProcessing: 'x'
		with: SurveyCrawler invalidCommandErrorDescription
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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:54:59 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:54:59 am (UTC)'!
assert: aCrawler failsProcessing: aSequenceOfCommands with: anErrorDescription leavingItAt: aPosition facing: aFacingName

	self
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'crawlers' stamp: 'HAW 17/Sep/2026, 6:54:59 am (UTC)'!
crawlerAt12FacingUpOver: aGround at: aGroundPosition

	^SurveyCrawler
		at: 1@2
		facing: #Up
		sonar: (CrawlerSonar detecting: (Dictionary with: aGroundPosition -> aGround))! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:54:59 am (UTC)'!
test17DigitAfterAdvanceAdvancesTwoMoreTimesThanTheDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:54:59 am (UTC)'!
test18DigitAfterRetreatRetreatsTwoMoreTimesThanTheDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:54:59 am (UTC)'!
test19DigitAfterTurnClockwiseTurnsTwoMoreTimesThanTheDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:55:10 am (UTC)'!
test20DigitAfterTurnCounterClockwiseTurnsTwoMoreTimesThanTheDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:54:59 am (UTC)'!
test21DigitWithoutPreviousCommandIsAnInvalidRepetition

	self
		assert: (SurveyCrawler at: 1@2 facing: #Up)
		failsProcessing: '3'
		with: SurveyCrawler invalidRepetitionErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:54:59 am (UTC)'!
test22DigitAfterDigitIsAnInvalidRepetitionAfterRepeatingTheFirst

	self
		assert: (SurveyCrawler at: 1@2 facing: #Up)
		failsProcessing: 'a00'
		with: SurveyCrawler invalidRepetitionErrorDescription
		leavingItAt: 1@5
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:54:59 am (UTC)'!
test23DigitAfterGuardedRunStartIsAnInvalidRepetition

	self
		assert: (SurveyCrawler at: 1@2 facing: #Up)
		failsProcessing: '(0a)'
		with: SurveyCrawler invalidRepetitionErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test24DigitAfterGuardedRunEndIsAnInvalidRepetition

	self
		assert: (SurveyCrawler at: 1@2 facing: #Up)
		failsProcessing: '(a)0'
		with: SurveyCrawler invalidRepetitionErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test25AdvancingToABoulderFailsWithoutMoving

	self
		assert: (self crawlerAt12FacingUpOver: SeabedBoulder new at: 1@3)
		failsProcessing: 'a'
		with: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test26RetreatingToABoulderFailsWithoutMoving

	self
		assert: (self crawlerAt12FacingUpOver: SeabedBoulder new at: 1@1)
		failsProcessing: 't'
		with: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test27TurningClockwiseOnABoulderFailsWithoutTurning

	self
		assert: (self crawlerAt12FacingUpOver: SeabedBoulder new at: 1@2)
		failsProcessing: 'h'
		with: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test28TurningCounterClockwiseOnABoulderFailsWithoutTurning

	self
		assert: (self crawlerAt12FacingUpOver: SeabedBoulder new at: 1@2)
		failsProcessing: 'g'
		with: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test29RepeatedAdvanceStopsBeforeABoulder

	self
		assert: (self crawlerAt12FacingUpOver: SeabedBoulder new at: 1@5)
		failsProcessing: 'a3'
		with: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 17/Sep/2026, 6:55:10 am (UTC)'!
test30FailingOnABoulderOutsideAGuardedRunDoesNotUndoMovements

	self
		assert: (self crawlerAt12FacingUpOver: SeabedBoulder new at: 2@3)
		failsProcessing: '(a)ha'
		with: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@3
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test31AdvancingToSiltSlidesForwardUpToTheSlideLimit

	| crawler |
	
	crawler := self crawlerAt12FacingUpOver: (SeabedSilt slidingWith: LongestSlideDistance new) at: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test32RetreatingToSiltSlidesBackwardUpToTheSlideLimit

	| crawler |
	
	crawler := self crawlerAt12FacingUpOver: (SeabedSilt slidingWith: LongestSlideDistance new) at: 1@1.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test33AdvancingToRandomlySlidingSiltEndsBetweenTheSiltAndTheSlideLimit

	| crawler |
	
	crawler := self crawlerAt12FacingUpOver: SeabedSilt randomlySliding at: 1@3.
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aHeight | crawler isAt: 1@aHeight facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test34TurningOnSiltTurnsAsOnFirmSand

	| crawler |
	
	crawler := self crawlerAt12FacingUpOver: SeabedSilt randomlySliding at: 1@2.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test35GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(ah)'.
	
	self assert: (crawler isAt: 1@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test36BoulderInGuardedRunUndoesItsAdvances

	self
		assert: (self crawlerAt12FacingUpOver: SeabedBoulder new at: 1@4)
		failsProcessing: '(aa)'
		with: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:55:10 am (UTC)'!
test37BoulderInGuardedRunUndoesItsTurnsAndRetreats

	self
		assert: (self crawlerAt12FacingUpOver: SeabedBoulder new at: -1@1)
		failsProcessing: '(hat0gt)'
		with: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test38SiltInGuardedRunFailsWithoutSlidingAndUndoesMovements

	self
		assert: (self crawlerAt12FacingUpOver: (SeabedSilt slidingWith: LongestSlideDistance new) at: 1@4)
		failsProcessing: '(aa)'
		with: SurveyCrawler siltFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test39InvalidCommandInGuardedRunUndoesMovements

	self
		assert: (SurveyCrawler at: 1@2 facing: #Up)
		failsProcessing: '(ahx)'
		with: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test40GuardedRunStartedInsideAnotherFailsAndUndoesTheOuterOne

	self
		assert: (SurveyCrawler at: 1@2 facing: #Up)
		failsProcessing: 'aa(aa(ht)a)'
		with: SurveyCrawler guardedRunAlreadyStartedErrorDescription
		leavingItAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test41UnfinishedGuardedRunFailsAndUndoesItsMovements

	self
		assert: (SurveyCrawler at: 1@2 facing: #Up)
		failsProcessing: 'a(aa'
		with: SurveyCrawler guardedRunNotFinishedErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test42GuardedRunEndWithoutStartFails

	self
		assert: (SurveyCrawler at: 1@2 facing: #Up)
		failsProcessing: 'a)a'
		with: SurveyCrawler guardedRunNotStartedErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test43SeveralGuardedRunsAreProcessedInOneSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test44FailingGuardedRunOnlyUndoesItsOwnMovements

	self
		assert: (self crawlerAt12FacingUpOver: SeabedBoulder new at: 1@6)
		failsProcessing: 'a(a)(aa)'
		with: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test45GuardedRunCanBeStartedAgainAfterAFailedOne

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	self should: [ crawler process: '(ax' ] raise: Error - MessageNotUnderstood.
	
	crawler process: '(a)'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:55:00 am (UTC)'!
test46UndoingAGuardedRunStartedOnSiltReturnsWithoutSliding

	self
		assert: (self crawlerAt12FacingUpOver: (SeabedSilt slidingWith: LongestSlideDistance new) at: 1@2)
		failsProcessing: '(ax)'
		with: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@2
		facing: #Up! !
