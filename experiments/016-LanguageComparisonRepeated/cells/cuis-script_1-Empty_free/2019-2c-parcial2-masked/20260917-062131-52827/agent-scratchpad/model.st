(Smalltalk at: #SurveyCrawler) class compile: 'at: aPosition facing: aFacingName

	^self at: aPosition facing: aFacingName sonar: SimulatedSonar allFirmSand' classified: 'instance creation'.
(Smalltalk at: #SurveyCrawler) class compile: 'at: aPosition facing: aFacingName sonar: aSonar

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar' classified: 'instance creation'.
(Smalltalk at: #SurveyCrawler) compile: 'initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	runMode := CrawlerNormalRun new' classified: 'initialization'.
(Smalltalk at: #SurveyCrawler) compile: 'process: aSequenceOfCommands

	lastRepeatableCommand := nil.
	aSequenceOfCommands do: [ :aCommand | runMode process: aCommand for: self ].
	runMode finishCommandSequenceFor: self' classified: 'command processing'.
(Smalltalk at: #SurveyCrawler) compile: 'processCommand: aCommand

	| commandToRepeat |
	
	commandToRepeat := lastRepeatableCommand.
	lastRepeatableCommand := nil.
	
	aCommand isDigit ifTrue: [ ^self repeat: commandToRepeat times: aCommand digitValue + 2 ].
	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^runMode startGuardedRunFor: self ].
	(self isEndGuardedRunCommand: aCommand) ifTrue: [ ^runMode endGuardedRunFor: self ].
	
	self processMovementCommand: aCommand.
	lastRepeatableCommand := aCommand' classified: 'command processing'.
(Smalltalk at: #SurveyCrawler) compile: 'processMovementCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].

	self signalInvalidCommand' classified: 'command processing'.
(Smalltalk at: #SurveyCrawler) compile: 'repeat: aCommand times: aNumberOfRepetitions

	aCommand ifNil: [ ^self signalInvalidRepetition ].
	
	aNumberOfRepetitions timesRepeat: [ self processMovementCommand: aCommand ]' classified: 'command processing'.
(Smalltalk at: #SurveyCrawler) compile: 'isStartGuardedRunCommand: aCommand

	^aCommand = $(' classified: 'testing'.
(Smalltalk at: #SurveyCrawler) compile: 'isEndGuardedRunCommand: aCommand

	^aCommand = $)' classified: 'testing'.
(Smalltalk at: #SurveyCrawler) compile: 'moveDown
	
	self moveTowards: 0@-1' classified: 'moving'.
(Smalltalk at: #SurveyCrawler) compile: 'moveLeft
	
	self moveTowards: -1@0' classified: 'moving'.
(Smalltalk at: #SurveyCrawler) compile: 'moveRight
	
	self moveTowards: 1@0' classified: 'moving'.
(Smalltalk at: #SurveyCrawler) compile: 'moveUp
	
	self moveTowards: 0@1' classified: 'moving'.
(Smalltalk at: #SurveyCrawler) compile: 'moveTowards: aDirection

	(sonar groundTypeAt: position + aDirection) moveCrawler: self towards: aDirection' classified: 'moving'.
(Smalltalk at: #SurveyCrawler) compile: 'slideTowards: aDirection cells: aNumberOfCells

	runMode slide: self towards: aDirection cells: aNumberOfCells' classified: 'moving'.
(Smalltalk at: #SurveyCrawler) compile: 'displaceBy: aDisplacement

	position := position + aDisplacement.
	runMode recordUndoAction: [ self displaceBy: aDisplacement negated ]' classified: 'moving'.
(Smalltalk at: #SurveyCrawler) compile: 'turnClockwise
	
	self 
		turnDoing: [ facing turnClockwise: self ]
		undoneBy: [ facing turnCounterClockwise: self ]' classified: 'facing'.
(Smalltalk at: #SurveyCrawler) compile: 'turnCounterClockwise
	
	self 
		turnDoing: [ facing turnCounterClockwise: self ]
		undoneBy: [ facing turnClockwise: self ]' classified: 'facing'.
(Smalltalk at: #SurveyCrawler) compile: 'turnDoing: aTurnAction undoneBy: anUndoAction

	(sonar groundTypeAt: position) turnCrawler: self doing: aTurnAction undoneBy: anUndoAction' classified: 'facing'.
(Smalltalk at: #SurveyCrawler) compile: 'changeFacingDoing: aTurnAction undoneBy: anUndoAction

	aTurnAction value.
	runMode recordUndoAction: anUndoAction' classified: 'facing'.
(Smalltalk at: #SurveyCrawler) compile: 'startGuardedRun

	runMode := CrawlerGuardedRun new' classified: 'guarded run'.
(Smalltalk at: #SurveyCrawler) compile: 'endGuardedRun

	runMode := CrawlerNormalRun new' classified: 'guarded run'.
(Smalltalk at: #SurveyCrawler) compile: 'signalInvalidRepetition
	
	self error: self invalidRepetitionErrorDescription' classified: 'exceptions'.
(Smalltalk at: #SurveyCrawler) compile: 'invalidRepetitionErrorDescription
	
	^''A repetition digit must follow a movement command''' classified: 'exceptions'.
(Smalltalk at: #SurveyCrawler) compile: 'signalBoulderFound
	
	self error: self boulderFoundErrorDescription' classified: 'exceptions'.
(Smalltalk at: #SurveyCrawler) compile: 'boulderFoundErrorDescription
	
	^''Boulder found''' classified: 'exceptions'.
(Smalltalk at: #SurveyCrawler) compile: 'signalSiltFoundInGuardedRun
	
	self error: self siltFoundInGuardedRunErrorDescription' classified: 'exceptions'.
(Smalltalk at: #SurveyCrawler) compile: 'siltFoundInGuardedRunErrorDescription
	
	^''Silt found during a guarded run''' classified: 'exceptions'.
(Smalltalk at: #SurveyCrawler) compile: 'signalNestedGuardedRun
	
	self error: self nestedGuardedRunErrorDescription' classified: 'exceptions'.
(Smalltalk at: #SurveyCrawler) compile: 'nestedGuardedRunErrorDescription
	
	^''A guarded run can not be started inside another guarded run''' classified: 'exceptions'.
(Smalltalk at: #SurveyCrawler) compile: 'signalGuardedRunNotStarted
	
	self error: self guardedRunNotStartedErrorDescription' classified: 'exceptions'.
(Smalltalk at: #SurveyCrawler) compile: 'guardedRunNotStartedErrorDescription
	
	^''Can not finish a guarded run that was not started''' classified: 'exceptions'.
(Smalltalk at: #SurveyCrawler) compile: 'signalUnfinishedGuardedRun
	
	self error: self unfinishedGuardedRunErrorDescription' classified: 'exceptions'.
(Smalltalk at: #SurveyCrawler) compile: 'unfinishedGuardedRunErrorDescription
	
	^''Guarded run was not finished''' classified: 'exceptions'.
(Smalltalk at: #SimulatedSonar) class compile: 'allFirmSand

	^self withGroundTypes: Dictionary new' classified: 'instance creation'.
(Smalltalk at: #SimulatedSonar) class compile: 'withGroundTypes: aDictionaryOfGroundTypesByPosition

	^self new initializeWithGroundTypes: aDictionaryOfGroundTypesByPosition' classified: 'instance creation'.
(Smalltalk at: #SimulatedSonar) compile: 'initializeWithGroundTypes: aDictionaryOfGroundTypesByPosition

	groundTypesByPosition := aDictionaryOfGroundTypesByPosition' classified: 'initialization'.
(Smalltalk at: #SimulatedSonar) compile: 'groundTypeAt: aPosition

	^groundTypesByPosition at: aPosition ifAbsent: [ FirmSandGround new ]' classified: 'sensing'.
(Smalltalk at: #SeabedGround) compile: 'moveCrawler: aCrawler towards: aDirection

	self subclassResponsibility' classified: 'crawler movement'.
(Smalltalk at: #SeabedGround) compile: 'turnCrawler: aCrawler doing: aTurnAction undoneBy: anUndoAction

	self subclassResponsibility' classified: 'crawler movement'.
(Smalltalk at: #FirmSandGround) compile: 'moveCrawler: aCrawler towards: aDirection

	aCrawler displaceBy: aDirection' classified: 'crawler movement'.
(Smalltalk at: #FirmSandGround) compile: 'turnCrawler: aCrawler doing: aTurnAction undoneBy: anUndoAction

	aCrawler changeFacingDoing: aTurnAction undoneBy: anUndoAction' classified: 'crawler movement'.
(Smalltalk at: #BoulderGround) compile: 'moveCrawler: aCrawler towards: aDirection

	aCrawler signalBoulderFound' classified: 'crawler movement'.
(Smalltalk at: #BoulderGround) compile: 'turnCrawler: aCrawler doing: aTurnAction undoneBy: anUndoAction

	aCrawler signalBoulderFound' classified: 'crawler movement'.
(Smalltalk at: #SiltGround) class compile: 'new

	^self slidingWith: Random new' classified: 'instance creation'.
(Smalltalk at: #SiltGround) class compile: 'slidingWith: aSlideDistanceGenerator

	^self basicNew initializeSlidingWith: aSlideDistanceGenerator' classified: 'instance creation'.
(Smalltalk at: #SiltGround) class compile: 'maximumSlideDistance

	^10' classified: 'sliding'.
(Smalltalk at: #SiltGround) compile: 'initializeSlidingWith: aSlideDistanceGenerator

	slideDistanceGenerator := aSlideDistanceGenerator' classified: 'initialization'.
(Smalltalk at: #SiltGround) compile: 'moveCrawler: aCrawler towards: aDirection

	aCrawler 
		slideTowards: aDirection 
		cells: (slideDistanceGenerator nextInteger: self class maximumSlideDistance)' classified: 'crawler movement'.
(Smalltalk at: #SiltGround) compile: 'turnCrawler: aCrawler doing: aTurnAction undoneBy: anUndoAction

	aCrawler changeFacingDoing: aTurnAction undoneBy: anUndoAction' classified: 'crawler movement'.
(Smalltalk at: #CrawlerRunMode) compile: 'process: aCommand for: aCrawler

	self subclassResponsibility' classified: 'command processing'.
(Smalltalk at: #CrawlerRunMode) compile: 'finishCommandSequenceFor: aCrawler

	self subclassResponsibility' classified: 'command processing'.
(Smalltalk at: #CrawlerRunMode) compile: 'startGuardedRunFor: aCrawler

	self subclassResponsibility' classified: 'guarded run'.
(Smalltalk at: #CrawlerRunMode) compile: 'endGuardedRunFor: aCrawler

	self subclassResponsibility' classified: 'guarded run'.
(Smalltalk at: #CrawlerRunMode) compile: 'slide: aCrawler towards: aDirection cells: aNumberOfCells

	self subclassResponsibility' classified: 'moving'.
(Smalltalk at: #CrawlerRunMode) compile: 'recordUndoAction: anUndoAction

	self subclassResponsibility' classified: 'undoing'.
(Smalltalk at: #CrawlerNormalRun) compile: 'process: aCommand for: aCrawler

	aCrawler processCommand: aCommand' classified: 'command processing'.
(Smalltalk at: #CrawlerNormalRun) compile: 'finishCommandSequenceFor: aCrawler

	' classified: 'command processing'.
(Smalltalk at: #CrawlerNormalRun) compile: 'startGuardedRunFor: aCrawler

	aCrawler startGuardedRun' classified: 'guarded run'.
(Smalltalk at: #CrawlerNormalRun) compile: 'endGuardedRunFor: aCrawler

	aCrawler signalGuardedRunNotStarted' classified: 'guarded run'.
(Smalltalk at: #CrawlerNormalRun) compile: 'slide: aCrawler towards: aDirection cells: aNumberOfCells

	aCrawler displaceBy: aDirection * aNumberOfCells' classified: 'moving'.
(Smalltalk at: #CrawlerNormalRun) compile: 'recordUndoAction: anUndoAction

	' classified: 'undoing'.
(Smalltalk at: #CrawlerGuardedRun) class compile: 'new

	^super new initialize' classified: 'instance creation'.
(Smalltalk at: #CrawlerGuardedRun) compile: 'initialize

	undoActions := OrderedCollection new' classified: 'initialization'.
(Smalltalk at: #CrawlerGuardedRun) compile: 'process: aCommand for: aCrawler

	[ aCrawler processCommand: aCommand ]
		on: Error
		do: [ :anError |
			self undoMovementsOf: aCrawler.
			anError pass ]' classified: 'command processing'.
(Smalltalk at: #CrawlerGuardedRun) compile: 'finishCommandSequenceFor: aCrawler

	self undoMovementsOf: aCrawler.
	aCrawler signalUnfinishedGuardedRun' classified: 'command processing'.
(Smalltalk at: #CrawlerGuardedRun) compile: 'startGuardedRunFor: aCrawler

	aCrawler signalNestedGuardedRun' classified: 'guarded run'.
(Smalltalk at: #CrawlerGuardedRun) compile: 'endGuardedRunFor: aCrawler

	aCrawler endGuardedRun' classified: 'guarded run'.
(Smalltalk at: #CrawlerGuardedRun) compile: 'slide: aCrawler towards: aDirection cells: aNumberOfCells

	aCrawler signalSiltFoundInGuardedRun' classified: 'moving'.
(Smalltalk at: #CrawlerGuardedRun) compile: 'recordUndoAction: anUndoAction

	undoActions add: anUndoAction' classified: 'undoing'.
(Smalltalk at: #CrawlerGuardedRun) compile: 'undoMovementsOf: aCrawler

	aCrawler endGuardedRun.
	undoActions reverseDo: [ :anUndoAction | anUndoAction value ]' classified: 'undoing'.
(Smalltalk at: #SlideDistanceGeneratorStub) class compile: 'alwaysSliding: aDistance

	^self new initializeAlwaysSliding: aDistance' classified: 'instance creation'.
(Smalltalk at: #SlideDistanceGeneratorStub) compile: 'initializeAlwaysSliding: aDistance

	distance := aDistance' classified: 'initialization'.
(Smalltalk at: #SlideDistanceGeneratorStub) compile: 'nextInteger: aLimit

	requestedLimit := aLimit.
	^distance' classified: 'generating'.
(Smalltalk at: #SlideDistanceGeneratorStub) compile: 'requestedLimit

	^requestedLimit' classified: 'accessing'.
#done
