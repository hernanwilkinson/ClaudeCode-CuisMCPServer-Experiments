(Smalltalk at: #SurveyCrawlerTest) compile: 'should: aBlock failWith: anErrorDescription andLeave: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]' classified: 'assertions'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'sonarWith: aGroundType at: aPosition

	^SimulatedSonar withGroundTypes: (Dictionary new at: aPosition put: aGroundType; yourself)' classified: 'sonars'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'sonarWithBoulderAt: aPosition

	^self sonarWith: BoulderGround new at: aPosition' classified: 'sonars'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'sonarWithSiltAt: aPosition sliding: aDistance

	^self sonarWith: (SiltGround slidingWith: (SlideDistanceGeneratorStub alwaysSliding: aDistance)) at: aPosition' classified: 'sonars'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test17DigitAfterAdvanceRepeatsItDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''a0''.
	
	self assert: (crawler isAt: 1@5 facing: #Up)' classified: 'tests - repetition'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test18DigitValueIsAddedToTheRepetitions

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''a9''.
	
	self assert: (crawler isAt: 1@14 facing: #Up)' classified: 'tests - repetition'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test19DigitAfterRetreatRepeatsIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''t1''.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)' classified: 'tests - repetition'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test20DigitAfterTurningRepeatsIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''h0g1''.
	
	self assert: (crawler isAt: 1@2 facing: #Left)' classified: 'tests - repetition'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test21OnlyTheLastCommandIsRepeated

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''ha0''.
	
	self assert: (crawler isAt: 4@2 facing: #Right)' classified: 'tests - repetition'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test22DigitCanNotStartACommandSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''3'' ] 
		failWith: crawler invalidRepetitionErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up' classified: 'tests - repetition'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test23RepetitionIsASingleDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''a00'' ] 
		failWith: crawler invalidRepetitionErrorDescription 
		andLeave: crawler at: 1@5 facing: #Up' classified: 'tests - repetition'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test24RepetitionDoesNotApplyToGuardedRunDelimiters

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''(a)0'' ] 
		failWith: crawler invalidRepetitionErrorDescription 
		andLeave: crawler at: 1@3 facing: #Up' classified: 'tests - repetition'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test25RepetitionDoesNotSpanCommandSequences

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	crawler process: ''a''.
	
	self 
		should: [ crawler process: ''0'' ] 
		failWith: crawler invalidRepetitionErrorDescription 
		andLeave: crawler at: 1@3 facing: #Up' classified: 'tests - repetition'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test26RepetitionDoesNotApplyToInvalidCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''x0'' ] 
		failWith: crawler invalidCommandErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up' classified: 'tests - repetition'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test27CanNotAdvanceToABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@3).
	
	self 
		should: [ crawler process: ''a'' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up' classified: 'tests - boulder'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test28CanNotRetreatToABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right sonar: (self sonarWithBoulderAt: 0@2).
	
	self 
		should: [ crawler process: ''t'' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@2 facing: #Right' classified: 'tests - boulder'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test29CanNotTurnCounterClockwiseOnABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@2).
	
	self 
		should: [ crawler process: ''g'' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up' classified: 'tests - boulder'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test30CanNotTurnClockwiseOnABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@2).
	
	self 
		should: [ crawler process: ''h'' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up' classified: 'tests - boulder'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test31CommandsBeforeTheBoulderAreKeptOutsideAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@4).
	
	self 
		should: [ crawler process: ''aaa'' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@3 facing: #Up' classified: 'tests - boulder'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test32RepetitionStopsAtABoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@5).
	
	self 
		should: [ crawler process: ''a5'' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@4 facing: #Up' classified: 'tests - boulder'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test33BoulderOnAnotherPositionDoesNotAffectMovement

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 2@3).
	
	crawler process: ''ag''.
	
	self assert: (crawler isAt: 1@3 facing: #Left)' classified: 'tests - boulder'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test34AdvancingToSiltSlidesInTheMovingDirection

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@3 sliding: 4).
	
	crawler process: ''a''.
	
	self assert: (crawler isAt: 1@6 facing: #Up)' classified: 'tests - silt'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test35RetreatingToSiltSlidesInTheMovingDirection

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left sonar: (self sonarWithSiltAt: 2@2 sliding: 3).
	
	crawler process: ''t''.
	
	self assert: (crawler isAt: 4@2 facing: #Left)' classified: 'tests - silt'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test36SiltSlidesAtMostTenCells

	| crawler slideDistanceGenerator |
	
	slideDistanceGenerator := SlideDistanceGeneratorStub alwaysSliding: 1.
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (self sonarWith: (SiltGround slidingWith: slideDistanceGenerator) at: 1@3).
	
	crawler process: ''a''.
	
	self assert: (crawler isAt: 1@3 facing: #Up).
	self assert: slideDistanceGenerator requestedLimit equals: 10' classified: 'tests - silt'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test37SiltSlidesARandomNumberOfCellsWithinTheLimit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: SiltGround new at: 1@3).
	
	crawler process: ''a''.
	
	self assert: ((3 to: 12) anySatisfy: [ :aY | crawler isAt: 1@aY facing: #Up ])' classified: 'tests - silt'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test38SiltDoesNotAffectTurning

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@2 sliding: 5).
	
	crawler process: ''hhg''.
	
	self assert: (crawler isAt: 1@2 facing: #Right)' classified: 'tests - silt'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test39GuardedRunWithoutProblemsKeepsItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''(aah)a''.
	
	self assert: (crawler isAt: 2@4 facing: #Right)' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test40BoulderInAGuardedRunReturnsToTheInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@4).
	
	self 
		should: [ crawler process: ''(aa)'' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test41GuardedRunUndoesEveryKindOfMovement

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 7@3).
	
	self 
		should: [ crawler process: ''(ahaagttha1gaa)'' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test42SiltInAGuardedRunReturnsToTheInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@5 sliding: 1).
	
	self 
		should: [ crawler process: ''h(gaaa)'' ] 
		failWith: crawler siltFoundInGuardedRunErrorDescription 
		andLeave: crawler at: 1@2 facing: #Right' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test43SiltDoesNotAffectTurningInAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@2 sliding: 1).
	
	crawler process: ''(h)''.
	
	self assert: (crawler isAt: 1@2 facing: #Right)' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test44InvalidCommandInAGuardedRunReturnsToTheInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''a(ahx)'' ] 
		failWith: crawler invalidCommandErrorDescription 
		andLeave: crawler at: 1@3 facing: #Up' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test45InvalidRepetitionInAGuardedRunReturnsToTheInitialPosition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''(a01)'' ] 
		failWith: crawler invalidRepetitionErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test46SequenceCanHaveSeveralGuardedRuns

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''aha(aagt3)aa(ht)''.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test47OnlyTheFailingGuardedRunIsUndone

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithBoulderAt: 1@6).
	
	self 
		should: [ crawler process: ''(a)a(aa)'' ] 
		failWith: crawler boulderFoundErrorDescription 
		andLeave: crawler at: 1@4 facing: #Up' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test48CanNotStartAGuardedRunInsideAnotherOne

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''aa(aa(ht)a)'' ] 
		failWith: crawler nestedGuardedRunErrorDescription 
		andLeave: crawler at: 1@4 facing: #Up' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test49GuardedRunMustBeFinished

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''a(aa'' ] 
		failWith: crawler unfinishedGuardedRunErrorDescription 
		andLeave: crawler at: 1@3 facing: #Up' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test50CanNotFinishAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ''a)a'' ] 
		failWith: crawler guardedRunNotStartedErrorDescription 
		andLeave: crawler at: 1@3 facing: #Up' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test51GuardedRunIsFinishedAfterAFailure

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self should: [ crawler process: ''(ax)'' ] raise: Error - MessageNotUnderstood.
	self 
		should: [ crawler process: '')'' ] 
		failWith: crawler guardedRunNotStartedErrorDescription 
		andLeave: crawler at: 1@2 facing: #Up' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test52UnfinishedGuardedRunDoesNotSpanCommandSequences

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self should: [ crawler process: ''(a'' ] raise: Error - MessageNotUnderstood.
	crawler process: ''(a)''.
	
	self assert: (crawler isAt: 1@3 facing: #Up)' classified: 'tests - guarded run'.
(Smalltalk at: #SurveyCrawlerTest) compile: 'test53SiltOutsideAGuardedRunIsNotUndoneByALaterGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWithSiltAt: 1@3 sliding: 3).
	
	self 
		should: [ crawler process: ''a(ax'' ] 
		failWith: crawler invalidCommandErrorDescription 
		andLeave: crawler at: 1@5 facing: #Up' classified: 'tests - guarded run'.
#done
