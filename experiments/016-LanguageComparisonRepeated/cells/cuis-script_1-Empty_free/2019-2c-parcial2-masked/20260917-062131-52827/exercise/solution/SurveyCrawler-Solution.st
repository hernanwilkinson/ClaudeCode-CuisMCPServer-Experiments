!classDefinition: #SurveyCrawlerTest category: #'SurveyCrawler'!
TestCase subclass: #SurveyCrawlerTest
	instanceVariableNames: 'seabedMap randomInteger'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:32:07'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:32:38'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:33:00'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:34:11'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:34:03'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:35:16'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: crawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:35:37'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:35:52'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:36:09'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:36:32'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:37:31'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:38:17'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:38:40'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:39:01'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:39:23'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/24/2019 17:39:54'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [SurveyCrawler at: 1@2 facing: #X ]
		raise: Error
		withExceptionDo: [:anError |
			self assert: SurveyCrawler invalidFacingErrorDescription equals: anError messageText ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 13:59:46'!
test17AdvanceCanBeRepeated

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)
		! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 14:04:15'!
test18AnyCommandCanBeRepeated

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't0'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)
		! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 14:07:10'!
test19CanNotRepeatARepeatCommand

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 't00' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotRepeatAReapeatCommandErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@-1 facing: #Up) ]
		! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 14:10:23'!
test20CanNotRepeatNotExecutedCommand

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '0' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotRepeatNotExecutedCommandErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
		! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 14:28:58'!
test21AdvancesWithFirmSandGroundType

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	seabedMap := Dictionary new
		at: 1@3 put: FirmSandGroundType new;
		yourself.
	
	crawler process: 'a'.
	self assert: (crawler isAt: 1@3 facing: #Up)
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 14:41:08'!
test22CanNotMoveUpIntoBoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	seabedMap := Dictionary new
		at: 1@3 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: 'a' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotMoveIntoBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 14:41:18'!
test23CanNotMoveDownIntoBoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	seabedMap := Dictionary new
		at: 1@1 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: 't' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotMoveIntoBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 14:41:42'!
test24CanNotMoveRightIntoBoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right soundingWith: self.
	seabedMap := Dictionary new
		at: 2@2 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: 'a' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotMoveIntoBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Right) ]
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 14:43:07'!
test25CanNotMoveLeftIntoBoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right soundingWith: self.
	seabedMap := Dictionary new
		at: 0@2 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: 't' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotMoveIntoBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Right) ]
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 14:48:57'!
test26CanNotFaceDownWhenAtBoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right soundingWith: self.
	seabedMap := Dictionary new
		at: 1@2 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: 'h' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotTurnWhenAtBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Right) ]
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 14:49:20'!
test27CanNotFaceUpWhenAtBoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right soundingWith: self.
	seabedMap := Dictionary new
		at: 1@2 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: 'g' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotTurnWhenAtBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Right) ]
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 14:50:34'!
test28CanNotFaceRightWhenAtBoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	seabedMap := Dictionary new
		at: 1@2 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: 'h' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotTurnWhenAtBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 14:51:27'!
test29CanNotFaceLeftWhenAtBoulder

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	seabedMap := Dictionary new
		at: 1@2 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: 'g' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotTurnWhenAtBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 15:01:30'!
test30MovingIntoSiltIsUnpredictable

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	randomInteger := 3.
	seabedMap := Dictionary new
		at: 1@3 put: (SiltGroundType randomizingWith: self);
		yourself.
	
	crawler process: 'a'.
	self assert: (crawler isAt: 1@5 facing: #Up)
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 15:11:52'!
test31TurningClockwiseOnSiltIsUnpredictable

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	randomInteger := 2.
	seabedMap := Dictionary new
		at: 1@2 put: (SiltGroundType randomizingWith: self);
		yourself.
	
	crawler process: 'h'.
	self assert: (crawler isAt: 1@2 facing: #Down)
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 15:12:05'!
test32TurningCounterClockwiseOnSiltIsUnpredictable

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	randomInteger := 3.
	seabedMap := Dictionary new
		at: 1@2 put: (SiltGroundType randomizingWith: self);
		yourself.
	
	crawler process: 'g'.
	self assert: (crawler isAt: 1@2 facing: #Right)
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/28/2019 15:18:41'!
test33WhenThereAreNoErrorGuardedRunMovesCrawlerNormally

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(a)'.
	self assert: (crawler isAt: 1@3 facing: #Up)
! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:03:46'!
test34ReturnsToOriginalPositionWhenReachingABoulderAdvancingInGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	seabedMap := Dictionary new
		at: 1@3 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: '(a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotMoveIntoBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:05:55'!
test35ReturnsToOriginalPositionWhenReachingABoulderAdvancingMoreThanOnceInGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	seabedMap := Dictionary new
		at: 1@4 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotMoveIntoBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:06:03'!
test36ReturnsToOriginalPositionWhenReachingABoulderRetreatingInGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	seabedMap := Dictionary new
		at: 1@0 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: '(tt)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotMoveIntoBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:06:12'!
test37ReturnsToOriginalPositionWhenReachingSiltInGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	seabedMap := Dictionary new
		at: 1@4 put: (SiltGroundType randomizingWith: Random new);
		yourself.
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotMoveGuardedIntoSiltErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:06:20'!
test38ReturnsToOriginalPositionWhenTurningOnSiltInGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	seabedMap := Dictionary new
		at: 1@2 put: (SiltGroundType randomizingWith: Random new);
		yourself.
	
	self 
		should: [ crawler process: '(h)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotTurnGuardedOnSiltErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:06:38'!
test39CanNotStartGuardedRunWhenInGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a(' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotStartGuardedRunWhenInGuardedRunErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:07:00'!
test40CanNotEndGuardedRunWhenInFreeRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: ')' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotEndGuardedRunWhenInFreeRunErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:07:20'!
test41CanProcessManyGuardedRuns

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(a)(a)'.
	self assert: (crawler isAt: 1@4 facing: #Up) 
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:07:37'!
test42CanNotRepeatEndOfGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)0' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotRepeatEndOfGuardedRunErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@3 facing: #Up) ]
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:07:54'!
test43CanNotRepeatStartOfGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(0)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotRepeatStartOfGuardedRunErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:08:14'!
test44CanNotEndInGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotEndInGuardedRunErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:08:42'!
test45TurnClockwiseIsUndoneCorrectly

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	seabedMap := Dictionary new
		at: 2@2 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: '(ha)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotMoveIntoBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:08:55'!
test46TurnCounterClockwiseIsUndoneCorrectly

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	seabedMap := Dictionary new
		at: 0@2 put: BoulderGroundType new;
		yourself.
	
	self 
		should: [ crawler process: '(ga)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler canNotMoveIntoBoulderErrorDescription equals: anError messageText.
			self assert: (crawler isAt: 1@2 facing: #Up) ]
	

! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 11/30/2019 08:09:16'!
test47FailsWhenAskingUndoOfInvalidCommand

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up soundingWith: self.
	
	self 
		should: [ crawler undoCommandOf: $x ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: crawler invalidCommandErrorDescription equals: anError messageText ]
	

! !


!SurveyCrawlerTest methodsFor: 'simulation' stamp: 'HAW 11/28/2019 15:32:39'!
groundTypeAt: aPosition

	^seabedMap at: aPosition ifAbsent: [ FirmSandGroundType new ]! !

!SurveyCrawlerTest methodsFor: 'simulation' stamp: 'HAW 11/28/2019 14:59:23'!
nextInteger: aLimit

	^randomInteger ! !


!classDefinition: #Sonar category: #'SurveyCrawler'!
Object subclass: #Sonar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!Sonar methodsFor: 'sensing' stamp: 'HAW 11/28/2019 15:15:21'!
groundTypeAt: aPosition

	self subclassResponsibility ! !


!classDefinition: #AlwaysFirmSandSonar category: #'SurveyCrawler'!
Sonar subclass: #AlwaysFirmSandSonar
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!AlwaysFirmSandSonar methodsFor: 'sensing' stamp: 'HAW 11/28/2019 14:26:07'!
groundTypeAt: aPosition

	^FirmSandGroundType new! !


!classDefinition: #GroundType category: #'SurveyCrawler'!
Object subclass: #GroundType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!GroundType methodsFor: 'turning' stamp: 'HAW 11/28/2019 15:14:54'!
turn: aCrawler doing: aClosure 

	self subclassResponsibility ! !


!GroundType methodsFor: 'moving' stamp: 'HAW 11/28/2019 15:14:45'!
move: aCrawler adding: anOffset  

	self subclassResponsibility ! !


!classDefinition: #FirmSandGroundType category: #'SurveyCrawler'!
GroundType subclass: #FirmSandGroundType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!FirmSandGroundType methodsFor: 'moving' stamp: 'HAW 11/28/2019 14:37:26'!
move: aCrawler adding: anOffset  
	
	aCrawler moveWhenReachingFirmSandAdding: anOffset! !


!FirmSandGroundType methodsFor: 'turning' stamp: 'HAW 11/28/2019 15:07:12'!
turn: aCrawler doing: aClosure 
	
	aCrawler turnWhenAtFirmSandDoing: aClosure ! !


!classDefinition: #SiltGroundType category: #'SurveyCrawler'!
GroundType subclass: #SiltGroundType
	instanceVariableNames: 'random'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!SiltGroundType methodsFor: 'initialization' stamp: 'HAW 11/28/2019 14:57:42'!
initializeRandomizingWith: aRandom 
	
	random := aRandom.! !


!SiltGroundType methodsFor: 'moving' stamp: 'HAW 11/28/2019 14:59:04'!
move: aCrawler adding: anOffset

	aCrawler moveWhenReachingSiltAdding: (anOffset * (random nextInteger: 10))! !


!SiltGroundType methodsFor: 'turning' stamp: 'HAW 11/28/2019 15:09:23'!
turn: aCrawler doing: aClosure 
	
	aCrawler turnWhenAtSiltDoing: [ (random nextInteger: 10) timesRepeat: aClosure ]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SiltGroundType class' category: #'SurveyCrawler'!
SiltGroundType class
	instanceVariableNames: ''!

!SiltGroundType class methodsFor: 'instance creation' stamp: 'HAW 11/28/2019 14:57:36'!
randomizingWith: aRandom

	^self new initializeRandomizingWith: aRandom! !


!classDefinition: #BoulderGroundType category: #'SurveyCrawler'!
GroundType subclass: #BoulderGroundType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!BoulderGroundType methodsFor: 'moving' stamp: 'HAW 11/28/2019 14:39:43'!
move: aCrawler adding: anOffset  
	
	aCrawler moveWhenReachingBoulderAdding: anOffset! !


!BoulderGroundType methodsFor: 'turning' stamp: 'HAW 11/28/2019 15:07:41'!
turn: aCrawler doing: aClosure 
	
	aCrawler turnWhenAtBoulderDoing: aClosure ! !


!classDefinition: #SurveyCrawler category: #'SurveyCrawler'!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing lastCommand sonar state guardedExecutedCommands'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 11/28/2019 16:01:20'!
canNotEndInGuardedRunErrorDescription
	
	^'Can not end in guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 11/28/2019 16:04:25'!
canNotStartGuardedRunWhenInGuardedRunErrorDescription
	
	^'Can not start a guarded run when in a guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 11/28/2019 16:04:34'!
canNotEndGuardedRunWhenInFreeRunErrorDescription
	
	^'Can not end a guarded run when in a free run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 11/28/2019 14:25:48'!
canNotMoveIntoBoulderErrorDescription
	
	^'Can not move into boulder'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 11/28/2019 15:41:31'!
canNotMoveGuardedIntoSiltErrorDescription
	
	^'Can not move guarded into silt'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 11/28/2019 14:09:17'!
canNotRepeatAReapeatCommandErrorDescription
	
	^'Can not repeat a reapeat command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 11/28/2019 15:58:35'!
canNotRepeatStartOfGuardedRunErrorDescription
	
	^'Can not repeat start of guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 11/28/2019 15:56:38'!
canNotRepeatEndOfGuardedRunErrorDescription
	
	^'Can not repeat end of guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 11/28/2019 14:12:34'!
canNotRepeatNotExecutedCommandErrorDescription
	
	^'There is no command to repeat'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 11/28/2019 15:45:18'!
canNotTurnGuardedOnSiltErrorDescription
	
	^'Can not turn guarded on silt'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 11/28/2019 14:47:46'!
canNotTurnWhenAtBoulderErrorDescription
	
	^'Can not turn when at boulder'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 6/30/2018 19:48:45'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 6/30/2018 19:50:26'!
signalInvalidCommand
	
	self error: self invalidCommandErrorDescription ! !


!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 11/28/2019 15:46:19'!
initializeAt: aPosition facing: aFacing soundingWith: aSonar 

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	state := FreeRunState for: self! !


!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:14:20'!
faceRight
	
	facing := CrawlerFacingRight new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:16:30'!
faceUp
	
	facing := CrawlerFacingUp new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:16:05'!
faceDown
	
	facing := CrawlerFacingDown new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:14:38'!
faceLeft
	
	facing := CrawlerFacingLeft new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 11/28/2019 15:11:42'!
turnCounterClockwise
	
	(sonar groundTypeAt: position) turn: self doing: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 11/28/2019 15:06:37'!
turnClockwise
	
	(sonar groundTypeAt: position) turn: self doing: [ facing turnClockwise: self ]! !


!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 11/28/2019 16:09:09'!
hasExecutedCommand

	^ lastCommand isNil! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 8/22/2019 12:00:30'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 7/6/2018 18:16:51'!
isRetreatCommand: aCommand

	^aCommand = $t! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 11/28/2019 16:06:20'!
isStartOfGuardedRun: aCommand

	^ aCommand = $(! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 7/6/2018 18:16:19'!
isAdvanceCommand: aCommand

	^aCommand = $a ! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 11/28/2019 16:06:32'!
isEndOfGuardedRun: aCommand

	^ aCommand = $)! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 7/6/2018 18:17:51'!
isTurnCounterClockwiseCommand: aCommand

	^aCommand = $g! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 7/6/2018 18:17:21'!
isTurnClockwiseCommand: aCommand

	^aCommand = $h! !


!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:05:20'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 11/28/2019 14:54:09'!
moveRight
	
	self moveAdding: 1@0.
	! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:05:55'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 11/28/2019 14:54:45'!
moveUp
	
	self moveAdding: 0@1
	! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 11/28/2019 14:54:51'!
moveDown
	
	self moveAdding: 0@-1
! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 11/28/2019 14:54:58'!
moveLeft
	
	self moveAdding: -1@0
	! !


!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 11/28/2019 16:09:39'!
assertCanRepeatCommand

	self hasExecutedCommand ifTrue: [ self error: self canNotRepeatNotExecutedCommandErrorDescription ].
	(self isRepeatCommand: lastCommand) ifTrue: [ self error: self canNotRepeatAReapeatCommandErrorDescription ].
	(self isEndOfGuardedRun: lastCommand) ifTrue: [self error: self canNotRepeatEndOfGuardedRunErrorDescription ].
	(self isStartOfGuardedRun: lastCommand) ifTrue: [self error: self canNotRepeatStartOfGuardedRunErrorDescription ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 11/28/2019 14:04:43'!
isRepeatCommand: aCommand

	^ aCommand isDigit! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 11/28/2019 16:00:35'!
process: aSequenceOfCommands

	aSequenceOfCommands do: [:aCommand | 
		state processCommand: aCommand.
		lastCommand := aCommand ].
	
	state finishProcessing.
! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 11/28/2019 15:53:21'!
processCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].
	(self isRepeatCommand: aCommand) ifTrue: [ ^self repeatLastCommand: aCommand digitValue + 2].
	
	self signalInvalidCommand.! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 11/28/2019 14:15:11'!
repeatLastCommand: aNumberOfTimes

	self assertCanRepeatCommand.
	
	^ aNumberOfTimes timesRepeat: [ self processCommand: lastCommand ]! !


!SurveyCrawler methodsFor: 'facing - private' stamp: 'HAW 11/28/2019 15:45:03'!
turnGuardedWhenAtSiltDoing: aClosure 
	
	self error: self canNotTurnGuardedOnSiltErrorDescription! !

!SurveyCrawler methodsFor: 'facing - private' stamp: 'HAW 11/28/2019 15:49:51'!
turnFreeWhenAtSiltDoing: aClosure

	aClosure value! !

!SurveyCrawler methodsFor: 'facing - private' stamp: 'HAW 11/28/2019 15:07:22'!
turnWhenAtFirmSandDoing: aClosure 
	
	aClosure value! !

!SurveyCrawler methodsFor: 'facing - private' stamp: 'HAW 11/28/2019 15:46:57'!
turnWhenAtSiltDoing: aClosure 
	
	state turnWhenAtSiltDoing: aClosure ! !

!SurveyCrawler methodsFor: 'facing - private' stamp: 'HAW 11/28/2019 15:08:09'!
turnWhenAtBoulderDoing: aClosure 
	
	self error: self canNotTurnWhenAtBoulderErrorDescription! !


!SurveyCrawler methodsFor: 'processing - private' stamp: 'HAW 11/28/2019 16:03:06'!
finishProcessingGuarded
	
	self undoGuardedExecutedCommands.
	self error: self canNotEndInGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'processing - private' stamp: 'HAW 11/28/2019 16:03:32'!
finishProcessingFree
	
	! !

!SurveyCrawler methodsFor: 'processing - private' stamp: 'HAW 11/28/2019 16:06:32'!
processCommandGuarded: aCommand

	[ (self isStartOfGuardedRun: aCommand) ifTrue: [ self error: self canNotStartGuardedRunWhenInGuardedRunErrorDescription ].
	(self isEndOfGuardedRun: aCommand) ifTrue: [ ^state := FreeRunState for: self ].
			
	self processCommand: aCommand.
	guardedExecutedCommands add: aCommand ]
		on: Error - MessageNotUnderstood 
		do: [ :anError |
			self undoGuardedExecutedCommands.
			anError pass ].
			! !

!SurveyCrawler methodsFor: 'processing - private' stamp: 'HAW 11/28/2019 16:07:40'!
processCommandFree: aCommand

	(self isStartOfGuardedRun: aCommand) ifTrue: [^self startGuardedRun ].
	(self isEndOfGuardedRun: aCommand) ifTrue: [ ^self error: self canNotEndGuardedRunWhenInFreeRunErrorDescription ].

	self processCommand: aCommand! !


!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 11/28/2019 14:54:27'!
moveAdding: anOffset

	(sonar groundTypeAt: position + anOffset) move: self adding: anOffset ! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 11/28/2019 15:41:18'!
moveGuardedIntoSiltAdding: anOffset

	self error: self canNotMoveGuardedIntoSiltErrorDescription! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 11/28/2019 15:49:03'!
moveFreeWhenReachingSiltAdding: anOffset

	position := position + anOffset! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 11/28/2019 14:38:51'!
moveWhenReachingFirmSandAdding: anOffset
	
	position := position + anOffset ! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 11/28/2019 15:46:37'!
moveWhenReachingSiltAdding: anOffset

	state moveWhenReachingSiltAdding: anOffset ! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 11/28/2019 14:39:43'!
moveWhenReachingBoulderAdding: anOffset
	
	self error: self canNotMoveIntoBoulderErrorDescription! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 11/30/2019 07:45:41'!
undoCommandOf: aCommand

	aCommand = $a ifTrue: [ ^$t ].
	aCommand = $t ifTrue: [ ^$a ].
	aCommand = $h ifTrue: [ ^$g ].
	aCommand = $g ifTrue: [ ^$h ].
	
	self signalInvalidCommand ! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 11/28/2019 16:10:59'!
undoGuardedExecutedCommands

	^ guardedExecutedCommands reverseDo: [ :aCommandToUndo | 
		self processCommand: (self undoCommandOf: aCommandToUndo )]! !


!SurveyCrawler methodsFor: 'state' stamp: 'HAW 11/28/2019 16:07:50'!
startGuardedRun
 
	guardedExecutedCommands := OrderedCollection new.
	state := GuardedRunState for: self ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SurveyCrawler class' category: #'SurveyCrawler'!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 11/28/2019 14:20:38'!
at: aPosition facing: aFacingName
	
	^self at: aPosition facing: aFacingName soundingWith: AlwaysFirmSandSonar new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 11/28/2019 14:18:38'!
at: aPosition facing: aFacingName soundingWith: aSonar 
	
	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) soundingWith: aSonar ! !


!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 7/2/2018 16:26:14'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !


!classDefinition: #CrawlerFacing category: #'SurveyCrawler'!
Object subclass: #CrawlerFacing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:06:17'!
turnCounterClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:08:23'!
turnClockwise: aCrawler

	self subclassResponsibility ! !


!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 7/2/2018 19:07:42'!
isFacing: aFacingName

	^self class isFor: aFacingName! !


!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:05:20'!
retreat: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:05:54'!
advance: aCrawler

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CrawlerFacing class' category: #'SurveyCrawler'!
CrawlerFacing class
	instanceVariableNames: ''!

!CrawlerFacing class methodsFor: 'facing name' stamp: 'HAW 7/2/2018 19:07:01'!
facingName

	self subclassResponsibility ! !


!CrawlerFacing class methodsFor: 'instance creation' stamp: 'HAW 8/22/2019 12:02:00'!
facing: aFacingName

	^self subclasses 
		detect: [ :aCrawlerFacingClass | aCrawlerFacingClass isFor: aFacingName ]
		ifFound: [ :aCrawlerFacingClass | aCrawlerFacingClass new ]
		ifNone: [ self error: SurveyCrawler invalidFacingErrorDescription ]! !


!CrawlerFacing class methodsFor: 'testing' stamp: 'HAW 7/2/2018 17:01:33'!
isFor: aFacingName

	^self facingName = aFacingName ! !


!classDefinition: #CrawlerFacingRight category: #'SurveyCrawler'!
CrawlerFacing subclass: #CrawlerFacingRight
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:09:19'!
retreat: aCrawler
	
	^aCrawler moveLeft! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:09:28'!
advance: aCrawler
	
	^aCrawler moveRight! !


!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:09:42'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:09:54'!
turnClockwise: aCrawler
	
	^aCrawler faceDown! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CrawlerFacingRight class' category: #'SurveyCrawler'!
CrawlerFacingRight class
	instanceVariableNames: ''!

!CrawlerFacingRight class methodsFor: 'as yet unclassified' stamp: 'HAW 7/2/2018 17:01:53'!
facingName

	^#Right! !


!classDefinition: #CrawlerFacingUp category: #'SurveyCrawler'!
CrawlerFacing subclass: #CrawlerFacingUp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:10:12'!
retreat: aCrawler
	
	^aCrawler moveDown! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:10:23'!
advance: aCrawler
	
	^aCrawler moveUp! !


!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:10:40'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:10:51'!
turnClockwise: aCrawler
	
	^aCrawler faceRight! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CrawlerFacingUp class' category: #'SurveyCrawler'!
CrawlerFacingUp class
	instanceVariableNames: ''!

!CrawlerFacingUp class methodsFor: 'as yet unclassified' stamp: 'HAW 7/2/2018 17:03:11'!
facingName

	^#Up! !


!classDefinition: #CrawlerFacingDown category: #'SurveyCrawler'!
CrawlerFacing subclass: #CrawlerFacingDown
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:11:15'!
retreat: aCrawler
	
	^aCrawler moveUp! !

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:11:25'!
advance: aCrawler
	
	^aCrawler moveDown! !


!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:11:55'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:11:50'!
turnClockwise: aCrawler
	
	^aCrawler faceLeft! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CrawlerFacingDown class' category: #'SurveyCrawler'!
CrawlerFacingDown class
	instanceVariableNames: ''!

!CrawlerFacingDown class methodsFor: 'as yet unclassified' stamp: 'HAW 7/2/2018 17:03:17'!
facingName

	^#Down! !


!classDefinition: #CrawlerFacingLeft category: #'SurveyCrawler'!
CrawlerFacing subclass: #CrawlerFacingLeft
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:12:07'!
retreat: aCrawler

	^aCrawler moveRight! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 8/22/2019 12:12:15'!
advance: aCrawler
	
	^aCrawler moveLeft! !


!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:12:26'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 8/22/2019 12:12:41'!
turnClockwise: aCrawler
	
	^aCrawler faceUp! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CrawlerFacingLeft class' category: #'SurveyCrawler'!
CrawlerFacingLeft class
	instanceVariableNames: ''!

!CrawlerFacingLeft class methodsFor: 'as yet unclassified' stamp: 'HAW 7/2/2018 17:03:23'!
facingName

	^#Left! !


!classDefinition: #CrawlerState category: #'SurveyCrawler'!
Object subclass: #CrawlerState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!CrawlerState methodsFor: 'moving' stamp: 'HAW 11/30/2019 08:11:06'!
moveWhenReachingSiltAdding: anOffset

	self subclassResponsibility ! !

!CrawlerState methodsFor: 'moving' stamp: 'HAW 11/30/2019 08:11:32'!
turnWhenAtSiltDoing: aClosure 

	self subclassResponsibility ! !


!CrawlerState methodsFor: 'processing' stamp: 'HAW 11/30/2019 08:10:55'!
finishProcessing

	self subclassResponsibility ! !

!CrawlerState methodsFor: 'processing' stamp: 'HAW 11/30/2019 08:11:20'!
processCommand: aCommand

	self subclassResponsibility ! !


!classDefinition: #GuardedRunState category: #'SurveyCrawler'!
CrawlerState subclass: #GuardedRunState
	instanceVariableNames: 'crawler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!GuardedRunState methodsFor: 'initialization' stamp: 'HAW 11/28/2019 15:23:57'!
initializeFor: aCrawler 
	
	crawler := aCrawler.! !


!GuardedRunState methodsFor: 'processing' stamp: 'HAW 11/28/2019 16:00:55'!
finishProcessing
	
	crawler finishProcessingGuarded! !

!GuardedRunState methodsFor: 'processing' stamp: 'HAW 11/28/2019 15:24:24'!
processCommand: aCommand

	crawler processCommandGuarded: aCommand ! !


!GuardedRunState methodsFor: 'moving' stamp: 'HAW 11/28/2019 15:40:59'!
moveWhenReachingSiltAdding: anOffset

	crawler moveGuardedIntoSiltAdding: anOffset ! !

!GuardedRunState methodsFor: 'moving' stamp: 'HAW 11/28/2019 15:44:47'!
turnWhenAtSiltDoing: aClosure 
	
	crawler turnGuardedWhenAtSiltDoing: aClosure ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GuardedRunState class' category: #'SurveyCrawler'!
GuardedRunState class
	instanceVariableNames: ''!

!GuardedRunState class methodsFor: 'instance creation' stamp: 'HAW 11/28/2019 15:23:47'!
for: aCrawler 

	^self new initializeFor: aCrawler ! !


!classDefinition: #FreeRunState category: #'SurveyCrawler'!
CrawlerState subclass: #FreeRunState
	instanceVariableNames: 'crawler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!

!FreeRunState methodsFor: 'initialization' stamp: 'HAW 11/28/2019 15:47:12'!
initializeFor: aCrawler 
	
	crawler := aCrawler.! !


!FreeRunState methodsFor: 'processing' stamp: 'HAW 11/28/2019 16:03:26'!
finishProcessing
	
	crawler finishProcessingFree! !

!FreeRunState methodsFor: 'processing' stamp: 'HAW 11/28/2019 15:47:46'!
processCommand: aCommand

	crawler processCommandFree: aCommand! !


!FreeRunState methodsFor: 'moving' stamp: 'HAW 11/28/2019 15:48:32'!
moveWhenReachingSiltAdding: anOffset

	crawler moveFreeWhenReachingSiltAdding: anOffset ! !

!FreeRunState methodsFor: 'moving' stamp: 'HAW 11/28/2019 15:49:29'!
turnWhenAtSiltDoing: aClosure 
	
	crawler turnFreeWhenAtSiltDoing: aClosure ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'FreeRunState class' category: #'SurveyCrawler'!
FreeRunState class
	instanceVariableNames: ''!

!FreeRunState class methodsFor: 'instance creation' stamp: 'HAW 11/28/2019 15:47:06'!
for: aCrawler 

	^self new initializeFor: aCrawler ! !
