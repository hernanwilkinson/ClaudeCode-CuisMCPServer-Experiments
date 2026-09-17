| tests |
TestCase subclass: #SurveyCrawlerTest instanceVariableNames: 'sonar' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
SurveyCrawlerTest comment: 'Tests of the seabed survey crawler'.
Object subclass: #SlideGeneratorStub instanceVariableNames: 'slideBlock' classVariableNames: '' poolDictionaries: '' category: 'SurveyCrawler-Tests'.
SlideGeneratorStub comment: 'Replaces Random so slides on silt are predictable in tests'.
SlideGeneratorStub class compile: 'answering: aBlockReceivingTheLimit

	^self new initializeAnswering: aBlockReceivingTheLimit' classified: 'instance creation'.
SlideGeneratorStub class compile: 'shouldNotBeUsed

	^self answering: [ :aLimit | self error: ''Slide generator should not be used'' ]' classified: 'instance creation'.
SlideGeneratorStub compile: 'initializeAnswering: aBlockReceivingTheLimit

	slideBlock := aBlockReceivingTheLimit' classified: 'initialization'.
SlideGeneratorStub compile: 'nextInteger: aLimit

	^slideBlock value: aLimit' classified: 'random'.

SurveyCrawlerTest compile: 'setUp

	sonar := SimulatedSonar allFirmSand' classified: 'setup'.
SurveyCrawlerTest compile: 'crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: sonar slideGenerator: SlideGeneratorStub shouldNotBeUsed' classified: 'assertions'.
SurveyCrawlerTest compile: 'assert: aCrawler failsProcessing: aSequenceOfCommands with: anErrorDescription andIsAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]' classified: 'assertions'.

tests := OrderedCollection new.
"repetitions"
tests add: 'test17DigitRepeatsLastAdvanceDigitPlusTwoTimes
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''a0''.
	self assert: (crawler isAt: 1@5 facing: #Up)'.
tests add: 'test18DigitRepeatsLastRetreatDigitPlusTwoTimes
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''t9''.
	self assert: (crawler isAt: 1@-10 facing: #Up)'.
tests add: 'test19DigitRepeatsLastTurnClockwise
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''h1''.
	self assert: (crawler isAt: 1@2 facing: #Left)'.
tests add: 'test20DigitRepeatsLastTurnCounterClockwise
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''g0''.
	self assert: (crawler isAt: 1@2 facing: #Down)'.
tests add: 'test21DigitRepeatsOnlyTheLastCommand
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''ha0a''.
	self assert: (crawler isAt: 5@3 facing: #Right)'.
tests add: 'test22DigitWithoutPreviousCommandIsInvalid
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''3'' with: crawler invalidRepetitionErrorDescription andIsAt: 1@2 facing: #Up'.
tests add: 'test23RepetitionIsASingleDigit
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''a01'' with: crawler invalidRepetitionErrorDescription andIsAt: 1@5 facing: #Up'.
tests add: 'test24CanNotRepeatACommandOfAPreviousSequence
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''a''.
	self assert: crawler failsProcessing: ''0'' with: crawler invalidRepetitionErrorDescription andIsAt: 1@3 facing: #Up'.
tests add: 'test25CanNotRepeatGuardedRunDelimiters
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''(a)0'' with: crawler invalidRepetitionErrorDescription andIsAt: 1@3 facing: #Up'.
tests add: 'test26RepetitionStopsWhenABoulderIsFound
	| crawler |
	sonar boulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''a9'' with: crawler boulderFoundErrorDescription andIsAt: 1@4 facing: #Up'.
"boulders"
tests add: 'test27CanNotAdvanceToABoulder
	| crawler |
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''a'' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up'.
tests add: 'test28CanNotRetreatToABoulder
	| crawler |
	sonar boulderAt: 0@2.
	crawler := self crawlerAt: 1@2 facing: #Right.
	self assert: crawler failsProcessing: ''t'' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Right'.
tests add: 'test29CanNotTurnCounterClockwiseOnABoulder
	| crawler |
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''g'' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up'.
tests add: 'test30CanNotTurnClockwiseOnABoulder
	| crawler |
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''h'' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up'.
tests add: 'test31CommandsAfterABoulderAreNotProcessed
	| crawler |
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''hah'' with: crawler boulderFoundErrorDescription andIsAt: 2@2 facing: #Right.
	self assert: crawler failsProcessing: ''gga'' with: crawler boulderFoundErrorDescription andIsAt: 2@2 facing: #Up'.
"silt"
tests add: 'test32AdvancingToSiltSlidesARandomNumberOfCellsUpToTen
	| crawler requestedLimit |
	sonar siltAt: 1@3.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar slideGenerator: (SlideGeneratorStub answering: [ :aLimit | requestedLimit := aLimit. 4 ]).
	crawler process: ''a''.
	self assert: requestedLimit equals: 10.
	self assert: (crawler isAt: 1@6 facing: #Up)'.
tests add: 'test33SlidingOnSiltEndsAtLeastOnTheSiltAndAtMostTenCellsAway
	| minimumSlider maximumSlider |
	sonar siltAt: 1@3.
	minimumSlider := SurveyCrawler at: 1@2 facing: #Up sonar: sonar slideGenerator: (SlideGeneratorStub answering: [ :aLimit | 1 ]).
	maximumSlider := SurveyCrawler at: 1@2 facing: #Up sonar: sonar slideGenerator: (SlideGeneratorStub answering: [ :aLimit | aLimit ]).
	minimumSlider process: ''a''.
	maximumSlider process: ''a''.
	self assert: (minimumSlider isAt: 1@3 facing: #Up).
	self assert: (maximumSlider isAt: 1@12 facing: #Up)'.
tests add: 'test34RetreatingToSiltSlidesInTheDirectionItWasGoing
	| crawler |
	sonar siltAt: 0@2.
	crawler := SurveyCrawler at: 1@2 facing: #Right sonar: sonar slideGenerator: (SlideGeneratorStub answering: [ :aLimit | 3 ]).
	crawler process: ''t''.
	self assert: (crawler isAt: -2@2 facing: #Right)'.
tests add: 'test35SiltDoesNotAffectTurning
	| crawler |
	sonar siltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''hhg''.
	self assert: (crawler isAt: 1@2 facing: #Right)'.
tests add: 'test36RealSlidesAreBetweenOneAndTenCells
	| crawler |
	sonar siltAt: 1@3.
	100 timesRepeat: [
		crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar.
		crawler process: ''a''.
		self assert: ((3 to: 12) anySatisfy: [ :y | crawler isAt: 1@y facing: #Up ]) ]'.
"guarded runs"
tests add: 'test37GuardedRunWithoutProblemsProcessesItsCommands
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''(aha)''.
	self assert: (crawler isAt: 2@3 facing: #Right)'.
tests add: 'test38EmptyGuardedRunDoesNothing
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''()''.
	self assert: (crawler isAt: 1@2 facing: #Up)'.
tests add: 'test39GuardedRunUndoesMovementsWhenABoulderIsFound
	| crawler |
	sonar boulderAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''(aa)'' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up'.
tests add: 'test40GuardedRunUndoesTurnsAndRetreats
	| crawler |
	sonar boulderAt: 3@0.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''(hatgt1ga)'' with: crawler boulderFoundErrorDescription andIsAt: 1@2 facing: #Up'.
tests add: 'test41GuardedRunOnlyUndoesItsOwnMovements
	| crawler |
	sonar boulderAt: 2@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''a(a)h(ag)0a'' with: crawler boulderFoundErrorDescription andIsAt: 3@4 facing: #Up'.
tests add: 'test42GuardedRunDoesNotSlideOnSiltAndUndoesMovements
	| crawler |
	sonar siltAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''(a2)'' with: crawler siltFoundInGuardedRunErrorDescription andIsAt: 1@2 facing: #Up'.
tests add: 'test43GuardedRunUndoesMovementsWhenAnInvalidCommandIsFound
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''(ahax)'' with: crawler invalidCommandErrorDescription andIsAt: 1@2 facing: #Up'.
tests add: 'test44GuardedRunUndoesMovementsWhenAnInvalidRepetitionIsFound
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''(a22)'' with: crawler invalidRepetitionErrorDescription andIsAt: 1@2 facing: #Up'.
tests add: 'test45SeveralGuardedRunsCanBeProcessed
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: ''aha(aagt3)aa(ht)''.
	self assert: (crawler isAt: 3@-1 facing: #Right)'.
tests add: 'test46CanNotStartAGuardedRunInsideAnother
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''aa(aa(ht)a)'' with: crawler nestedGuardedRunErrorDescription andIsAt: 1@4 facing: #Up'.
tests add: 'test47GuardedRunMustBeFinished
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''a(aa'' with: crawler unfinishedGuardedRunErrorDescription andIsAt: 1@3 facing: #Up'.
tests add: 'test48CanNotFinishAGuardedRunThatWasNotStarted
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''a)a'' with: crawler noGuardedRunToFinishErrorDescription andIsAt: 1@3 facing: #Up'.
tests add: 'test49AfterAFailedGuardedRunTheCrawlerRunsNormallyAgain
	| crawler |
	sonar siltAt: 1@4.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar slideGenerator: (SlideGeneratorStub answering: [ :aLimit | 2 ]).
	self assert: crawler failsProcessing: ''(aa'' with: crawler siltFoundInGuardedRunErrorDescription andIsAt: 1@2 facing: #Up.
	crawler process: ''aa''.
	self assert: (crawler isAt: 1@5 facing: #Up)'.
tests add: 'test50UndoingDoesNotDependOnTheGround
	| crawler |
	sonar siltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''(a)(ax)'' with: crawler invalidCommandErrorDescription andIsAt: 1@3 facing: #Up'.
tests add: 'test51FailingOutsideAGuardedRunDoesNotUndoMovements
	| crawler |
	crawler := self crawlerAt: 1@2 facing: #Up.
	self assert: crawler failsProcessing: ''(a)ahx'' with: crawler invalidCommandErrorDescription andIsAt: 1@4 facing: #Right'.

tests do: [ :source | SurveyCrawlerTest compile: source classified: 'tests' ].
SurveyCrawlerTest selectors size
