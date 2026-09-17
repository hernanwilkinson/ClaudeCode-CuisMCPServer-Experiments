Object subclass: #SurveyCrawler instanceVariableNames: 'position facing sonar random runState' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #SeabedGround instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGround subclass: #FirmSandGround instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGround subclass: #SiltGround instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGround subclass: #BoulderGround instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #CrawlerRunState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunState subclass: #UnguardedRun instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunState subclass: #GuardedRun instanceVariableNames: 'undoActions' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
(CrawlerFacing withAllSubclasses) do: [ :aClass |
	#(advance: retreat: turnClockwise: turnCounterClockwise:) do: [ :aSelector | aClass removeSelector: aSelector ] ].
#(moveUp moveDown moveLeft moveRight faceUp faceDown faceLeft faceRight initializeAt:facing:) do: [ :aSelector | SurveyCrawler removeSelector: aSelector ].
SurveyCrawler class removeSelector: #at:facing:.
CrawlerFacing compile: 'direction

	self subclassResponsibility' classified: 'moving'.
CrawlerFacing compile: 'clockwise

	self subclassResponsibility' classified: 'facing'.
CrawlerFacing compile: 'counterClockwise

	self subclassResponsibility' classified: 'facing'.
CrawlerFacingUp compile: 'direction

	^0@1' classified: 'moving'.
CrawlerFacingUp compile: 'clockwise

	^CrawlerFacingRight new' classified: 'facing'.
CrawlerFacingUp compile: 'counterClockwise

	^CrawlerFacingLeft new' classified: 'facing'.
CrawlerFacingUp class compile: 'facingName

	^#Up' classified: 'facing name'.
CrawlerFacingRight compile: 'direction

	^1@0' classified: 'moving'.
CrawlerFacingRight compile: 'clockwise

	^CrawlerFacingDown new' classified: 'facing'.
CrawlerFacingRight compile: 'counterClockwise

	^CrawlerFacingUp new' classified: 'facing'.
CrawlerFacingRight class compile: 'facingName

	^#Right' classified: 'facing name'.
CrawlerFacingDown compile: 'direction

	^0@-1' classified: 'moving'.
CrawlerFacingDown compile: 'clockwise

	^CrawlerFacingLeft new' classified: 'facing'.
CrawlerFacingDown compile: 'counterClockwise

	^CrawlerFacingRight new' classified: 'facing'.
CrawlerFacingDown class compile: 'facingName

	^#Down' classified: 'facing name'.
CrawlerFacingLeft compile: 'direction

	^-1@0' classified: 'moving'.
CrawlerFacingLeft compile: 'clockwise

	^CrawlerFacingUp new' classified: 'facing'.
CrawlerFacingLeft compile: 'counterClockwise

	^CrawlerFacingDown new' classified: 'facing'.
CrawlerFacingLeft class compile: 'facingName

	^#Left' classified: 'facing name'.
SeabedGround compile: 'move: aCrawler towards: aDirection

	self subclassResponsibility' classified: 'crawler movement'.
SeabedGround compile: 'turn: aCrawler to: aFacing

	self subclassResponsibility' classified: 'crawler movement'.
FirmSandGround compile: 'move: aCrawler towards: aDirection

	aCrawler moveBy: aDirection' classified: 'crawler movement'.
FirmSandGround compile: 'turn: aCrawler to: aFacing

	aCrawler face: aFacing' classified: 'crawler movement'.
SiltGround compile: 'move: aCrawler towards: aDirection

	aCrawler slideTowards: aDirection' classified: 'crawler movement'.
SiltGround compile: 'turn: aCrawler to: aFacing

	aCrawler face: aFacing' classified: 'crawler movement'.
BoulderGround compile: 'move: aCrawler towards: aDirection

	aCrawler signalBoulderFound' classified: 'crawler movement'.
BoulderGround compile: 'turn: aCrawler to: aFacing

	aCrawler signalBoulderFound' classified: 'crawler movement'.
CrawlerRunState compile: 'startGuardedRunOf: aCrawler

	self subclassResponsibility' classified: 'guarded run'.
CrawlerRunState compile: 'finishGuardedRunOf: aCrawler

	self subclassResponsibility' classified: 'guarded run'.
CrawlerRunState compile: 'assertIsFinished

	self subclassResponsibility' classified: 'guarded run'.
CrawlerRunState compile: 'abortOn: aCrawler

	self subclassResponsibility' classified: 'guarded run'.
CrawlerRunState compile: 'recordUndo: anUndoAction

	self subclassResponsibility' classified: 'movements'.
CrawlerRunState compile: 'crawlerSlid

	self subclassResponsibility' classified: 'movements'.
UnguardedRun compile: 'startGuardedRunOf: aCrawler

	aCrawler startGuardedRun' classified: 'guarded run'.
UnguardedRun compile: 'finishGuardedRunOf: aCrawler

	self error: SurveyCrawler guardedRunNotStartedErrorDescription' classified: 'guarded run'.
UnguardedRun compile: 'assertIsFinished' classified: 'guarded run'.
UnguardedRun compile: 'abortOn: aCrawler' classified: 'guarded run'.
UnguardedRun compile: 'recordUndo: anUndoAction' classified: 'movements'.
UnguardedRun compile: 'crawlerSlid' classified: 'movements'.
GuardedRun compile: 'initialize

	undoActions := OrderedCollection new' classified: 'initialization'.
GuardedRun compile: 'startGuardedRunOf: aCrawler

	self error: SurveyCrawler nestedGuardedRunErrorDescription' classified: 'guarded run'.
GuardedRun compile: 'finishGuardedRunOf: aCrawler

	aCrawler finishGuardedRun' classified: 'guarded run'.
GuardedRun compile: 'assertIsFinished

	self error: SurveyCrawler unfinishedGuardedRunErrorDescription' classified: 'guarded run'.
GuardedRun compile: 'abortOn: aCrawler

	undoActions reverseDo: [ :anUndoAction | anUndoAction value ].
	aCrawler finishGuardedRun' classified: 'guarded run'.
GuardedRun compile: 'recordUndo: anUndoAction

	undoActions add: anUndoAction' classified: 'movements'.
GuardedRun compile: 'crawlerSlid

	self error: SurveyCrawler siltFoundInGuardedRunErrorDescription' classified: 'movements'.
SurveyCrawler class compile: 'at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar random: Random new' classified: 'instance creation'.
SurveyCrawler class compile: 'at: aPosition facing: aFacingName sonar: aSonar random: aRandom

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar random: aRandom' classified: 'instance creation'.
SurveyCrawler class compile: 'invalidFacingErrorDescription

	^''Invalid facing''' classified: 'exceptions'.
SurveyCrawler class compile: 'boulderFoundErrorDescription

	^''A boulder was found''' classified: 'exceptions'.
SurveyCrawler class compile: 'siltFoundInGuardedRunErrorDescription

	^''Silt was found during a guarded run''' classified: 'exceptions'.
SurveyCrawler class compile: 'nestedGuardedRunErrorDescription

	^''A guarded run can not be started inside another guarded run''' classified: 'exceptions'.
SurveyCrawler class compile: 'unfinishedGuardedRunErrorDescription

	^''The guarded run was not finished''' classified: 'exceptions'.
SurveyCrawler class compile: 'guardedRunNotStartedErrorDescription

	^''Can not finish a guarded run that was not started''' classified: 'exceptions'.
SurveyCrawler class compile: 'slideLimit

	^10' classified: 'sliding'.
SurveyCrawler compile: 'initializeAt: aPosition facing: aFacing sonar: aSonar random: aRandom

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	random := aRandom.
	runState := UnguardedRun new' classified: 'initialization'.
SurveyCrawler compile: 'process: aSequenceOfCommands

	| commands |
	
	commands := ReadStream on: aSequenceOfCommands.
	[ [ commands atEnd ] whileFalse: [ self processNextCommandFrom: commands ].
	runState assertIsFinished ]
		on: Error
		do: [ :anError |
			runState abortOn: self.
			anError pass ]' classified: 'command processing'.
SurveyCrawler compile: 'processNextCommandFrom: commands

	| command |
	
	command := commands next.
	(self timesToProcess: command from: commands) timesRepeat: [ self processCommand: command ]' classified: 'command processing'.
SurveyCrawler compile: 'timesToProcess: aCommand from: commands

	^((self isRepeatableCommand: aCommand) and: [ self isRepetitionNextIn: commands ])
		ifTrue: [ 1 + (commands next digitValue + 2) ]
		ifFalse: [ 1 ]' classified: 'command processing'.
SurveyCrawler compile: 'processCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].
	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^ runState startGuardedRunOf: self ].
	(self isFinishGuardedRunCommand: aCommand) ifTrue: [ ^ runState finishGuardedRunOf: self ].

	self signalInvalidCommand.' classified: 'command processing'.
SurveyCrawler compile: 'isRepeatableCommand: aCommand

	^(self isAdvanceCommand: aCommand)
		or: [ (self isRetreatCommand: aCommand)
		or: [ (self isTurnClockwiseCommand: aCommand)
		or: [ self isTurnCounterClockwiseCommand: aCommand ] ] ]' classified: 'testing'.
SurveyCrawler compile: 'isRepetitionNextIn: commands

	^commands atEnd not and: [ commands peek isDigit ]' classified: 'testing'.
SurveyCrawler compile: 'isStartGuardedRunCommand: aCommand

	^aCommand = $(' classified: 'testing'.
SurveyCrawler compile: 'isFinishGuardedRunCommand: aCommand

	^aCommand = $)' classified: 'testing'.
SurveyCrawler compile: 'advance

	self moveTowards: facing direction' classified: 'moving'.
SurveyCrawler compile: 'retreat

	self moveTowards: facing direction negated' classified: 'moving'.
SurveyCrawler compile: 'moveTowards: aDirection

	(sonar groundAt: position + aDirection) move: self towards: aDirection' classified: 'moving'.
SurveyCrawler compile: 'turnClockwise

	self turnTo: facing clockwise' classified: 'facing'.
SurveyCrawler compile: 'turnCounterClockwise

	self turnTo: facing counterClockwise' classified: 'facing'.
SurveyCrawler compile: 'turnTo: aFacing

	(sonar groundAt: position) turn: self to: aFacing' classified: 'facing'.
SurveyCrawler compile: 'moveBy: aDisplacement

	position := position + aDisplacement.
	runState recordUndo: [ position := position - aDisplacement ]' classified: 'ground movements'.
SurveyCrawler compile: 'slideTowards: aDirection

	self moveBy: aDirection * (random nextInteger: self class slideLimit).
	runState crawlerSlid' classified: 'ground movements'.
SurveyCrawler compile: 'face: aFacing

	| previousFacing |
	
	previousFacing := facing.
	facing := aFacing.
	runState recordUndo: [ facing := previousFacing ]' classified: 'ground movements'.
SurveyCrawler compile: 'signalBoulderFound

	self error: self class boulderFoundErrorDescription' classified: 'ground movements'.
SurveyCrawler compile: 'startGuardedRun

	runState := GuardedRun new' classified: 'guarded run'.
SurveyCrawler compile: 'finishGuardedRun

	runState := UnguardedRun new' classified: 'guarded run'.
'ok'
