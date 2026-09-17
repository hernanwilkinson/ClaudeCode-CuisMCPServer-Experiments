'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:03:58 am'!
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

!classDefinition: #CrawlerRepeatCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerRepeatCommand
	instanceVariableNames: 'timesToRepeat'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRepeatCommand class' category: #SurveyCrawler!
CrawlerRepeatCommand class
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
	instanceVariableNames: 'offset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerDisplacement class' category: #SurveyCrawler!
CrawlerDisplacement class
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

!classDefinition: #CrawlerUnguardedRun category: #SurveyCrawler!
CrawlerRunMode subclass: #CrawlerUnguardedRun
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
	instanceVariableNames: 'random'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedSilt class' category: #SurveyCrawler!
SeabedSilt class
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

!classDefinition: #SurveyCrawlerMaximumRandom category: #'SurveyCrawler-Tests'!
Object subclass: #SurveyCrawlerMaximumRandom
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerMaximumRandom class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerMaximumRandom class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self subclassResponsibility ! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
repeat: aNumberOfTimes timesOn: aCrawler

	aCrawler signalInvalidCommand! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
for: aCharacter

	^self allSubclasses 
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass representedBy: aCharacter ]
		ifNone: [ CrawlerInvalidCommand new ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
representedBy: aCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
isFor: aCharacter

	^false! !

!CrawlerEndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:26 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler endGuardedRun.
	^self! !

!CrawlerEndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:02:17 am (UTC)'!
isFor: aCharacter

	^aCharacter = $)! !

!CrawlerInvalidCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:17 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler signalInvalidCommand! !

!CrawlerRepeatCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
initializeTimes: aNumberOfTimes

	timesToRepeat := aNumberOfTimes! !

!CrawlerRepeatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:26 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aPreviousCommand repeat: timesToRepeat timesOn: aCrawler.
	^self! !

!CrawlerRepeatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
isFor: aCharacter

	^aCharacter isDigit! !

!CrawlerRepeatCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
representedBy: aCharacter

	^self times: aCharacter digitValue + self minimumRepetitions! !

!CrawlerRepeatCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
times: aNumberOfTimes

	^self new initializeTimes: aNumberOfTimes! !

!CrawlerRepeatCommand class methodsFor: 'repeating' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
minimumRepetitions

	^2! !

!CrawlerRepeatableCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility ! !

!CrawlerRepeatableCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:26 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self executeOn: aCrawler.
	^self! !

!CrawlerRepeatableCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
repeat: aNumberOfTimes timesOn: aCrawler

	aNumberOfTimes timesRepeat: [ self executeOn: aCrawler ]! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
isFor: aCharacter

	^aCharacter = $a! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
isFor: aCharacter

	^aCharacter = $t! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
isFor: aCharacter

	^aCharacter = $h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
isFor: aCharacter

	^aCharacter = $g! !

!CrawlerStartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:02:26 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler startGuardedRun.
	^self! !

!CrawlerStartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
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

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
direction

	^0@-1! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:50 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:55 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingDown class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 8:03:17 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
direction

	^-1@0! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:41 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:26 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingLeft class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 8:03:23 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
direction

	^1@0! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:54 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:42 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingRight class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 8:01:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
direction

	^0@1! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:51 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:40 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingUp class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 8:03:11 pm (UTC)'!
facingName

	^#Up! !

!CrawlerMovement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility ! !

!CrawlerClockwiseRotation methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateCounterClockwise! !

!CrawlerCounterClockwiseRotation methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
undoOn: aCrawler

	aCrawler rotateClockwise! !

!CrawlerDisplacement methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
initializeOf: anOffset

	offset := anOffset! !

!CrawlerDisplacement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
undoOn: aCrawler

	aCrawler displaceBy: offset negated! !

!CrawlerDisplacement class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
of: anOffset

	^self new initializeOf: anOffset! !

!CrawlerRunMode methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
assertFinishedOn: aCrawler

	self subclassResponsibility ! !

!CrawlerRunMode methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
endGuardedRunOn: aCrawler

	self subclassResponsibility ! !

!CrawlerRunMode methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
guard: aBlock of: aCrawler

	self subclassResponsibility ! !

!CrawlerRunMode methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
startGuardedRunOn: aCrawler

	self subclassResponsibility ! !

!CrawlerRunMode methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
record: aMovement

	self subclassResponsibility ! !

!CrawlerRunMode methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
slide: aNumberOfCells cellsTowards: aDirection of: aCrawler

	self subclassResponsibility ! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
initialize

	movements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
assertFinishedOn: aCrawler

	aCrawler signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler stopGuardingMovements! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
guard: aBlock of: aCrawler

	^aBlock on: Error do: [ :anError |
		self undoMovementsOf: aCrawler.
		aCrawler stopGuardingMovements.
		anError pass ]! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler signalNestedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
undoMovementsOf: aCrawler

	movements reverseDo: [ :aMovement | aMovement undoOn: aCrawler ]! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
record: aMovement

	movements add: aMovement! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
slide: aNumberOfCells cellsTowards: aDirection of: aCrawler

	aCrawler signalSiltFoundInGuardedRun! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
assertFinishedOn: aCrawler

	! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
guard: aBlock of: aCrawler

	^aBlock value! !

!CrawlerUnguardedRun methodsFor: 'guarding' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler guardMovements! !

!CrawlerUnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
record: aMovement

	! !

!CrawlerUnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
slide: aNumberOfCells cellsTowards: aDirection of: aCrawler

	aCrawler moveCells: aNumberOfCells towards: aDirection! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility ! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
assertAllowsTurningOf: aCrawler

	self subclassResponsibility ! !

!SeabedBoulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!SeabedBoulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
assertAllowsTurningOf: aCrawler

	aCrawler signalBoulderFound! !

!SeabedFirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler moveCells: 1 towards: aDirection! !

!SeabedFirmSand methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
assertAllowsTurningOf: aCrawler

	! !

!SeabedSilt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slide: (random nextInteger: self class slidingLimit) cellsTowards: aDirection! !

!SeabedSilt methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
assertAllowsTurningOf: aCrawler

	! !

!SeabedSilt methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
initializeSlidingWith: aRandom

	random := aRandom! !

!SeabedSilt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
sliding

	^self slidingWith: Random new! !

!SeabedSilt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
slidingWith: aRandom

	^self new initializeSlidingWith: aRandom! !

!SeabedSilt class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
slidingLimit

	^10! !

!SeabedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
initializeDetecting: aGroundsByPosition

	groundsByPosition := aGroundsByPosition! !

!SeabedSonar methodsFor: 'detecting' stamp: 'HAW 17/Sep/2026, 6:02:16 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ SeabedFirmSand new ]! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
detecting: aGroundsByPosition

	^self new initializeDetecting: aGroundsByPosition copy! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
overFirmSand

	^self detecting: Dictionary new! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
signalBoulderFound
	
	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
signalGuardedRunNotStarted
	
	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
signalInvalidCommand
	
	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
signalNestedGuardedRun
	
	self error: self class nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
signalSiltFoundInGuardedRun
	
	self error: self class siltFoundInGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
initializeAt: aPosition facing: aFacing detectingWith: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	runMode := CrawlerUnguardedRun new! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
rotateClockwise
	
	facing turnClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
rotateCounterClockwise
	
	facing turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
turnClockwise
	
	(sonar groundAt: position) assertAllowsTurningOf: self.
	self rotateClockwise.
	runMode record: CrawlerClockwiseRotation new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
turnCounterClockwise
	
	(sonar groundAt: position) assertAllowsTurningOf: self.
	self rotateCounterClockwise.
	runMode record: CrawlerCounterClockwiseRotation new! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
advance
	
	self moveTowards: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
displaceBy: anOffset
	
	position := position + anOffset! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
moveCells: aNumberOfCells towards: aDirection
	
	| displacement |
	
	displacement := aDirection * aNumberOfCells.
	self displaceBy: displacement.
	runMode record: (CrawlerDisplacement of: displacement)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
