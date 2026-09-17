TestCase subclass: #SurveyCrawlerTest instanceVariableNames: 'sonar slideRandom' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
Object subclass: #SonarSimulator instanceVariableNames: 'groundTypes' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
Object subclass: #FixedRandom instanceVariableNames: 'value requestedLimits' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
SonarSimulator compile: 'initialize

	groundTypes := Dictionary new' classified: 'initialization'.
SonarSimulator compile: 'boulderAt: aPosition

	groundTypes at: aPosition put: SeabedBoulder new' classified: 'ground types'.
SonarSimulator compile: 'siltAt: aPosition

	groundTypes at: aPosition put: SeabedSilt new' classified: 'ground types'.
SonarSimulator compile: 'groundTypeAt: aPosition

	^groundTypes at: aPosition ifAbsent: [ SeabedFirmSand new ]' classified: 'ground types'.
FixedRandom class compile: 'returning: anInteger

	^self new initializeReturning: anInteger' classified: 'instance creation'.
FixedRandom compile: 'initializeReturning: anInteger

	value := anInteger.
	requestedLimits := OrderedCollection new' classified: 'initialization'.
FixedRandom compile: 'nextInteger: aLimit

	requestedLimits add: aLimit.
	^value' classified: 'accessing'.
FixedRandom compile: 'requestedLimits

	^requestedLimits' classified: 'accessing'.
SurveyCrawlerTest compile: 'setUp

	sonar := SonarSimulator new.
	slideRandom := FixedRandom returning: 4' classified: 'setUp'.
SurveyCrawlerTest compile: 'crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: sonar random: slideRandom' classified: 'helpers'.
SurveyCrawlerTest compile: 'should: aBlock failWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]' classified: 'helpers'.
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
	
	self 
		should: [ crawler process: ''x'' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up' classified: 'tests'.
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
SurveyCrawlerTest compile: 'test17DigitRepeatsLastCommandTheDigitPlusTwoTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''a0''.
	
	self assert: (crawler isAt: 1@5 facing: #Up)' classified: 'tests - repetition'.
SurveyCrawlerTest compile: 'test18DigitCanRepeatRetreat

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''t9''.
	
	self assert: (crawler isAt: 1@-9 facing: #Up)' classified: 'tests - repetition'.
SurveyCrawlerTest compile: 'test19DigitCanRepeatTurns

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''h2''.
	self assert: (crawler isAt: 1@2 facing: #Right).
	
	crawler process: ''g1''.
	self assert: (crawler isAt: 1@2 facing: #Left)' classified: 'tests - repetition'.
SurveyCrawlerTest compile: 'test20DigitAtTheBeginningIsInvalid

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''3'' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up' classified: 'tests - repetition'.
SurveyCrawlerTest compile: 'test21RepetitionIsASingleDigit

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''a00'' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@5 facing: #Up' classified: 'tests - repetition'.
SurveyCrawlerTest compile: 'test22LastCommandOfPreviousSequenceIsNotRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''a''.
	
	self 
		should: [ crawler process: ''0'' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@3 facing: #Up' classified: 'tests - repetition'.
SurveyCrawlerTest compile: 'test23GuardedRunDelimitersCanNotBeRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''a()0'' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@3 facing: #Up.
	self 
		should: [ crawler process: ''(0)'' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@3 facing: #Up' classified: 'tests - repetition'.
SurveyCrawlerTest compile: 'test24CanNotAdvanceToABoulder

	| crawler |
	
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''a'' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up' classified: 'tests - sonar'.
SurveyCrawlerTest compile: 'test25CanNotRetreatToABoulder

	| crawler |
	
	sonar boulderAt: 1@1.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''t'' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up' classified: 'tests - sonar'.
SurveyCrawlerTest compile: 'test26CanNotTurnOnABoulder

	| crawler |
	
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''g'' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up.
	self 
		should: [ crawler process: ''h'' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up' classified: 'tests - sonar'.
SurveyCrawlerTest compile: 'test27RepeatedCommandStopsAtABoulder

	| crawler |
	
	sonar boulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''a3'' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@4 facing: #Up' classified: 'tests - sonar'.
SurveyCrawlerTest compile: 'test28AdvancingOnSiltSlidesARandomNumberOfCellsUpToTen

	| crawler |
	
	sonar siltAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''a''.
	
	self assert: (crawler isAt: 1@6 facing: #Up).
	self assert: (OrderedCollection with: 10) equals: slideRandom requestedLimits' classified: 'tests - sonar'.
SurveyCrawlerTest compile: 'test29RetreatingOnSiltSlidesBackwards

	| crawler |
	
	sonar siltAt: 0@2.
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: ''t''.
	
	self assert: (crawler isAt: -3@2 facing: #Right)' classified: 'tests - sonar'.
SurveyCrawlerTest compile: 'test30SlidingOnSiltEndsWithinTheSlideLimit

	| crawler |
	
	sonar siltAt: 1@3.
	100 timesRepeat: [
		crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
		crawler process: ''a''.
		self assert: ((1 to: 10) anySatisfy: [ :cells | crawler isAt: 1@(2 + cells) facing: #Up ]) ]' classified: 'tests - sonar'.
SurveyCrawlerTest compile: 'test31SiltDoesNotAffectTurning

	| crawler |
	
	sonar siltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''hhg''.
	
	self assert: (crawler isAt: 1@2 facing: #Right)' classified: 'tests - sonar'.
SurveyCrawlerTest compile: 'test32GuardedRunWithoutProblemsKeepsItsMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''(ah)a''.
	
	self assert: (crawler isAt: 2@3 facing: #Right)' classified: 'tests - guarded run'.
SurveyCrawlerTest compile: 'test33BoulderInGuardedRunReturnsToInitialPosition

	| crawler |
	
	sonar boulderAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''(aa)'' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up' classified: 'tests - guarded run'.
SurveyCrawlerTest compile: 'test34SiltInGuardedRunReturnsToInitialPositionWithoutSliding

	| crawler |
	
	sonar siltAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''(aa)'' ]
		failWith: crawler siltInGuardedRunErrorDescription
		leaving: crawler at: 1@2 facing: #Up.
	self assert: slideRandom requestedLimits isEmpty' classified: 'tests - guarded run'.
SurveyCrawlerTest compile: 'test35InvalidCommandInGuardedRunReturnsToInitialPosition

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''(ahax)'' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up' classified: 'tests - guarded run'.
SurveyCrawlerTest compile: 'test36AllMovementsOfGuardedRunAreUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''(a3ht1gg4x)'' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up' classified: 'tests - guarded run'.
SurveyCrawlerTest compile: 'test37OnlyMovementsOfTheFailingGuardedRunAreUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''a(a)h(ax)'' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@4 facing: #Right' classified: 'tests - guarded run'.
SurveyCrawlerTest compile: 'test38ASequenceCanHaveSeveralGuardedRuns

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''aha(aagt3)aa(ht)''.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)' classified: 'tests - guarded run'.
SurveyCrawlerTest compile: 'test39CanNotStartAGuardedRunInsideAnotherOne

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''aa(aa(ht)a)'' ]
		failWith: crawler nestedGuardedRunErrorDescription
		leaving: crawler at: 1@4 facing: #Up' classified: 'tests - guarded run'.
SurveyCrawlerTest compile: 'test40GuardedRunMustBeFinished

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''a(aa'' ]
		failWith: crawler unfinishedGuardedRunErrorDescription
		leaving: crawler at: 1@3 facing: #Up' classified: 'tests - guarded run'.
SurveyCrawlerTest compile: 'test41CanNotFinishAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''a)'' ]
		failWith: crawler guardedRunNotStartedErrorDescription
		leaving: crawler at: 1@3 facing: #Up' classified: 'tests - guarded run'.
SurveyCrawlerTest compile: 'test42ErrorsOutsideGuardedRunsAreNotUndone

	| crawler |
	
	sonar boulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''(a)aaa'' ]
		failWith: crawler boulderFoundErrorDescription
		leaving: crawler at: 1@4 facing: #Up' classified: 'tests - guarded run'.
SurveyCrawlerTest compile: 'test43AfterAFailedGuardedRunTheCrawlerIsNotGuarded

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self should: [ crawler process: ''(ax'' ] raise: Error - MessageNotUnderstood.
	
	self 
		should: [ crawler process: ''ax'' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@3 facing: #Up' classified: 'tests - guarded run'.
SurveyCrawlerTest compile: 'test44UndoingRetracesMovementsEvenIfStartedOnSilt

	| crawler |
	
	sonar siltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''(at0x)'' ]
		failWith: crawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up.
	self assert: slideRandom requestedLimits isEmpty' classified: 'tests - guarded run'.
'ok'

