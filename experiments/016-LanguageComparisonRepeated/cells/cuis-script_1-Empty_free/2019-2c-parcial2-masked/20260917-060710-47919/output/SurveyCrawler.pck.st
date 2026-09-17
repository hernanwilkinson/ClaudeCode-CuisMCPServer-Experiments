'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:11:20 am'!
'Description '!
!provides: 'SurveyCrawler' 1 1!
SystemOrganization addCategory: #SurveyCrawler!
SystemOrganization addCategory: #'SurveyCrawler-Tests'!


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

!classDefinition: #SeabedGroundType category: #SurveyCrawler!
Object subclass: #SeabedGroundType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedGroundType class' category: #SurveyCrawler!
SeabedGroundType class
	instanceVariableNames: ''!

!classDefinition: #Boulder category: #SurveyCrawler!
SeabedGroundType subclass: #Boulder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Boulder class' category: #SurveyCrawler!
Boulder class
	instanceVariableNames: ''!

!classDefinition: #FirmSand category: #SurveyCrawler!
SeabedGroundType subclass: #FirmSand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'FirmSand class' category: #SurveyCrawler!
FirmSand class
	instanceVariableNames: ''!

!classDefinition: #Silt category: #SurveyCrawler!
SeabedGroundType subclass: #Silt
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Silt class' category: #SurveyCrawler!
Silt class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar slideDistanceGenerator runMode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #SlideDistanceGeneratorStub category: #'SurveyCrawler-Tests'!
Object subclass: #SlideDistanceGeneratorStub
	instanceVariableNames: 'distance requestedLimits'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SlideDistanceGeneratorStub class' category: #'SurveyCrawler-Tests'!
SlideDistanceGeneratorStub class
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
	instanceVariableNames: 'sonar slideDistanceGenerator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerTest class
	instanceVariableNames: ''!


!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:08:23 pm (UTC)'!
turnClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:06:17 pm (UTC)'!
turnCounterClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
advance: aCrawler

	^aCrawler moveBy: self direction! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
direction

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
retreat: aCrawler

	^aCrawler moveBy: self direction negated! !

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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
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

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
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

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
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

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
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

!CrawlerRunMode methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
assertIsFinishedFor: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
finishGuardedRunFor: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
recordUndo: anUndoAction

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
recoverFrom: anError for: aCrawler

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
slide: aCrawler by: aDelta

	self subclassResponsibility! !

!CrawlerRunMode methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
startGuardedRunFor: aCrawler

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
initialize

	undoActions := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
assertIsFinishedFor: aCrawler

	aCrawler signalUnfinishedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
finishGuardedRunFor: aCrawler

	aCrawler finishGuardedRun! !

!CrawlerGuardedRun methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
recordUndo: anUndoAction

	undoActions addFirst: anUndoAction! !

!CrawlerGuardedRun methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
recoverFrom: anError for: aCrawler

	aCrawler finishGuardedRun.
	undoActions do: [ :anUndoAction | anUndoAction value ].
	anError pass! !

!CrawlerGuardedRun methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
slide: aCrawler by: aDelta

	aCrawler signalSiltFoundDuringGuardedRun! !

!CrawlerGuardedRun methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
startGuardedRunFor: aCrawler

	aCrawler signalGuardedRunAlreadyStarted! !

!CrawlerNormalRun methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
assertIsFinishedFor: aCrawler! !

!CrawlerNormalRun methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
finishGuardedRunFor: aCrawler

	aCrawler signalNoGuardedRunToFinish! !

!CrawlerNormalRun methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
recordUndo: anUndoAction! !

!CrawlerNormalRun methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
recoverFrom: anError for: aCrawler

	anError pass! !

!CrawlerNormalRun methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
slide: aCrawler by: aDelta

	aCrawler slideFreelyBy: aDelta! !

!CrawlerNormalRun methodsFor: 'run mode' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
startGuardedRunFor: aCrawler

	aCrawler startGuardedRun! !

!SeabedGroundType methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
move: aCrawler by: aDelta

	self subclassResponsibility! !

!SeabedGroundType methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
assertCanTurn: aCrawler

	self subclassResponsibility! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
move: aCrawler by: aDelta

	aCrawler signalBoulderFound! !

!Boulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
assertCanTurn: aCrawler

	aCrawler signalBoulderFound! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
move: aCrawler by: aDelta

	aCrawler displaceBy: aDelta! !

!FirmSand methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
assertCanTurn: aCrawler! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
move: aCrawler by: aDelta

	aCrawler slideBy: aDelta! !

!Silt methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
assertCanTurn: aCrawler! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
signalBoulderFound
	
	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
signalGuardedRunAlreadyStarted
	
	self error: self class guardedRunAlreadyStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
signalInvalidCommand
	
	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
signalInvalidRepetition
	
	self error: self class invalidRepetitionErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
signalNoGuardedRunToFinish
	
	self error: self class noGuardedRunToFinishErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
signalSiltFoundDuringGuardedRun
	
	self error: self class siltFoundDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar slideDistanceGenerator: aSlideDistanceGenerator

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slideDistanceGenerator := aSlideDistanceGenerator.
	runMode := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
assertCanTurn
	
	(sonar groundTypeAt: position) assertCanTurn: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
changeFacingTo: aNewFacing

	| previousFacing |
	
	previousFacing := facing.
	facing := aNewFacing.
	runMode recordUndo: [ facing := previousFacing ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
faceDown
	
	self changeFacingTo: CrawlerFacingDown new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
faceLeft
	
	self changeFacingTo: CrawlerFacingLeft new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
faceRight
	
	self changeFacingTo: CrawlerFacingRight new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
faceUp
	
	self changeFacingTo: CrawlerFacingUp new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
turnClockwise
	
	self assertCanTurn.
	facing turnClockwise: self! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
turnCounterClockwise
	
	self assertCanTurn.
	facing turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:19 pm (UTC)'!
isAdvanceCommand: aCommand

	^aCommand = $a ! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
isFinishGuardedRunCommand: aCommand

	^aCommand = $)! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
