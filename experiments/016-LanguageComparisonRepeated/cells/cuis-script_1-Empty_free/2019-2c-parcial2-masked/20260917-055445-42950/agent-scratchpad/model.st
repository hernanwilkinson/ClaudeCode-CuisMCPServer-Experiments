Object subclass: #SurveyCrawler instanceVariableNames: 'position facing sonar slideGenerator runMode lastRepeatableCommand' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SurveyCrawler comment: 'A seabed survey crawler. It processes command sequences (with repetitions and guarded runs), asking its sonar for the ground it will end up on before moving or turning.'.

Object subclass: #SeabedGround instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGround comment: 'A ground type detected by the sonar. It decides how the crawler moves onto it and whether it can turn on it'.
SeabedGround subclass: #FirmSand instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGround subclass: #Silt instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SeabedGround subclass: #Boulder instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.

Object subclass: #SimulatedSonar instanceVariableNames: 'grounds' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
SimulatedSonar comment: 'A sonar that knows the ground of each position from a chart. Positions not charted are firm sand'.

Object subclass: #CrawlerRunMode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunMode comment: 'How the crawler is running its commands: normally or in a guarded run'.
CrawlerRunMode subclass: #CrawlerNormalRun instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerRunMode subclass: #CrawlerGuardedRun instanceVariableNames: 'undoMovements' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler'.
CrawlerGuardedRun comment: 'A guarded run remembers the opposite of every movement done so the crawler can go back to where it was when the guarded run started if there is any problem'.

"---- grounds"
SeabedGround compile: 'moveCrawler: aCrawler to: aDestination towards: aDirection

	self subclassResponsibility' classified: 'moving'.
SeabedGround compile: 'turn: aCrawler using: aTurnBlock

	self subclassResponsibility' classified: 'facing'.
FirmSand compile: 'moveCrawler: aCrawler to: aDestination towards: aDirection

	aCrawler moveOnFirmSandTowards: aDirection' classified: 'moving'.
FirmSand compile: 'turn: aCrawler using: aTurnBlock

	aTurnBlock value' classified: 'facing'.
Silt compile: 'moveCrawler: aCrawler to: aDestination towards: aDirection

	aCrawler slideOnSiltTowards: aDirection' classified: 'moving'.
Silt compile: 'turn: aCrawler using: aTurnBlock

	aTurnBlock value' classified: 'facing'.
Boulder compile: 'moveCrawler: aCrawler to: aDestination towards: aDirection

	aCrawler signalBoulderFound' classified: 'moving'.
Boulder compile: 'turn: aCrawler using: aTurnBlock

	aCrawler signalBoulderFound' classified: 'facing'.

"---- sonar"
SimulatedSonar class compile: 'allFirmSand

	^self new initialize' classified: 'instance creation'.
SimulatedSonar compile: 'initialize

	grounds := Dictionary new' classified: 'initialization'.
SimulatedSonar compile: 'groundAt: aPosition

	^grounds at: aPosition ifAbsent: [ FirmSand new ]' classified: 'sensing'.
SimulatedSonar compile: 'boulderAt: aPosition

	grounds at: aPosition put: Boulder new' classified: 'charting'.
SimulatedSonar compile: 'siltAt: aPosition

	grounds at: aPosition put: Silt new' classified: 'charting'.

"---- run modes"
CrawlerRunMode compile: 'startGuardedRunOf: aCrawler

	self subclassResponsibility' classified: 'guarded run'.
CrawlerRunMode compile: 'finishGuardedRunOf: aCrawler

	self subclassResponsibility' classified: 'guarded run'.
CrawlerRunMode compile: 'assertNoGuardedRunIsPendingOf: aCrawler

	self subclassResponsibility' classified: 'guarded run'.
CrawlerRunMode compile: 'recoverFrom: anError of: aCrawler

	self subclassResponsibility' classified: 'guarded run'.
CrawlerRunMode compile: 'registerUndo: anUndoBlock

	self subclassResponsibility' classified: 'undoing'.
CrawlerRunMode compile: 'slide: aCrawler towards: aDirection

	self subclassResponsibility' classified: 'moving'.

CrawlerNormalRun compile: 'startGuardedRunOf: aCrawler

	aCrawler startGuardedRun' classified: 'guarded run'.
CrawlerNormalRun compile: 'finishGuardedRunOf: aCrawler

	aCrawler signalNoGuardedRunToFinish' classified: 'guarded run'.
CrawlerNormalRun compile: 'assertNoGuardedRunIsPendingOf: aCrawler' classified: 'guarded run'.
CrawlerNormalRun compile: 'recoverFrom: anError of: aCrawler

	anError pass' classified: 'guarded run'.
CrawlerNormalRun compile: 'registerUndo: anUndoBlock' classified: 'undoing'.
CrawlerNormalRun compile: 'slide: aCrawler towards: aDirection

	aCrawler slideTowards: aDirection' classified: 'moving'.

CrawlerGuardedRun compile: 'initialize

	undoMovements := OrderedCollection new' classified: 'initialization'.
CrawlerGuardedRun class compile: 'new

	^super new initialize' classified: 'instance creation'.
CrawlerGuardedRun compile: 'startGuardedRunOf: aCrawler

	aCrawler signalNestedGuardedRun' classified: 'guarded run'.
CrawlerGuardedRun compile: 'finishGuardedRunOf: aCrawler

	aCrawler finishGuardedRun' classified: 'guarded run'.
CrawlerGuardedRun compile: 'assertNoGuardedRunIsPendingOf: aCrawler

	aCrawler signalUnfinishedGuardedRun' classified: 'guarded run'.
CrawlerGuardedRun compile: 'recoverFrom: anError of: aCrawler

	undoMovements reverseDo: [ :anUndoBlock | anUndoBlock value ].
	aCrawler finishGuardedRun.
	anError pass' classified: 'guarded run'.
CrawlerGuardedRun compile: 'registerUndo: anUndoBlock

	undoMovements add: anUndoBlock' classified: 'undoing'.
CrawlerGuardedRun compile: 'slide: aCrawler towards: aDirection

	aCrawler signalSiltFoundInGuardedRun' classified: 'moving'.

"---- crawler: creation"
SurveyCrawler class compile: 'at: aPosition facing: aFacingName

	^self at: aPosition facing: aFacingName sonar: SimulatedSonar allFirmSand' classified: 'instance creation'.
SurveyCrawler class compile: 'at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar slideGenerator: Random new' classified: 'instance creation'.
SurveyCrawler class compile: 'at: aPosition facing: aFacingName sonar: aSonar slideGenerator: aSlideGenerator

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar slideGenerator: aSlideGenerator' classified: 'instance creation'.
SurveyCrawler class compile: 'maximumSlide

	^10' classified: 'moving'.
SurveyCrawler removeSelector: #initializeAt:facing:.
SurveyCrawler compile: 'initializeAt: aPosition facing: aFacing sonar: aSonar slideGenerator: aSlideGenerator

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slideGenerator := aSlideGenerator.
	runMode := CrawlerNormalRun new.
	lastRepeatableCommand := self noCommandToRepeat' classified: 'initialization'.

"---- crawler: command processing"
SurveyCrawler compile: 'process: aSequenceOfCommands

	lastRepeatableCommand := self noCommandToRepeat.
	[ aSequenceOfCommands do: [ :aCommand | self processCommand: aCommand ].
	  runMode assertNoGuardedRunIsPendingOf: self ]
		on: Error
		do: [ :anError | runMode recoverFrom: anError of: self ]' classified: 'command processing'.
SurveyCrawler compile: 'processCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^self executeRepeatable: [ self advance ] ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^self executeRepeatable: [ self retreat ] ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^self executeRepeatable: [ self turnClockwise ] ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^self executeRepeatable: [ self turnCounterClockwise ] ].
	(self isRepetitionCommand: aCommand) ifTrue: [ ^self repeatLastCommand: aCommand digitValue + 2 ].
	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^self executeNotRepeatable: [ runMode startGuardedRunOf: self ] ].
	(self isFinishGuardedRunCommand: aCommand) ifTrue: [ ^self executeNotRepeatable: [ runMode finishGuardedRunOf: self ] ].

	self signalInvalidCommand' classified: 'command processing'.
SurveyCrawler compile: 'executeRepeatable: aCommandBlock

	lastRepeatableCommand := aCommandBlock.
	aCommandBlock value' classified: 'command processing'.
SurveyCrawler compile: 'executeNotRepeatable: aCommandBlock

	lastRepeatableCommand := self noCommandToRepeat.
	aCommandBlock value' classified: 'command processing'.
SurveyCrawler compile: 'repeatLastCommand: numberOfRepetitions

	| commandToRepeat |
	
	commandToRepeat := lastRepeatableCommand.
	lastRepeatableCommand := self noCommandToRepeat.
	numberOfRepetitions timesRepeat: commandToRepeat' classified: 'command processing'.
SurveyCrawler compile: 'noCommandToRepeat

	^[ self signalInvalidRepetition ]' classified: 'command processing'.
SurveyCrawler compile: 'isRepetitionCommand: aCommand

	^aCommand isDigit' classified: 'testing'.
SurveyCrawler compile: 'isStartGuardedRunCommand: aCommand

	^aCommand = $(' classified: 'testing'.
SurveyCrawler compile: 'isFinishGuardedRunCommand: aCommand

	^aCommand = $)' classified: 'testing'.

"---- crawler: guarded run"
SurveyCrawler compile: 'startGuardedRun

	runMode := CrawlerGuardedRun new' classified: 'guarded run'.
SurveyCrawler compile: 'finishGuardedRun

	runMode := CrawlerNormalRun new' classified: 'guarded run'.

"---- crawler: moving"
#(#moveUp '0@1' #moveDown '0@-1' #moveLeft '-1@0' #moveRight '1@0') pairsDo: [ :selector :direction |
	SurveyCrawler compile: selector, '
	
	self moveTowards: ', direction classified: 'moving' ].
SurveyCrawler compile: 'moveTowards: aDirection

	| destination |
	
	destination := position + aDirection.
	(sonar groundAt: destination) moveCrawler: self to: destination towards: aDirection' classified: 'moving'.
SurveyCrawler compile: 'moveOnFirmSandTowards: aDirection

	self displaceBy: aDirection.
	runMode registerUndo: [ self displaceBy: aDirection negated ]' classified: 'moving'.
SurveyCrawler compile: 'slideOnSiltTowards: aDirection

	runMode slide: self towards: aDirection' classified: 'moving'.
SurveyCrawler compile: 'slideTowards: aDirection

	self displaceBy: aDirection * (slideGenerator nextInteger: self class maximumSlide)' classified: 'moving'.
SurveyCrawler compile: 'displaceBy: aDisplacement

	position := position + aDisplacement' classified: 'moving'.

"---- crawler: facing"
SurveyCrawler compile: 'turnClockwise

	(sonar groundAt: position) turn: self using: [
		facing turnClockwise: self.
		runMode registerUndo: [ facing turnCounterClockwise: self ] ]' classified: 'facing'.
SurveyCrawler compile: 'turnCounterClockwise

	(sonar groundAt: position) turn: self using: [
		facing turnCounterClockwise: self.
		runMode registerUndo: [ facing turnClockwise: self ] ]' classified: 'facing'.

"---- crawler: exceptions"
#(#boulderFoundErrorDescription 'Boulder found'
  #siltFoundInGuardedRunErrorDescription 'Silt found during a guarded run'
  #nestedGuardedRunErrorDescription 'Can not start a guarded run inside another guarded run'
  #unfinishedGuardedRunErrorDescription 'Guarded run was not finished'
  #noGuardedRunToFinishErrorDescription 'There is no guarded run to finish'
  #invalidRepetitionErrorDescription 'Only a, t, h and g commands can be repeated, with a single digit') pairsDo: [ :selector :description |
	SurveyCrawler compile: selector, '
	
	^', description printString classified: 'exceptions'.
	SurveyCrawler compile: 'signal', (selector copyReplaceAll: 'ErrorDescription' with: '') capitalized, '
	
	self error: self ', selector classified: 'exceptions' ].
SurveyCrawler selectors asSortedCollection asArray
