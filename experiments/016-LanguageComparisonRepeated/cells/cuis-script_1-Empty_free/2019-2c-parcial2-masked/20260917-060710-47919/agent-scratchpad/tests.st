| t |
Object subclass: #SonarSimulator instanceVariableNames: 'groundTypes' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
SonarSimulator compile: 'initialize

	groundTypes := Dictionary new' classified: 'initialization'.
SonarSimulator compile: 'groundTypeAt: aPosition

	^groundTypes at: aPosition ifAbsent: [ FirmSand new ]' classified: 'sonar'.
SonarSimulator compile: 'boulderAt: aPosition

	groundTypes at: aPosition put: Boulder new' classified: 'configuration'.
SonarSimulator compile: 'siltAt: aPosition

	groundTypes at: aPosition put: Silt new' classified: 'configuration'.

Object subclass: #SlideDistanceGeneratorStub instanceVariableNames: 'distance requestedLimits' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
SlideDistanceGeneratorStub class compile: 'returning: aDistance

	^self new initializeReturning: aDistance' classified: 'instance creation'.
SlideDistanceGeneratorStub compile: 'initializeReturning: aDistance

	distance := aDistance.
	requestedLimits := OrderedCollection new' classified: 'initialization'.
SlideDistanceGeneratorStub compile: 'nextInteger: aLimit

	requestedLimits add: aLimit.
	^distance' classified: 'generating'.
SlideDistanceGeneratorStub compile: 'requestedLimits

	^requestedLimits' classified: 'accessing'.

TestCase subclass: #SurveyCrawlerTest instanceVariableNames: 'sonar slideDistanceGenerator' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
SurveyCrawlerTest compile: 'setUp

	sonar := SonarSimulator new.
	slideDistanceGenerator := SlideDistanceGeneratorStub returning: 4' classified: 'setup'.
SurveyCrawlerTest compile: 'crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: sonar slideDistanceGenerator: slideDistanceGenerator' classified: 'test objects'.
SurveyCrawlerTest compile: 'should: aCrawler failProcessing: aSequenceOfCommands with: anErrorDescription andBeAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]' classified: 'assertions'.

"Adapt first version tests"
(SurveyCrawlerTest selectors select: [ :s | s beginsWith: 'test' ]) do: [ :s | | src |
	src := SurveyCrawlerTest sourceCodeAt: s.
	src := src copyReplaceAll: 'crawler := SurveyCrawler at: ' with: 'crawler := self crawlerAt: '.
	src := src copyReplaceAll: 'crawler invalidCommandErrorDescription' with: 'SurveyCrawler invalidCommandErrorDescription'.
	src := src copyReplaceAll: '[SurveyCrawler at: 1@2 facing: #X ]' with: '[ self crawlerAt: 1@2 facing: #X ]'.
	SurveyCrawlerTest compile: src classified: 'tests' ].

t := [ :name :body | SurveyCrawlerTest compile: name, '

	| crawler |
	
', body classified: 'tests' ].

"Repetition"
t value: 'test17DigitRepeatsAdvanceDigitPlusTwoTimes' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''a0''.
	
	self assert: (crawler isAt: 1@5 facing: #Up)'.
t value: 'test18NineIsTheMaximumRepetition' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''a9''.
	
	self assert: (crawler isAt: 1@14 facing: #Up)'.
t value: 'test19DigitRepeatsRetreat' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''t1''.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)'.
t value: 'test20DigitRepeatsTurnClockwise' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''h0''.
	
	self assert: (crawler isAt: 1@2 facing: #Left)'.
t value: 'test21DigitRepeatsTurnCounterClockwise' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''g0''.
	
	self assert: (crawler isAt: 1@2 facing: #Right)'.
t value: 'test22RepetitionOnlyRepeatsTheLastCommand' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''ha0a''.
	
	self assert: (crawler isAt: 5@2 facing: #Right)'.
t value: 'test23DigitCanNotBeTheFirstCommand' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''3a'' with: SurveyCrawler invalidRepetitionErrorDescription andBeAt: 1@2 facing: #Up'.
t value: 'test24RepetitionIsASingleDigit' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''a00'' with: SurveyCrawler invalidRepetitionErrorDescription andBeAt: 1@5 facing: #Up'.
t value: 'test25GuardedRunDelimitersCanNotBeRepeated' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''(a)2'' with: SurveyCrawler invalidRepetitionErrorDescription andBeAt: 1@3 facing: #Up.
	self should: crawler failProcessing: ''(2'' with: SurveyCrawler invalidRepetitionErrorDescription andBeAt: 1@3 facing: #Up'.
t value: 'test26RepetitionDoesNotContinueFromAPreviousSequence' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''a''.
	
	self should: crawler failProcessing: ''0'' with: SurveyCrawler invalidRepetitionErrorDescription andBeAt: 1@3 facing: #Up'.
t value: 'test27RepetitionStopsWhenABoulderIsFound' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@5.
	
	self should: crawler failProcessing: ''a9'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@4 facing: #Up'.

"Sonar"
t value: 'test28CanNotAdvanceToABoulder' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@3.
	
	self should: crawler failProcessing: ''a'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up'.
t value: 'test29CanNotRetreatToABoulder' value: '	crawler := self crawlerAt: 1@2 facing: #Right.
	sonar boulderAt: 0@2.
	
	self should: crawler failProcessing: ''t'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Right'.
t value: 'test30CanNotTurnCounterClockwiseOnABoulder' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@2.
	
	self should: crawler failProcessing: ''g'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up'.
t value: 'test31CanNotTurnClockwiseOnABoulder' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@2.
	
	self should: crawler failProcessing: ''h'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up'.
t value: 'test32CanMoveAwayFromABoulder' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@2.
	
	crawler process: ''a''.
	
	self assert: (crawler isAt: 1@3 facing: #Up)'.
t value: 'test33CommandsAfterAFailureAreNotProcessed' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@4.
	
	self should: crawler failProcessing: ''aaha'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@3 facing: #Up'.
t value: 'test34AdvancingOnSiltSlidesInTheAdvancingDirection' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@3.
	
	crawler process: ''a''.
	
	self assert: (crawler isAt: 1@6 facing: #Up)'.
t value: 'test35RetreatingOnSiltSlidesInTheRetreatingDirection' value: '	crawler := self crawlerAt: 1@2 facing: #Left.
	sonar siltAt: 2@2.
	
	crawler process: ''t''.
	
	self assert: (crawler isAt: 5@2 facing: #Left)'.
t value: 'test36SlidingOnSiltIsLimitedToTenCells' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@3.
	
	crawler process: ''a''.
	
	self assert: slideDistanceGenerator requestedLimits asArray equals: #(10)'.
t value: 'test37SlidingOnSiltEndsBetweenOneAndTenCellsAway' value: '	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
	sonar siltAt: 1@3.
	
	100 timesRepeat: [
		crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
		crawler process: ''a''.
		self assert: ((3 to: 12) anySatisfy: [ :y | crawler isAt: 1@y facing: #Up ]) ]'.
t value: 'test38SiltDoesNotAffectTurning' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@2.
	
	crawler process: ''hhg''.
	
	self assert: (crawler isAt: 1@2 facing: #Right)'.
t value: 'test39FirmSandDoesNotRequireSlideDistance' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''at''.
	
	self assert: slideDistanceGenerator requestedLimits isEmpty'.

"Guarded run"
t value: 'test40GuardedRunWithoutProblemsMovesNormally' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''(aah)''.
	
	self assert: (crawler isAt: 1@4 facing: #Right)'.
t value: 'test41EmptyGuardedRunDoesNothing' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''()''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)'.
t value: 'test42BoulderInGuardedRunReturnsToInitialPosition' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@4.
	
	self should: crawler failProcessing: ''(aa)'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up'.
t value: 'test43TurnsAreUndoneWhenGuardedRunFails' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@2.
	
	self should: crawler failProcessing: ''(hatgtgaah)'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up'.
t value: 'test44SiltInGuardedRunFailsAndReturnsToInitialPosition' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@4.
	
	self should: crawler failProcessing: ''(aa)'' with: SurveyCrawler siltFoundDuringGuardedRunErrorDescription andBeAt: 1@2 facing: #Up.
	self assert: slideDistanceGenerator requestedLimits isEmpty'.
t value: 'test45InvalidCommandInGuardedRunReturnsToInitialPosition' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''(ahax)'' with: SurveyCrawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up'.
t value: 'test46InvalidRepetitionInGuardedRunReturnsToInitialPosition' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''(a33)'' with: SurveyCrawler invalidRepetitionErrorDescription andBeAt: 1@2 facing: #Up'.
t value: 'test47RepeatedCommandsAreUndoneWhenGuardedRunFails' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar boulderAt: 1@6.
	
	self should: crawler failProcessing: ''(a3)'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up'.
t value: 'test48GuardedRunCanNotBeStartedInsideAnotherGuardedRun' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''aa(aa(ht)a)'' with: SurveyCrawler guardedRunAlreadyStartedErrorDescription andBeAt: 1@4 facing: #Up'.
t value: 'test49GuardedRunMustBeFinished' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''a(aa'' with: SurveyCrawler unfinishedGuardedRunErrorDescription andBeAt: 1@3 facing: #Up'.
t value: 'test50CanNotFinishAGuardedRunThatWasNotStarted' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''a)a'' with: SurveyCrawler noGuardedRunToFinishErrorDescription andBeAt: 1@3 facing: #Up'.
t value: 'test51SequenceCanHaveSeveralGuardedRuns' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''aha(aagt3)aa(ht)''.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)'.
t value: 'test52FailedGuardedRunOnlyUndoesItsOwnMovements' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''a(a)a(ahx)'' with: SurveyCrawler invalidCommandErrorDescription andBeAt: 1@5 facing: #Up'.
t value: 'test53FailureOutsideGuardedRunDoesNotUndoMovements' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''(ah)ax'' with: SurveyCrawler invalidCommandErrorDescription andBeAt: 2@3 facing: #Right'.
t value: 'test54SlideBeforeGuardedRunIsNotUndone' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@3.
	
	self should: crawler failProcessing: ''a(ax)'' with: SurveyCrawler invalidCommandErrorDescription andBeAt: 1@6 facing: #Up'.
t value: 'test55CrawlerCanStartAGuardedRunAfterAFailedOne' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''(ax'' with: SurveyCrawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up.
	crawler process: ''(a)''.
	
	self assert: (crawler isAt: 1@3 facing: #Up)'.
t value: 'test56CrawlerIsNotGuardedAfterAFailedGuardedRun' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@4.
	
	self should: crawler failProcessing: ''(ax'' with: SurveyCrawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up.
	crawler process: ''aa''.
	
	self assert: (crawler isAt: 1@8 facing: #Up)'.
t value: 'test57CrawlerIsNotGuardedAfterAFinishedGuardedRun' value: '	crawler := self crawlerAt: 1@2 facing: #Up.
	sonar siltAt: 1@4.
	
	crawler process: ''(a)a''.
	
	self assert: (crawler isAt: 1@8 facing: #Up)'.
'ok'
