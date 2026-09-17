Object subclass: #SurveyCrawler instanceVariableNames: 'position facing sonar random runMode lastCommand' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #SeabedGroundType instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGroundType subclass: #SeabedFirmSand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGroundType subclass: #SeabedSilt instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGroundType subclass: #SeabedBoulder instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #CrawlerRunMode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunMode subclass: #CrawlerFreeRun instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunMode subclass: #CrawlerGuardedRun instanceVariableNames: 'undoActions' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #CrawlerCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerCommand subclass: #CrawlerAdvanceCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerCommand subclass: #CrawlerRetreatCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerCommand subclass: #CrawlerTurnClockwiseCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerCommand subclass: #CrawlerTurnCounterClockwiseCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerCommand subclass: #CrawlerStartGuardedRunCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerCommand subclass: #CrawlerEndGuardedRunCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
Object subclass: #CrawlerNonRepeatableCommand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
#(#moveUp #moveDown #moveLeft #moveRight #isAdvanceCommand: #isRetreatCommand: #isTurnClockwiseCommand: #isTurnCounterClockwiseCommand: #initializeAt:facing:) do: [:each | SurveyCrawler removeSelector: each].
SurveyCrawler class removeSelector: #at:facing:.
{CrawlerFacing. CrawlerFacingUp. CrawlerFacingDown. CrawlerFacingLeft. CrawlerFacingRight} do: [:each | each removeSelector: #advance:; removeSelector: #retreat:].
{CrawlerFacingUp. CrawlerFacingDown. CrawlerFacingLeft. CrawlerFacingRight} do: [:each | each class organization classify: #facingName under: 'facing name'].
SurveyCrawler class compile: 'at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar random: Random new' classified: 'instance creation'.
SurveyCrawler class compile: 'at: aPosition facing: aFacingName sonar: aSonar random: aRandom
	
	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar random: aRandom' classified: 'instance creation'.
SurveyCrawler class compile: 'siltSlideLimit

	^10' classified: 'silt'.
SurveyCrawler compile: 'initializeAt: aPosition facing: aFacing sonar: aSonar random: aRandom

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	random := aRandom.
	runMode := CrawlerFreeRun new.
	lastCommand := CrawlerNonRepeatableCommand new' classified: 'initialization'.
SurveyCrawler compile: 'process: aSequenceOfCommands

	lastCommand := CrawlerNonRepeatableCommand new.
	[ aSequenceOfCommands do: [:aCommand | self processCommand: aCommand ].
	runMode assertFinishedOn: self ]
		on: Error
		do: [:anError |
			runMode abortOn: self.
			anError pass ]' classified: 'command processing'.
SurveyCrawler compile: 'processCommand: aCommand

	| command |
	
	aCommand isDigit ifTrue: [ ^self repeatLastCommand: aCommand digitValue ].
	
	command := CrawlerCommand for: aCommand ifNone: [ ^self signalInvalidCommand ].
	command executeOn: self.
	lastCommand := command asRepeatableCommand' classified: 'command processing'.
SurveyCrawler compile: 'repeatLastCommand: aDigit

	| commandToRepeat |
	
	commandToRepeat := lastCommand.
	lastCommand := CrawlerNonRepeatableCommand new.
	commandToRepeat repeat: aDigit + 2 on: self' classified: 'command processing'.
SurveyCrawler compile: 'advance
	
	self moveTowards: facing direction' classified: 'moving'.
SurveyCrawler compile: 'retreat
	
	self moveTowards: facing direction negated' classified: 'moving'.
SurveyCrawler compile: 'moveTowards: aDirection

	(sonar groundTypeAt: position + aDirection) receive: self movingTowards: aDirection' classified: 'moving'.
SurveyCrawler compile: 'displaceBy: aDisplacement

	position := position + aDisplacement.
	runMode registerUndo: [ position := position - aDisplacement ]' classified: 'moving'.
SurveyCrawler compile: 'slideTowards: aDirection

	runMode slide: self towards: aDirection' classified: 'moving'.
SurveyCrawler compile: 'slideFreelyTowards: aDirection

	self displaceBy: aDirection * (random nextInteger: self class siltSlideLimit)' classified: 'moving'.
SurveyCrawler compile: 'turnClockwise
	
	(sonar groundTypeAt: position) allowTurningOf: self.
	facing turnClockwise: self.
	runMode registerUndo: [ facing turnCounterClockwise: self ]' classified: 'facing'.
SurveyCrawler compile: 'turnCounterClockwise
	
	(sonar groundTypeAt: position) allowTurningOf: self.
	facing turnCounterClockwise: self.
	runMode registerUndo: [ facing turnClockwise: self ]' classified: 'facing'.
SurveyCrawler compile: 'startGuardedRun

	runMode startGuardedRunOn: self' classified: 'guarded run'.
SurveyCrawler compile: 'endGuardedRun

	runMode endGuardedRunOn: self' classified: 'guarded run'.
SurveyCrawler compile: 'changeRunModeTo: aRunMode

	runMode := aRunMode' classified: 'guarded run'.
SurveyCrawler compile: 'boulderFoundErrorDescription

	^''Boulder found''' classified: 'exceptions'.
SurveyCrawler compile: 'siltInGuardedRunErrorDescription

	^''Silt found during guarded run''' classified: 'exceptions'.
SurveyCrawler compile: 'nestedGuardedRunErrorDescription

	^''Can not start a guarded run inside another guarded run''' classified: 'exceptions'.
SurveyCrawler compile: 'unfinishedGuardedRunErrorDescription

	^''Guarded run was not finished''' classified: 'exceptions'.
SurveyCrawler compile: 'guardedRunNotStartedErrorDescription

	^''Can not finish a guarded run that was not started''' classified: 'exceptions'.
SurveyCrawler compile: 'signalBoulderFound

	self error: self boulderFoundErrorDescription' classified: 'exceptions'.
SurveyCrawler compile: 'signalSiltInGuardedRun

	self error: self siltInGuardedRunErrorDescription' classified: 'exceptions'.
SurveyCrawler compile: 'signalNestedGuardedRun

	self error: self nestedGuardedRunErrorDescription' classified: 'exceptions'.
SurveyCrawler compile: 'signalUnfinishedGuardedRun

	self error: self unfinishedGuardedRunErrorDescription' classified: 'exceptions'.
SurveyCrawler compile: 'signalGuardedRunNotStarted

	self error: self guardedRunNotStartedErrorDescription' classified: 'exceptions'.
CrawlerFacing compile: 'direction

	self subclassResponsibility' classified: 'moving'.
CrawlerFacingUp compile: 'direction

	^0@1' classified: 'moving'.
CrawlerFacingDown compile: 'direction

	^0@-1' classified: 'moving'.
CrawlerFacingLeft compile: 'direction

	^-1@0' classified: 'moving'.
CrawlerFacingRight compile: 'direction

	^1@0' classified: 'moving'.
SeabedGroundType compile: 'receive: aCrawler movingTowards: aDirection

	self subclassResponsibility' classified: 'moving'.
SeabedGroundType compile: 'allowTurningOf: aCrawler

	self subclassResponsibility' classified: 'facing'.
SeabedFirmSand compile: 'receive: aCrawler movingTowards: aDirection

	aCrawler displaceBy: aDirection' classified: 'moving'.
SeabedFirmSand compile: 'allowTurningOf: aCrawler' classified: 'facing'.
SeabedSilt compile: 'receive: aCrawler movingTowards: aDirection

	aCrawler slideTowards: aDirection' classified: 'moving'.
SeabedSilt compile: 'allowTurningOf: aCrawler' classified: 'facing'.
SeabedBoulder compile: 'receive: aCrawler movingTowards: aDirection

	aCrawler signalBoulderFound' classified: 'moving'.
SeabedBoulder compile: 'allowTurningOf: aCrawler

	aCrawler signalBoulderFound' classified: 'facing'.
CrawlerRunMode compile: 'registerUndo: anUndoAction

	self subclassResponsibility' classified: 'undoing'.
CrawlerRunMode compile: 'abortOn: aCrawler

	self subclassResponsibility' classified: 'undoing'.
CrawlerRunMode compile: 'slide: aCrawler towards: aDirection

	self subclassResponsibility' classified: 'moving'.
CrawlerRunMode compile: 'startGuardedRunOn: aCrawler

	self subclassResponsibility' classified: 'guarded run'.
CrawlerRunMode compile: 'endGuardedRunOn: aCrawler

	self subclassResponsibility' classified: 'guarded run'.
CrawlerRunMode compile: 'assertFinishedOn: aCrawler

	self subclassResponsibility' classified: 'guarded run'.
CrawlerFreeRun compile: 'registerUndo: anUndoAction' classified: 'undoing'.
CrawlerFreeRun compile: 'abortOn: aCrawler' classified: 'undoing'.
CrawlerFreeRun compile: 'slide: aCrawler towards: aDirection

	aCrawler slideFreelyTowards: aDirection' classified: 'moving'.
CrawlerFreeRun compile: 'startGuardedRunOn: aCrawler

	aCrawler changeRunModeTo: CrawlerGuardedRun new' classified: 'guarded run'.
CrawlerFreeRun compile: 'endGuardedRunOn: aCrawler

	aCrawler signalGuardedRunNotStarted' classified: 'guarded run'.
CrawlerFreeRun compile: 'assertFinishedOn: aCrawler' classified: 'guarded run'.
CrawlerGuardedRun compile: 'initialize

	undoActions := OrderedCollection new' classified: 'initialization'.
CrawlerGuardedRun compile: 'registerUndo: anUndoAction

	undoActions add: anUndoAction' classified: 'undoing'.
CrawlerGuardedRun compile: 'abortOn: aCrawler

	undoActions reverseDo: [:anUndoAction | anUndoAction value ].
	aCrawler changeRunModeTo: CrawlerFreeRun new' classified: 'undoing'.
CrawlerGuardedRun compile: 'slide: aCrawler towards: aDirection

	aCrawler signalSiltInGuardedRun' classified: 'moving'.
CrawlerGuardedRun compile: 'startGuardedRunOn: aCrawler

	aCrawler signalNestedGuardedRun' classified: 'guarded run'.
CrawlerGuardedRun compile: 'endGuardedRunOn: aCrawler

	aCrawler changeRunModeTo: CrawlerFreeRun new' classified: 'guarded run'.
CrawlerGuardedRun compile: 'assertFinishedOn: aCrawler

	aCrawler signalUnfinishedGuardedRun' classified: 'guarded run'.
CrawlerCommand class compile: 'for: aCharacter ifNone: aNoneBlock

	^self subclasses 
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass new ]
		ifNone: aNoneBlock' classified: 'instance creation'.
CrawlerCommand class compile: 'isFor: aCharacter

	^self character = aCharacter' classified: 'testing'.
CrawlerCommand class compile: 'character

	self subclassResponsibility' classified: 'character'.
CrawlerCommand compile: 'executeOn: aCrawler

	self subclassResponsibility' classified: 'executing'.
CrawlerCommand compile: 'repeat: aNumberOfTimes on: aCrawler

	aNumberOfTimes timesRepeat: [ self executeOn: aCrawler ]' classified: 'executing'.
CrawlerCommand compile: 'asRepeatableCommand

	^CrawlerNonRepeatableCommand new' classified: 'repeating'.
CrawlerAdvanceCommand class compile: 'character

	^$a' classified: 'character'.
CrawlerAdvanceCommand compile: 'executeOn: aCrawler

	aCrawler advance' classified: 'executing'.
CrawlerAdvanceCommand compile: 'asRepeatableCommand

	^self' classified: 'repeating'.
CrawlerRetreatCommand class compile: 'character

	^$t' classified: 'character'.
CrawlerRetreatCommand compile: 'executeOn: aCrawler

	aCrawler retreat' classified: 'executing'.
CrawlerRetreatCommand compile: 'asRepeatableCommand

	^self' classified: 'repeating'.
CrawlerTurnClockwiseCommand class compile: 'character

	^$h' classified: 'character'.
CrawlerTurnClockwiseCommand compile: 'executeOn: aCrawler

	aCrawler turnClockwise' classified: 'executing'.
CrawlerTurnClockwiseCommand compile: 'asRepeatableCommand

	^self' classified: 'repeating'.
CrawlerTurnCounterClockwiseCommand class compile: 'character

	^$g' classified: 'character'.
CrawlerTurnCounterClockwiseCommand compile: 'executeOn: aCrawler

	aCrawler turnCounterClockwise' classified: 'executing'.
CrawlerTurnCounterClockwiseCommand compile: 'asRepeatableCommand

	^self' classified: 'repeating'.
CrawlerStartGuardedRunCommand class compile: 'character

	^$(' classified: 'character'.
CrawlerStartGuardedRunCommand compile: 'executeOn: aCrawler

	aCrawler startGuardedRun' classified: 'executing'.
CrawlerEndGuardedRunCommand class compile: 'character

	^$)' classified: 'character'.
CrawlerEndGuardedRunCommand compile: 'executeOn: aCrawler

	aCrawler endGuardedRun' classified: 'executing'.
CrawlerNonRepeatableCommand compile: 'repeat: aNumberOfTimes on: aCrawler

	aCrawler signalInvalidCommand' classified: 'executing'.
'ok'

