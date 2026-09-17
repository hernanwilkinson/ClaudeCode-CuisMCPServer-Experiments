'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:08:09 am'!
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

!classDefinition: #CrawlerNoPreviousCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerNoPreviousCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerNoPreviousCommand class' category: #SurveyCrawler!
CrawlerNoPreviousCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRepeatCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerRepeatCommand
	instanceVariableNames: 'numberOfTimes'
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
	instanceVariableNames: 'undoActions'
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

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar slideLengthGenerator runMode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: ''!

!classDefinition: #RandomAnsweringLimit category: #'SurveyCrawler-Tests'!
Object subclass: #RandomAnsweringLimit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'RandomAnsweringLimit class' category: #'SurveyCrawler-Tests'!
RandomAnsweringLimit class
	instanceVariableNames: ''!

!classDefinition: #RandomAnsweringOne category: #'SurveyCrawler-Tests'!
Object subclass: #RandomAnsweringOne
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'RandomAnsweringOne class' category: #'SurveyCrawler-Tests'!
RandomAnsweringOne class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler

	self error: SurveyCrawler invalidCommandErrorDescription! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
for: aCommandCharacter

	^self allSubclasses
		detect: [ :aCommandClass | aCommandClass handles: aCommandCharacter ]
		ifFound: [ :aCommandClass | aCommandClass representedBy: aCommandCharacter ]
		ifNone: [ self error: SurveyCrawler invalidCommandErrorDescription ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
representedBy: aCommandCharacter

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
handles: aCommandCharacter

	^false! !

!CrawlerEndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:21 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler endGuardedRun.
	^self! !

!CrawlerEndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
handles: aCommandCharacter

	^aCommandCharacter = $)! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:21 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	self executeOn: aCrawler.
	^self! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler

	aNumberOfTimes timesRepeat: [ self executeOn: aCrawler ]! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
handles: aCommandCharacter

	^aCommandCharacter = $a! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
handles: aCommandCharacter

	^aCommandCharacter = $t! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
handles: aCommandCharacter

	^aCommandCharacter = $h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
handles: aCommandCharacter

	^aCommandCharacter = $g! !

!CrawlerNoPreviousCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:21 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	^self! !

!CrawlerRepeatCommand methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
initializeRepeatingPreviousCommand: aNumberOfTimes

	numberOfTimes := aNumberOfTimes! !

!CrawlerRepeatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:21 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aPreviousCommand repeat: numberOfTimes on: aCrawler.
	^self! !

!CrawlerRepeatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
handles: aCommandCharacter

	^aCommandCharacter isDigit! !

!CrawlerRepeatCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
repeatingPreviousCommand: aNumberOfTimes

	^self new initializeRepeatingPreviousCommand: aNumberOfTimes! !

!CrawlerRepeatCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:07:51 am (UTC)'!
representedBy: aDigit

	^self repeatingPreviousCommand: aDigit digitValue + 2! !

!CrawlerStartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 6:06:21 am (UTC)'!
executeOn: aCrawler after: aPreviousCommand

	aCrawler startGuardedRun.
	^self! !

!CrawlerStartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
handles: aCommandCharacter

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

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
advance: aCrawler

	^aCrawler moveTowards: self direction! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
direction

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
retreat: aCrawler

	^aCrawler moveTowards: self direction negated! !

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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
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

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
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

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
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

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
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

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
assertFinished

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
endGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
recordUndo: anUndoAction

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
startGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
undo

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
slide: aCrawler towards: aDirection

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
initialize

	undoActions := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
assertFinished

	self error: SurveyCrawler unfinishedGuardedRunErrorDescription! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler beInNormalRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
recordUndo: anUndoAction

	undoActions add: anUndoAction! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
startGuardedRunOn: aCrawler

	self error: SurveyCrawler guardedRunAlreadyStartedErrorDescription! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
undo

	undoActions reverseDo: [ :anUndoAction | anUndoAction value ]! !

!CrawlerGuardedRun methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
slide: aCrawler towards: aDirection

	self error: SurveyCrawler siltFoundDuringGuardedRunErrorDescription! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
assertFinished

	! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
endGuardedRunOn: aCrawler

	self error: SurveyCrawler guardedRunNotStartedErrorDescription! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
recordUndo: anUndoAction

	! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler beInGuardedRun! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
undo

	! !

!CrawlerNormalRun methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler slideFreelyTowards: aDirection! !

!SeabedGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
assertAllowsTurning

	self subclassResponsibility! !

!SeabedGround methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!Boulder methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
assertAllowsTurning

	self error: SurveyCrawler boulderFoundErrorDescription! !

!Boulder methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
move: aCrawler towards: aDirection

	self error: SurveyCrawler boulderFoundErrorDescription! !

!FirmSand methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
assertAllowsTurning

	! !

!FirmSand methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler displace: aDirection! !

!Silt methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
assertAllowsTurning

	! !

!Silt methodsFor: 'crawling' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slideTowards: aDirection! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
rotateClockwise

	facing turnClockwise: self.
	runMode recordUndo: [ self rotateCounterClockwise ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
rotateCounterClockwise

	facing turnCounterClockwise: self.
	runMode recordUndo: [ self rotateClockwise ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
turnClockwise

	(sonar groundAt: position) assertAllowsTurning.
	self rotateClockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
turnCounterClockwise

	(sonar groundAt: position) assertAllowsTurning.
	self rotateCounterClockwise! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
displace: aDisplacement

	position := position + aDisplacement.
	runMode recordUndo: [ self displace: aDisplacement negated ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
slideFreelyTowards: aDirection

	self displace: aDirection * (slideLengthGenerator nextInteger: self class slideLimit)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
slideTowards: aDirection

	runMode slide: self towards: aDirection! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
process: aSequenceOfCommands

	[ self processAll: aSequenceOfCommands ]
		on: Error
		do: [ :anError |
			self abortGuardedRun.
			anError pass ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
processAll: aSequenceOfCommands

	aSequenceOfCommands
		inject: CrawlerNoPreviousCommand new
		into: [ :aPreviousCommand :aCommandCharacter |
			(CrawlerCommand for: aCommandCharacter) executeOn: self after: aPreviousCommand ].
	runMode assertFinished! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
abortGuardedRun

	| abortedRun |
	
	abortedRun := runMode.
	self beInNormalRun.
	abortedRun undo! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
beInGuardedRun

	runMode := CrawlerGuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
beInNormalRun

	runMode := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
endGuardedRun

	runMode endGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:06:08 am (UTC)'!
startGuardedRun

	runMode startGuardedRunOn: self! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar slideLengthGenerator: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar slideLengthGenerator: aSlideLengthGenerator

	^self new
		initializeAt: aPosition
		facing: (CrawlerFacing facing: aFacingName)
		sonar: aSonar
		slideLengthGenerator: aSlideLengthGenerator! !

!SurveyCrawler class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
slideLimit

	^10! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
boulderFoundErrorDescription

	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
guardedRunAlreadyStartedErrorDescription

	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'There is no guarded run to end'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription

	^'Silt found during a guarded run'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:06:07 am (UTC)'!
unfinishedGuardedRunErrorDescription

	^'The guarded run was not finished'! !

!RandomAnsweringLimit methodsFor: 'generating' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
nextInteger: aLimit

	^aLimit! !

!RandomAnsweringOne methodsFor: 'generating' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
nextInteger: aLimit

	^1! !

!SonarSimulator methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
initializeDetecting: aGroundsByPosition

	groundsByPosition := aGroundsByPosition! !

!SonarSimulator methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSand new ]! !

!SonarSimulator class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:06:09 am (UTC)'!
detecting: aGroundsByPosition

	^self new initializeDetecting: aGroundsByPosition! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	self
		assertProcessing: 'x'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self
		should: [ self crawlerAt: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'crawlers' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler
		at: aPosition
		facing: aFacingName
		sonar: (SonarSimulator detecting: Dictionary new)! !

!SurveyCrawlerTest methodsFor: 'crawlers' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
crawlerAt: aPosition facing: aFacingName detecting: aGround at: aGroundPosition

	^self
		crawlerAt: aPosition
		facing: aFacingName
		detecting: aGround
		at: aGroundPosition
		slidingWith: RandomAnsweringOne new! !

!SurveyCrawlerTest methodsFor: 'crawlers' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
crawlerAt: aPosition facing: aFacingName detecting: aGround at: aGroundPosition slidingWith: aSlideLengthGenerator

	^SurveyCrawler
		at: aPosition
		facing: aFacingName
		sonar: (SonarSimulator detecting: (Dictionary with: aGroundPosition -> aGround))
		slideLengthGenerator: aSlideLengthGenerator! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:07:28 am (UTC)'!
assertProcessing: aSequenceOfCommands on: aCrawler failsWith: anErrorDescription leavingItAt: aPosition facing: aFacingName

	self
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:07:51 am (UTC)'!
test17DigitAfterAdvanceRepeatsItTheDigitPlusTwoTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:07:51 am (UTC)'!
test18DigitAfterRetreatRepeatsItTheDigitPlusTwoTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:07:52 am (UTC)'!
test19DigitAfterTurnClockwiseRepeatsItTheDigitPlusTwoTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:07:52 am (UTC)'!
test20DigitAfterTurnCounterClockwiseRepeatsItTheDigitPlusTwoTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:07:52 am (UTC)'!
test21NineAfterAdvanceRepeatsItElevenTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test22DigitAtTheBeginningIsInvalid

	self
		assertProcessing: '0'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test23DigitAfterDigitIsInvalidAndKeepsTheFirstRepetition

	self
		assertProcessing: 'a00'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@5
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test24DigitAfterStartOfGuardedRunIsInvalid

	self
		assertProcessing: 'a(0)'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test25DigitAfterEndOfGuardedRunIsInvalid

	self
		assertProcessing: '(a)0'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test26DigitDoesNotRepeatTheLastCommandOfAPreviousSequence

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'a'.
	
	self
		assertProcessing: '0'
		on: crawler
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test27AdvancingTowardsABoulderFailsWithoutMoving

	self
		assertProcessing: 'a'
		on: (self crawlerAt: 1@2 facing: #Up detecting: Boulder new at: 1@3)
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test28RetreatingTowardsABoulderFailsWithoutMoving

	self
		assertProcessing: 't'
		on: (self crawlerAt: 1@2 facing: #Up detecting: Boulder new at: 1@1)
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test29TurningClockwiseOnABoulderFailsWithoutTurning

	self
		assertProcessing: 'h'
		on: (self crawlerAt: 1@2 facing: #Up detecting: Boulder new at: 1@2)
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test30TurningCounterClockwiseOnABoulderFailsWithoutTurning

	self
		assertProcessing: 'g'
		on: (self crawlerAt: 1@2 facing: #Up detecting: Boulder new at: 1@2)
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test31AdvancingOntoSiltSlidesTheNumberOfCellsGenerated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up detecting: Silt new at: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test32AdvancingOntoSiltSlidesAtMostTenCells

	| crawler |
	
	crawler := self
		crawlerAt: 1@2
		facing: #Up
		detecting: Silt new
		at: 1@3
		slidingWith: RandomAnsweringLimit new.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test33RetreatingOntoSiltSlidesBackwards

	| crawler |
	
	crawler := self
		crawlerAt: 1@2
		facing: #Up
		detecting: Silt new
		at: 1@1
		slidingWith: RandomAnsweringLimit new.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test34TurningOnSiltTurnsAsOnFirmSand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up detecting: Silt new at: 1@2.
	
	crawler process: 'hhhg'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test35RepetitionStopsBeforeABoulder

	self
		assertProcessing: 'a1'
		on: (self crawlerAt: 1@2 facing: #Up detecting: Boulder new at: 1@5)
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test36GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: '(aah)'.
	
	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test37BoulderDuringGuardedRunUndoesItsMovements

	self
		assertProcessing: '(aa)'
		on: (self crawlerAt: 1@2 facing: #Up detecting: Boulder new at: 1@4)
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test38SiltDuringGuardedRunFailsAndUndoesItsMovements

	self
		assertProcessing: '(aa)'
		on: (self crawlerAt: 1@2 facing: #Up detecting: Silt new at: 1@4)
		failsWith: SurveyCrawler siltFoundDuringGuardedRunErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test39InvalidCommandDuringGuardedRunUndoesItsMovements

	self
		assertProcessing: '(ahx)'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test40FailingGuardedRunDoesNotUndoMovementsMadeBeforeIt

	self
		assertProcessing: 'ah(ax)'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@3
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test41FailureAfterAFinishedGuardedRunDoesNotUndoIt

	self
		assertProcessing: '(ah)ax'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 2@3
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:52 am (UTC)'!
test42SequenceWithSeveralGuardedRunsProcessesAllOfThem

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test43FailingGuardedRunDoesNotUndoAPreviousFinishedOne

	self
		assertProcessing: '(ah)(ax)'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@3
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test44StartingAGuardedRunInsideAnotherFailsAndUndoesTheOuterOne

	self
		assertProcessing: 'aa(aa(ht)a)'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler guardedRunAlreadyStartedErrorDescription
		leavingItAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test45UnfinishedGuardedRunFailsAndUndoesItsMovements

	self
		assertProcessing: 'a(aa'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler unfinishedGuardedRunErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test46EndingAGuardedRunNotStartedFails

	self
		assertProcessing: 'a)'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler guardedRunNotStartedErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test47FailingGuardedRunUndoesMovementsInReverseOrder

	self
		assertProcessing: '(ahahx)'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test48FailingGuardedRunUndoesRepeatedMovements

	self
		assertProcessing: '(a3h1x)'
		on: (self crawlerAt: 1@2 facing: #Up)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test49UndoingOntoSiltDoesNotSlide

	self
		assertProcessing: '(ax)'
		on: (self crawlerAt: 1@2 facing: #Up detecting: Silt new at: 1@2)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test50UnfinishedGuardedRunDoesNotRemainStartedForTheNextSequence

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self should: [ crawler process: '(a' ] raise: Error.
	
	self
		assertProcessing: 'a)'
		on: crawler
		failsWith: SurveyCrawler guardedRunNotStartedErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 6:07:29 am (UTC)'!
test51SiltOutsideGuardedRunSlidesAndIsNotUndoneByALaterGuardedRun

	self
		assertProcessing: 'a(ax)'
		on: (self
			crawlerAt: 1@2
			facing: #Up
			detecting: Silt new
			at: 1@3
			slidingWith: RandomAnsweringLimit new)
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@12
		facing: #Up! !
