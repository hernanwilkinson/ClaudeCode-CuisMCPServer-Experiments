'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 4:00:54 am'!
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
	instanceVariableNames: 'movements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'GuardedRun class' category: #SurveyCrawler!
GuardedRun class
	instanceVariableNames: ''!

!classDefinition: #UnguardedRun category: #SurveyCrawler!
CrawlerRun subclass: #UnguardedRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'UnguardedRun class' category: #SurveyCrawler!
UnguardedRun class
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
	instanceVariableNames: 'slidingCellsGenerator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'Silt class' category: #SurveyCrawler!
Silt class
	instanceVariableNames: ''!

!classDefinition: #SeabedMapSonar category: #SurveyCrawler!
Object subclass: #SeabedMapSonar
	instanceVariableNames: 'groundTypes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SeabedMapSonar class' category: #SurveyCrawler!
SeabedMapSonar class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar run'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: ''!

!classDefinition: #RandomStub category: #'SurveyCrawler-Tests'!
Object subclass: #RandomStub
	instanceVariableNames: 'integer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'RandomStub class' category: #'SurveyCrawler-Tests'!
RandomStub class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerTest
	instanceVariableNames: ''
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

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
advance: aCrawler

	^aCrawler moveBy: self direction! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
direction

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
retreat: aCrawler

	^aCrawler moveBy: self direction negated! !

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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
direction

	^0@-1! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:50 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:55 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingDown class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:17 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
direction

	^-1@0! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:41 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:26 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingLeft class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:23 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
direction

	^1@0! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:54 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:42 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingRight class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:01:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
direction

	^0@1! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:51 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:40 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingUp class methodsFor: 'as yet unclassified' stamp: 'HAW 2/Jul/2018, 8:03:11 pm (UTC)'!
facingName

	^#Up! !

!CrawlerMovement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerClockwiseTurn methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
undoOn: aCrawler

	^aCrawler rotateCounterClockwise! !

!CrawlerCounterClockwiseTurn methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
undoOn: aCrawler

	^aCrawler rotateClockwise! !

!CrawlerDisplacement methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
initializeBy: aDisplacement

	displacement := aDisplacement! !

!CrawlerDisplacement methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
undoOn: aCrawler

	^aCrawler displaceBy: displacement negated! !

!CrawlerDisplacement class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
by: aDisplacement

	^self new initializeBy: aDisplacement! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
assertFinishedOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
closeGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
openGuardedRunOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
record: aMovement

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
slide: aCrawler by: aSlide

	self subclassResponsibility! !

!GuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
initialize

	movements := OrderedCollection new! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
assertFinishedOn: aCrawler

	^aCrawler signalUnfinishedGuardedRun! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
closeGuardedRunOn: aCrawler

	^aCrawler stopGuarding! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
openGuardedRunOn: aCrawler

	^aCrawler signalNestedGuardedRun! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
undoOn: aCrawler

	movements reverseDo: [ :aMovement | aMovement undoOn: aCrawler ]! !

!GuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
record: aMovement

	movements add: aMovement! !

!GuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
slide: aCrawler by: aSlide

	^aCrawler signalSiltFoundDuringGuardedRun! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
assertFinishedOn: aCrawler! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
closeGuardedRunOn: aCrawler

	^aCrawler signalGuardedRunNotOpened! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
openGuardedRunOn: aCrawler

	^aCrawler startGuarding! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
undoOn: aCrawler! !

!UnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
record: aMovement! !

!UnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
slide: aCrawler by: aSlide

	^aCrawler displaceBy: aSlide! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
move: aCrawler by: aDisplacement

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
assertTurningAllowedFor: aCrawler

	self subclassResponsibility! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
move: aCrawler by: aDisplacement

	^aCrawler signalBoulderFound! !

!Boulder methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
assertTurningAllowedFor: aCrawler

	^aCrawler signalBoulderFound! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
move: aCrawler by: aDisplacement

	^aCrawler displaceBy: aDisplacement! !

!FirmSand methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
assertTurningAllowedFor: aCrawler! !

!Silt methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
initializeSlidingWith: aSlidingCellsGenerator

	slidingCellsGenerator := aSlidingCellsGenerator! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
move: aCrawler by: aDisplacement

	^aCrawler slideBy: aDisplacement * (slidingCellsGenerator nextInteger: self class slidingLimit)! !

!Silt methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
assertTurningAllowedFor: aCrawler! !

!Silt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
slidingWith: aSlidingCellsGenerator

	^self new initializeSlidingWith: aSlidingCellsGenerator! !

!Silt class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
slidingLimit

	^10! !

!SeabedMapSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
initializeMapping: aGroundTypeByPosition

	groundTypes := aGroundTypeByPosition! !

!SeabedMapSonar methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
groundTypeAt: aPosition

	^groundTypes at: aPosition ifAbsent: [ FirmSand new ]! !

!SeabedMapSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
mapping: aGroundTypeByPosition

	^self new initializeMapping: aGroundTypeByPosition copy! !

!SeabedMapSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
ofFirmSandSeabed

	^self mapping: Dictionary new! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
signalBoulderFound
	
	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
signalGuardedRunNotOpened
	
	self error: self class guardedRunNotOpenedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
signalInvalidCommand
	
	self error: self class invalidCommandErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
signalInvalidRepetition
	
	self error: self class invalidRepetitionErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
signalNestedGuardedRun
	
	self error: self class nestedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
signalSiltFoundDuringGuardedRun
	
	self error: self class siltFoundDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
signalUnfinishedGuardedRun
	
	self error: self class unfinishedGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	run := UnguardedRun new! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
rotateClockwise
	
	facing turnClockwise: self.
	run record: CrawlerClockwiseTurn new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
rotateCounterClockwise
	
	facing turnCounterClockwise: self.
	run record: CrawlerCounterClockwiseTurn new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
turnClockwise
	
	(sonar groundTypeAt: position) assertTurningAllowedFor: self.
	self rotateClockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
turnCounterClockwise
	
	(sonar groundTypeAt: position) assertTurningAllowedFor: self.
	self rotateCounterClockwise! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
isRepeatable: aCommand

	^self class repeatableCommands includes: aCommand! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
displaceBy: aDisplacement
	
	position := position + aDisplacement.
	run record: (CrawlerDisplacement by: aDisplacement)! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
moveBy: aDisplacement
	
	(sonar groundTypeAt: position + aDisplacement) move: self by: aDisplacement! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
slideBy: aSlide
	
	run slide: self by: aSlide! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
process: aSequenceOfCommands

	[ self processEachCommandOf: aSequenceOfCommands.
	run assertFinishedOn: self ]
		on: Error
		do: [ :anError |
			self abortRun.
			anError pass ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
processCommand: aCommand

	self perform: (self class commandActions at: aCommand ifAbsent: [ ^self signalInvalidCommand ])! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
processCommand: aCommand at: anIndex of: aSequenceOfCommands

	aCommand isDigit
		ifTrue: [ self repeatCommandBefore: anIndex of: aSequenceOfCommands times: aCommand digitValue + 2 ]
		ifFalse: [ self processCommand: aCommand ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
processEachCommandOf: aSequenceOfCommands

	aSequenceOfCommands withIndexDo: [ :aCommand :anIndex |
		self processCommand: aCommand at: anIndex of: aSequenceOfCommands ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
repeatCommandBefore: anIndex of: aSequenceOfCommands times: aNumberOfRepetitions

	| repeatedCommand |
	
	repeatedCommand := aSequenceOfCommands at: anIndex - 1 ifAbsent: [ ^self signalInvalidRepetition ].
	(self isRepeatable: repeatedCommand) ifFalse: [ ^self signalInvalidRepetition ].
	
	aNumberOfRepetitions timesRepeat: [ self processCommand: repeatedCommand ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
abortRun
	
	| abortedRun |
	
	abortedRun := run.
	self stopGuarding.
	abortedRun undoOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
closeGuardedRun
	
	run closeGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
openGuardedRun
	
	run openGuardedRunOn: self! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
startGuarding
	
	run := GuardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 6:59:24 am (UTC)'!
stopGuarding
	
	run := UnguardedRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
at: aPosition facing: aFacingName
	
	^self at: aPosition facing: aFacingName sonar: SeabedMapSonar ofFirmSandSeabed! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar
	
	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'commands' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
commandActions

	^Dictionary newFrom: {
		$a -> #advance.
		$t -> #retreat.
		$h -> #turnClockwise.
		$g -> #turnCounterClockwise.
		$( -> #openGuardedRun.
		$) -> #closeGuardedRun }! !

!SurveyCrawler class methodsFor: 'commands' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
repeatableCommands

	^'athg'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
boulderFoundErrorDescription
	
	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
guardedRunNotOpenedErrorDescription
	
	^'A guarded run can not be closed without being opened'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
invalidRepetitionErrorDescription
	
	^'A repetition digit has to follow one of the commands a, t, h or g'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
nestedGuardedRunErrorDescription
	
	^'A guarded run can not be opened inside another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription
	
	^'Silt found during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:59:23 am (UTC)'!
unfinishedGuardedRunErrorDescription
	
	^'The guarded run was not finished'! !

!RandomStub methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
initializeAnswering: anInteger

	integer := anInteger! !

!RandomStub methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
nextInteger: aLimit

	^integer! !

!RandomStub class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:59:25 am (UTC)'!
answering: anInteger

	^self new initializeAnswering: anInteger! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'x'
		on: crawler
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
assertProcessing: aSequenceOfCommands on: aCrawler failsWith: anErrorDescription leavingItAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'sonars' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
sonarWith: aGround at: aPosition

	^SeabedMapSonar mapping: (Dictionary with: aPosition -> aGround)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test17ZeroAfterAdvanceAdvancesTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test18DigitAfterRetreatRetreatsTwoMoreTimesThanTheDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test19DigitAfterTurnClockwiseTurnsTwoMoreTimesThanTheDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h2'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test20DigitAfterTurnCounterClockwiseTurnsTwoMoreTimesThanTheDigit

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test21NineAfterAdvanceAdvancesElevenMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test22DigitAtTheBeginningIsAnInvalidRepetition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: '3'
		on: crawler
		failsWith: SurveyCrawler invalidRepetitionErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test23DigitAfterDigitIsAnInvalidRepetitionAfterRepeatingTheFirstOne

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a00'
		on: crawler
		failsWith: SurveyCrawler invalidRepetitionErrorDescription
		leavingItAt: 1@5
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test24DigitAfterGuardedRunCloseIsAnInvalidRepetition

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a()0'
		on: crawler
		failsWith: SurveyCrawler invalidRepetitionErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test25AdvancingOntoBoulderFailsAndCrawlerStaysInPlace

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: Boulder new at: 1@3).
	
	self 
		assertProcessing: 'a'
		on: crawler
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test26RetreatingOntoBoulderFailsAndCrawlerStaysInPlace

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: Boulder new at: 1@1).
	
	self 
		assertProcessing: 't'
		on: crawler
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test27TurningClockwiseOnBoulderFailsAndCrawlerKeepsFacing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: Boulder new at: 1@2).
	
	self 
		assertProcessing: 'h'
		on: crawler
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test28TurningCounterClockwiseOnBoulderFailsAndCrawlerKeepsFacing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: Boulder new at: 1@2).
	
	self 
		assertProcessing: 'g'
		on: crawler
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test29BoulderStopsCrawlerAfterTheCommandsProcessedBeforeIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: Boulder new at: 1@4).
	
	self 
		assertProcessing: 'aa'
		on: crawler
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test30AdvancingOntoSiltSlidesTheRandomNumberOfCells

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (self sonarWith: (Silt slidingWith: (RandomStub answering: 4)) at: 1@3).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test31RetreatingOntoSiltSlidesBackwardsTheRandomNumberOfCells

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (self sonarWith: (Silt slidingWith: (RandomStub answering: 3)) at: 1@1).
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test32SiltSlidesInTheDirectionTheCrawlerFaces

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Right 
		sonar: (self sonarWith: (Silt slidingWith: (RandomStub answering: 2)) at: 2@2).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 3@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test33SiltSlidesNoMoreThanTenCells

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (self sonarWith: (Silt slidingWith: Random new) at: 1@3).
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aVerticalCoordinate | crawler isAt: 1@aVerticalCoordinate facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test34TurningOnSiltTurnsAsOnFirmSand

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (self sonarWith: (Silt slidingWith: (RandomStub answering: 5)) at: 1@2).
	
	crawler process: 'hgg'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test35GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aah)'.
	
	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test36BoulderInGuardedRunReturnsCrawlerToWhereTheRunStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: Boulder new at: 1@4).
	
	self 
		assertProcessing: '(aa)'
		on: crawler
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:32 am (UTC)'!
test37FailedGuardedRunUndoesTurnsAndMovesInEveryDirection

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: (self sonarWith: Boulder new at: 1@4).
	
	self 
		assertProcessing: '(ahagtgahaa)'
		on: crawler
		failsWith: SurveyCrawler boulderFoundErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test38SiltInGuardedRunFailsAndReturnsCrawlerToWhereTheRunStarted

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (self sonarWith: (Silt slidingWith: (RandomStub answering: 3)) at: 1@4).
	
	self 
		assertProcessing: '(aa)'
		on: crawler
		failsWith: SurveyCrawler siltFoundDuringGuardedRunErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test39InvalidCommandInGuardedRunReturnsCrawlerToWhereTheRunStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a(ahx)'
		on: crawler
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test40RepetitionsInFailedGuardedRunAreUndone

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: '(a3h1x)'
		on: crawler
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@2
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test41SeveralGuardedRunsAreProcessedInOneSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test42FailingGuardedRunOnlyUndoesItsOwnCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a(ah)(ax)'
		on: crawler
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@4
		facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test43OpeningAGuardedRunInsideAnotherFailsAndReturnsToWhereTheOuterStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'aa(aa(ht)a)'
		on: crawler
		failsWith: SurveyCrawler nestedGuardedRunErrorDescription
		leavingItAt: 1@4
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test44UnfinishedGuardedRunFailsAndReturnsToWhereTheRunStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a(aa'
		on: crawler
		failsWith: SurveyCrawler unfinishedGuardedRunErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test45ClosingAGuardedRunNotOpenedFailsAfterTheCommandsBeforeIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		assertProcessing: 'a)'
		on: crawler
		failsWith: SurveyCrawler guardedRunNotOpenedErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test46SequenceAfterAFailedGuardedRunIsNotGuarded

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	[ crawler process: '(ax' ] on: Error do: [ :anError | anError return ].
	
	self 
		assertProcessing: 'a)'
		on: crawler
		failsWith: SurveyCrawler guardedRunNotOpenedErrorDescription
		leavingItAt: 1@3
		facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 7:00:23 am (UTC)'!
test47SlideOutsideGuardedRunIsNotUndoneByALaterFailedGuardedRun

	| crawler |
	
	crawler := SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (self sonarWith: (Silt slidingWith: (RandomStub answering: 3)) at: 1@3).
	
	self 
		assertProcessing: 'a(ax)'
		on: crawler
		failsWith: SurveyCrawler invalidCommandErrorDescription
		leavingItAt: 1@5
		facing: #Up! !
