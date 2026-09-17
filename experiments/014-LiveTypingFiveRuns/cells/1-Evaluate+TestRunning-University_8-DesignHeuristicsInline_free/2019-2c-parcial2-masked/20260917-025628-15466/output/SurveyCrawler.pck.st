'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:01:30 am'!
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

!classDefinition: #CrawlerRepeatCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerRepeatCommand
	instanceVariableNames: 'timesToRepeat'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRepeatCommand class' category: #SurveyCrawler!
CrawlerRepeatCommand class
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

!classDefinition: #CrawlerRunMode category: #SurveyCrawler!
Object subclass: #CrawlerRunMode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRunMode class' category: #SurveyCrawler!
CrawlerRunMode class
	instanceVariableNames: ''!

!classDefinition: #CrawlerGuardedRun category: #SurveyCrawler!
CrawlerRunMode subclass: #CrawlerGuardedRun
	instanceVariableNames: 'movements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerGuardedRun class' category: #SurveyCrawler!
CrawlerGuardedRun class
	instanceVariableNames: ''!

!classDefinition: #CrawlerNormalRun category: #SurveyCrawler!
CrawlerRunMode subclass: #CrawlerNormalRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerNormalRun class' category: #SurveyCrawler!
CrawlerNormalRun class
	instanceVariableNames: ''!

!classDefinition: #CrawlerSonar category: #SurveyCrawler!
Object subclass: #CrawlerSonar
	instanceVariableNames: 'groundTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerSonar class' category: #SurveyCrawler!
CrawlerSonar class
	instanceVariableNames: ''!

!classDefinition: #SeabedGroundType category: #SurveyCrawler!
Object subclass: #SeabedGroundType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedGroundType class' category: #SurveyCrawler!
SeabedGroundType class
	instanceVariableNames: ''!

!classDefinition: #SeabedBoulder category: #SurveyCrawler!
SeabedGroundType subclass: #SeabedBoulder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedBoulder class' category: #SurveyCrawler!
SeabedBoulder class
	instanceVariableNames: ''!

!classDefinition: #SeabedFirmSand category: #SurveyCrawler!
SeabedGroundType subclass: #SeabedFirmSand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedFirmSand class' category: #SurveyCrawler!
SeabedFirmSand class
	instanceVariableNames: ''!

!classDefinition: #SeabedSilt category: #SurveyCrawler!
SeabedGroundType subclass: #SeabedSilt
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedSilt class' category: #SurveyCrawler!
SeabedSilt class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar slideLengthGenerator runMode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #LongestSlideLengthGenerator category: #'SurveyCrawler-Tests'!
Object subclass: #LongestSlideLengthGenerator
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'LongestSlideLengthGenerator class' category: #'SurveyCrawler-Tests'!
LongestSlideLengthGenerator class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self executeOn: aCrawler! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler

	aCrawler signalInvalidCommand! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
createFor: aCommandCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
for: aCommandCharacter

	^(self allSubclasses 
		detect: [ :aCommandClass | aCommandClass isFor: aCommandCharacter ]
		ifNone: [ CrawlerInvalidCommand ]) createFor: aCommandCharacter! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
isFor: aCommandCharacter

	^false! !

!CrawlerEndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
executeOn: aCrawler

	aCrawler endGuardedRun! !

!CrawlerEndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter = $)! !

!CrawlerInvalidCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
executeOn: aCrawler

	aCrawler signalInvalidCommand! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
executeOn: aCrawler

	self moveOn: aCrawler.
	aCrawler registerMovement: self! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
moveOn: aCrawler

	self subclassResponsibility! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler

	aNumberOfTimes timesRepeat: [ self executeOn: aCrawler ]! !

!CrawlerMovementCommand methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
moveOn: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
undoOn: aCrawler

	aCrawler undoAdvance! !

!CrawlerAdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter = $a! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
moveOn: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
undoOn: aCrawler

	aCrawler undoRetreat! !

!CrawlerRetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter = $t! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
moveOn: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
undoOn: aCrawler

	aCrawler undoTurnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter = $h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
moveOn: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
undoOn: aCrawler

	aCrawler undoTurnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter = $g! !

!CrawlerNoCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
executeOn: aCrawler

	self shouldNotHappen! !

!CrawlerRepeatCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
initializeTimes: aNumberOfTimes

	timesToRepeat := aNumberOfTimes! !

!CrawlerRepeatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aPreviousCommand repeat: timesToRepeat on: aCrawler! !

!CrawlerRepeatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
isFor: aCommandCharacter

	^aCommandCharacter isDigit! !

!CrawlerRepeatCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
createFor: aDigit

	^self times: aDigit digitValue + self extraRepetitions! !

!CrawlerRepeatCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
extraRepetitions

	^2! !

!CrawlerRepeatCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
times: aNumberOfTimes

	^self new initializeTimes: aNumberOfTimes! !

!CrawlerStartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
executeOn: aCrawler

	aCrawler startGuardedRun! !

!CrawlerStartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
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

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:56 am (UTC)'!
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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:56 am (UTC)'!
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

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:56 am (UTC)'!
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

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:56 am (UTC)'!
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

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:56 am (UTC)'!
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

!CrawlerRunMode methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
endGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
execute: aCommand after: aPreviousCommand on: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
finishOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
registerMovement: aMovementCommand

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
startGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
slide: aCrawler towards: aDirection

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
initialize

	movements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
abortOn: aCrawler

	movements reverseDo: [ :aMovementCommand | aMovementCommand undoOn: aCrawler ].
	aCrawler runNormally! !

!CrawlerGuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler runNormally! !

!CrawlerGuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
execute: aCommand after: aPreviousCommand on: aCrawler

	[ aCommand executeOn: aCrawler after: aPreviousCommand ]
		on: Error
		do: [ :anError | 
			self abortOn: aCrawler.
			anError pass ]! !

!CrawlerGuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:19 am (UTC)'!
finishOn: aCrawler

	self abortOn: aCrawler.
	aCrawler signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
registerMovement: aMovementCommand

	movements add: aMovementCommand! !

!CrawlerGuardedRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler signalNestedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler signalSiltFoundInGuardedRun! !

!CrawlerNormalRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerNormalRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
execute: aCommand after: aPreviousCommand on: aCrawler

	aCommand executeOn: aCrawler after: aPreviousCommand! !

!CrawlerNormalRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
finishOn: aCrawler! !

!CrawlerNormalRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
registerMovement: aMovementCommand! !

!CrawlerNormalRun methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler runGuarded! !

!CrawlerNormalRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:00:18 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler slideRandomlyTowards: aDirection! !

!CrawlerSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:59:58 am (UTC)'!
initializeDetecting: aGroundTypesByPosition

	groundTypes := aGroundTypesByPosition! !

!CrawlerSonar methodsFor: 'detecting' stamp: 'HAW 17/Sep/2026, 5:59:58 am (UTC)'!
groundTypeAt: aPosition

	^groundTypes at: aPosition ifAbsent: [ SeabedFirmSand new ]! !

!CrawlerSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
detecting: aGroundTypesByPosition

	^self new initializeDetecting: aGroundTypesByPosition! !

!CrawlerSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:59:58 am (UTC)'!
overFirmSand

	^self detecting: Dictionary new! !

!SeabedGroundType methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:58 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGroundType methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 5:59:58 am (UTC)'!
rotateClockwise: aCrawler

	aCrawler rotateClockwise! !

!SeabedGroundType methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 5:59:58 am (UTC)'!
rotateCounterClockwise: aCrawler

	aCrawler rotateCounterClockwise! !

!SeabedBoulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:58 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!SeabedBoulder methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 5:59:58 am (UTC)'!
rotateClockwise: aCrawler

	aCrawler signalBoulderFound! !

!SeabedBoulder methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 5:59:58 am (UTC)'!
rotateCounterClockwise: aCrawler

	aCrawler signalBoulderFound! !

!SeabedFirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:58 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler stepTowards: aDirection! !

!SeabedSilt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:58 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slideTowards: aDirection! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
signalBoulderFound
	
	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
signalGuardedRunNotStarted
	
	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
signalInvalidCommand
	
	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
signalNestedGuardedRun
	
	self error: self class nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
signalSiltFoundInGuardedRun
	
	self error: self class siltFoundInGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar slideLengthGenerator: aSlideLengthGenerator

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slideLengthGenerator := aSlideLengthGenerator.
	runMode := CrawlerNormalRun new! !

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

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
advance
	
	self moveTowards: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
moveTowards: aDirection

	(sonar groundTypeAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
retreat
	
	self moveTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
slideRandomlyTowards: aDirection

	self stepTowards: aDirection * (slideLengthGenerator nextInteger: self class maximumSlideLength)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
slideTowards: aDirection

	runMode slide: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
stepTowards: aDirection

	position := position + aDirection! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
process: aSequenceOfCommands

	aSequenceOfCommands 
		inject: CrawlerNoCommand new
		into: [ :aPreviousCommand :aCommandCharacter | 
			self process: (CrawlerCommand for: aCommandCharacter) after: aPreviousCommand ].
	runMode finishOn: self! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
process: aCommand after: aPreviousCommand

	runMode execute: aCommand after: aPreviousCommand on: self.
	^aCommand! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
rotateClockwise
	
	facing turnClockwise: self! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
rotateCounterClockwise
	
	facing turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
turnClockwise
	
	(sonar groundTypeAt: position) rotateClockwise: self! !

!SurveyCrawler methodsFor: 'turning' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
turnCounterClockwise
	
	(sonar groundTypeAt: position) rotateCounterClockwise: self! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
undoAdvance
	
	self stepTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
undoRetreat
	
	self stepTowards: facing direction! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
undoTurnClockwise
	
	self rotateCounterClockwise! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
undoTurnCounterClockwise
	
	self rotateClockwise! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
endGuardedRun
	
	runMode endGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
registerMovement: aMovementCommand
	
	runMode registerMovement: aMovementCommand! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
runGuarded
	
	runMode := CrawlerGuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
runNormally
	
	runMode := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
startGuardedRun
	
	runMode startGuardedRunOn: self! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:59:56 am (UTC)'!
at: aPosition facing: aFacingName

	^self at: aPosition facing: aFacingName sonar: CrawlerSonar overFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self 
		at: aPosition 
		facing: aFacingName 
		sonar: aSonar 
		slideLengthGenerator: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar slideLengthGenerator: aSlideLengthGenerator

	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		sonar: aSonar 
		slideLengthGenerator: aSlideLengthGenerator! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
maximumSlideLength

	^10! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
boulderFoundErrorDescription

	^'Boulder found, the crawler can not move nor turn there'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'Can not finish a guarded run that was not started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
nestedGuardedRunErrorDescription

	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
siltFoundInGuardedRunErrorDescription

	^'Silt found during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:59:57 am (UTC)'!
unfinishedGuardedRunErrorDescription

	^'Guarded run was not finished'! !

!LongestSlideLengthGenerator methodsFor: 'generating' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:01:05 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test17aFollowedByADigitAdvancesOnceAndDigitPlusTwoTimesMore

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test18tFollowedByADigitRetreatsOnceAndDigitPlusTwoTimesMore

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't3'.
	
	self assert: (crawler isAt: 1@-4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test19hFollowedByADigitTurnsClockwiseOnceAndDigitPlusTwoTimesMore

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h2'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test20gFollowedByADigitTurnsCounterClockwiseOnceAndDigitPlusTwoTimesMore

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test21DigitWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '0' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test22DigitAfterARepetitionIsInvalidAndKeepsTheRepeatedMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@5 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test23DigitAfterEndOfGuardedRunIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)0' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test24AdvancingOntoABoulderSignalsAndDoesNotMove

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self boulderAt: 1@3).
	
	self 
		should: [ crawler process: 'a' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test25RetreatingOntoABoulderSignalsAndDoesNotMove

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self boulderAt: 1@1).
	
	self 
		should: [ crawler process: 't' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test26TurningClockwiseOnABoulderSignalsAndDoesNotTurn

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self boulderAt: 1@2).
	
	self 
		should: [ crawler process: 'h' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test27TurningCounterClockwiseOnABoulderSignalsAndDoesNotTurn

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self boulderAt: 1@2).
	
	self 
		should: [ crawler process: 'g' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test28AdvancingOntoSiltSlidesUpToTenCellsForward

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self siltAt: 1@3).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test29AdvancingOntoSiltSlidesARandomNumberOfCellsBetweenOneAndTen

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (CrawlerSonar detecting: (self siltAt: 1@3)).
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aCoordinate | crawler isAt: 1@aCoordinate facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test30RetreatingOntoSiltSlidesUpToTenCellsBackwards

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self siltAt: 1@1).
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test31TurningOnSiltTurnsAsOnFirmSand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self siltAt: 1@2).
	
	crawler process: 'hgg'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test32AdvancingFromSiltOntoFirmSandMovesOneCell

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self siltAt: 1@2).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test33GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aah)'.
	
	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test34BoulderFoundInGuardedRunSignalsAndUndoesItsMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self boulderAt: 1@4).
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test35UndoingAGuardedRunUndoesEveryKindOfMovementInReverseOrder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self boulderAt: 2@3).
	
	self 
		should: [ crawler process: '(hagtaa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
test36SiltFoundInGuardedRunSignalsAndUndoesItsMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self siltAt: 1@4).
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler siltFoundInGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:58 am (UTC)'!
test37InvalidCommandInGuardedRunSignalsAndUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ahx)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:58 am (UTC)'!
test38InvalidRepetitionInGuardedRunSignalsAndUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a00)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:58 am (UTC)'!
test39RepeatedMovementsAreUndoneWhenGuardedRunFails

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self boulderAt: 1@8).
	
	self 
		should: [ crawler process: '(a2a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:58 am (UTC)'!
test40NestedGuardedRunSignalsAndUndoesTheOuterGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler nestedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:58 am (UTC)'!
test41UnfinishedGuardedRunSignalsAndUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler unfinishedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:58 am (UTC)'!
test42EndingANotStartedGuardedRunSignalsAndKeepsPreviousMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler guardedRunNotStartedErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:58 am (UTC)'!
test43SeveralGuardedRunsCanBeProcessedInASequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:58 am (UTC)'!
test44FailingGuardedRunDoesNotUndoPreviousGuardedRuns

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self boulderAt: 1@6).
	
	self 
		should: [ crawler process: 'a(a)(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:58 am (UTC)'!
test45FailingOutsideGuardedRunDoesNotUndoPreviousGuardedRuns

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (self boulderAt: 1@4).
	
	self 
		should: [ crawler process: '(a)a' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:58 am (UTC)'!
test46UndoingAGuardedRunDoesNotSlideBackOntoSilt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up over: (Dictionary with: 1@2 -> SeabedSilt new with: 1@4 -> SeabedBoulder new).
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler boulderFoundErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:00:58 am (UTC)'!
test47AfterAFailedGuardedRunTheCrawlerRunsNormally

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	[ crawler process: '(ax' ] on: Error do: [ :anError | anError return ].
	
	self 
		should: [ crawler process: ')' ]
		raise: Error - MessageNotUnderstood 
		withMessageText: SurveyCrawler guardedRunNotStartedErrorDescription! !

!SurveyCrawlerTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
boulderAt: aPosition

	^Dictionary with: aPosition -> SeabedBoulder new! !

!SurveyCrawlerTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
crawlerAt: aPosition facing: aFacingName over: aGroundTypesByPosition

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: (CrawlerSonar detecting: aGroundTypesByPosition)
		slideLengthGenerator: LongestSlideLengthGenerator new! !

!SurveyCrawlerTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 6:00:57 am (UTC)'!
siltAt: aPosition

	^Dictionary with: aPosition -> SeabedSilt new! !