moveTowards: aDirection
	
	(sonar groundAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
retreat
	
	self moveTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
slide: aNumberOfCells cellsTowards: aDirection
	
	runMode slide: aNumberOfCells cellsTowards: aDirection of: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
execute: aCommand after: aPreviousCommand

	^self guarding: [ aCommand executeOn: self after: aPreviousCommand ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
process: aSequenceOfCommands

	aSequenceOfCommands 
		inject: CrawlerInvalidCommand new
		into: [ :aPreviousCommand :aCharacter | self execute: (CrawlerCommand for: aCharacter) after: aPreviousCommand ].
	self guarding: [ runMode assertFinishedOn: self ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
endGuardedRun

	runMode endGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
guardMovements

	runMode := CrawlerGuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
guarding: aBlock

	^runMode guard: aBlock of: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
startGuardedRun

	runMode startGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:02:15 am (UTC)'!
stopGuardingMovements

	runMode := CrawlerUnguardedRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:02:14 am (UTC)'!
at: aPosition facing: aFacingName
	
	^self at: aPosition facing: aFacingName detectingWith: SeabedSonar overFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:02:14 am (UTC)'!
at: aPosition facing: aFacingName detectingWith: aSonar
	
	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		detectingWith: aSonar! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:02:14 am (UTC)'!
boulderFoundErrorDescription
	
	^'A boulder was found'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:02:14 am (UTC)'!
guardedRunNotStartedErrorDescription
	
	^'A guarded run can not be finished without being started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:02:14 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:02:27 am (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:02:14 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:02:14 am (UTC)'!
siltFoundInGuardedRunErrorDescription
	
	^'Silt was found during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:02:14 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'The guarded run was not finished'! !

!SurveyCrawlerMaximumRandom methodsFor: 'random' stamp: 'HAW 17/Sep/2026, 6:03:24 am (UTC)'!
nextInteger: aLimit

	^aLimit! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:03:24 am (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'crawlers' stamp: 'HAW 17/Sep/2026, 6:03:24 am (UTC)'!
crawlerFacingUpWith: aGround at: aGroundPosition

	^SurveyCrawler 
		at: 1@2 
		facing: #Up 
		detectingWith: (SeabedSonar detecting: (Dictionary with: aGroundPosition -> aGround))! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:03:24 am (UTC)'!
test17DigitAfterAdvanceRepeatsAdvanceTheDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:03:24 am (UTC)'!
test18DigitAfterRetreatRepeatsRetreatTheDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:03:24 am (UTC)'!
test19DigitAfterTurnClockwiseRepeatsTurnClockwiseTheDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:03:24 am (UTC)'!
test20DigitAfterTurnCounterClockwiseRepeatsTurnCounterClockwiseTheDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:03:24 am (UTC)'!
test21DigitAtTheStartOfTheSequenceIsAnInvalidCommand

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '0' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test22DigitAfterDigitIsAnInvalidCommandAndKeepsTheFirstRepetition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@5
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test23DigitRepeatsOnlyTheCommandJustBeforeIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'ha1'.
	
	self assert: (crawler isAt: 5@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:03:40 am (UTC)'!
test24SeveralRepetitionsInTheSameSequenceAreIndependent

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0a1'.
	
	self assert: (crawler isAt: 1@9 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test25DigitAfterEndOfGuardedRunIsAnInvalidCommand

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)0' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test26DigitAfterStartOfGuardedRunIsAnInvalidCommand

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(0a)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test27AdvancingOverFirmSandMovesOneCell

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedFirmSand new at: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test28AdvancingOverABoulderFailsAndDoesNotMove

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@3.
	
	self 
		should: [ crawler process: 'a' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test29RetreatingOverABoulderFailsAndDoesNotMove

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@1.
	
	self 
		should: [ crawler process: 't' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test30TurningClockwiseOverABoulderFailsAndDoesNotTurn

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@2.
	
	self 
		should: [ crawler process: 'h' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test31TurningCounterClockwiseOverABoulderFailsAndDoesNotTurn

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@2.
	
	self 
		should: [ crawler process: 'g' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test32AdvancingOverSiltSlidesUpToTenCells

	| crawler |
	
	crawler := self 
		crawlerFacingUpWith: (SeabedSilt slidingWith: SurveyCrawlerMaximumRandom new) 
		at: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test33AdvancingOverSiltSlidesARandomNumberOfCellsBetweenOneAndTen

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedSilt sliding at: 1@3.
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aVerticalPosition | crawler isAt: 1@aVerticalPosition facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test34RetreatingOverSiltSlidesBackwards

	| crawler |
	
	crawler := self 
		crawlerFacingUpWith: (SeabedSilt slidingWith: SurveyCrawlerMaximumRandom new) 
		at: 1@1.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test35TurningOverSiltTurnsAsOverFirmSand

	| crawler |
	
	crawler := self 
		crawlerFacingUpWith: (SeabedSilt slidingWith: SurveyCrawlerMaximumRandom new) 
		at: 1@2.
	
	crawler process: 'hgg'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test36GroundBehindTheCrawlerDoesNotAffectAdvancing

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@1.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test37GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aah)'.
	
	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test38BoulderFoundInGuardedRunUndoesItsMovements

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test39FailedGuardedRunUndoesAdvancesAndClockwiseTurns

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 3@3.
	
	self 
		should: [ crawler process: '(ahaa)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test40FailedGuardedRunUndoesRetreatsAndCounterClockwiseTurns

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 3@2.
	
	self 
		should: [ crawler process: '(gtt)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test41FailedGuardedRunUndoesRepeatedCommands

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@6.
	
	self 
		should: [ crawler process: '(a3)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test42SiltFoundInGuardedRunFailsAndUndoesItsMovements

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedSilt sliding at: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: SurveyCrawler siltFoundInGuardedRunErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test43InvalidCommandInGuardedRunFailsAndUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ahx)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test44FailedGuardedRunDoesNotUndoCommandsProcessedBeforeIt

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@5.
	
	self 
		should: [ crawler process: 'a(aa)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test45SequenceWithSeveralGuardedRunsProcessesAllOfThem

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test46FailedGuardedRunUndoesOnlyItsOwnMovementsAndNotThoseOfPreviousGuardedRuns

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@5.
	
	self 
		should: [ crawler process: '(a)(aa)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test47StartingAGuardedRunInsideAnotherFailsAndUndoesTheOuterOne

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		failWith: SurveyCrawler nestedGuardedRunErrorDescription
		leaving: crawler
		at: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test48UnfinishedGuardedRunFailsAndUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		failWith: SurveyCrawler unfinishedGuardedRunErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test49FinishingAGuardedRunThatWasNotStartedFails

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		failWith: SurveyCrawler guardedRunNotStartedErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:25 am (UTC)'!
test50CrawlerIsNotGuardedAnymoreAfterAFailedGuardedRun

	| crawler |
	
	crawler := self crawlerFacingUpWith: SeabedBoulder new at: 1@4.
	[ crawler process: '(aa)' ] on: Error do: [ :anError | anError return ].
	
	crawler process: '(a)'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:03:30 am (UTC)'!
test51UnfinishedGuardedRunOfAPreviousSequenceDoesNotLeakIntoTheNextOne

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	[ crawler process: '(a' ] on: Error do: [ :anError | anError return ].
	
	self 
		should: [ crawler process: 'a)' ]
		failWith: SurveyCrawler guardedRunNotStartedErrorDescription
		leaving: crawler
		at: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:32:07 pm (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:32:38 pm (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:33:00 pm (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:34:11 pm (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:34:03 pm (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 6:03:24 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler
		at: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:35:37 pm (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:35:52 pm (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:36:09 pm (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:36:32 pm (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:37:31 pm (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:38:17 pm (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:38:40 pm (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:39:01 pm (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 24/Nov/2019, 8:39:23 pm (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 6:03:24 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !
