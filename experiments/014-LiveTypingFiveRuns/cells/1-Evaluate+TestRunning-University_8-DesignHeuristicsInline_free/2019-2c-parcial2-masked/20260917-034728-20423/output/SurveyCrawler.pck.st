'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:52:52 am'!
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

!classDefinition: #CrawlerGuardedRunEndCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerGuardedRunEndCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerGuardedRunEndCommand class' category: #SurveyCrawler!
CrawlerGuardedRunEndCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerGuardedRunStartCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerGuardedRunStartCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerGuardedRunStartCommand class' category: #SurveyCrawler!
CrawlerGuardedRunStartCommand class
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
	instanceVariableNames: 'times'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRepetitionCommand class' category: #SurveyCrawler!
CrawlerRepetitionCommand class
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

!classDefinition: #CrawlerFreeRun category: #SurveyCrawler!
CrawlerRun subclass: #CrawlerFreeRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFreeRun class' category: #SurveyCrawler!
CrawlerFreeRun class
	instanceVariableNames: ''!

!classDefinition: #CrawlerGuardedRun category: #SurveyCrawler!
CrawlerRun subclass: #CrawlerGuardedRun
	instanceVariableNames: 'executedMovements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerGuardedRun class' category: #SurveyCrawler!
CrawlerGuardedRun class
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
	instanceVariableNames: 'slideGenerator'
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
	instanceVariableNames: 'facings'!

!classDefinition: #LimitAnsweringRandom category: #'SurveyCrawler-Tests'!
Object subclass: #LimitAnsweringRandom
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'LimitAnsweringRandom class' category: #'SurveyCrawler-Tests'!
LimitAnsweringRandom class
	instanceVariableNames: ''!

!classDefinition: #SonarSimulator category: #'SurveyCrawler-Tests'!
Object subclass: #SonarSimulator
	instanceVariableNames: 'groundsByPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SonarSimulator class' category: #'SurveyCrawler-Tests'!
SonarSimulator class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler

	aCrawler signalInvalidRepetition! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
for: aCharacter ifNone: aNoneBlock

	^self allSubclasses 
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass representedBy: aCharacter ]
		ifNone: aNoneBlock! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
representedBy: aCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
isFor: aCharacter

	^false! !

!CrawlerGuardedRunEndCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler endGuardedRun! !

!CrawlerGuardedRunEndCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
isFor: aCharacter

	^aCharacter = $)! !

!CrawlerGuardedRunStartCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler startGuardedRun! !

!CrawlerGuardedRunStartCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
isFor: aCharacter

	^aCharacter = $(! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler executeMovement: self! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
moveCrawler: aCrawler

	self subclassResponsibility! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler

	aNumberOfTimes timesRepeat: [ aCrawler executeMovement: self ]! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
moveCrawler: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
undoOn: aCrawler

	aCrawler undoAdvance! !

!CrawlerAdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
isFor: aCharacter

	^aCharacter = $a! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
moveCrawler: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
undoOn: aCrawler

	aCrawler undoRetreat! !

!CrawlerRetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
isFor: aCharacter

	^aCharacter = $t! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
moveCrawler: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
undoOn: aCrawler

	aCrawler undoTurnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
isFor: aCharacter

	^aCharacter = $h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
moveCrawler: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
undoOn: aCrawler

	aCrawler undoTurnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
isFor: aCharacter

	^aCharacter = $g! !

!CrawlerNoCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	! !

!CrawlerRepetitionCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
initializeTimes: aNumberOfTimes

	times := aNumberOfTimes! !

!CrawlerRepetitionCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aPreviousCommand repeat: times on: aCrawler! !

!CrawlerRepetitionCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
isFor: aCharacter

	^aCharacter isDigit! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
representedBy: aCharacter

	^self times: aCharacter digitValue + 2! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
times: aNumberOfTimes

	^self new initializeTimes: aNumberOfTimes! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:08:23 pm (UTC)'!
turnClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:06:17 pm (UTC)'!
turnCounterClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
forwardDirection

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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
forwardDirection

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

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
forwardDirection

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

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
forwardDirection

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

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:04 am (UTC)'!
forwardDirection

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

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
endGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
finishSequenceOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
guard: aBlock of: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
startGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
allowSlidingOf: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
register: aMovementCommand

	self subclassResponsibility! !

!CrawlerFreeRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerFreeRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
finishSequenceOn: aCrawler

	! !

!CrawlerFreeRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
guard: aBlock of: aCrawler

	^aBlock value! !

!CrawlerFreeRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler runGuarded! !

!CrawlerFreeRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
allowSlidingOf: aCrawler

	! !

!CrawlerFreeRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
register: aMovementCommand

	! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
initialize

	executedMovements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
abortOn: aCrawler

	aCrawler runFree.
	executedMovements reverseDo: [ :aMovementCommand | aMovementCommand undoOn: aCrawler ]! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler runFree! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
finishSequenceOn: aCrawler

	self abortOn: aCrawler.
	aCrawler signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
guard: aBlock of: aCrawler

	^aBlock 
		on: Error 
		do: [ :anError | 
			self abortOn: aCrawler.
			anError pass ]! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler signalNestedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
allowSlidingOf: aCrawler

	aCrawler signalSiltFoundInGuardedRun! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
register: aMovementCommand

	executedMovements add: aMovementCommand! !

!SeabedGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
allowTurningOf: aCrawler doing: aTurnBlock

	self subclassResponsibility! !

!SeabedGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	self subclassResponsibility! !

!BoulderGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
allowTurningOf: aCrawler doing: aTurnBlock

	aCrawler signalBoulderFound! !

!BoulderGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler signalBoulderFound! !

!FirmSandGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
allowTurningOf: aCrawler doing: aTurnBlock

	aTurnBlock value! !

!FirmSandGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler stepTowards: aDirection! !

!SiltGround methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
initializeSlidingWith: aSlideGenerator

	slideGenerator := aSlideGenerator! !

!SiltGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
allowTurningOf: aCrawler doing: aTurnBlock

	aTurnBlock value! !

!SiltGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler 
		slide: (slideGenerator nextInteger: self class maximumSlideLength) 
		cellsTowards: aDirection! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
randomlySliding

	^self slidingWith: Random new! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
slidingWith: aSlideGenerator

	^self new initializeSlidingWith: aSlideGenerator! !

!SiltGround class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:51:05 am (UTC)'!
maximumSlideLength

	^10! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
signalBoulderFound
	
	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
signalGuardedRunNotStarted
	
	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
signalInvalidCommand
	
	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
signalInvalidRepetition
	
	self error: self class invalidRepetitionErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
signalNestedGuardedRun
	
	self error: self class nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
signalSiltFoundInGuardedRun
	
	self error: self class siltFoundInGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:51:23 am (UTC)'!
initializeAt: aPosition facing: aFacing sensingWith: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	run := CrawlerFreeRun new! !

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

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
advance
	
	self moveTowards: facing forwardDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) receive: self movingTowards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
retreat
	
	self moveTowards: facing forwardDirection negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
slide: aNumberOfCells cellsTowards: aDirection

	run allowSlidingOf: self.
	position := position + (aDirection * aNumberOfCells)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
stepTowards: aDirection

	position := position + aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
turnClockwise
	
	self turnDoing: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
turnCounterClockwise
	
	self turnDoing: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
turnDoing: aTurnBlock

	(sonar groundAt: position) allowTurningOf: self doing: aTurnBlock! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
commandFor: aCharacter

	^CrawlerCommand for: aCharacter ifNone: [ self signalInvalidCommand ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
execute: aCommand after: aPreviousCommand

	aCommand executeOn: self after: aPreviousCommand.
	^aCommand! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
executeMovement: aMovementCommand

	aMovementCommand moveCrawler: self.
	run register: aMovementCommand! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
process: aSequenceOfCommands

	| previousCommand |
	
	previousCommand := CrawlerNoCommand new.
	aSequenceOfCommands do: [ :aCharacter | 
		previousCommand := self process: aCharacter after: previousCommand ].
	run finishSequenceOn: self! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
process: aCharacter after: aPreviousCommand

	^run 
		guard: [ self execute: (self commandFor: aCharacter) after: aPreviousCommand ] 
		of: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
endGuardedRun

	run endGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
runFree

	run := CrawlerFreeRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
runGuarded

	run := CrawlerGuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
startGuardedRun

	run startGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
undoAdvance

	self stepTowards: facing forwardDirection negated! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
undoRetreat

	self stepTowards: facing forwardDirection! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
undoTurnClockwise

	facing turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
undoTurnCounterClockwise

	facing turnClockwise: self! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:51:23 am (UTC)'!
at: aPosition facing: aFacingName sensingWith: aSonar
	
	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		sensingWith: aSonar! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:51:23 am (UTC)'!
boulderFoundErrorDescription

	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:51:23 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'A guarded run can not be finished before being started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:51:23 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:51:23 am (UTC)'!
invalidRepetitionErrorDescription

	^'Only advance, retreat and turn commands can be repeated'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:51:23 am (UTC)'!
nestedGuardedRunErrorDescription

	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:51:23 am (UTC)'!
siltFoundInGuardedRunErrorDescription

	^'Silt found during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:51:23 am (UTC)'!
unfinishedGuardedRunErrorDescription

	^'Guarded run was not finished'! !

!LimitAnsweringRandom methodsFor: 'generating' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
nextInteger: aLimit

	^aLimit! !

!SonarSimulator methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
initializeSensing: aGroundsByPosition

	groundsByPosition := aGroundsByPosition copy! !

!SonarSimulator methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSandGround new ]! !

!SonarSimulator class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:51:24 am (UTC)'!
sensing: aGroundsByPosition

	^self new initializeSensing: aGroundsByPosition! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:46 am (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:46 am (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:46 am (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:46 am (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:46 am (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:46 am (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:36 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	| sonar |
	
	sonar := SonarSimulator sensing: Dictionary new.
	
	self 
		should: [ SurveyCrawler at: 1@2 facing: #X sensingWith: sonar ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test17a0AdvancesThreeTimes

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test18DigitAfterACommandRepeatsItTheDigitPlusTwoTimes

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test19t1RetreatsFourTimes

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:53 am (UTC)'!
test20h2TurnsClockwiseFiveTimes

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'h2'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test21g0TurnsCounterClockwiseThreeTimes

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test22RepetitionsCanBeCombinedWithOtherCommands

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'a0ha1'.
	
	self assert: (crawler isAt: 5@5 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test23DigitWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '0' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidRepetitionErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test24DigitAfterARepetitionIsInvalidAndKeepsPreviousMovements

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidRepetitionErrorDescription.
			self assert: (crawler isAt: 1@5 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test25DigitAfterAGuardedRunEndIsInvalid

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(a)0' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidRepetitionErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test26CanNotAdvanceToABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@3.
	
	self 
		should: [ crawler process: 'a' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test27CanNotRetreatToABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@1.
	
	self 
		should: [ crawler process: 't' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test28CanNotTurnCounterClockwiseOnABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@2.
	
	self 
		should: [ crawler process: 'g' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test29CanNotTurnClockwiseOnABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@2.
	
	self 
		should: [ crawler process: 'h' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test30RepetitionStopsBeforeABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@5.
	
	self 
		should: [ crawler process: 'a3' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:26 am (UTC)'!
test31AdvancingToSiltSlidesUpToTheMaximumSlideLength

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:26 am (UTC)'!
test32RetreatingToSiltSlidesBackwards

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@1.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:36 am (UTC)'!
test33AdvancingToSiltSlidesARandomNumberOfCellsBetweenOneAndTen

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		sensing: (Dictionary with: 1@3 -> SiltGround randomlySliding).
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aSlideEnd | crawler isAt: 1@aSlideEnd facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:27 am (UTC)'!
test34SiltDoesNotAffectTurning

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@2.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:27 am (UTC)'!
test35BoulderOutOfTheWayDoesNotAffectMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 2@2.
	
	crawler process: 'aht'.
	
	self assert: (crawler isAt: 0@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:27 am (UTC)'!
test36SiltIsSensedWhereTheCrawlerEndsNotBehindIt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@2.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test37GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: '(aah)'.
	
	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test38SeveralGuardedRunsCanBeProcessedInTheSameSequence

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:51:47 am (UTC)'!
test39RepetitionsCanBeUsedInsideAGuardedRun

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	crawler process: '(a0)'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test40BoulderInsideAGuardedRunReturnsToWhereTheRunStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test41FailedGuardedRunUndoesTurnsAndRetreats

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 0@4.
	
	self 
		should: [ crawler process: '(ahtga)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test42FailedGuardedRunUndoesRepetitions

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@5.
	
	self 
		should: [ crawler process: '(a1)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test43SiltInsideAGuardedRunReturnsToWhereTheRunStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler siltFoundInGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:26 am (UTC)'!
test44FailedGuardedRunUndoesMovementsWithoutSensingTheGround

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@2.
	
	self 
		should: [ crawler process: '(ahax)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test45InvalidCommandInsideAGuardedRunReturnsToWhereTheRunStarted

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(ahx)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test46InvalidRepetitionInsideAGuardedRunReturnsToWhereTheRunStarted

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a00)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidRepetitionErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test47NestedGuardedRunReturnsToWhereTheOuterRunStarted

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler nestedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test48UnfinishedGuardedRunReturnsToWhereTheRunStarted

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler unfinishedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:10 am (UTC)'!
test49GuardedRunCanNotBeFinishedWithoutBeingStarted

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler guardedRunNotStartedErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:11 am (UTC)'!
test50FailedGuardedRunDoesNotUndoPreviousFinishedGuardedRuns

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@5.
	
	self 
		should: [ crawler process: '(a)(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:52:27 am (UTC)'!
test51GuardedRunCanBeStartedAgainAfterAFailedOne

	| crawler |
	
	crawler := self crawlerOnFirmSandAt: 1@2 facing: #Up.
	[ crawler process: '(ax' ] on: Error do: [ :anError | anError return ].
	
	crawler process: '(a)'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:51:33 am (UTC)'!
crawlerAt: aPosition facing: aFacingName sensing: aGroundsByPosition

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sensingWith: (SonarSimulator sensing: aGroundsByPosition)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:51:33 am (UTC)'!
crawlerAt: aPosition facing: aFacingName withBoulderAt: aBoulderPosition

	^self 
		crawlerAt: aPosition 
		facing: aFacingName 
		sensing: (Dictionary with: aBoulderPosition -> BoulderGround new)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:51:33 am (UTC)'!
crawlerAt: aPosition facing: aFacingName withSiltAt: aSiltPosition

	^self 
		crawlerAt: aPosition 
		facing: aFacingName 
		sensing: (Dictionary with: aSiltPosition -> (SiltGround slidingWith: LimitAnsweringRandom new))! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:51:33 am (UTC)'!
crawlerOnFirmSandAt: aPosition facing: aFacingName

	^self crawlerAt: aPosition facing: aFacingName sensing: Dictionary new! !