isRepeatableCommand: aCommand

	^(self isAdvanceCommand: aCommand) 
		or: [ (self isRetreatCommand: aCommand) 
		or: [ (self isTurnClockwiseCommand: aCommand) 
		or: [ self isTurnCounterClockwiseCommand: aCommand ] ] ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:51 pm (UTC)'!
isRetreatCommand: aCommand

	^aCommand = $t! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
isStartGuardedRunCommand: aCommand

	^aCommand = $(! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:21 pm (UTC)'!
isTurnClockwiseCommand: aCommand

	^aCommand = $h! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:51 pm (UTC)'!
isTurnCounterClockwiseCommand: aCommand

	^aCommand = $g! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
displaceBy: aDelta

	position := position + aDelta.
	runMode recordUndo: [ position := position - aDelta ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
moveBy: aDelta

	(sonar groundTypeAt: position + aDelta) move: self by: aDelta! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
slideBy: aDelta

	runMode slide: self by: aDelta! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
slideFreelyBy: aDelta

	self displaceBy: aDelta * (slideDistanceGenerator nextInteger: self class maximumSlideDistance)! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
process: aSequenceOfCommands

	[ aSequenceOfCommands 
		inject: nil 
		into: [ :previousCommand :aCommand | 
			self processCommand: aCommand after: previousCommand.
			aCommand ].
	runMode assertIsFinishedFor: self ]
		on: Error
		do: [ :anError | runMode recoverFrom: anError for: self ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
processCommand: aCommand after: aPreviousCommand

	aCommand isDigit ifTrue: [ ^self repeat: aPreviousCommand times: aCommand digitValue + 2 ].
	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^runMode startGuardedRunFor: self ].
	(self isFinishGuardedRunCommand: aCommand) ifTrue: [ ^runMode finishGuardedRunFor: self ].
	
	self processMovementCommand: aCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
processMovementCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].

	self signalInvalidCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
repeat: aCommand times: aNumberOfTimes

	(self isRepeatableCommand: aCommand) ifFalse: [ ^self signalInvalidRepetition ].
	
	aNumberOfTimes timesRepeat: [ self processMovementCommand: aCommand ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
finishGuardedRun

	runMode := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
startGuardedRun

	runMode := CrawlerGuardedRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar slideDistanceGenerator: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar slideDistanceGenerator: aSlideDistanceGenerator

	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		sonar: aSonar 
		slideDistanceGenerator: aSlideDistanceGenerator! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
maximumSlideDistance

	^10! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
boulderFoundErrorDescription
	
	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
guardedRunAlreadyStartedErrorDescription
	
	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
invalidRepetitionErrorDescription
	
	^'A repetition digit must follow an advance, retreat or turn command'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
noGuardedRunToFinishErrorDescription
	
	^'There is no guarded run to finish'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription
	
	^'Silt found during guarded run'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:09:52 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'Guarded run was not finished'! !

!SlideDistanceGeneratorStub methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
initializeReturning: aDistance

	distance := aDistance.
	requestedLimits := OrderedCollection new! !

!SlideDistanceGeneratorStub methodsFor: 'generating' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
nextInteger: aLimit

	requestedLimits add: aLimit.
	^distance! !

!SlideDistanceGeneratorStub methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
requestedLimits

	^requestedLimits! !

!SlideDistanceGeneratorStub class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
returning: aDistance

	^self new initializeReturning: aDistance! !

!SonarSimulator methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
initialize

	groundTypes := Dictionary new! !

!SonarSimulator methodsFor: 'sonar' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
groundTypeAt: aPosition

	^groundTypes at: aPosition ifAbsent: [ FirmSand new ]! !

!SonarSimulator methodsFor: 'configuration' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
boulderAt: aPosition

	groundTypes at: aPosition put: Boulder new! !

!SonarSimulator methodsFor: 'configuration' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
siltAt: aPosition

	groundTypes at: aPosition put: Silt new! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: SurveyCrawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ self crawlerAt: 1@2 facing: #X ]
		raise: Error
		withExceptionDo: [:anError |
			self assert: SurveyCrawler invalidFacingErrorDescription equals: anError messageText ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test17DigitRepeatsAdvanceDigitPlusTwoTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test18NineIsTheMaximumRepetition

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test19DigitRepeatsRetreat

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test20DigitRepeatsTurnClockwise

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test21DigitRepeatsTurnCounterClockwise

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test22RepetitionOnlyRepeatsTheLastCommand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'ha0a'.
	
	self assert: (crawler isAt: 5@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test23DigitCanNotBeTheFirstCommand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '3a' with: SurveyCrawler invalidRepetitionErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test24RepetitionIsASingleDigit

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a00' with: SurveyCrawler invalidRepetitionErrorDescription andBeAt: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test25GuardedRunDelimitersCanNotBeRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(a)2' with: SurveyCrawler invalidRepetitionErrorDescription andBeAt: 1@3 facing: #Up.
	self should: crawler failProcessing: '(2' with: SurveyCrawler invalidRepetitionErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test26RepetitionDoesNotContinueFromAPreviousSequence

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'a'.
	
	self should: crawler failProcessing: '0' with: SurveyCrawler invalidRepetitionErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test27RepetitionStopsWhenABoulderIsFound

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@5.
	
	self should: crawler failProcessing: 'a9' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test28CanNotAdvanceToABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@3.
	
	self should: crawler failProcessing: 'a' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test29CanNotRetreatToABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	sonar boulderAt: 0@2.
	
	self should: crawler failProcessing: 't' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test30CanNotTurnCounterClockwiseOnABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@2.
	
	self should: crawler failProcessing: 'g' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test31CanNotTurnClockwiseOnABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@2.
	
	self should: crawler failProcessing: 'h' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test32CanMoveAwayFromABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@2.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test33CommandsAfterAFailureAreNotProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@4.
	
	self should: crawler failProcessing: 'aaha' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test34AdvancingOnSiltSlidesInTheAdvancingDirection

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test35RetreatingOnSiltSlidesInTheRetreatingDirection

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	sonar siltAt: 2@2.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 5@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test36SlidingOnSiltIsLimitedToTenCells

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@3.
	
	crawler process: 'a'.
	
	self assert: slideDistanceGenerator requestedLimits asArray equals: #(10)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test37SlidingOnSiltEndsBetweenOneAndTenCellsAway

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
	sonar siltAt: 1@3.
	
	100 timesRepeat: [
		crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
		crawler process: 'a'.
		self assert: ((3 to: 12) anySatisfy: [ :y | crawler isAt: 1@y facing: #Up ]) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test38SiltDoesNotAffectTurning

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@2.
	
	crawler process: 'hhg'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test39FirmSandDoesNotRequireSlideDistance

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'at'.
	
	self assert: slideDistanceGenerator requestedLimits isEmpty! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test40GuardedRunWithoutProblemsMovesNormally

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: '(aah)'.
	
	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test41EmptyGuardedRunDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: '()'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test42BoulderInGuardedRunReturnsToInitialPosition

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@4.
	
	self should: crawler failProcessing: '(aa)' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test43TurnsAreUndoneWhenGuardedRunFails

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@2.
	
	self should: crawler failProcessing: '(hatgtgaah)' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test44SiltInGuardedRunFailsAndReturnsToInitialPosition

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@4.
	
	self should: crawler failProcessing: '(aa)' with: SurveyCrawler siltFoundDuringGuardedRunErrorDescription andBeAt: 1@2 facing: #Up.
	self assert: slideDistanceGenerator requestedLimits isEmpty! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test45InvalidCommandInGuardedRunReturnsToInitialPosition

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(ahax)' with: SurveyCrawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test46InvalidRepetitionInGuardedRunReturnsToInitialPosition

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(a33)' with: SurveyCrawler invalidRepetitionErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test47RepeatedCommandsAreUndoneWhenGuardedRunFails

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@6.
	
	self should: crawler failProcessing: '(a3)' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test48GuardedRunCanNotBeStartedInsideAnotherGuardedRun

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'aa(aa(ht)a)' with: SurveyCrawler guardedRunAlreadyStartedErrorDescription andBeAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test49GuardedRunMustBeFinished

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a(aa' with: SurveyCrawler unfinishedGuardedRunErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test50CanNotFinishAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a)a' with: SurveyCrawler noGuardedRunToFinishErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test51SequenceCanHaveSeveralGuardedRuns

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test52FailedGuardedRunOnlyUndoesItsOwnMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a(a)a(ahx)' with: SurveyCrawler invalidCommandErrorDescription andBeAt: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test53FailureOutsideGuardedRunDoesNotUndoMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(ah)ax' with: SurveyCrawler invalidCommandErrorDescription andBeAt: 2@3 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test54SlideBeforeGuardedRunIsNotUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@3.
	
	self should: crawler failProcessing: 'a(ax)' with: SurveyCrawler invalidCommandErrorDescription andBeAt: 1@6 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
test55CrawlerCanStartAGuardedRunAfterAFailedOne

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(ax' with: SurveyCrawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up.
	crawler process: '(a)'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:11:00 am (UTC)'!
test56CrawlerIsNotGuardedAfterAFailedGuardedRun

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@4.
	
	self should: crawler failProcessing: '(ax' with: SurveyCrawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up.
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@7 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:11:00 am (UTC)'!
test57CrawlerIsNotGuardedAfterAFinishedGuardedRun

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@4.
	
	crawler process: '(a)a'.
	
	self assert: (crawler isAt: 1@7 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
setUp

	sonar := SonarSimulator new.
	slideDistanceGenerator := SlideDistanceGeneratorStub returning: 4! !

!SurveyCrawlerTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: sonar slideDistanceGenerator: slideDistanceGenerator! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:10:51 am (UTC)'!
should: aCrawler failProcessing: aSequenceOfCommands with: anErrorDescription andBeAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !
