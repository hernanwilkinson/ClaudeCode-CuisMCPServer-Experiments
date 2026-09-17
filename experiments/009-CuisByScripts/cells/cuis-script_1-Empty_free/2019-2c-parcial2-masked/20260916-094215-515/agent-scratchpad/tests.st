SurveyCrawlerTest selectors do: [ :aSelector | SurveyCrawlerTest removeSelector: aSelector ].
TestCase subclass: #SurveyCrawlerTest instanceVariableNames: 'sonar' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
Object subclass: #SonarSimulator instanceVariableNames: 'grounds' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
Object subclass: #RandomSimulator instanceVariableNames: 'number requestedLimit' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
SonarSimulator compile: 'initialize

	grounds := Dictionary new' classified: 'initialization'.
SonarSimulator compile: 'boulderAt: aPosition

	grounds at: aPosition put: BoulderGround new' classified: 'configuring'.
SonarSimulator compile: 'siltAt: aPosition

	grounds at: aPosition put: SiltGround new' classified: 'configuring'.
SonarSimulator compile: 'groundAt: aPosition

	^grounds at: aPosition ifAbsent: [ FirmSandGround new ]' classified: 'sensing'.
RandomSimulator class compile: 'returning: aNumber

	^self new initializeReturning: aNumber' classified: 'instance creation'.
RandomSimulator compile: 'initializeReturning: aNumber

	number := aNumber' classified: 'initialization'.
RandomSimulator compile: 'nextInteger: aLimit

	requestedLimit := aLimit.
	^number' classified: 'generating'.
RandomSimulator compile: 'requestedLimit

	^requestedLimit' classified: 'accessing'.
SurveyCrawlerTest compile: 'setUp

	sonar := SonarSimulator new' classified: 'setUp'.
SurveyCrawlerTest compile: 'crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: sonar' classified: 'support'.
SurveyCrawlerTest compile: 'crawlerAt: aPosition facing: aFacingName random: aRandom

	^SurveyCrawler at: aPosition facing: aFacingName sonar: sonar random: aRandom' classified: 'support'.
SurveyCrawlerTest compile: 'should: aCrawler failProcessing: aSequenceOfCommands with: anErrorDescription andBeAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]' classified: 'support'.
SurveyCrawlerTest compile: 'test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''a''.
	
	self assert: (crawler isAt: 1@3 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''t''.
	
	self assert: (crawler isAt: 1@1 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''h''.
	
	self assert: (crawler isAt: 1@2 facing: #Right)' classified: 'tests'.
SurveyCrawlerTest compile: 'test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''g''.
	
	self assert: (crawler isAt: 1@2 facing: #Left)' classified: 'tests'.
SurveyCrawlerTest compile: 'test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''x'' with: crawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''aa''.
	
	self assert: (crawler isAt: 1@4 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: ''a''.
	
	self assert: (crawler isAt: 2@2 facing: #Right)' classified: 'tests'.
SurveyCrawlerTest compile: 'test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: ''t''.
	
	self assert: (crawler isAt: 0@2 facing: #Right)' classified: 'tests'.
SurveyCrawlerTest compile: 'test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: ''h''.
	
	self assert: (crawler isAt: 1@2 facing: #Down)' classified: 'tests'.
SurveyCrawlerTest compile: 'test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: ''g''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: ''aath''.
	
	self assert: (crawler isAt: 1@1 facing: #Left)' classified: 'tests'.
SurveyCrawlerTest compile: 'test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: ''g''.
	
	self assert: (crawler isAt: 1@2 facing: #Right)' classified: 'tests'.
SurveyCrawlerTest compile: 'test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: ''aath''.
	
	self assert: (crawler isAt: 0@2 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: ''g''.
	
	self assert: (crawler isAt: 1@2 facing: #Down)' classified: 'tests'.
SurveyCrawlerTest compile: 'test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X sonar: sonar ]
		raise: Error
		withExceptionDo: [:anError |
			self assert: SurveyCrawler invalidFacingErrorDescription equals: anError messageText ]' classified: 'tests'.
SurveyCrawlerTest compile: 'test17DigitAfterAdvanceRepeatsItDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''a0''.
	
	self assert: (crawler isAt: 1@5 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test18RepetitionUsesTheDigitValue

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''a9''.
	
	self assert: (crawler isAt: 1@14 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test19DigitAfterRetreatRepeatsIt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''t1''.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test20DigitAfterTurnClockwiseRepeatsIt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''h2''.
	
	self assert: (crawler isAt: 1@2 facing: #Right)' classified: 'tests'.
SurveyCrawlerTest compile: 'test21DigitAfterTurnCounterClockwiseRepeatsIt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''g1''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test22CommandsAfterARepetitionAreProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''a0ha''.
	
	self assert: (crawler isAt: 2@5 facing: #Right)' classified: 'tests'.
SurveyCrawlerTest compile: 'test23DigitWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''3'' with: crawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test24RepetitionIsASingleDigit

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''a00'' with: crawler invalidCommandErrorDescription andBeAt: 1@5 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test25DigitCanNotRepeatAnInvalidCommand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''x2'' with: crawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test26DigitCanNotRepeatAGuardedRunStart

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''a(2a)'' with: crawler invalidCommandErrorDescription andBeAt: 1@3 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test27DigitCanNotRepeatAGuardedRunFinish

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''(a)2'' with: crawler invalidCommandErrorDescription andBeAt: 1@3 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test28CanNotAdvanceToABoulder

	| crawler |
	
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''a'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test29CanNotRetreatToABoulder

	| crawler |
	
	sonar boulderAt: 1@1.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''t'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test30CanNotTurnClockwiseOnABoulder

	| crawler |
	
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''h'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test31CanNotTurnCounterClockwiseOnABoulder

	| crawler |
	
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''g'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test32BouldersOutOfTheWayDoNotAffectTheCrawler

	| crawler |
	
	sonar boulderAt: 2@2; boulderAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''a''.
	
	self assert: (crawler isAt: 1@3 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test33CommandsBeforeABoulderOutsideAGuardedRunAreKept

	| crawler |
	
	sonar boulderAt: 2@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''haga'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 2@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test34RepetitionStopsAtABoulder

	| crawler |
	
	sonar boulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''a5'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@4 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test35CommandsAfterABoulderAreNotProcessed

	| crawler |
	
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''ah'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test36AdvancingToSiltSlidesARandomNumberOfCells

	| crawler random |
	
	sonar siltAt: 1@3.
	random := RandomSimulator returning: 4.
	crawler := self crawlerAt: 1@2 facing: #Up random: random.
	
	crawler process: ''a''.
	
	self assert: (crawler isAt: 1@6 facing: #Up).
	self assert: SurveyCrawler slideLimit equals: random requestedLimit.
	self assert: 10 equals: SurveyCrawler slideLimit' classified: 'tests'.
SurveyCrawlerTest compile: 'test37RetreatingToSiltSlidesBackwards

	| crawler |
	
	sonar siltAt: 3@2.
	crawler := self crawlerAt: 2@2 facing: #Left random: (RandomSimulator returning: 3).
	
	crawler process: ''t''.
	
	self assert: (crawler isAt: 5@2 facing: #Left)' classified: 'tests'.
SurveyCrawlerTest compile: 'test38SlidingOnSiltEndsBetweenOneAndTenCellsAway

	| crawler |
	
	sonar siltAt: 1@3.
	100 timesRepeat: [
		crawler := self crawlerAt: 1@2 facing: #Up random: Random new.
		crawler process: ''a''.
		self assert: ((3 to: 12) anySatisfy: [ :y | crawler isAt: 1@y facing: #Up ]) ]' classified: 'tests'.
SurveyCrawlerTest compile: 'test39TurningOnSiltIsNotAffected

	| crawler |
	
	sonar siltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up random: (RandomSimulator returning: 5).
	
	crawler process: ''hgg''.
	
	self assert: (crawler isAt: 1@2 facing: #Left)' classified: 'tests'.
SurveyCrawlerTest compile: 'test40OnlyMovingToSiltMakesTheCrawlerSlide

	| crawler |
	
	sonar siltAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up random: (RandomSimulator returning: 2).
	
	crawler process: ''aa''.
	
	self assert: (crawler isAt: 1@5 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test41GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''(aha)''.
	
	self assert: (crawler isAt: 2@3 facing: #Right)' classified: 'tests'.
SurveyCrawlerTest compile: 'test42EmptyGuardedRunDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''()''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test43BoulderInGuardedRunReturnsToItsStart

	| crawler |
	
	sonar boulderAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''(aa)'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test44AllMovementsAndTurnsOfAGuardedRunAreUndone

	| crawler |
	
	sonar boulderAt: 1@1.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''(hagtga)'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test45RepeatedCommandsOfAGuardedRunAreUndone

	| crawler |
	
	sonar boulderAt: 1@7.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''(h1g1a3)'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test46SiltInGuardedRunReturnsToItsStart

	| crawler |
	
	sonar siltAt: 2@2.
	crawler := self crawlerAt: 1@2 facing: #Up random: (RandomSimulator returning: 3).
	
	self should: crawler failProcessing: ''(ha)'' with: SurveyCrawler siltFoundInGuardedRunErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test47InvalidCommandInGuardedRunReturnsToItsStart

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''(ahx)'' with: crawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test48CommandsBeforeAGuardedRunAreNotUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''ah(ax)'' with: crawler invalidCommandErrorDescription andBeAt: 1@3 facing: #Right' classified: 'tests'.
SurveyCrawlerTest compile: 'test49CanNotStartAGuardedRunInsideAnotherOne

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''aa(aa(ht)a)'' with: SurveyCrawler nestedGuardedRunErrorDescription andBeAt: 1@4 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test50GuardedRunMustBeFinished

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''a(aa'' with: SurveyCrawler unfinishedGuardedRunErrorDescription andBeAt: 1@3 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test51GuardedRunStartAloneIsNotFinished

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''a('' with: SurveyCrawler unfinishedGuardedRunErrorDescription andBeAt: 1@3 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test52CanNotFinishAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''a)a'' with: SurveyCrawler guardedRunNotStartedErrorDescription andBeAt: 1@3 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test53SeveralGuardedRunsCanBeProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''aha(aagt3)aa(ht)''.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)' classified: 'tests'.
SurveyCrawlerTest compile: 'test54FailingGuardedRunReturnsToItsOwnStart

	| crawler |
	
	sonar boulderAt: 1@6.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''(a)a(aa)'' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@4 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test55FinishedGuardedRunIsNotUndoneByLaterErrors

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: ''(aa)x'' with: crawler invalidCommandErrorDescription andBeAt: 1@4 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test56SiltOutsideAGuardedRunSlidesAfterAGuardedRunFinished

	| crawler |
	
	sonar siltAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up random: (RandomSimulator returning: 2).
	
	crawler process: ''(a)a''.
	
	self assert: (crawler isAt: 1@5 facing: #Up)' classified: 'tests'.
SurveyCrawlerTest compile: 'test57CrawlerIsNotInAGuardedRunAfterAFailedOne

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self should: [ crawler process: ''(ax'' ] raise: Error - MessageNotUnderstood.
	
	self should: crawler failProcessing: ''a)'' with: SurveyCrawler guardedRunNotStartedErrorDescription andBeAt: 1@3 facing: #Up' classified: 'tests'.
SurveyCrawlerTest compile: 'test58GuardedRunCanNotSpanMoreThanOneCommandSequence

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self should: [ crawler process: ''(a'' ] raise: Error - MessageNotUnderstood.
	
	self should: crawler failProcessing: ''a)'' with: SurveyCrawler guardedRunNotStartedErrorDescription andBeAt: 1@3 facing: #Up' classified: 'tests'.
'ok'
