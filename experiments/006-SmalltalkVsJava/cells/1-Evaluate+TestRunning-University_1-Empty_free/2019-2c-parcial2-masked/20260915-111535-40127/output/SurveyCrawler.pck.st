'From Cuis7.9 [latest update: #8182] on 15 September 2026 at 11:26:20 am'!
'Description '!
!provides: 'SurveyCrawler' 1 1!
SystemOrganization addCategory: #SurveyCrawler!
SystemOrganization addCategory: #'SurveyCrawler-Tests'!


!classDefinition: #CrawlerCommand category: #SurveyCrawler!
Object subclass: #CrawlerCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerCommand class' category: #SurveyCrawler!
CrawlerCommand class
	instanceVariableNames: ''!

!classDefinition: #AdvanceCommand category: #SurveyCrawler!
CrawlerCommand subclass: #AdvanceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'AdvanceCommand class' category: #SurveyCrawler!
AdvanceCommand class
	instanceVariableNames: ''!

!classDefinition: #RetreatCommand category: #SurveyCrawler!
CrawlerCommand subclass: #RetreatCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'RetreatCommand class' category: #SurveyCrawler!
RetreatCommand class
	instanceVariableNames: ''!

!classDefinition: #TurnClockwiseCommand category: #SurveyCrawler!
CrawlerCommand subclass: #TurnClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'TurnClockwiseCommand class' category: #SurveyCrawler!
TurnClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #TurnCounterClockwiseCommand category: #SurveyCrawler!
CrawlerCommand subclass: #TurnCounterClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'TurnCounterClockwiseCommand class' category: #SurveyCrawler!
TurnCounterClockwiseCommand class
	instanceVariableNames: ''!

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

!classDefinition: #CrawlerRun category: #SurveyCrawler!
Object subclass: #CrawlerRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRun class' category: #SurveyCrawler!
CrawlerRun class
	instanceVariableNames: ''!

!classDefinition: #GuardedRun category: #SurveyCrawler!
CrawlerRun subclass: #GuardedRun
	instanceVariableNames: 'executedCommands'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'GuardedRun class' category: #SurveyCrawler!
GuardedRun class
	instanceVariableNames: ''!

!classDefinition: #NormalRun category: #SurveyCrawler!
CrawlerRun subclass: #NormalRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'NormalRun class' category: #SurveyCrawler!
NormalRun class
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

!classDefinition: #Boulder category: #SurveyCrawler!
SeabedGround subclass: #Boulder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Boulder class' category: #SurveyCrawler!
Boulder class
	instanceVariableNames: ''!

!classDefinition: #FirmSand category: #SurveyCrawler!
SeabedGround subclass: #FirmSand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'FirmSand class' category: #SurveyCrawler!
FirmSand class
	instanceVariableNames: ''!

!classDefinition: #Silt category: #SurveyCrawler!
SeabedGround subclass: #Silt
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Silt class' category: #SurveyCrawler!
Silt class
	instanceVariableNames: ''!

!classDefinition: #SeabedSonar category: #SurveyCrawler!
Object subclass: #SeabedSonar
	instanceVariableNames: 'groundsByPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedSonar class' category: #SurveyCrawler!
SeabedSonar class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar slideDistanceGenerator run'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #FixedSlideDistanceGenerator category: #'SurveyCrawler-Tests'!
Object subclass: #FixedSlideDistanceGenerator
	instanceVariableNames: 'distance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'FixedSlideDistanceGenerator class' category: #'SurveyCrawler-Tests'!
FixedSlideDistanceGenerator class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerTestCase category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerTestCase class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerTestCase class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerGuardedRunTest category: #'SurveyCrawler-Tests'!
SurveyCrawlerTestCase subclass: #SurveyCrawlerGuardedRunTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerGuardedRunTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerGuardedRunTest class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerRepeatedCommandTest category: #'SurveyCrawler-Tests'!
SurveyCrawlerTestCase subclass: #SurveyCrawlerRepeatedCommandTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerRepeatedCommandTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerRepeatedCommandTest class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerSonarTest category: #'SurveyCrawler-Tests'!
SurveyCrawlerTestCase subclass: #SurveyCrawlerSonarTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerSonarTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerSonarTest class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerTest category: #'SurveyCrawler-Tests'!
SurveyCrawlerTestCase subclass: #SurveyCrawlerTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerTest class
	instanceVariableNames: ''!


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
for: aCharacter ifNone: aNoneBlock

	^self subclasses
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass new ]
		ifNone: aNoneBlock! !

!CrawlerCommand class methodsFor: 'command character' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
commandCharacter

	self subclassResponsibility! !

!CrawlerCommand class methodsFor: 'command character' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
isFor: aCharacter

	^self commandCharacter = aCharacter! !

!AdvanceCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!AdvanceCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
undoOn: aCrawler

	aCrawler undoAdvance! !

!AdvanceCommand class methodsFor: 'command character' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
commandCharacter

	^$a! !

!RetreatCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!RetreatCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
undoOn: aCrawler

	aCrawler undoRetreat! !

!RetreatCommand class methodsFor: 'command character' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
commandCharacter

	^$t! !

!TurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!TurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
undoOn: aCrawler

	aCrawler undoTurnClockwise! !

!TurnClockwiseCommand class methodsFor: 'command character' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
commandCharacter

	^$h! !

!TurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!TurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
undoOn: aCrawler

	aCrawler undoTurnCounterClockwise! !

!TurnCounterClockwiseCommand class methodsFor: 'command character' stamp: 'HAW 15/Sep/2026, 2:20:21 pm (UTC)'!
commandCharacter

	^$g! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
advanceDelta

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
retreatDelta

	^self advanceDelta negated! !

!CrawlerFacing methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
clockwise

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
counterClockwise

	self subclassResponsibility! !

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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
advanceDelta

	^0@-1! !

!CrawlerFacingDown methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
clockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingDown methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
counterClockwise

	^CrawlerFacingRight new! !

!CrawlerFacingDown class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:17 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
advanceDelta

	^-1@0! !

!CrawlerFacingLeft methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
clockwise

	^CrawlerFacingUp new! !

!CrawlerFacingLeft methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
counterClockwise

	^CrawlerFacingDown new! !

!CrawlerFacingLeft class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:23 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
advanceDelta

	^1@0! !

!CrawlerFacingRight methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
clockwise

	^CrawlerFacingDown new! !

!CrawlerFacingRight methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
counterClockwise

	^CrawlerFacingUp new! !

!CrawlerFacingRight class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:01:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
advanceDelta

	^0@1! !

!CrawlerFacingUp methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
clockwise

	^CrawlerFacingRight new! !

!CrawlerFacingUp methodsFor: 'turning' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
counterClockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingUp class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:11 pm (UTC)'!
facingName

	^#Up! !

!CrawlerRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 2:20:40 pm (UTC)'!
remember: aCommand

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'crawler movement' stamp: 'HAW 15/Sep/2026, 2:20:40 pm (UTC)'!
slideCrawler: aCrawler by: aDelta upTo: aMaxSlideDistance

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 2:20:40 pm (UTC)'!
startGuardedRunOn: aCrawler from: aStreamOfCommands

	self subclassResponsibility! !

!GuardedRun methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 2:20:40 pm (UTC)'!
initialize

	executedCommands := OrderedCollection new! !

!GuardedRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 2:20:40 pm (UTC)'!
remember: aCommand

	executedCommands add: aCommand! !

!GuardedRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 2:20:50 pm (UTC)'!
undoOn: aCrawler

	executedCommands reverseDo: [ :aCommand | aCommand undoOn: aCrawler ]! !

!GuardedRun methodsFor: 'crawler movement' stamp: 'HAW 15/Sep/2026, 2:20:40 pm (UTC)'!
slideCrawler: aCrawler by: aDelta upTo: aMaxSlideDistance

	aCrawler signalCanNotMoveOnSiltDuringGuardedRun! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 2:20:40 pm (UTC)'!
startGuardedRunOn: aCrawler from: aStreamOfCommands

	aCrawler signalCanNotStartGuardedRunDuringGuardedRun! !

!NormalRun methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 2:20:40 pm (UTC)'!
remember: aCommand

	"There is nothing to undo when not running guarded"! !

!NormalRun methodsFor: 'crawler movement' stamp: 'HAW 15/Sep/2026, 2:20:40 pm (UTC)'!
slideCrawler: aCrawler by: aDelta upTo: aMaxSlideDistance

	aCrawler moveSlidingBy: aDelta upTo: aMaxSlideDistance! !

!NormalRun methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 2:20:40 pm (UTC)'!
startGuardedRunOn: aCrawler from: aStreamOfCommands

	aCrawler beginGuardedRunFrom: aStreamOfCommands! !

!SeabedGround methodsFor: 'crawler movement' stamp: 'HAW 15/Sep/2026, 2:20:10 pm (UTC)'!
letCrawlerTurn: aCrawler

	self subclassResponsibility! !

!SeabedGround methodsFor: 'crawler movement' stamp: 'HAW 15/Sep/2026, 2:20:10 pm (UTC)'!
moveCrawler: aCrawler by: aDelta to: aPosition

	self subclassResponsibility! !

!Boulder methodsFor: 'crawler movement' stamp: 'HAW 15/Sep/2026, 2:20:10 pm (UTC)'!
letCrawlerTurn: aCrawler

	aCrawler signalCanNotTurnOnBoulder! !

!Boulder methodsFor: 'crawler movement' stamp: 'HAW 15/Sep/2026, 2:20:10 pm (UTC)'!
moveCrawler: aCrawler by: aDelta to: aPosition

	aCrawler signalCanNotMoveToBoulder! !

!FirmSand methodsFor: 'crawler movement' stamp: 'HAW 15/Sep/2026, 2:20:10 pm (UTC)'!
letCrawlerTurn: aCrawler

	"Firm sand does not affect turning"! !

!FirmSand methodsFor: 'crawler movement' stamp: 'HAW 15/Sep/2026, 2:20:10 pm (UTC)'!
moveCrawler: aCrawler by: aDelta to: aPosition

	aCrawler moveTo: aPosition! !

!Silt methodsFor: 'crawler movement' stamp: 'HAW 15/Sep/2026, 2:20:10 pm (UTC)'!
letCrawlerTurn: aCrawler

	"Silt does not affect turning"! !

!Silt methodsFor: 'crawler movement' stamp: 'HAW 15/Sep/2026, 2:20:10 pm (UTC)'!
moveCrawler: aCrawler by: aDelta to: aPosition

	aCrawler slideBy: aDelta upTo: self maxSlideDistance! !

!Silt methodsFor: 'sliding' stamp: 'HAW 15/Sep/2026, 2:20:10 pm (UTC)'!
maxSlideDistance

	^10! !

!SeabedSonar methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 2:20:13 pm (UTC)'!
initializeWithGrounds: aCollectionOfGroundsByPosition

	groundsByPosition := aCollectionOfGroundsByPosition! !

!SeabedSonar methodsFor: 'sonar' stamp: 'HAW 15/Sep/2026, 2:20:13 pm (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSand new ]! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:20:13 pm (UTC)'!
firmSeabed

	^self withGrounds: Dictionary new! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:20:13 pm (UTC)'!
withGrounds: aCollectionOfGroundsByPosition

	^self new initializeWithGrounds: aCollectionOfGroundsByPosition copy! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 2:21:40 pm (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar slideDistanceGenerator: aSlideDistanceGenerator

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	slideDistanceGenerator := aSlideDistanceGenerator.
	run := NormalRun new! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:21:40 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
advance

	self moveBy: facing advanceDelta! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
assertCanTurn

	(sonar groundAt: position) letCrawlerTurn: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
moveBy: aDelta

	| destination |
	
	destination := position + aDelta.
	(sonar groundAt: destination) moveCrawler: self by: aDelta to: destination! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
moveSlidingBy: aDelta upTo: aMaxSlideDistance

	self moveTo: position + (aDelta * (slideDistanceGenerator nextInteger: aMaxSlideDistance))! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
moveTo: aPosition

	position := aPosition! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
retreat

	self moveBy: facing retreatDelta! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
slideBy: aDelta upTo: aMaxSlideDistance

	run slideCrawler: self by: aDelta upTo: aMaxSlideDistance! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
turnClockwise

	self assertCanTurn.
	facing := facing clockwise! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
turnCounterClockwise

	self assertCanTurn.
	facing := facing counterClockwise! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 15/Sep/2026, 2:21:40 pm (UTC)'!
commandFor: aCharacter

	^CrawlerCommand for: aCharacter ifNone: [ self signalInvalidCommand ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 15/Sep/2026, 2:21:40 pm (UTC)'!
execute: aCommand

	aCommand executeOn: self.
	run remember: aCommand! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 15/Sep/2026, 2:21:40 pm (UTC)'!
execute: aCommand repeatedAccordingTo: aStreamOfCommands

	self execute: aCommand.
	(self hasRepetitionAt: aStreamOfCommands) ifTrue: [
		(self repetitionsFrom: aStreamOfCommands) timesRepeat: [ self execute: aCommand ]]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 15/Sep/2026, 2:21:40 pm (UTC)'!
hasRepetitionAt: aStreamOfCommands

	^aStreamOfCommands atEnd not and: [ aStreamOfCommands peek isDigit ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 15/Sep/2026, 2:21:40 pm (UTC)'!
process: aSequenceOfCommands

	self processCommandsFrom: (ReadStream on: aSequenceOfCommands)! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 15/Sep/2026, 2:21:40 pm (UTC)'!
processCommandsFrom: aStreamOfCommands

	[ aStreamOfCommands atEnd ] whileFalse: [ self processNextFrom: aStreamOfCommands ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 15/Sep/2026, 2:21:40 pm (UTC)'!
processNextFrom: aStreamOfCommands

	| aCharacter |
	
	aCharacter := aStreamOfCommands next.
	aCharacter = self class startGuardedRunCharacter ifTrue: [ ^run startGuardedRunOn: self from: aStreamOfCommands ].
	aCharacter = self class endGuardedRunCharacter ifTrue: [ ^self signalGuardedRunNotStarted ].
	
	self execute: (self commandFor: aCharacter) repeatedAccordingTo: aStreamOfCommands! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 15/Sep/2026, 2:21:40 pm (UTC)'!
repetitionsFrom: aStreamOfCommands

	^aStreamOfCommands next digitValue + self class repetitionOffset! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
beginGuardedRunFrom: aStreamOfCommands

	| guardedRun previousRun |
	
	previousRun := run.
	guardedRun := GuardedRun new.
	run := guardedRun.
	
	[[ self processGuardedCommandsFrom: aStreamOfCommands ]
		on: Error
		do: [ :anError | 
			guardedRun undoOn: self.
			anError pass ]] 
				ensure: [ run := previousRun ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
processGuardedCommandsFrom: aStreamOfCommands

	| hasFinished |
	
	hasFinished := false.
	[ hasFinished ] whileFalse: [
		aStreamOfCommands atEnd ifTrue: [ self signalUnfinishedGuardedRun ].
		aStreamOfCommands peek = self class endGuardedRunCharacter
			ifTrue: [ 
				aStreamOfCommands next.
				hasFinished := true ]
			ifFalse: [ self processNextFrom: aStreamOfCommands ]]! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
retraceBy: aDelta

	"Movements are undone without asking the sonar because the crawler goes back 
	through ground it has already traveled on"

	self moveTo: position + aDelta! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
undoAdvance

	self retraceBy: facing retreatDelta! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
undoRetreat

	self retraceBy: facing advanceDelta! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
undoTurnClockwise

	facing := facing counterClockwise! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 2:21:52 pm (UTC)'!
undoTurnCounterClockwise

	facing := facing clockwise! !

!SurveyCrawler methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 2:22:01 pm (UTC)'!
signalCanNotMoveOnSiltDuringGuardedRun

	self error: self class canNotMoveOnSiltDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 2:22:01 pm (UTC)'!
signalCanNotMoveToBoulder

	self error: self class canNotMoveToBoulderErrorDescription! !

!SurveyCrawler methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 2:22:01 pm (UTC)'!
signalCanNotStartGuardedRunDuringGuardedRun

	self error: self class canNotStartGuardedRunDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 2:22:01 pm (UTC)'!
signalCanNotTurnOnBoulder

	self error: self class canNotTurnOnBoulderErrorDescription! !

!SurveyCrawler methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 2:22:01 pm (UTC)'!
signalGuardedRunNotStarted

	self error: self class guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 2:22:01 pm (UTC)'!
signalInvalidCommand

	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'error signalling' stamp: 'HAW 15/Sep/2026, 2:22:01 pm (UTC)'!
signalUnfinishedGuardedRun

	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
at: aPosition facing: aFacingName

	^self at: aPosition facing: aFacingName sonar: SeabedSonar firmSeabed! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar slideDistanceGenerator: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar slideDistanceGenerator: aSlideDistanceGenerator

	^self new
		initializeAt: aPosition
		facing: (CrawlerFacing facing: aFacingName)
		sonar: aSonar
		slideDistanceGenerator: aSlideDistanceGenerator! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
canNotMoveOnSiltDuringGuardedRunErrorDescription

	^'Can not move on silt during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
canNotMoveToBoulderErrorDescription

	^'Can not move to a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
canNotStartGuardedRunDuringGuardedRunErrorDescription

	^'Can not start a guarded run during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
canNotTurnOnBoulderErrorDescription

	^'Can not turn on a boulder'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
guardedRunNotStartedErrorDescription

	^'Can not finish a guarded run that was not started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
unfinishedGuardedRunErrorDescription

	^'Guarded run was not finished'! !

!SurveyCrawler class methodsFor: 'command characters' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
endGuardedRunCharacter

	^$)! !

!SurveyCrawler class methodsFor: 'command characters' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
repetitionOffset

	^2! !

!SurveyCrawler class methodsFor: 'command characters' stamp: 'HAW 15/Sep/2026, 2:21:30 pm (UTC)'!
startGuardedRunCharacter

	^$(! !

!FixedSlideDistanceGenerator methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 2:23:08 pm (UTC)'!
initializeOf: aDistance

	distance := aDistance! !

!FixedSlideDistanceGenerator methodsFor: 'random' stamp: 'HAW 15/Sep/2026, 2:23:08 pm (UTC)'!
nextInteger: aLimit

	"Answers always the same distance so the sliding on silt can be tested"

	^distance! !

!FixedSlideDistanceGenerator class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:23:08 pm (UTC)'!
of: aDistance

	^self new initializeOf: aDistance! !

!SurveyCrawlerTestCase methodsFor: 'crawler creation' stamp: 'HAW 15/Sep/2026, 2:23:08 pm (UTC)'!
crawlerAt: aPosition facing: aFacingName withBoulderAt: aBoulderPosition

	^self crawlerAt: aPosition facing: aFacingName withGrounds: (Dictionary new at: aBoulderPosition put: Boulder new; yourself)! !

!SurveyCrawlerTestCase methodsFor: 'crawler creation' stamp: 'HAW 15/Sep/2026, 2:23:08 pm (UTC)'!
crawlerAt: aPosition facing: aFacingName withGrounds: aCollectionOfGroundsByPosition

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: (SeabedSonar withGrounds: aCollectionOfGroundsByPosition)! !

!SurveyCrawlerTestCase methodsFor: 'crawler creation' stamp: 'HAW 15/Sep/2026, 2:23:08 pm (UTC)'!
crawlerAt: aPosition facing: aFacingName withSiltAt: aSiltPosition slidingExactly: aDistance

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: (SeabedSonar withGrounds: (Dictionary new at: aSiltPosition put: Silt new; yourself))
		slideDistanceGenerator: (FixedSlideDistanceGenerator of: aDistance)! !

!SurveyCrawlerTestCase methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 2:23:08 pm (UTC)'!
should: aBlock raiseErrorDescribedAs: anErrorDescription andLeave: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - normal' stamp: 'HAW 15/Sep/2026, 2:24:18 pm (UTC)'!
test01CommandsOfAGuardedRunAreExecutedWhenThereIsNoProblem

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aah)'.
	
	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - normal' stamp: 'HAW 15/Sep/2026, 2:24:18 pm (UTC)'!
test02AnEmptyGuardedRunDoesNothing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '()'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - normal' stamp: 'HAW 15/Sep/2026, 2:24:18 pm (UTC)'!
test03SeveralGuardedRunsCanBeUsedInTheSameSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - normal' stamp: 'HAW 15/Sep/2026, 2:24:36 pm (UTC)'!
test19AGuardedRunCanBeUsedAfterAFailedOne

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@4.
	
	[ crawler process: '(aa)' ] on: Error do: [ :anError | ].
	crawler process: '(ha)'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - normal' stamp: 'HAW 15/Sep/2026, 2:25:42 pm (UTC)'!
test20CommandsCanBeRepeatedInsideAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(a0h0)'.
	
	self assert: (crawler isAt: 1@5 facing: #Left)! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - undoing' stamp: 'HAW 15/Sep/2026, 2:24:18 pm (UTC)'!
test04CrawlerReturnsToTheInitialPositionWhenItFindsABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@4.
	
	self 
		should: [ crawler process: '(aa)' ]
		raiseErrorDescribedAs: SurveyCrawler canNotMoveToBoulderErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - undoing' stamp: 'HAW 15/Sep/2026, 2:24:18 pm (UTC)'!
test05TurnsAreAlsoUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 3@3.
	
	self 
		should: [ crawler process: '(ahaa)' ]
		raiseErrorDescribedAs: SurveyCrawler canNotMoveToBoulderErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - undoing' stamp: 'HAW 15/Sep/2026, 2:24:18 pm (UTC)'!
test06RepeatedCommandsAreAlsoUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@5.
	
	self 
		should: [ crawler process: '(a0)' ]
		raiseErrorDescribedAs: SurveyCrawler canNotMoveToBoulderErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - undoing' stamp: 'HAW 15/Sep/2026, 2:24:18 pm (UTC)'!
test07OnlyTheCommandsOfTheGuardedRunAreUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@6.
	
	self 
		should: [ crawler process: 'aa(aa)' ]
		raiseErrorDescribedAs: SurveyCrawler canNotMoveToBoulderErrorDescription
		andLeave: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - undoing' stamp: 'HAW 15/Sep/2026, 2:24:18 pm (UTC)'!
test08AFinishedGuardedRunIsNotUndoneWhenALaterCommandFails

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(aa)x' ]
		raiseErrorDescribedAs: SurveyCrawler invalidCommandErrorDescription
		andLeave: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - undoing' stamp: 'HAW 15/Sep/2026, 2:24:18 pm (UTC)'!
test09CommandsAfterAFailedGuardedRunAreNotExecuted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ax)aa' ]
		raiseErrorDescribedAs: SurveyCrawler invalidCommandErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 2:24:36 pm (UTC)'!
test10CrawlerCanNotMoveOnSiltDuringAGuardedRun

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@4 slidingExactly: 5.
	
	self 
		should: [ crawler process: '(aa)' ]
		raiseErrorDescribedAs: SurveyCrawler canNotMoveOnSiltDuringGuardedRunErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 2:24:36 pm (UTC)'!
test11CrawlerCanTurnOnSiltDuringAGuardedRun

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@2 slidingExactly: 5.
	
	crawler process: '(h)'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 2:24:36 pm (UTC)'!
test12CrawlerSlidesOnSiltAgainAfterTheGuardedRunFinished

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@3 slidingExactly: 4.
	
	crawler process: '(h)ga'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 2:24:36 pm (UTC)'!
test13MovementsAreUndoneWithoutSlidingOnSilt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@2 slidingExactly: 5.
	
	self 
		should: [ crawler process: '(ax)' ]
		raiseErrorDescribedAs: SurveyCrawler invalidCommandErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - invalid sequences' stamp: 'HAW 15/Sep/2026, 2:24:36 pm (UTC)'!
test14InvalidCommandsDuringAGuardedRunUndoTheMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(aahx)' ]
		raiseErrorDescribedAs: SurveyCrawler invalidCommandErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - invalid sequences' stamp: 'HAW 15/Sep/2026, 2:24:36 pm (UTC)'!
test15AGuardedRunCanNotBeStartedDuringAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		raiseErrorDescribedAs: SurveyCrawler canNotStartGuardedRunDuringGuardedRunErrorDescription
		andLeave: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - invalid sequences' stamp: 'HAW 15/Sep/2026, 2:24:36 pm (UTC)'!
test16AGuardedRunHasToBeFinished

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		raiseErrorDescribedAs: SurveyCrawler unfinishedGuardedRunErrorDescription
		andLeave: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - invalid sequences' stamp: 'HAW 15/Sep/2026, 2:24:36 pm (UTC)'!
test17AGuardedRunCanNotBeFinishedIfItWasNotStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		raiseErrorDescribedAs: SurveyCrawler guardedRunNotStartedErrorDescription
		andLeave: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerGuardedRunTest methodsFor: 'tests - invalid sequences' stamp: 'HAW 15/Sep/2026, 2:24:36 pm (UTC)'!
test18ADigitCanNotStartAGuardedRunSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(0)' ]
		raiseErrorDescribedAs: SurveyCrawler invalidCommandErrorDescription
		andLeave: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:23:23 pm (UTC)'!
test01ADigitAfterACommandRepeatsItTheDigitPlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:23:23 pm (UTC)'!
test02TheBiggestRepetitionIsNineWhichMeansElevenMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:23:23 pm (UTC)'!
test03RetreatCanBeRepeated

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:23:23 pm (UTC)'!
test04TurnClockwiseCanBeRepeated

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:23:23 pm (UTC)'!
test05TurnCounterClockwiseCanBeRepeated

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:23:23 pm (UTC)'!
test06RepetitionAppliesOnlyToTheLastCommand

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha0'.
	
	self assert: (crawler isAt: 4@3 facing: #Right)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:23:23 pm (UTC)'!
test07MoreThanOneRepetitionCanBeUsedInTheSameSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a1a0'.
	
	self assert: (crawler isAt: 1@9 facing: #Up)! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:23:23 pm (UTC)'!
test08ADigitWithoutAPreviousCommandIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '0' ]
		raiseErrorDescribedAs: SurveyCrawler invalidCommandErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:23:23 pm (UTC)'!
test09OnlyOneDigitCanFollowACommand

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		raiseErrorDescribedAs: SurveyCrawler invalidCommandErrorDescription
		andLeave: crawler at: 1@5 facing: #Up! !

!SurveyCrawlerRepeatedCommandTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:23:23 pm (UTC)'!
test10ADigitCanNotBeRepeatedAfterAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(a)0' ]
		raiseErrorDescribedAs: SurveyCrawler invalidCommandErrorDescription
		andLeave: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerSonarTest methodsFor: 'tests - firm sand' stamp: 'HAW 15/Sep/2026, 2:23:40 pm (UTC)'!
test01CrawlerMovesNormallyOnFirmSand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withGrounds: (Dictionary new at: 1@3 put: FirmSand new; yourself).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerSonarTest methodsFor: 'tests - firm sand' stamp: 'HAW 15/Sep/2026, 2:25:35 pm (UTC)'!
test16SonarAnswersFirmSandWhereThereIsNoOtherGround

	| sonar |
	
	sonar := SeabedSonar withGrounds: (Dictionary new at: 1@3 put: Boulder new; at: 1@4 put: Silt new; yourself).
	
	self assert: (sonar groundAt: 1@3) class equals: Boulder.
	self assert: (sonar groundAt: 1@4) class equals: Silt.
	self assert: (sonar groundAt: 1@5) class equals: FirmSand! !

!SurveyCrawlerSonarTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 2:23:40 pm (UTC)'!
test02CrawlerCanNotAdvanceToABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@3.
	
	self 
		should: [ crawler process: 'a' ]
		raiseErrorDescribedAs: SurveyCrawler canNotMoveToBoulderErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerSonarTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 2:23:40 pm (UTC)'!
test03CrawlerCanNotRetreatToABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@1.
	
	self 
		should: [ crawler process: 't' ]
		raiseErrorDescribedAs: SurveyCrawler canNotMoveToBoulderErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerSonarTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 2:23:40 pm (UTC)'!
test04CrawlerCanNotTurnCounterClockwiseWhenOnABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@2.
	
	self 
		should: [ crawler process: 'g' ]
		raiseErrorDescribedAs: SurveyCrawler canNotTurnOnBoulderErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerSonarTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 2:23:40 pm (UTC)'!
test05CrawlerCanNotTurnClockwiseWhenOnABoulder

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@2.
	
	self 
		should: [ crawler process: 'h' ]
		raiseErrorDescribedAs: SurveyCrawler canNotTurnOnBoulderErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerSonarTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 2:23:40 pm (UTC)'!
test06CrawlerCanTurnWhenTheBoulderIsNotWhereItIs

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@3.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerSonarTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 2:23:40 pm (UTC)'!
test07ABoulderStopsARepeatedCommandWhereItIsFound

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@4.
	
	self 
		should: [ crawler process: 'a0' ]
		raiseErrorDescribedAs: SurveyCrawler canNotMoveToBoulderErrorDescription
		andLeave: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerSonarTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 2:23:40 pm (UTC)'!
test08CommandsAfterTheBoulderAreNotExecuted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withBoulderAt: 1@3.
	
	self 
		should: [ crawler process: 'ah' ]
		raiseErrorDescribedAs: SurveyCrawler canNotMoveToBoulderErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerSonarTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 2:23:52 pm (UTC)'!
test09CrawlerCanSlideOnlyOneCellOnSilt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@3 slidingExactly: 1.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerSonarTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 2:23:52 pm (UTC)'!
test10CrawlerCanSlideUpToTenCellsOnSilt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@3 slidingExactly: 10.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerSonarTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 2:23:52 pm (UTC)'!
test11CrawlerSlidesInTheDirectionItIsGoing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right withSiltAt: 2@2 slidingExactly: 4.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 5@2 facing: #Right)! !

!SurveyCrawlerSonarTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 2:23:52 pm (UTC)'!
test12CrawlerSlidesBackwardsWhenRetreatingOnSilt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@1 slidingExactly: 3.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)! !

!SurveyCrawlerSonarTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 2:23:52 pm (UTC)'!
test13SiltDoesNotAffectTurning

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up withSiltAt: 1@2 slidingExactly: 5.
	
	crawler process: 'hg'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerSonarTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 2:23:52 pm (UTC)'!
test14CrawlerNeverSlidesMoreThanTenCellsOnSilt

	| grounds |
	
	grounds := Dictionary new at: 1@3 put: Silt new; yourself.
	
	100 timesRepeat: [ | crawler |
		crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (SeabedSonar withGrounds: grounds).
		crawler process: 'a'.
		self assert: ((3 to: 12) anySatisfy: [ :aY | crawler isAt: 1@aY facing: #Up ]) ]! !

!SurveyCrawlerSonarTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 2:23:52 pm (UTC)'!
test15EachMovementOnSiltSlidesAgain

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (SeabedSonar withGrounds: (Dictionary new at: 1@3 put: Silt new; at: 1@5 put: Silt new; yourself))
		slideDistanceGenerator: (FixedSlideDistanceGenerator of: 2).
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:32:07 pm (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:32:38 pm (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:33:00 pm (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:34:11 pm (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:34:03 pm (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:25:35 pm (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raiseErrorDescribedAs: SurveyCrawler invalidCommandErrorDescription
		andLeave: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:35:37 pm (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:35:52 pm (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:36:09 pm (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:36:32 pm (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:37:31 pm (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:38:17 pm (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:38:40 pm (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:39:01 pm (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:39:23 pm (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 24/Nov/2019, 8:39:54 pm (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [SurveyCrawler at: 1@2 facing: #X ]
		raise: Error
		withExceptionDo: [:anError |
			self assert: SurveyCrawler invalidFacingErrorDescription equals: anError messageText ]! !
