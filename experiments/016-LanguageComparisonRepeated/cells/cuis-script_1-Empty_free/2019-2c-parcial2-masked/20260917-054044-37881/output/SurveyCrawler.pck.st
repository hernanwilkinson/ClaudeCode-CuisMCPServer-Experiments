'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 5:45:05 am'!
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

!classDefinition: #CrawlerAdvanceCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerAdvanceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerAdvanceCommand class' category: #SurveyCrawler!
CrawlerAdvanceCommand class
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

!classDefinition: #CrawlerRetreatCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerRetreatCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRetreatCommand class' category: #SurveyCrawler!
CrawlerRetreatCommand class
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

!classDefinition: #CrawlerTurnClockwiseCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerTurnClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurnClockwiseCommand class' category: #SurveyCrawler!
CrawlerTurnClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerTurnCounterClockwiseCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerTurnCounterClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurnCounterClockwiseCommand class' category: #SurveyCrawler!
CrawlerTurnCounterClockwiseCommand class
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

!classDefinition: #CrawlerNonRepeatableCommand category: #SurveyCrawler!
Object subclass: #CrawlerNonRepeatableCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerNonRepeatableCommand class' category: #SurveyCrawler!
CrawlerNonRepeatableCommand class
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

!classDefinition: #CrawlerFreeRun category: #SurveyCrawler!
CrawlerRunMode subclass: #CrawlerFreeRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFreeRun class' category: #SurveyCrawler!
CrawlerFreeRun class
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
	instanceVariableNames: 'position facing sonar random runMode lastCommand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #FixedRandom category: #'SurveyCrawler-Tests'!
Object subclass: #FixedRandom
	instanceVariableNames: 'value requestedLimits'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'FixedRandom class' category: #'SurveyCrawler-Tests'!
FixedRandom class
	instanceVariableNames: ''!

!classDefinition: #SonarSimulator category: #'SurveyCrawler-Tests'!
Object subclass: #SonarSimulator
	instanceVariableNames: 'groundTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SonarSimulator class' category: #'SurveyCrawler-Tests'!
SonarSimulator class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerTest
	instanceVariableNames: 'sonar slideRandom'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerTest class
	instanceVariableNames: ''!


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler

	aNumberOfTimes timesRepeat: [ self executeOn: aCrawler ]! !

!CrawlerCommand methodsFor: 'repeating' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
asRepeatableCommand

	^CrawlerNonRepeatableCommand new! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
for: aCharacter ifNone: aNoneBlock

	^self subclasses 
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass new ]
		ifNone: aNoneBlock! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
isFor: aCharacter

	^self character = aCharacter! !

!CrawlerCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
character

	self subclassResponsibility! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand methodsFor: 'repeating' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
asRepeatableCommand

	^self! !

!CrawlerAdvanceCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
character

	^$a! !

!CrawlerEndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
executeOn: aCrawler

	aCrawler endGuardedRun! !

!CrawlerEndGuardedRunCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
character

	^$)! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand methodsFor: 'repeating' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
asRepeatableCommand

	^self! !

!CrawlerRetreatCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
character

	^$t! !

!CrawlerStartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
executeOn: aCrawler

	aCrawler startGuardedRun! !

!CrawlerStartGuardedRunCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
character

	^$(! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand methodsFor: 'repeating' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
asRepeatableCommand

	^self! !

!CrawlerTurnClockwiseCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
character

	^$h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'repeating' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
asRepeatableCommand

	^self! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'character' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
character

	^$g! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:08:23 pm (UTC)'!
turnClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:06:17 pm (UTC)'!
turnCounterClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
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

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
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

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
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

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
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

!CrawlerNonRepeatableCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
repeat: aNumberOfTimes on: aCrawler

	aCrawler signalInvalidCommand! !

!CrawlerRunMode methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
abortOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
registerUndo: anUndoAction

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
slide: aCrawler towards: aDirection

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
assertFinishedOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
endGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
startGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerFreeRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
abortOn: aCrawler! !

!CrawlerFreeRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
registerUndo: anUndoAction! !

!CrawlerFreeRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler slideFreelyTowards: aDirection! !

!CrawlerFreeRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
assertFinishedOn: aCrawler! !

!CrawlerFreeRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerFreeRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler changeRunModeTo: CrawlerGuardedRun new! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
initialize

	undoActions := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
abortOn: aCrawler

	undoActions reverseDo: [:anUndoAction | anUndoAction value ].
	aCrawler changeRunModeTo: CrawlerFreeRun new! !

!CrawlerGuardedRun methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
registerUndo: anUndoAction

	undoActions add: anUndoAction! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
slide: aCrawler towards: aDirection

	aCrawler signalSiltInGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
assertFinishedOn: aCrawler

	aCrawler signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
endGuardedRunOn: aCrawler

	aCrawler changeRunModeTo: CrawlerFreeRun new! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
startGuardedRunOn: aCrawler

	aCrawler signalNestedGuardedRun! !

!SeabedGroundType methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	self subclassResponsibility! !

!SeabedGroundType methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
allowTurningOf: aCrawler

	self subclassResponsibility! !

!SeabedBoulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler signalBoulderFound! !

!SeabedBoulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
allowTurningOf: aCrawler

	aCrawler signalBoulderFound! !

!SeabedFirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler displaceBy: aDirection! !

!SeabedFirmSand methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
allowTurningOf: aCrawler! !

!SeabedSilt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler slideTowards: aDirection! !

!SeabedSilt methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
allowTurningOf: aCrawler! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
boulderFoundErrorDescription

	^'Boulder found'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'Can not finish a guarded run that was not started'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:48:45 pm (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
nestedGuardedRunErrorDescription

	^'Can not start a guarded run inside another guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
signalBoulderFound

	self error: self boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
signalGuardedRunNotStarted

	self error: self guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:50:26 pm (UTC)'!
signalInvalidCommand
	
	self error: self invalidCommandErrorDescription ! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
signalNestedGuardedRun

	self error: self nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
signalSiltInGuardedRun

	self error: self siltInGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
signalUnfinishedGuardedRun

	self error: self unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
siltInGuardedRunErrorDescription

	^'Silt found during guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
unfinishedGuardedRunErrorDescription

	^'Guarded run was not finished'! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar random: aRandom

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	random := aRandom.
	runMode := CrawlerFreeRun new.
	lastCommand := CrawlerNonRepeatableCommand new! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
turnClockwise
	
	(sonar groundTypeAt: position) allowTurningOf: self.
	facing turnClockwise: self.
	runMode registerUndo: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
turnCounterClockwise
	
	(sonar groundTypeAt: position) allowTurningOf: self.
	facing turnCounterClockwise: self.
	runMode registerUndo: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
advance
	
	self moveTowards: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
displaceBy: aDisplacement

	position := position + aDisplacement.
	runMode registerUndo: [ position := position - aDisplacement ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
moveTowards: aDirection

	(sonar groundTypeAt: position + aDirection) receive: self movingTowards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
retreat
	
	self moveTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
slideFreelyTowards: aDirection

	self displaceBy: aDirection * (random nextInteger: self class siltSlideLimit)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
slideTowards: aDirection

	runMode slide: self towards: aDirection! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
process: aSequenceOfCommands

	lastCommand := CrawlerNonRepeatableCommand new.
	[ aSequenceOfCommands do: [:aCommand | self processCommand: aCommand ].
	runMode assertFinishedOn: self ]
		on: Error
		do: [:anError |
			runMode abortOn: self.
			anError pass ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
processCommand: aCommand

	| command |
	
	aCommand isDigit ifTrue: [ ^self repeatLastCommand: aCommand digitValue ].
	
	command := CrawlerCommand for: aCommand ifNone: [ ^self signalInvalidCommand ].
	command executeOn: self.
	lastCommand := command asRepeatableCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
repeatLastCommand: aDigit

	| commandToRepeat |
	
	commandToRepeat := lastCommand.
	lastCommand := CrawlerNonRepeatableCommand new.
	commandToRepeat repeat: aDigit + 2 on: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
changeRunModeTo: aRunMode

	runMode := aRunMode! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
endGuardedRun

	runMode endGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
startGuardedRun

	runMode startGuardedRunOn: self! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar random: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar random: aRandom
	
	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar random: aRandom! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'silt' stamp: 'HAW 17/Sep/2026, 8:43:31 am (UTC)'!
siltSlideLimit

	^10! !

!FixedRandom methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
initializeReturning: anInteger

	value := anInteger.
	requestedLimits := OrderedCollection new! !

!FixedRandom methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
nextInteger: aLimit

	requestedLimits add: aLimit.
	^value! !

!FixedRandom methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
requestedLimits

	^requestedLimits! !

!FixedRandom class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
returning: anInteger

	^self new initializeReturning: anInteger! !

!SonarSimulator methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
initialize

	groundTypes := Dictionary new! !

!SonarSimulator methodsFor: 'ground types' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
boulderAt: aPosition

	groundTypes at: aPosition put: SeabedBoulder new! !

!SonarSimulator methodsFor: 'ground types' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
groundTypeAt: aPosition

	^groundTypes at: aPosition ifAbsent: [ SeabedFirmSand new ]! !

!SonarSimulator methodsFor: 'ground types' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
siltAt: aPosition

	groundTypes at: aPosition put: SeabedSilt new! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X sonar: sonar ]
		raise: Error
		withExceptionDo: [:anError |
			self assert: SurveyCrawler invalidFacingErrorDescription equals: anError messageText ]! !

!SurveyCrawlerTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
setUp

	sonar := SonarSimulator new.
	slideRandom := FixedRandom returning: 4! !

!SurveyCrawlerTest methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: sonar random: slideRandom! !

!SurveyCrawlerTest methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test17DigitRepeatsLastCommandTheDigitPlusTwoTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test18DigitCanRepeatRetreat

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't9'.
	
	self assert: (crawler isAt: 1@-10 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test19DigitCanRepeatTurns

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h2'.
	self assert: (crawler isAt: 1@2 facing: #Right).
	
	crawler process: 'g0'.
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test20DigitAtTheBeginningIsInvalid

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '3' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test21RepetitionIsASingleDigit

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test22LastCommandOfPreviousSequenceIsNotRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'a'.
	
	self 
		should: [ crawler process: '0' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test23GuardedRunDelimitersCanNotBeRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a()0' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@3 facing: #Up.
	self 
		should: [ crawler process: '(0)' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test24CanNotAdvanceToABoulder

	| crawler |
	
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test25CanNotRetreatToABoulder

	| crawler |
	
	sonar boulderAt: 1@1.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 't' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test26CanNotTurnOnABoulder

	| crawler |
	
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'g' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up.
	self 
		should: [ crawler process: 'h' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test27RepeatedCommandStopsAtABoulder

	| crawler |
	
	sonar boulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a3' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test28AdvancingOnSiltSlidesARandomNumberOfCellsUpToTen

	| crawler |
	
	sonar siltAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up).
	self assert: (OrderedCollection with: 10) equals: slideRandom requestedLimits! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test29RetreatingOnSiltSlidesBackwards

	| crawler |
	
	sonar siltAt: 0@2.
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: -3@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test30SlidingOnSiltEndsWithinTheSlideLimit

	| crawler |
	
	sonar siltAt: 1@3.
	100 timesRepeat: [
		crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
		crawler process: 'a'.
		self assert: ((1 to: 10) anySatisfy: [ :cells | crawler isAt: 1@(2 + cells) facing: #Up ]) ]! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test31SiltDoesNotAffectTurning

	| crawler |
	
	sonar siltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'hhg'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test32GuardedRunWithoutProblemsKeepsItsMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: '(ah)a'.
	
	self assert: (crawler isAt: 2@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test33BoulderInGuardedRunReturnsToInitialPosition

	| crawler |
	
	sonar boulderAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test34SiltInGuardedRunReturnsToInitialPositionWithoutSliding

	| crawler |
	
	sonar siltAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(aa)' ]
		failWith: crawler siltInGuardedRunErrorDescription
		leaving: crawler at: 1@2 facing: #Up.
	self assert: slideRandom requestedLimits isEmpty! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test35InvalidCommandInGuardedRunReturnsToInitialPosition

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ahax)' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test36AllMovementsOfGuardedRunAreUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a3ht1gg4x)' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test37OnlyMovementsOfTheFailingGuardedRunAreUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(a)h(ax)' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@4 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test38ASequenceCanHaveSeveralGuardedRuns

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test39CanNotStartAGuardedRunInsideAnotherOne

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		failWith: crawler nestedGuardedRunErrorDescription
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test40GuardedRunMustBeFinished

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		failWith: crawler unfinishedGuardedRunErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test41CanNotFinishAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		failWith: crawler guardedRunNotStartedErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test42ErrorsOutsideGuardedRunsAreNotUndone

	| crawler |
	
	sonar boulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)aaa' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test43AfterAFailedGuardedRunTheCrawlerIsNotGuarded

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self should: [ crawler process: '(ax' ] raise: Error - MessageNotUnderstood.
	
	self 
		should: [ crawler process: 'ax' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:44:39 am (UTC)'!
test44UndoingRetracesMovementsEvenIfStartedOnSilt

	| crawler |
	
	sonar siltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ahax)' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up.
	self assert: slideRandom requestedLimits isEmpty! !
