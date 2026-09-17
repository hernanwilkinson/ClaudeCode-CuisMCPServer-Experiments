'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:09:59 am'!
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

!classDefinition: #CrawlerClockwiseRotation category: #SurveyCrawler!
CrawlerMovement subclass: #CrawlerClockwiseRotation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerClockwiseRotation class' category: #SurveyCrawler!
CrawlerClockwiseRotation class
	instanceVariableNames: ''!

!classDefinition: #CrawlerCounterClockwiseRotation category: #SurveyCrawler!
CrawlerMovement subclass: #CrawlerCounterClockwiseRotation
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerCounterClockwiseRotation class' category: #SurveyCrawler!
CrawlerCounterClockwiseRotation class
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
	instanceVariableNames: 'slidingDistances'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedSilt class' category: #SurveyCrawler!
SeabedSilt class
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
	instanceVariableNames: 'position facing sonar run'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: ''!

!classDefinition: #SlidingDistanceStub category: #'SurveyCrawler-Tests'!
Object subclass: #SlidingDistanceStub
	instanceVariableNames: 'distanceBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SlidingDistanceStub class' category: #'SurveyCrawler-Tests'!
SlidingDistanceStub class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility ! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self executeOn: aCrawler! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
repeatOn: aCrawler times: aNumberOfRepetitions

	self error: SurveyCrawler invalidRepetitionErrorDescription! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
for: aCharacter

	^self allSubclasses
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass from: aCharacter ]
		ifNone: [ self error: SurveyCrawler invalidCommandErrorDescription ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
from: aCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
isFor: aCharacter

	^false! !

!CrawlerGuardedRunEndCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
executeOn: aCrawler

	aCrawler endGuardedRun! !

!CrawlerGuardedRunEndCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
isFor: aCharacter

	^aCharacter = $)! !

!CrawlerGuardedRunStartCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
executeOn: aCrawler

	aCrawler startGuardedRun! !

!CrawlerGuardedRunStartCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
isFor: aCharacter

	^aCharacter = $(! !

!CrawlerNoCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
executeOn: aCrawler

	! !

!CrawlerRepeatableCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
repeatOn: aCrawler times: aNumberOfRepetitions

	aNumberOfRepetitions timesRepeat: [ self executeOn: aCrawler ]! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
isFor: aCharacter

	^aCharacter = $a! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
isFor: aCharacter

	^aCharacter = $t! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
isFor: aCharacter

	^aCharacter = $h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
isFor: aCharacter

	^aCharacter = $g! !

!CrawlerRepetitionCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
initializeTimes: aNumberOfRepetitions

	repetitions := aNumberOfRepetitions! !

!CrawlerRepetitionCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
executeOn: aCrawler

	self error: SurveyCrawler invalidRepetitionErrorDescription! !

!CrawlerRepetitionCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aPreviousCommand repeatOn: aCrawler times: repetitions! !

!CrawlerRepetitionCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
isFor: aCharacter

	^aCharacter isDigit! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
from: aCharacter

	^self times: aCharacter digitValue + 2! !

!CrawlerRepetitionCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
times: aNumberOfRepetitions

	^self new initializeTimes: aNumberOfRepetitions! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:08:23 pm (UTC)'!
turnClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:06:17 pm (UTC)'!
turnCounterClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
direction

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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
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

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
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

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
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

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
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

!CrawlerMovement methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
applyTo: aCrawler

	self subclassResponsibility ! !

!CrawlerMovement methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility ! !

!CrawlerClockwiseRotation methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
applyTo: aCrawler

	aCrawler rotateClockwise! !

!CrawlerClockwiseRotation methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateCounterClockwise! !

!CrawlerCounterClockwiseRotation methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
applyTo: aCrawler

	aCrawler rotateCounterClockwise! !

!CrawlerCounterClockwiseRotation methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateClockwise! !

!CrawlerDisplacement methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
initializeBy: aDisplacement

	displacement := aDisplacement! !

!CrawlerDisplacement methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
applyTo: aCrawler

	aCrawler moveBy: displacement! !

!CrawlerDisplacement methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
undoOn: aCrawler

	aCrawler moveBy: displacement negated! !

!CrawlerDisplacement class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
by: aDisplacement

	^self new initializeBy: aDisplacement! !

!CrawlerRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
record: aMovement

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
endGuardedRunOn: aCrawler

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
startGuardedRunOn: aCrawler

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
assertCanSlide

	self subclassResponsibility ! !

!CrawlerRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
assertFinished

	self subclassResponsibility ! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
initialize

	movements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 6:08:24 am (UTC)'!
record: aMovement

	movements add: aMovement! !

!CrawlerGuardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 6:08:24 am (UTC)'!
undoOn: aCrawler

	movements reverseDo: [ :aMovement | aMovement undoOn: aCrawler ].
	aCrawler unguard! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:08:24 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler unguard! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:08:24 am (UTC)'!
startGuardedRunOn: aCrawler

	self error: SurveyCrawler guardedRunAlreadyStartedErrorDescription! !

!CrawlerGuardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:08:24 am (UTC)'!
assertCanSlide

	self error: SurveyCrawler siltFoundDuringGuardedRunErrorDescription! !

!CrawlerGuardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:08:24 am (UTC)'!
assertFinished

	self error: SurveyCrawler unfinishedGuardedRunErrorDescription! !

!CrawlerUnguardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
record: aMovement

	! !

!CrawlerUnguardedRun methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
undoOn: aCrawler

	! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
endGuardedRunOn: aCrawler

	self error: SurveyCrawler guardedRunNotStartedErrorDescription! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler guard! !

!CrawlerUnguardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
assertCanSlide

	! !

!CrawlerUnguardedRun methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
assertFinished

	! !

!SeabedGround methodsFor: 'crawler moving' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	self subclassResponsibility ! !

!SeabedGround methodsFor: 'crawler turning' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
assertAllowsTurning

	self subclassResponsibility ! !

!SeabedBoulder methodsFor: 'crawler moving' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	self signalBoulderFound! !

!SeabedBoulder methodsFor: 'crawler turning' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
assertAllowsTurning

	self signalBoulderFound! !

!SeabedBoulder methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
signalBoulderFound

	self error: SurveyCrawler boulderFoundErrorDescription! !

!SeabedFirmSand methodsFor: 'crawler moving' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler displaceBy: aDirection! !

!SeabedFirmSand methodsFor: 'crawler turning' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
assertAllowsTurning

	! !

!SeabedSilt methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
initializeSlidingWith: aSlidingDistances

	slidingDistances := aSlidingDistances! !

!SeabedSilt methodsFor: 'crawler moving' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler slideBy: aDirection * (slidingDistances nextInteger: self class slidingLimit)! !

!SeabedSilt methodsFor: 'crawler turning' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
assertAllowsTurning

	! !

!SeabedSilt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
slidingRandomly

	^self slidingWith: Random new! !

!SeabedSilt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
slidingWith: aSlidingDistances

	^self new initializeSlidingWith: aSlidingDistances! !

!SeabedSilt class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
slidingLimit

	^10! !

!SeabedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
initializeWithGroundsAt: aGroundsByPosition

	grounds := aGroundsByPosition copy! !

!SeabedSonar methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
groundAt: aPosition

	^grounds at: aPosition ifAbsent: [ SeabedFirmSand new ]! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
overFirmSand

	^self withGroundsAt: Dictionary new! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
withGroundsAt: aGroundsByPosition

	^self new initializeWithGroundsAt: aGroundsByPosition! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	run := CrawlerUnguardedRun new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
assertCanTurn
	
	(sonar groundAt: position) assertAllowsTurning! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
rotateClockwise
	
	facing turnClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
rotateCounterClockwise
	
	facing turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
turnClockwise
	
	self assertCanTurn.
	self execute: CrawlerClockwiseRotation new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
turnCounterClockwise
	
	self assertCanTurn.
	self execute: CrawlerCounterClockwiseRotation new! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
advance
	
	self moveTowards: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
displaceBy: aDisplacement
	
	self execute: (CrawlerDisplacement by: aDisplacement)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
moveBy: aDisplacement
	
	position := position + aDisplacement! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
moveTowards: aDirection
	
	(sonar groundAt: position + aDirection) receive: self movingTowards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
retreat
	
	self moveTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
slideBy: aDisplacement
	
	self displaceBy: aDisplacement.
	run assertCanSlide! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
process: aSequenceOfCommands

	[ self processCommandsIn: aSequenceOfCommands.
	run assertFinished ]
		on: Error
		do: [ :anError |
			self undoGuardedRun.
			anError pass ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
process: aCommand after: aPreviousCommand

	aCommand executeOn: self after: aPreviousCommand.
	^aCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
processCommandsIn: aSequenceOfCommands

	aSequenceOfCommands
		inject: CrawlerNoCommand new
		into: [ :aPreviousCommand :aCharacter | self process: (CrawlerCommand for: aCharacter) after: aPreviousCommand ]! !

!SurveyCrawler methodsFor: 'movements' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
execute: aMovement
	
	aMovement applyTo: self.
	run record: aMovement! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
endGuardedRun
	
	run endGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
guard
	
	run := CrawlerGuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
startGuardedRun
	
	run startGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
undoGuardedRun
	
	run undoOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:08:23 am (UTC)'!
unguard
	
	run := CrawlerUnguardedRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
at: aPosition facing: aFacingName
	
	^self at: aPosition facing: aFacingName sonar: SeabedSonar overFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
boulderFoundErrorDescription
	
	^'A boulder was found'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
guardedRunAlreadyStartedErrorDescription
	
	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
guardedRunNotStartedErrorDescription
	
	^'There is no guarded run to end'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
invalidRepetitionErrorDescription
	
	^'Only advance, retreat and turn commands can be repeated, with a single digit'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription
	
	^'Silt was found during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:08:22 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'The guarded run was not finished'! !

!SlidingDistanceStub methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:08:24 am (UTC)'!
initializeAnswering: aDistanceBlock

	distanceBlock := aDistanceBlock! !

!SlidingDistanceStub methodsFor: 'random numbers' stamp: 'HAW 17/Sep/2026, 6:08:24 am (UTC)'!
nextInteger: aLimit

	^distanceBlock value: aLimit! !

!SlidingDistanceStub class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:24 am (UTC)'!
answering: aDistanceBlock

	^self new initializeAnswering: aDistanceBlock! !

!SlidingDistanceStub class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:24 am (UTC)'!
fixedAt: aDistance

	^self answering: [ :aLimit | aDistance ]! !

!SlidingDistanceStub class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:08:24 am (UTC)'!
longest

	^self answering: [ :aLimit | aLimit ]! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'x'
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@2
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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:09:41 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
assertProcessing: aSequenceOfCommands failsWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
crawlerFacingUpWith: aGround at: aPosition

	^SurveyCrawler 
		at: 1@2
		facing: #Up
		sonar: (SeabedSonar withGroundsAt: (Dictionary with: aPosition -> aGround))! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test17DigitAfterAdvanceRepeatsAdvanceDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test18NineAfterAdvanceRepeatsAdvanceElevenTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test19DigitAfterRetreatRepeatsRetreatDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test20DigitAfterTurnClockwiseRepeatsTurnDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test21DigitAfterTurnCounterClockwiseRepeatsTurnDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g2'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test22DigitWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: '3'
		failsWith: SurveyCrawler invalidRepetitionErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test23DigitAfterDigitIsInvalidAndKeepsPreviousRepetition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a00'
		failsWith: SurveyCrawler invalidRepetitionErrorDescription
		leaving: crawler
		at: 1@5
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test24DigitAfterGuardedRunStartIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a(0'
		failsWith: SurveyCrawler invalidRepetitionErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test25DigitAfterGuardedRunEndIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a()0'
		failsWith: SurveyCrawler invalidRepetitionErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test26AdvanceTowardsABoulderFailsWithoutMoving

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@3.
	
	self 
		assertProcessing: 'a'
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test27RetreatTowardsABoulderFailsWithoutMoving

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@1.
	
	self 
		assertProcessing: 't'
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:09:34 am (UTC)'!
test28TurnClockwiseOnABoulderFailsWithoutTurning

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@2.
	
	self 
		assertProcessing: 'h'
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test29TurnCounterClockwiseOnABoulderFailsWithoutTurning

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@2.
	
	self 
		assertProcessing: 'g'
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test30MovementsBeforeABoulderOutsideAGuardedRunAreKept

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@4.
	
	self 
		assertProcessing: 'aa'
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test31AdvanceOntoSiltSlidesTheSlidingDistanceForward

	| crawler |
	
	crawler := self crawlerFacingUpWith: (SeabedSilt slidingWith: (SlidingDistanceStub fixedAt: 4)) at: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test32AdvanceOntoSiltSlidesAtMostTenCells

	| crawler |
	
	crawler := self crawlerFacingUpWith: (SeabedSilt slidingWith: SlidingDistanceStub longest) at: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test33RetreatOntoSiltSlidesTheSlidingDistanceBackwards

	| crawler |
	
	crawler := self crawlerFacingUpWith: (SeabedSilt slidingWith: (SlidingDistanceStub fixedAt: 3)) at: 1@1.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test34AdvanceOntoRandomSiltEndsWithinTenCells

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedSilt slidingRandomly at: 1@3.
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aVerticalPosition | crawler isAt: 1@aVerticalPosition facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test35TurningOnSiltTurnsAsOnFirmSand

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedSilt slidingRandomly at: 1@2.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test36GuardedRunWithoutProblemsExecutesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aa)'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test37BoulderInAGuardedRunUndoesItsMovements

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@4.
	
	self 
		assertProcessing: '(aa)'
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test38BoulderInAGuardedRunUndoesItsTurns

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 0@2.
	
	self 
		assertProcessing: '(hgga)'
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test39SiltInAGuardedRunFailsAndUndoesTheSlide

	| crawler |
	
	crawler := self crawlerFacingUpWith: (SeabedSilt slidingWith: (SlidingDistanceStub fixedAt: 5)) at: 1@4.
	
	self 
		assertProcessing: '(aa)'
		failsWith: SurveyCrawler siltFoundDuringGuardedRunErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test40InvalidCommandInAGuardedRunUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: '(ahatgx)'
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test41RepeatedCommandsInAFailedGuardedRunAreUndone

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: '(a3h2x)'
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test42CommandsBeforeAFailedGuardedRunAreNotUndone

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a(ax)'
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test43SeveralGuardedRunsInASequenceAreProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test44FailedGuardedRunDoesNotUndoPreviousGuardedRuns

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a(a)(ax)'
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test45GuardedRunStartedInsideAnotherOneFailsAndUndoesTheOuterOne

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'aa(aa(ht)a)'
		failsWith: SurveyCrawler guardedRunAlreadyStartedErrorDescription
		leaving: crawler
		at: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test46UnfinishedGuardedRunFailsAndUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a(aa'
		failsWith: SurveyCrawler unfinishedGuardedRunErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test47EndingAGuardedRunThatWasNotStartedIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a)'
		failsWith: SurveyCrawler guardedRunNotStartedErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:09:35 am (UTC)'!
test48FailedGuardedRunIsEndedSoANewOneCanBeStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	self should: [ crawler process: 'a(aa' ] raise: Error - MessageNotUnderstood.
	
	crawler process: '(a)'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !
