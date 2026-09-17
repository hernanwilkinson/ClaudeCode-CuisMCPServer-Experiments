'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 9:57:21 am'!
'Description '!
!provides: 'SurveyCrawler' 1 1!
SystemOrganization addCategory: #SurveyCrawler!
SystemOrganization addCategory: #'SurveyCrawler-Tests'!


!classDefinition: #CrawlerFacing category: #SurveyCrawler!
Object subclass: #CrawlerFacing
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFacing class' category: #SurveyCrawler!
CrawlerFacing class
	instanceVariableNames: ''!

!classDefinition: #CrawlerFacingDown category: #SurveyCrawler!
CrawlerFacing subclass: #CrawlerFacingDown
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFacingDown class' category: #SurveyCrawler!
CrawlerFacingDown class
	instanceVariableNames: ''!

!classDefinition: #CrawlerFacingLeft category: #SurveyCrawler!
CrawlerFacing subclass: #CrawlerFacingLeft
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFacingLeft class' category: #SurveyCrawler!
CrawlerFacingLeft class
	instanceVariableNames: ''!

!classDefinition: #CrawlerFacingRight category: #SurveyCrawler!
CrawlerFacing subclass: #CrawlerFacingRight
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFacingRight class' category: #SurveyCrawler!
CrawlerFacingRight class
	instanceVariableNames: ''!

!classDefinition: #CrawlerFacingUp category: #SurveyCrawler!
CrawlerFacing subclass: #CrawlerFacingUp
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerFacingUp class' category: #SurveyCrawler!
CrawlerFacingUp class
	instanceVariableNames: ''!

!classDefinition: #CrawlerMovement category: #SurveyCrawler!
Object subclass: #CrawlerMovement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerMovement class' category: #SurveyCrawler!
CrawlerMovement class
	instanceVariableNames: ''!

!classDefinition: #CrawlerClockwiseTurn category: #SurveyCrawler!
CrawlerMovement subclass: #CrawlerClockwiseTurn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerClockwiseTurn class' category: #SurveyCrawler!
CrawlerClockwiseTurn class
	instanceVariableNames: ''!

!classDefinition: #CrawlerCounterClockwiseTurn category: #SurveyCrawler!
CrawlerMovement subclass: #CrawlerCounterClockwiseTurn
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerCounterClockwiseTurn class' category: #SurveyCrawler!
CrawlerCounterClockwiseTurn class
	instanceVariableNames: ''!

!classDefinition: #CrawlerDisplacement category: #SurveyCrawler!
CrawlerMovement subclass: #CrawlerDisplacement
	instanceVariableNames: 'displacement'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerDisplacement class' category: #SurveyCrawler!
CrawlerDisplacement class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRunState category: #SurveyCrawler!
Object subclass: #CrawlerRunState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRunState class' category: #SurveyCrawler!
CrawlerRunState class
	instanceVariableNames: ''!

!classDefinition: #CrawlerGuardedRun category: #SurveyCrawler!
CrawlerRunState subclass: #CrawlerGuardedRun
	instanceVariableNames: 'movements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerGuardedRun class' category: #SurveyCrawler!
CrawlerGuardedRun class
	instanceVariableNames: ''!

!classDefinition: #CrawlerNormalRun category: #SurveyCrawler!
CrawlerRunState subclass: #CrawlerNormalRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerNormalRun class' category: #SurveyCrawler!
CrawlerNormalRun class
	instanceVariableNames: ''!

!classDefinition: #SeabedGround category: #SurveyCrawler!
Object subclass: #SeabedGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedGround class' category: #SurveyCrawler!
SeabedGround class
	instanceVariableNames: ''!

!classDefinition: #BoulderGround category: #SurveyCrawler!
SeabedGround subclass: #BoulderGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'BoulderGround class' category: #SurveyCrawler!
BoulderGround class
	instanceVariableNames: ''!

!classDefinition: #FirmSandGround category: #SurveyCrawler!
SeabedGround subclass: #FirmSandGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'FirmSandGround class' category: #SurveyCrawler!
FirmSandGround class
	instanceVariableNames: ''!

!classDefinition: #SiltGround category: #SurveyCrawler!
SeabedGround subclass: #SiltGround
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SiltGround class' category: #SurveyCrawler!
SiltGround class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar randomGenerator runState'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #SurveyCrawlerTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerTest
	instanceVariableNames: 'grounds slidingDistance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerTest class
	instanceVariableNames: ''!


!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:08:23 pm (UTC)'!
turnClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:06:17 pm (UTC)'!
turnCounterClockwise: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:54 pm (UTC)'!
advance: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat: aCrawler

	self subclassResponsibility ! !

!CrawlerFacing class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 10:07:01 pm (UTC)'!
facingName

	self subclassResponsibility ! !

!CrawlerFacing class methodsFor: 'instance creation' stamp: 'HAW 22/Aug/2019, 3:02:00 pm (UTC)'!
facing: aFacingName

	^self subclasses 
		detect: [ :aCrawlerFacingClass | aCrawlerFacingClass isFor: aFacingName ]
		ifFound: [ :aCrawlerFacingClass | aCrawlerFacingClass new ]
		ifNone: [ self error: SurveyCrawler invalidFacingErrorDescription ]! !

!CrawlerFacing class methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 8:01:33 pm (UTC)'!
isFor: aFacingName

	^self facingName = aFacingName ! !

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:11:25 pm (UTC)'!
advance: aCrawler
	
	^aCrawler moveDown! !

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:11:15 pm (UTC)'!
retreat: aCrawler
	
	^aCrawler moveUp! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:50 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:55 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingDown class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:17 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:12:15 pm (UTC)'!
advance: aCrawler
	
	^aCrawler moveLeft! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:12:07 pm (UTC)'!
retreat: aCrawler

	^aCrawler moveRight! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:41 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:26 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingLeft class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:23 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:09:28 pm (UTC)'!
advance: aCrawler
	
	^aCrawler moveRight! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:09:19 pm (UTC)'!
retreat: aCrawler
	
	^aCrawler moveLeft! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:54 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:42 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingRight class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:01:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:10:23 pm (UTC)'!
advance: aCrawler
	
	^aCrawler moveUp! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:10:12 pm (UTC)'!
retreat: aCrawler
	
	^aCrawler moveDown! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:51 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:40 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingUp class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:11 pm (UTC)'!
facingName

	^#Up! !

!CrawlerMovement methodsFor: 'undoing' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerClockwiseTurn methodsFor: 'undoing' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
undoOn: aCrawler

	aCrawler undoClockwiseTurn! !

!CrawlerCounterClockwiseTurn methodsFor: 'undoing' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
undoOn: aCrawler

	aCrawler undoCounterClockwiseTurn! !

!CrawlerDisplacement methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
initializeOf: aDisplacement

	displacement := aDisplacement! !

!CrawlerDisplacement methodsFor: 'undoing' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
undoOn: aCrawler

	aCrawler undoDisplacement: displacement! !

!CrawlerDisplacement class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
of: aDisplacement

	^self new initializeOf: aDisplacement! !

!CrawlerRunState methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
abortOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
assertNoGuardedRunIsOpenOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
closeGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
openGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'movements' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
crawlerSlidOnSilt: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'movements' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
record: aMovement

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
initialize

	movements := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
abortOn: aCrawler

	movements reverseDo: [ :aMovement | aMovement undoOn: aCrawler ].
	aCrawler runNormally! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
assertNoGuardedRunIsOpenOn: aCrawler

	aCrawler signalGuardedRunNotClosed! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
closeGuardedRunOn: aCrawler

	aCrawler runNormally! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
openGuardedRunOn: aCrawler

	aCrawler signalGuardedRunAlreadyOpen! !

!CrawlerGuardedRun methodsFor: 'movements' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
crawlerSlidOnSilt: aCrawler

	aCrawler signalSlidOnSilt! !

!CrawlerGuardedRun methodsFor: 'movements' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
record: aMovement

	movements add: aMovement! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
abortOn: aCrawler

	! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
assertNoGuardedRunIsOpenOn: aCrawler

	! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
closeGuardedRunOn: aCrawler

	aCrawler signalNoGuardedRunToClose! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
openGuardedRunOn: aCrawler

	aCrawler runGuarded! !

!CrawlerNormalRun methodsFor: 'movements' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
crawlerSlidOnSilt: aCrawler

	! !

!CrawlerNormalRun methodsFor: 'movements' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
record: aMovement

	! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
move: aCrawler by: aDisplacement

	self subclassResponsibility! !

!SeabedGround methodsFor: 'turning' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
assertCanTurn: aCrawler

	self subclassResponsibility! !

!BoulderGround methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
move: aCrawler by: aDisplacement

	aCrawler signalBoulderFound! !

!BoulderGround methodsFor: 'turning' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
assertCanTurn: aCrawler

	aCrawler signalCanNotTurnOnBoulder! !

!FirmSandGround methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
move: aCrawler by: aDisplacement

	aCrawler displaceBy: aDisplacement! !

!FirmSandGround methodsFor: 'turning' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
assertCanTurn: aCrawler

	! !

!SiltGround methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
move: aCrawler by: aDisplacement

	aCrawler slideBy: aDisplacement! !

!SiltGround methodsFor: 'turning' stamp: 'HAW 16/Sep/2026, 12:55:53 pm (UTC)'!
assertCanTurn: aCrawler

	! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:48:45 pm (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:50:26 pm (UTC)'!
signalInvalidCommand
	
	self error: self invalidCommandErrorDescription ! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar randomGenerator: aRandomGenerator

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	randomGenerator := aRandomGenerator.
	runState := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:16:05 pm (UTC)'!
faceDown
	
	facing := CrawlerFacingDown new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:14:38 pm (UTC)'!
faceLeft
	
	facing := CrawlerFacingLeft new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:14:20 pm (UTC)'!
faceRight
	
	facing := CrawlerFacingRight new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:16:30 pm (UTC)'!
faceUp
	
	facing := CrawlerFacingUp new! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:19 pm (UTC)'!
isAdvanceCommand: aCommand

	^aCommand = $a ! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:51 pm (UTC)'!
isRetreatCommand: aCommand

	^aCommand = $t! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:21 pm (UTC)'!
isTurnClockwiseCommand: aCommand

	^aCommand = $h! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:51 pm (UTC)'!
isTurnCounterClockwiseCommand: aCommand

	^aCommand = $g! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
displaceBy: aDisplacement

	position := position + aDisplacement.
	runState record: (CrawlerDisplacement of: aDisplacement)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
moveBy: aDisplacement

	(sonar groundAt: position + aDisplacement) move: self by: aDisplacement! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
moveDown
	
	self moveBy: 0@-1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
moveLeft
	
	self moveBy: -1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
moveRight
	
	self moveBy: 1@0! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
moveUp
	
	self moveBy: 0@1! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
slideBy: aDisplacement

	self displaceBy: aDisplacement * (randomGenerator nextInteger: self class maxSlidingDistance).
	runState crawlerSlidOnSilt: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
turnClockwise
	
	(sonar groundAt: position) assertCanTurn: self.
	facing turnClockwise: self.
	runState record: CrawlerClockwiseTurn new! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
turnCounterClockwise
	
	(sonar groundAt: position) assertCanTurn: self.
	facing turnCounterClockwise: self.
	runState record: CrawlerCounterClockwiseTurn new! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
isCloseGuardedRunCommand: aCommand

	^aCommand = $)! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
isMovementCommand: aCommand

	^(self isAdvanceCommand: aCommand) 
		or: [ (self isRetreatCommand: aCommand) 
		or: [ (self isTurnClockwiseCommand: aCommand) 
		or: [ self isTurnCounterClockwiseCommand: aCommand ] ] ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
isOpenGuardedRunCommand: aCommand

	^aCommand = $(! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
process: aSequenceOfCommands

	| commands |
	
	commands := ReadStream on: aSequenceOfCommands.
	[ [ commands atEnd ] whileFalse: [ self processNextCommandFrom: commands ].
	  runState assertNoGuardedRunIsOpenOn: self ]
		on: Error
		do: [ :anError |
			runState abortOn: self.
			anError pass ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
processMovementCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].

	self signalInvalidCommand! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
processMovementCommand: aCommand repeatedAsIndicatedIn: commands

	(self timesToExecuteCommandFollowedBy: commands) timesRepeat: [ self processMovementCommand: aCommand ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
processNextCommandFrom: commands

	| command |
	
	command := commands next.
	(self isOpenGuardedRunCommand: command) ifTrue: [ ^runState openGuardedRunOn: self ].
	(self isCloseGuardedRunCommand: command) ifTrue: [ ^runState closeGuardedRunOn: self ].
	(self isMovementCommand: command) ifTrue: [ ^self processMovementCommand: command repeatedAsIndicatedIn: commands ].

	self signalInvalidCommand! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
timesToExecuteCommandFollowedBy: commands

	(commands atEnd not and: [ commands peek isDigit ]) ifFalse: [ ^1 ].
	
	^1 + commands next digitValue + self class repetitionsAddedToDigit! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
undoClockwiseTurn

	facing turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
undoCounterClockwiseTurn

	facing turnClockwise: self! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
undoDisplacement: aDisplacement

	position := position - aDisplacement! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
runGuarded

	runState := CrawlerGuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
runNormally

	runState := CrawlerNormalRun new! !

!SurveyCrawler methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
boulderFoundErrorDescription
	
	^'Boulder found'! !

!SurveyCrawler methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
canNotTurnOnBoulderErrorDescription
	
	^'Can not turn on a boulder'! !

!SurveyCrawler methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
guardedRunAlreadyOpenErrorDescription
	
	^'Can not open a guarded run inside another guarded run'! !

!SurveyCrawler methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
guardedRunNotClosedErrorDescription
	
	^'Guarded run was not closed'! !

!SurveyCrawler methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
noGuardedRunToCloseErrorDescription
	
	^'There is no guarded run to close'! !

!SurveyCrawler methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
slidOnSiltErrorDescription
	
	^'Slid on silt during a guarded run'! !

!SurveyCrawler methodsFor: 'error signaling' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
signalBoulderFound
	
	self error: self boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'error signaling' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
signalCanNotTurnOnBoulder
	
	self error: self canNotTurnOnBoulderErrorDescription! !

!SurveyCrawler methodsFor: 'error signaling' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
signalGuardedRunAlreadyOpen
	
	self error: self guardedRunAlreadyOpenErrorDescription! !

!SurveyCrawler methodsFor: 'error signaling' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
signalGuardedRunNotClosed
	
	self error: self guardedRunNotClosedErrorDescription! !

!SurveyCrawler methodsFor: 'error signaling' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
signalNoGuardedRunToClose
	
	self error: self noGuardedRunToCloseErrorDescription! !

!SurveyCrawler methodsFor: 'error signaling' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
signalSlidOnSilt
	
	self error: self slidOnSiltErrorDescription! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar randomGenerator: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar randomGenerator: aRandomGenerator

	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		sonar: aSonar 
		randomGenerator: aRandomGenerator! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'sliding' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
maxSlidingDistance

	^10! !

!SurveyCrawler class methodsFor: 'processing' stamp: 'HAW 16/Sep/2026, 12:56:13 pm (UTC)'!
repetitionsAddedToDigit

	^2! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:21 pm (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:21 pm (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: crawler invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:21 pm (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:21 pm (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:21 pm (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:21 pm (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:57:02 pm (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [self crawlerAt: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [:anError |
			self assert: SurveyCrawler invalidFacingErrorDescription equals: anError messageText ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test17DigitAfterAdvanceRepeatsItDigitPlusTwoTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test18NineIsTheBiggestRepetition

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test19RetreatCanBeRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test20TurnClockwiseCanBeRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test21TurnCounterClockwiseCanBeRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g2'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test22RepetitionWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: '0' ] failWith: crawler invalidCommandErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test23RepetitionIsASingleDigit

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: 'a00' ] failWith: crawler invalidCommandErrorDescription leaving: crawler at: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test24GuardedRunDelimitersCanNotBeRepeated

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: '()0' ] failWith: crawler invalidCommandErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test25CanNotAdvanceOntoABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self placeBoulderAt: 1@3.
	
	self should: [ crawler process: 'a' ] failWith: crawler boulderFoundErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test26CanNotRetreatOntoABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	self placeBoulderAt: 0@2.
	
	self should: [ crawler process: 't' ] failWith: crawler boulderFoundErrorDescription leaving: crawler at: 1@2 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test27CanNotTurnClockwiseOnABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self placeBoulderAt: 1@2.
	
	self should: [ crawler process: 'h' ] failWith: crawler canNotTurnOnBoulderErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test28CanNotTurnCounterClockwiseOnABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self placeBoulderAt: 1@2.
	
	self should: [ crawler process: 'g' ] failWith: crawler canNotTurnOnBoulderErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test29RepetitionStopsAtABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self placeBoulderAt: 1@4.
	
	self should: [ crawler process: 'a0' ] failWith: crawler boulderFoundErrorDescription leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test30AdvancingOntoSiltSlidesARandomNumberOfCells

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self placeSiltAt: 1@3.
	self slideDistanceWillBe: 4.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test31SlidingOnSiltIsUpToTenCells

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self placeSiltAt: 1@3.
	self slideDistanceWillBe: 10.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test32RetreatingOntoSiltSlidesInTheRetreatDirection

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	self placeSiltAt: 2@2.
	self slideDistanceWillBe: 3.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 4@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:38 pm (UTC)'!
test33SiltDoesNotAffectTurning

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self placeSiltAt: 1@2.
	
	crawler process: 'hhg'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:51 pm (UTC)'!
test34GuardedRunWithoutProblemsExecutesItsCommands

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: '(aa)'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:51 pm (UTC)'!
test35BoulderInGuardedRunReturnsCrawlerToWhereTheGuardedRunStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self placeBoulderAt: 1@4.
	
	self should: [ crawler process: '(aa)' ] failWith: crawler boulderFoundErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:51 pm (UTC)'!
test36AllKindOfMovementsAreUndoneWhenGuardedRunFails

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self placeBoulderAt: 0@4.
	
	self should: [ crawler process: '(ahtga)' ] failWith: crawler boulderFoundErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:57:02 pm (UTC)'!
test37SiltInGuardedRunReturnsCrawlerToWhereTheGuardedRunStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self placeSiltAt: 1@4.
	self slideDistanceWillBe: 7.
	
	self should: [ crawler process: '(ahga)' ] failWith: crawler slidOnSiltErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:51 pm (UTC)'!
test38InvalidCommandInGuardedRunReturnsCrawlerToWhereTheGuardedRunStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: 'a(ahx)' ] failWith: crawler invalidCommandErrorDescription leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:51 pm (UTC)'!
test39RepeatedCommandsAreUndoneWhenGuardedRunFails

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self placeBoulderAt: 1@5.
	
	self should: [ crawler process: '(a0)' ] failWith: crawler boulderFoundErrorDescription leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:51 pm (UTC)'!
test40CanProcessSeveralGuardedRuns

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:51 pm (UTC)'!
test41OnlyTheFailingGuardedRunIsUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: '(a)a(ax)' ] failWith: crawler invalidCommandErrorDescription leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:51 pm (UTC)'!
test42CanNotOpenAGuardedRunInsideAnotherGuardedRun

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: 'aa(aa(ht)a)' ] failWith: crawler guardedRunAlreadyOpenErrorDescription leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:51 pm (UTC)'!
test43GuardedRunMustBeClosed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: 'a(aa' ] failWith: crawler guardedRunNotClosedErrorDescription leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:51 pm (UTC)'!
test44CanNotCloseAGuardedRunThatWasNotOpened

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: 'a)' ] failWith: crawler noGuardedRunToCloseErrorDescription leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:51 pm (UTC)'!
test45ErrorsOutsideGuardedRunDoNotUndoMovements

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: [ crawler process: '(a)ax' ] failWith: crawler invalidCommandErrorDescription leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:56:51 pm (UTC)'!
test46FailedGuardedRunDoesNotAffectNextSequenceOfCommands

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self should: [ crawler process: '(a' ] failWith: crawler guardedRunNotClosedErrorDescription leaving: crawler at: 1@2 facing: #Up.
	
	self should: [ crawler process: 'ax' ] failWith: crawler invalidCommandErrorDescription leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:57:02 pm (UTC)'!
test47SiltOutsideGuardedRunDoesNotFail

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self placeSiltAt: 1@3.
	self slideDistanceWillBe: 2.
	
	crawler process: 'a(a)'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'setup' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
setUp

	grounds := Dictionary new.
	slidingDistance := 1! !

!SurveyCrawlerTest methodsFor: 'crawler creation' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: self randomGenerator: self! !

!SurveyCrawlerTest methodsFor: 'sonar simulation' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
groundAt: aPosition

	^grounds at: aPosition ifAbsent: [ FirmSandGround new ]! !

!SurveyCrawlerTest methodsFor: 'sonar simulation' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
placeBoulderAt: aPosition

	grounds at: aPosition put: BoulderGround new! !

!SurveyCrawlerTest methodsFor: 'sonar simulation' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
placeSiltAt: aPosition

	grounds at: aPosition put: SiltGround new! !

!SurveyCrawlerTest methodsFor: 'random simulation' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
nextInteger: aLimit

	self assert: SurveyCrawler maxSlidingDistance equals: aLimit.
	^slidingDistance! !

!SurveyCrawlerTest methodsFor: 'random simulation' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
slideDistanceWillBe: aDistance

	slidingDistance := aDistance! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:56:22 pm (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !
