'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 4:15:59 am'!
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

!classDefinition: #CommandRepetition category: #SurveyCrawler!
CrawlerCommand subclass: #CommandRepetition
	instanceVariableNames: 'command numberOfTimes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CommandRepetition class' category: #SurveyCrawler!
CommandRepetition class
	instanceVariableNames: ''!

!classDefinition: #EndGuardedRunCommand category: #SurveyCrawler!
CrawlerCommand subclass: #EndGuardedRunCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'EndGuardedRunCommand class' category: #SurveyCrawler!
EndGuardedRunCommand class
	instanceVariableNames: ''!

!classDefinition: #NoPreviousCommand category: #SurveyCrawler!
CrawlerCommand subclass: #NoPreviousCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'NoPreviousCommand class' category: #SurveyCrawler!
NoPreviousCommand class
	instanceVariableNames: ''!

!classDefinition: #RepeatableCommand category: #SurveyCrawler!
CrawlerCommand subclass: #RepeatableCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'RepeatableCommand class' category: #SurveyCrawler!
RepeatableCommand class
	instanceVariableNames: ''!

!classDefinition: #AdvanceCommand category: #SurveyCrawler!
RepeatableCommand subclass: #AdvanceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'AdvanceCommand class' category: #SurveyCrawler!
AdvanceCommand class
	instanceVariableNames: ''!

!classDefinition: #RetreatCommand category: #SurveyCrawler!
RepeatableCommand subclass: #RetreatCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'RetreatCommand class' category: #SurveyCrawler!
RetreatCommand class
	instanceVariableNames: ''!

!classDefinition: #TurnClockwiseCommand category: #SurveyCrawler!
RepeatableCommand subclass: #TurnClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'TurnClockwiseCommand class' category: #SurveyCrawler!
TurnClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #TurnCounterClockwiseCommand category: #SurveyCrawler!
RepeatableCommand subclass: #TurnCounterClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'TurnCounterClockwiseCommand class' category: #SurveyCrawler!
TurnCounterClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #StartGuardedRunCommand category: #SurveyCrawler!
CrawlerCommand subclass: #StartGuardedRunCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'StartGuardedRunCommand class' category: #SurveyCrawler!
StartGuardedRunCommand class
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
	instanceVariableNames: 'undos'
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
	instanceVariableNames: 'slidingDistanceGenerator'
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
	instanceVariableNames: 'position facing sonar mode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #SlidingToLimit category: #'SurveyCrawler-Tests'!
Object subclass: #SlidingToLimit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SlidingToLimit class' category: #'SurveyCrawler-Tests'!
SlidingToLimit class
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


!CrawlerCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'repeating' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
repeated: aNumberOfTimes

	^self error: SurveyCrawler invalidRepetitionErrorDescription! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:14:53 am (UTC)'!
for: aCharacter after: aPreviousCommand

	^self allSubclasses
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass newFor: aCharacter after: aPreviousCommand ]
		ifNone: [ self error: SurveyCrawler invalidCommandErrorDescription ]! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:14:53 am (UTC)'!
newFor: aCharacter after: aPreviousCommand

	^self new! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
isFor: aCharacter

	^false! !

!CommandRepetition methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
initializeOf: aCommand times: aNumberOfTimes

	command := aCommand.
	numberOfTimes := aNumberOfTimes! !

!CommandRepetition methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
executeOn: aCrawler

	numberOfTimes timesRepeat: [ command executeOn: aCrawler ]! !

!CommandRepetition class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
isFor: aCharacter

	^aCharacter isDigit! !

!CommandRepetition class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:14:53 am (UTC)'!
newFor: aCharacter after: aPreviousCommand

	^aPreviousCommand repeated: aCharacter digitValue + 2! !

!CommandRepetition class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
of: aCommand times: aNumberOfTimes

	^self new initializeOf: aCommand times: aNumberOfTimes! !

!EndGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
executeOn: aCrawler

	aCrawler endGuardedRun! !

!EndGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
isFor: aCharacter

	^aCharacter = $)! !

!NoPreviousCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
executeOn: aCrawler! !

!RepeatableCommand methodsFor: 'repeating' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
repeated: aNumberOfTimes

	^CommandRepetition of: self times: aNumberOfTimes! !

!AdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!AdvanceCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
isFor: aCharacter

	^aCharacter = $a! !

!RetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!RetreatCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
isFor: aCharacter

	^aCharacter = $t! !

!TurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!TurnClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
isFor: aCharacter

	^aCharacter = $h! !

!TurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!TurnCounterClockwiseCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
isFor: aCharacter

	^aCharacter = $g! !

!StartGuardedRunCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
executeOn: aCrawler

	aCrawler startGuardedRun! !

!StartGuardedRunCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
isFor: aCharacter

	^aCharacter = $(! !

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

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
abort

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
assertGuardedRunFinished

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
endGuardedRun

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
startGuardedRun

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
recordUndo: anUndo

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
slide: aCrawler towards: aDirection on: aSilt

	self subclassResponsibility! !

!GuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
initialize

	undos := OrderedCollection new! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
abort

	undos reverseDo: [ :anUndo | anUndo value ].
	^UnguardedRun new! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
assertGuardedRunFinished

	self error: SurveyCrawler unfinishedGuardedRunErrorDescription! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
endGuardedRun

	^UnguardedRun new! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
startGuardedRun

	^self error: SurveyCrawler nestedGuardedRunErrorDescription! !

!GuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
recordUndo: anUndo

	undos add: anUndo! !

!GuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
slide: aCrawler towards: aDirection on: aSilt

	self error: SurveyCrawler siltFoundDuringGuardedRunErrorDescription! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
abort

	^self! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
assertGuardedRunFinished! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
endGuardedRun

	^self error: SurveyCrawler guardedRunNotStartedErrorDescription! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
startGuardedRun

	^GuardedRun new! !

!UnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
recordUndo: anUndo! !

!UnguardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
slide: aCrawler towards: aDirection on: aSilt

	aCrawler displace: aDirection * aSilt slidingDistance! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
allowTurning: aTurn

	self subclassResponsibility! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	self subclassResponsibility! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
allowTurning: aTurn

	self signalBoulderFound! !

!Boulder methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	self signalBoulderFound! !

!Boulder methodsFor: 'moving - private' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
signalBoulderFound

	self error: SurveyCrawler boulderFoundErrorDescription! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
allowTurning: aTurn

	aTurn value! !

!FirmSand methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler displace: aDirection! !

!Silt methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
initializeSlidingWith: aSlidingDistanceGenerator

	slidingDistanceGenerator := aSlidingDistanceGenerator! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
allowTurning: aTurn

	aTurn value! !

!Silt methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
receive: aCrawler movingTowards: aDirection

	aCrawler slideTowards: aDirection on: self! !

!Silt methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
slidingDistance

	^slidingDistanceGenerator nextInteger: self class slidingLimit! !

!Silt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
slidingWith: aSlidingDistanceGenerator

	^self new initializeSlidingWith: aSlidingDistanceGenerator! !

!Silt class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
unpredictable

	^self slidingWith: Random new! !

!Silt class methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
slidingLimit

	^10! !

!SeabedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
initializeDetecting: aGroundsByPosition

	groundsByPosition := aGroundsByPosition! !

!SeabedSonar methodsFor: 'detecting' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
groundAt: aPosition

	^groundsByPosition at: aPosition ifAbsent: [ FirmSand new ]! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
detecting: aGroundsByPosition

	^self new initializeDetecting: aGroundsByPosition copy! !

!SeabedSonar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
onFirmSand

	^self detecting: Dictionary new! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	mode := UnguardedRun new! !

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

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:55 pm (UTC)'!
advance
	
	facing advance: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 22/Aug/2019, 3:05:20 pm (UTC)'!
retreat
	
	facing retreat: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
turnClockwise

	self 
		turnDoing: [ facing turnClockwise: self ]
		undoing: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
turnCounterClockwise

	self 
		turnDoing: [ facing turnCounterClockwise: self ]
		undoing: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'processing' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
process: aSequenceOfCommands

	[ self processAll: aSequenceOfCommands ]
		on: Error
		do: [ :anError |
			self abortGuardedRun.
			anError pass ]! !

!SurveyCrawler methodsFor: 'processing - private' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
processAll: aSequenceOfCommands

	aSequenceOfCommands
		inject: NoPreviousCommand new
		into: [ :aPreviousCommand :aCharacter | self processCommand: aCharacter after: aPreviousCommand ].
	mode assertGuardedRunFinished! !

!SurveyCrawler methodsFor: 'processing - private' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
processCommand: aCharacter after: aPreviousCommand

	| command |
	
	command := CrawlerCommand for: aCharacter after: aPreviousCommand.
	command executeOn: self.
	^command! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
endGuardedRun

	mode := mode endGuardedRun! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
startGuardedRun

	mode := mode startGuardedRun! !

!SurveyCrawler methodsFor: 'guarded run - private' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
abortGuardedRun

	mode := mode abort! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
displace: aDisplacement

	position := position + aDisplacement.
	mode recordUndo: [ position := position - aDisplacement ]! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
moveDown
	
	self moveTowards: 0@-1! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
moveLeft
	
	self moveTowards: -1@0! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
moveRight
	
	self moveTowards: 1@0! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) receive: self movingTowards: aDirection! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
moveUp
	
	self moveTowards: 0@1! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 17/Sep/2026, 7:14:45 am (UTC)'!
slideTowards: aDirection on: aSilt

	mode slide: self towards: aDirection on: aSilt! !

!SurveyCrawler methodsFor: 'moving - private' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
turnDoing: aTurn undoing: anUndo

	(sonar groundAt: position) allowTurning: aTurn.
	mode recordUndo: anUndo! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
at: aPosition facing: aFacingName

	^self at: aPosition facing: aFacingName sonar: SeabedSonar onFirmSand! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
boulderFoundErrorDescription

	^'Boulder found'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'A guarded run can not be finished without being started'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
invalidRepetitionErrorDescription

	^'Only advance, retreat and turn commands can be repeated'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
nestedGuardedRunErrorDescription

	^'A guarded run can not be started during another guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription

	^'Silt found during a guarded run'! !

!SurveyCrawler class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:14:44 am (UTC)'!
unfinishedGuardedRunErrorDescription

	^'The guarded run was not finished'! !

!SlidingToLimit methodsFor: 'sliding' stamp: 'HAW 17/Sep/2026, 7:14:46 am (UTC)'!
nextInteger: aLimit

	^aLimit! !

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

!SurveyCrawlerTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self
		should: [ crawler process: 'x' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: SurveyCrawler invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCrawler at: aPosition facing: aFacingName

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
crawlerFacingUpAt1At2With: aGround at: aGroundPosition

	^SurveyCrawler 
		at: 1@2 
		facing: #Up 
		sonar: (SeabedSonar detecting: (Dictionary with: aGroundPosition -> aGround))! !

!SurveyCrawlerTest methodsFor: 'testing - repetition' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test17DigitAfterAdvanceRepeatsItDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'testing - repetition' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test18NineAfterAdvanceRepeatsItElevenMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'testing - repetition' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test19DigitAfterRetreatRepeatsItDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'testing - repetition' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test20DigitAfterTurnClockwiseRepeatsItDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h2'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'testing - repetition' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test21DigitAfterTurnCounterClockwiseRepeatsItDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'testing - repetition' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test22DigitWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self
		should: [ crawler process: '0' ]
		failWith: SurveyCrawler invalidRepetitionErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - repetition' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test23DigitAfterDigitIsInvalidAndKeepsPreviousRepetitionDone

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self
		should: [ crawler process: 'a00' ]
		failWith: SurveyCrawler invalidRepetitionErrorDescription
		leaving: crawler at: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - repetition' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test24DigitAfterGuardedRunStartIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self
		should: [ crawler process: 'a(0' ]
		failWith: SurveyCrawler invalidRepetitionErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - repetition' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test25DigitAfterGuardedRunEndIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self
		should: [ crawler process: '(a)0' ]
		failWith: SurveyCrawler invalidRepetitionErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - boulder' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test26AdvanceOntoBoulderFailsAndCrawlerDoesNotMove

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Boulder new at: 1@3.
	
	self
		should: [ crawler process: 'a' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - boulder' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test27RetreatOntoBoulderFailsAndCrawlerDoesNotMove

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Boulder new at: 1@1.
	
	self
		should: [ crawler process: 't' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - boulder' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test28TurnClockwiseOnBoulderFailsAndCrawlerDoesNotTurn

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Boulder new at: 1@2.
	
	self
		should: [ crawler process: 'h' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - boulder' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test29TurnCounterClockwiseOnBoulderFailsAndCrawlerDoesNotTurn

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Boulder new at: 1@2.
	
	self
		should: [ crawler process: 'g' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - boulder' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test30BoulderOutsideGuardedRunKeepsMovementsDoneBeforeIt

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Boulder new at: 1@4.
	
	self
		should: [ crawler process: 'aa' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - boulder' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test31BoulderStopsRepetitionKeepingRepetitionsDoneBeforeIt

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Boulder new at: 1@5.
	
	self
		should: [ crawler process: 'a0' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - silt' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test32AdvanceOntoSiltSlidesBetweenOneAndTenCells

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Silt unpredictable at: 1@3.
	
	crawler process: 'a'.
	
	self assert: ((3 to: 12) anySatisfy: [ :aRow | crawler isAt: 1@aRow facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'testing - silt' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test33AdvanceOntoSiltSlidesUpToTenCells

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: (Silt slidingWith: SlidingToLimit new) at: 1@3.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'testing - silt' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test34RetreatOntoSiltSlidesBackwards

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: (Silt slidingWith: SlidingToLimit new) at: 1@1.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'testing - silt' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test35TurningOnSiltIsLikeTurningOnFirmSand

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Silt unpredictable at: 1@2.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test36GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aah)'.
	
	self assert: (crawler isAt: 1@4 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test37BoulderDuringGuardedRunUndoesItsMovements

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Boulder new at: 1@4.
	
	self
		should: [ crawler process: '(aa)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test38BoulderDuringGuardedRunUndoesItsTurns

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Boulder new at: 3@2.
	
	self
		should: [ crawler process: '(haa)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test39SiltDuringGuardedRunFailsAndUndoesItsMovements

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Silt unpredictable at: 1@4.
	
	self
		should: [ crawler process: '(aa)' ]
		failWith: SurveyCrawler siltFoundDuringGuardedRunErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test40InvalidCommandDuringGuardedRunUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self
		should: [ crawler process: '(ahx)' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test41NestedGuardedRunFailsAndUndoesOuterGuardedRunMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self
		should: [ crawler process: 'aa(aa(ht)a)' ]
		failWith: SurveyCrawler nestedGuardedRunErrorDescription
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test42UnfinishedGuardedRunFailsAndUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self
		should: [ crawler process: 'a(aa' ]
		failWith: SurveyCrawler unfinishedGuardedRunErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test43FinishingNotStartedGuardedRunFails

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self
		should: [ crawler process: 'a)' ]
		failWith: SurveyCrawler guardedRunNotStartedErrorDescription
		leaving: crawler at: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test44SeveralGuardedRunsAreProcessedInOneSequence

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test45FailureInSecondGuardedRunOnlyUndoesSecondGuardedRun

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Boulder new at: 1@6.
	
	self
		should: [ crawler process: 'a(a)(aa)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test46FailureAfterFinishedGuardedRunDoesNotUndoIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self
		should: [ crawler process: '(aa)x' ]
		failWith: SurveyCrawler invalidCommandErrorDescription
		leaving: crawler at: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test47FailureDuringGuardedRunUndoesRepetitions

	| crawler |
	
	crawler := self crawlerFacingUpAt1At2With: Boulder new at: 1@6.
	
	self
		should: [ crawler process: '(a1)' ]
		failWith: SurveyCrawler boulderFoundErrorDescription
		leaving: crawler at: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'testing - guarded run' stamp: 'HAW 17/Sep/2026, 7:15:38 am (UTC)'!
test48CrawlerCanStartAGuardedRunAfterAFailedOne

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	[ crawler process: '(ax' ] on: Error do: [ :anError | anError return ].
	
	crawler process: '(a)'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !
