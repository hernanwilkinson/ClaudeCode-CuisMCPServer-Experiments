"----- Ground types -----"
Object subclass: #SeabedGroundType instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGroundType subclass: #FirmSand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGroundType subclass: #Silt instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGroundType subclass: #Boulder instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.

SeabedGroundType compile: 'move: aCrawler by: aDelta

	self subclassResponsibility' classified: 'moving'.
SeabedGroundType compile: 'assertCanTurn: aCrawler

	self subclassResponsibility' classified: 'facing'.

FirmSand compile: 'move: aCrawler by: aDelta

	aCrawler displaceBy: aDelta' classified: 'moving'.
FirmSand compile: 'assertCanTurn: aCrawler' classified: 'facing'.

Silt compile: 'move: aCrawler by: aDelta

	aCrawler slideBy: aDelta' classified: 'moving'.
Silt compile: 'assertCanTurn: aCrawler' classified: 'facing'.

Boulder compile: 'move: aCrawler by: aDelta

	aCrawler signalBoulderFound' classified: 'moving'.
Boulder compile: 'assertCanTurn: aCrawler

	aCrawler signalBoulderFound' classified: 'facing'.

"----- Run modes -----"
Object subclass: #CrawlerRunMode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunMode subclass: #CrawlerNormalRun instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunMode subclass: #CrawlerGuardedRun instanceVariableNames: 'undoActions' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.

#( 'startGuardedRunFor: aCrawler' 'finishGuardedRunFor: aCrawler' 'assertIsFinishedFor: aCrawler' 'recoverFrom: anError for: aCrawler' 'slide: aCrawler by: aDelta' 'recordUndo: anUndoAction' ) do: [ :header |
	CrawlerRunMode compile: header, '

	self subclassResponsibility' classified: 'run mode' ].

CrawlerNormalRun compile: 'startGuardedRunFor: aCrawler

	aCrawler startGuardedRun' classified: 'run mode'.
CrawlerNormalRun compile: 'finishGuardedRunFor: aCrawler

	aCrawler signalNoGuardedRunToFinish' classified: 'run mode'.
CrawlerNormalRun compile: 'assertIsFinishedFor: aCrawler' classified: 'run mode'.
CrawlerNormalRun compile: 'recoverFrom: anError for: aCrawler

	anError pass' classified: 'run mode'.
CrawlerNormalRun compile: 'slide: aCrawler by: aDelta

	aCrawler slideFreelyBy: aDelta' classified: 'run mode'.
CrawlerNormalRun compile: 'recordUndo: anUndoAction' classified: 'run mode'.

CrawlerGuardedRun compile: 'initialize

	undoActions := OrderedCollection new' classified: 'initialization'.
CrawlerGuardedRun compile: 'startGuardedRunFor: aCrawler

	aCrawler signalGuardedRunAlreadyStarted' classified: 'run mode'.
CrawlerGuardedRun compile: 'finishGuardedRunFor: aCrawler

	aCrawler finishGuardedRun' classified: 'run mode'.
CrawlerGuardedRun compile: 'assertIsFinishedFor: aCrawler

	aCrawler signalUnfinishedGuardedRun' classified: 'run mode'.
CrawlerGuardedRun compile: 'recoverFrom: anError for: aCrawler

	aCrawler finishGuardedRun.
	undoActions do: [ :anUndoAction | anUndoAction value ].
	anError pass' classified: 'run mode'.
CrawlerGuardedRun compile: 'slide: aCrawler by: aDelta

	aCrawler signalSiltFoundDuringGuardedRun' classified: 'run mode'.
CrawlerGuardedRun compile: 'recordUndo: anUndoAction

	undoActions addFirst: anUndoAction' classified: 'run mode'.

"----- Facings: movement expressed as a direction -----"
CrawlerFacing compile: 'direction

	self subclassResponsibility' classified: 'moving'.
CrawlerFacing compile: 'advance: aCrawler

	^aCrawler moveBy: self direction' classified: 'moving'.
CrawlerFacing compile: 'retreat: aCrawler

	^aCrawler moveBy: self direction negated' classified: 'moving'.
{ CrawlerFacingUp -> '0@1'. CrawlerFacingDown -> '0@-1'. CrawlerFacingLeft -> '-1@0'. CrawlerFacingRight -> '1@0' } do: [ :each |
	each key removeSelector: #advance:; removeSelector: #retreat:.
	each key compile: 'direction

	^', each value classified: 'moving'.
	each key class organization classify: #facingName under: 'facing name' ].

"----- Crawler -----"
Object subclass: #SurveyCrawler instanceVariableNames: 'position facing sonar slideDistanceGenerator runMode' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.

#( #moveUp #moveDown #moveLeft #moveRight #invalidCommandErrorDescription #processCommand: #initializeAt:facing: ) do: [ :aSelector | SurveyCrawler removeSelector: aSelector ].
SurveyCrawler class removeSelector: #at:facing:.

SurveyCrawler class compile: 'at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar slideDistanceGenerator: Random new' classified: 'instance creation'.
SurveyCrawler class compile: 'at: aPosition facing: aFacingName sonar: aSonar slideDistanceGenerator: aSlideDistanceGenerator

	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		sonar: aSonar 
		slideDistanceGenerator: aSlideDistanceGenerator' classified: 'instance creation'.
SurveyCrawler class compile: 'maximumSlideDistance

	^10' classified: 'moving'.
{
	#invalidCommandErrorDescription -> 'Invalid command'.
	#invalidRepetitionErrorDescription -> 'A repetition digit must follow an advance, retreat or turn command'.
	#boulderFoundErrorDescription -> 'Boulder found'.
	#siltFoundDuringGuardedRunErrorDescription -> 'Silt found during guarded run'.
	#guardedRunAlreadyStartedErrorDescription -> 'A guarded run can not be started inside another guarded run'.
	#noGuardedRunToFinishErrorDescription -> 'There is no guarded run to finish'.
	#unfinishedGuardedRunErrorDescription -> 'Guarded run was not finished'.
} do: [ :each |
	SurveyCrawler class compile: each key, '
	
	^''', each value, '''' classified: 'exceptions' ].

SurveyCrawler compile: 'initializeAt: aPosition facing: aFacing sonar: aSonar slideDistanceGenerator: aSlideDistanceGenerator

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slideDistanceGenerator := aSlideDistanceGenerator.
	runMode := CrawlerNormalRun new' classified: 'initialization'.

SurveyCrawler compile: 'process: aSequenceOfCommands

	[ aSequenceOfCommands 
		inject: nil 
		into: [ :previousCommand :aCommand | 
			self processCommand: aCommand after: previousCommand.
			aCommand ].
	runMode assertIsFinishedFor: self ]
		on: Error
		do: [ :anError | runMode recoverFrom: anError for: self ]' classified: 'command processing'.
SurveyCrawler compile: 'processCommand: aCommand after: aPreviousCommand

	aCommand isDigit ifTrue: [ ^self repeat: aPreviousCommand times: aCommand digitValue + 2 ].
	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^runMode startGuardedRunFor: self ].
	(self isFinishGuardedRunCommand: aCommand) ifTrue: [ ^runMode finishGuardedRunFor: self ].
	
	self processMovementCommand: aCommand' classified: 'command processing'.
SurveyCrawler compile: 'repeat: aCommand times: aNumberOfTimes

	(self isRepeatableCommand: aCommand) ifFalse: [ ^self signalInvalidRepetition ].
	
	aNumberOfTimes timesRepeat: [ self processMovementCommand: aCommand ]' classified: 'command processing'.
SurveyCrawler compile: 'processMovementCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].

	self signalInvalidCommand' classified: 'command processing'.

SurveyCrawler compile: 'isRepeatableCommand: aCommand

	^(self isAdvanceCommand: aCommand) 
		or: [ (self isRetreatCommand: aCommand) 
		or: [ (self isTurnClockwiseCommand: aCommand) 
		or: [ self isTurnCounterClockwiseCommand: aCommand ] ] ]' classified: 'testing'.
SurveyCrawler compile: 'isStartGuardedRunCommand: aCommand

	^aCommand = $(' classified: 'testing'.
SurveyCrawler compile: 'isFinishGuardedRunCommand: aCommand

	^aCommand = $)' classified: 'testing'.

SurveyCrawler compile: 'moveBy: aDelta

	(sonar groundTypeAt: position + aDelta) move: self by: aDelta' classified: 'moving'.
SurveyCrawler compile: 'slideBy: aDelta

	runMode slide: self by: aDelta' classified: 'moving'.
SurveyCrawler compile: 'slideFreelyBy: aDelta

	self displaceBy: aDelta * (slideDistanceGenerator nextInteger: self class maximumSlideDistance)' classified: 'moving'.
SurveyCrawler compile: 'displaceBy: aDelta

	position := position + aDelta.
	runMode recordUndo: [ position := position - aDelta ]' classified: 'moving'.

SurveyCrawler compile: 'turnClockwise
	
	self assertCanTurn.
	facing turnClockwise: self' classified: 'facing'.
SurveyCrawler compile: 'turnCounterClockwise
	
	self assertCanTurn.
	facing turnCounterClockwise: self' classified: 'facing'.
SurveyCrawler compile: 'assertCanTurn
	
	(sonar groundTypeAt: position) assertCanTurn: self' classified: 'facing'.
SurveyCrawler compile: 'changeFacingTo: aNewFacing

	| previousFacing |
	
	previousFacing := facing.
	facing := aNewFacing.
	runMode recordUndo: [ facing := previousFacing ]' classified: 'facing'.
{ #faceUp -> #CrawlerFacingUp. #faceDown -> #CrawlerFacingDown. #faceLeft -> #CrawlerFacingLeft. #faceRight -> #CrawlerFacingRight } do: [ :each |
	SurveyCrawler compile: each key, '
	
	self changeFacingTo: ', each value, ' new' classified: 'facing' ].

SurveyCrawler compile: 'startGuardedRun

	runMode := CrawlerGuardedRun new' classified: 'guarded run'.
SurveyCrawler compile: 'finishGuardedRun

	runMode := CrawlerNormalRun new' classified: 'guarded run'.

{
	#signalInvalidCommand -> #invalidCommandErrorDescription.
	#signalInvalidRepetition -> #invalidRepetitionErrorDescription.
	#signalBoulderFound -> #boulderFoundErrorDescription.
	#signalSiltFoundDuringGuardedRun -> #siltFoundDuringGuardedRunErrorDescription.
	#signalGuardedRunAlreadyStarted -> #guardedRunAlreadyStartedErrorDescription.
	#signalNoGuardedRunToFinish -> #noGuardedRunToFinishErrorDescription.
	#signalUnfinishedGuardedRun -> #unfinishedGuardedRunErrorDescription.
} do: [ :each |
	SurveyCrawler compile: each key, '
	
	self error: self class ', each value classified: 'exceptions' ].
'ok'
