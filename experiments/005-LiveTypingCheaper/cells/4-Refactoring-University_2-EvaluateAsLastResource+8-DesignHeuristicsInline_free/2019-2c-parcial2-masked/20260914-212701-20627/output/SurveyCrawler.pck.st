'From Cuis7.9 [latest update: #8182] on 14 September 2026 at 9:39:26 pm'!
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

!classDefinition: #CrawlerAdvanceCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerAdvanceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerAdvanceCommand class' category: #SurveyCrawler!
CrawlerAdvanceCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRetreatCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerRetreatCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRetreatCommand class' category: #SurveyCrawler!
CrawlerRetreatCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerTurnClockwiseCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerTurnClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurnClockwiseCommand class' category: #SurveyCrawler!
CrawlerTurnClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerTurnCounterClockwiseCommand category: #SurveyCrawler!
CrawlerCommand subclass: #CrawlerTurnCounterClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurnCounterClockwiseCommand class' category: #SurveyCrawler!
CrawlerTurnCounterClockwiseCommand class
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

!classDefinition: #CrawlerGuardedRun category: #SurveyCrawler!
CrawlerRun subclass: #CrawlerGuardedRun
	instanceVariableNames: 'executedCommands finished'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerGuardedRun class' category: #SurveyCrawler!
CrawlerGuardedRun class
	instanceVariableNames: ''!

!classDefinition: #CrawlerUnguardedRun category: #SurveyCrawler!
CrawlerRun subclass: #CrawlerUnguardedRun
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerUnguardedRun class' category: #SurveyCrawler!
CrawlerUnguardedRun class
	instanceVariableNames: ''!

!classDefinition: #CrawlerSonar category: #SurveyCrawler!
Object subclass: #CrawlerSonar
	instanceVariableNames: 'grounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerSonar class' category: #SurveyCrawler!
CrawlerSonar class
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
	instanceVariableNames: 'slideDistances'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SiltGround class' category: #SurveyCrawler!
SiltGround class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawler category: #SurveyCrawler!
Object subclass: #SurveyCrawler
	instanceVariableNames: 'position facing sonar run'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #PredictableRandom category: #'SurveyCrawler-Tests'!
Object subclass: #PredictableRandom
	instanceVariableNames: 'number'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'PredictableRandom class' category: #'SurveyCrawler-Tests'!
PredictableRandom class
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


!CrawlerCommand commentStamp: '<historical>' prior: 0!
I am a command a crawler can apply to itself and undo. My subclasses know the character that names them in a sequence of commands.!

!CrawlerFacing commentStamp: '<historical>' prior: 0!
I am the facing of a crawler. I know the direction of a step forward and the facings that result from turning clockwise and counter clockwise.!

!CrawlerFacingDown commentStamp: '<historical>' prior: 0!
I am the facing of a crawler looking down.!

!CrawlerFacingLeft commentStamp: '<historical>' prior: 0!
I am the facing of a crawler looking left.!

!CrawlerFacingRight commentStamp: '<historical>' prior: 0!
I am the facing of a crawler looking right.!

!CrawlerFacingUp commentStamp: '<historical>' prior: 0!
I am the facing of a crawler looking up.!

!CrawlerRun commentStamp: '<historical>' prior: 0!
I am the way a crawler is running the commands it is processing.!

!CrawlerGuardedRun commentStamp: '<historical>' prior: 0!
I am a crawler running the commands between $( and $). I remember the commands already executed so that they can be undone when one of them fails, and I do not allow the unpredictable sliding on silt.!

!CrawlerUnguardedRun commentStamp: '<historical>' prior: 0!
I am a crawler running commands without a guard: no command is remembered to be undone and sliding on silt is allowed.!

!CrawlerSonar commentStamp: '<historical>' prior: 0!
I am the sonar of a crawler. I know the grounds of the positions of the seabed that are not firm sand and answer the ground of any position.!

!SeabedGround commentStamp: '<historical>' prior: 0!
I am the ground of a position of the seabed. I decide how a crawler moves onto me and whether it can turn while standing on me.!

!BoulderGround commentStamp: '<historical>' prior: 0!
I am a boulder. A crawler can neither move onto me nor turn while standing on me.!

!FirmSandGround commentStamp: '<historical>' prior: 0!
I am firm sand. A crawler moves onto me and turns on me as expected.!

!SiltGround commentStamp: '<historical>' prior: 0!
I am silt. A crawler that moves onto me slides an unpredictable number of cells, up to my maximum slide distance, in the direction it was going. Turning on me is not affected.!

!SurveyCrawler commentStamp: '<historical>' prior: 0!
I am a seabed survey crawler. I know the position I am at and the facing I am looking at, and I process sequences of commands: $a advance, $t retreat, $h turn clockwise and $g turn counter clockwise, each one optionally followed by a digit that repeats it that digit plus two more times.
Before moving or turning I ask my sonar for the ground I will end up on, and it is the ground the one that decides what happens to me.
The commands between $( and $) are a guarded run: if any of them fails I undo the movements I made during it, going back to the position and facing I had when it started.!

!PredictableRandom commentStamp: '<historical>' prior: 0!
I answer the same number to any request of a random integer, so that sliding on silt can be tested.!

!SurveyCrawlerTest commentStamp: '<historical>' prior: 0!
I test a seabed survey crawler.!

!CrawlerCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
applyTo: aCrawler

	self subclassResponsibility! !

!CrawlerCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerCommand class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
for: aCharacter

	^self subclasses
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass new ]
		ifNone: [ self signalInvalidCommand ]! !

!CrawlerCommand class methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
isFor: aCharacter

	^self character = aCharacter! !

!CrawlerCommand class methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
character

	self subclassResponsibility! !

!CrawlerCommand class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
invalidCommandErrorDescription

	^'Invalid command'! !

!CrawlerCommand class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
signalInvalidCommand

	^self error: self invalidCommandErrorDescription! !

!CrawlerAdvanceCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
applyTo: aCrawler

	^aCrawler advance! !

!CrawlerAdvanceCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
undoOn: aCrawler

	^aCrawler undoAdvance! !

!CrawlerAdvanceCommand class methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
character

	^$a! !

!CrawlerRetreatCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
applyTo: aCrawler

	^aCrawler retreat! !

!CrawlerRetreatCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
undoOn: aCrawler

	^aCrawler undoRetreat! !

!CrawlerRetreatCommand class methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
character

	^$t! !

!CrawlerTurnClockwiseCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
applyTo: aCrawler

	^aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
undoOn: aCrawler

	^aCrawler undoTurnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
character

	^$h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
applyTo: aCrawler

	^aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'applying' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
undoOn: aCrawler

	^aCrawler undoTurnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:33:35 am (UTC)'!
character

	^$g! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
clockwise

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
counterClockwise

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
direction

	self subclassResponsibility! !

!CrawlerFacing class methodsFor: 'facing name' stamp: 'HAW 2/Jul/2018, 10:07:01 pm (UTC)'!
facingName

	self subclassResponsibility ! !

!CrawlerFacing class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:38:35 am (UTC)'!
facing: aFacingName

	^self subclasses 
		detect: [ :aCrawlerFacingClass | aCrawlerFacingClass isFor: aFacingName ]
		ifFound: [ :aCrawlerFacingClass | aCrawlerFacingClass new ]
		ifNone: [ self signalInvalidFacing ]! !

!CrawlerFacing class methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 8:01:33 pm (UTC)'!
isFor: aFacingName

	^self facingName = aFacingName ! !

!CrawlerFacing class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:38:35 am (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!CrawlerFacing class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:38:35 am (UTC)'!
signalInvalidFacing
	
	^self error: self invalidFacingErrorDescription! !

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
direction

	^0@-1! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
clockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
counterClockwise

	^CrawlerFacingRight new! !

!CrawlerFacingDown class methodsFor: 'facing name' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
direction

	^-1@0! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
clockwise

	^CrawlerFacingUp new! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
counterClockwise

	^CrawlerFacingDown new! !

!CrawlerFacingLeft class methodsFor: 'facing name' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
direction

	^1@0! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
clockwise

	^CrawlerFacingDown new! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
counterClockwise

	^CrawlerFacingUp new! !

!CrawlerFacingRight class methodsFor: 'facing name' stamp: 'HAW 15/Sep/2026, 12:33:01 am (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
direction

	^0@1! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
clockwise

	^CrawlerFacingRight new! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
counterClockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingUp class methodsFor: 'facing name' stamp: 'HAW 15/Sep/2026, 12:33:00 am (UTC)'!
facingName

	^#Up! !

!CrawlerRun methodsFor: 'running' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
finish

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'running' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
guardedRun

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'running' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
register: aCommand

	self subclassResponsibility! !

!CrawlerRun methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
slideCrawler: aCrawler by: aDisplacement

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
initialize

	executedCommands := OrderedCollection new.
	finished := false! !

!CrawlerGuardedRun methodsFor: 'running' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
finish

	finished := true! !

!CrawlerGuardedRun methodsFor: 'running' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
guardedRun

	^self class signalCanNotStartNestedGuardedRun! !

!CrawlerGuardedRun methodsFor: 'running' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
hasFinished

	^finished! !

!CrawlerGuardedRun methodsFor: 'running' stamp: 'HAW 15/Sep/2026, 12:38:35 am (UTC)'!
processCommandsOf: aCommandStream on: aCrawler

	[ self hasFinished or: [ aCommandStream atEnd ] ] 
		whileFalse: [ aCrawler processNextOf: aCommandStream ].
	
	self hasFinished ifFalse: [ self class signalUnfinishedGuardedRun ]! !

!CrawlerGuardedRun methodsFor: 'running' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
register: aCommand

	^executedCommands add: aCommand! !

!CrawlerGuardedRun methodsFor: 'running' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
undoOn: aCrawler

	executedCommands reverseDo: [ :aCommand | aCommand undoOn: aCrawler ]! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
slideCrawler: aCrawler by: aDisplacement

	^self class signalCanNotSlideDuringGuardedRun! !

!CrawlerGuardedRun class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
nestedGuardedRunErrorDescription

	^'Can not start a guarded run during a guarded run'! !

!CrawlerGuardedRun class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
signalCanNotSlideDuringGuardedRun

	^self error: self slidingDuringGuardedRunErrorDescription! !

!CrawlerGuardedRun class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
signalCanNotStartNestedGuardedRun

	^self error: self nestedGuardedRunErrorDescription! !

!CrawlerGuardedRun class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
signalUnfinishedGuardedRun

	^self error: self unfinishedGuardedRunErrorDescription! !

!CrawlerGuardedRun class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
slidingDuringGuardedRunErrorDescription

	^'Can not slide on silt during a guarded run'! !

!CrawlerGuardedRun class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
unfinishedGuardedRunErrorDescription

	^'The guarded run was not finished'! !

!CrawlerUnguardedRun methodsFor: 'running' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
finish

	^self class signalGuardedRunNotStarted! !

!CrawlerUnguardedRun methodsFor: 'running' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
guardedRun

	^CrawlerGuardedRun new! !

!CrawlerUnguardedRun methodsFor: 'running' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
register: aCommand

	^aCommand! !

!CrawlerUnguardedRun methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
slideCrawler: aCrawler by: aDisplacement

	^aCrawler translateBy: aDisplacement! !

!CrawlerUnguardedRun class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'There is no guarded run to finish'! !

!CrawlerUnguardedRun class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:59 am (UTC)'!
signalGuardedRunNotStarted

	^self error: self guardedRunNotStartedErrorDescription! !

!CrawlerSonar methodsFor: 'detecting' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
groundAt: aPosition

	^grounds at: aPosition ifAbsent: [ FirmSandGround new ]! !

!CrawlerSonar methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
initializeDetecting: aCollectionOfGroundsByPosition

	grounds := aCollectionOfGroundsByPosition! !

!CrawlerSonar class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:33:23 am (UTC)'!
detecting: aCollectionOfGroundsByPosition

	^self new initializeDetecting: aCollectionOfGroundsByPosition copy! !

!CrawlerSonar class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:33:23 am (UTC)'!
detectingFirmSandEverywhere

	^self detecting: Dictionary new! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
turnCrawler: aCrawler to: aFacing

	self subclassResponsibility! !

!BoulderGround methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	^self class signalCannotMoveOntoBoulder! !

!BoulderGround methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
turnCrawler: aCrawler to: aFacing

	^self class signalCannotTurnOnBoulder! !

!BoulderGround class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
cannotMoveOntoBoulderErrorDescription

	^'Can not move onto a boulder'! !

!BoulderGround class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
cannotTurnOnBoulderErrorDescription

	^'Can not turn on a boulder'! !

!BoulderGround class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
signalCannotMoveOntoBoulder

	^self error: self cannotMoveOntoBoulderErrorDescription! !

!BoulderGround class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
signalCannotTurnOnBoulder

	^self error: self cannotTurnOnBoulderErrorDescription! !

!FirmSandGround methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	^aCrawler translateBy: aDirection! !

!FirmSandGround methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
turnCrawler: aCrawler to: aFacing

	^aCrawler faceTowards: aFacing! !

!SiltGround methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	^aCrawler slideBy: aDirection * self slideDistance! !

!SiltGround methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
turnCrawler: aCrawler to: aFacing

	^aCrawler faceTowards: aFacing! !

!SiltGround methodsFor: 'sliding' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
slideDistance

	^slideDistances nextInteger: self class maximumSlideDistance! !

!SiltGround methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
initializeSlidingAccordingTo: aSlideDistanceSource

	slideDistances := aSlideDistanceSource! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
slidingAccordingTo: aSlideDistanceSource

	^self new initializeSlidingAccordingTo: aSlideDistanceSource! !

!SiltGround class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
slidingRandomly

	^self slidingAccordingTo: Random new! !

!SiltGround class methodsFor: 'sliding' stamp: 'HAW 15/Sep/2026, 12:33:22 am (UTC)'!
maximumSlideDistance

	^10! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar running: aRun

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	run := aRun! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
faceTowards: aFacing

	facing := aFacing! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
turnClockwise

	self turnTo: facing clockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
turnCounterClockwise

	self turnTo: facing counterClockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
turnTo: aFacing

	^(sonar groundAt: position) turnCrawler: self to: aFacing! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
advance

	self moveTowards: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
moveTowards: aDirection

	^(sonar groundAt: position + aDirection) moveCrawler: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
retreat

	self moveTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
slideBy: aDisplacement

	^run slideCrawler: self by: aDisplacement! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
translateBy: aDisplacement

	position := position + aDisplacement! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
execute: aCommand

	aCommand applyTo: self.
	run register: aCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
execute: aCommand repeatedTimes: aNumberOfExecutions

	aNumberOfExecutions timesRepeat: [ self execute: aCommand ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
hasRepetitionDigitIn: aCommandStream

	^aCommandStream atEnd not and: [ aCommandStream peek isDigit ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
process: aSequenceOfCommands

	self processAllOf: (ReadStream on: aSequenceOfCommands)! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
processAllOf: aCommandStream

	[ aCommandStream atEnd ] whileFalse: [ self processNextOf: aCommandStream ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:38:35 am (UTC)'!
processNextOf: aCommandStream

	| commandCharacter |
	
	commandCharacter := aCommandStream next.
	commandCharacter = self class guardedRunStartCharacter 
		ifTrue: [ ^self startGuardedRunReading: aCommandStream ].
	commandCharacter = self class guardedRunEndCharacter 
		ifTrue: [ ^run finish ].
	
	^self 
		execute: (CrawlerCommand for: commandCharacter) 
		repeatedTimes: (self repetitionsIn: aCommandStream)! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:38:35 am (UTC)'!
repetitionsFor: aRepetitionDigit

	^self class singleExecution 
		+ self class implicitRepetitions 
		+ aRepetitionDigit digitValue! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
repetitionsIn: aCommandStream

	^(self hasRepetitionDigitIn: aCommandStream)
		ifTrue: [ self repetitionsFor: aCommandStream next ]
		ifFalse: [ self class singleExecution ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
process: aCommandStream during: aGuardedRun

	^[ aGuardedRun processCommandsOf: aCommandStream on: self ]
		on: Error
		do: [ :anError | 
			aGuardedRun undoOn: self.
			anError pass ]! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
startGuardedRunReading: aCommandStream

	| guardedRun |
	
	guardedRun := run guardedRun.
	run := guardedRun.
	
	^[ self process: aCommandStream during: guardedRun ] 
		ensure: [ run := CrawlerUnguardedRun new ]! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
undoAdvance

	self translateBy: facing direction negated! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
undoRetreat

	self translateBy: facing direction! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
undoTurnClockwise

	self faceTowards: facing counterClockwise! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 15/Sep/2026, 12:34:54 am (UTC)'!
undoTurnCounterClockwise

	self faceTowards: facing clockwise! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
at: aPosition facing: aFacingName

	^self 
		at: aPosition 
		facing: aFacingName 
		sonar: CrawlerSonar detectingFirmSandEverywhere! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self new 
		initializeAt: aPosition 
		facing: (CrawlerFacing facing: aFacingName) 
		sonar: aSonar
		running: CrawlerUnguardedRun new! !

!SurveyCrawler class methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
guardedRunEndCharacter

	^$)! !

!SurveyCrawler class methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
guardedRunStartCharacter

	^$(! !

!SurveyCrawler class methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
implicitRepetitions

	^2! !

!SurveyCrawler class methodsFor: 'commands' stamp: 'HAW 15/Sep/2026, 12:34:53 am (UTC)'!
singleExecution

	^1! !

!PredictableRandom methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:35:49 am (UTC)'!
initializeAlways: aNumber

	number := aNumber! !

!PredictableRandom methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 12:35:49 am (UTC)'!
nextInteger: aLimit

	^number! !

!PredictableRandom class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:35:49 am (UTC)'!
always: aNumber

	^self new initializeAlways: aNumber! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:35:54 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

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

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:38:35 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X ]
		raise: Error - MessageNotUnderstood
		withMessageText: CrawlerFacing invalidFacingErrorDescription! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 15/Sep/2026, 12:35:49 am (UTC)'!
crawlerAt: aPosition facing: aFacingName detecting: aCollectionOfGroundsByPosition

	^SurveyCrawler 
		at: aPosition 
		facing: aFacingName 
		sonar: (CrawlerSonar detecting: aCollectionOfGroundsByPosition)! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 15/Sep/2026, 12:35:49 am (UTC)'!
siltSliding: aNumberOfCells

	^SiltGround slidingAccordingTo: (PredictableRandom always: aNumberOfCells)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:36:12 am (UTC)'!
test17DigitAfterAdvanceRepeatsItTwoMoreTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:36:12 am (UTC)'!
test18DigitRepeatsTheCommandItsValuePlusTwoTimes

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'a3'.
	
	self assert: (crawler isAt: 1@8 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:36:12 am (UTC)'!
test19DigitAfterRetreatRepeatsIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 't0'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:36:12 am (UTC)'!
test20DigitAfterTurnClockwiseRepeatsIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'h0'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:36:12 am (UTC)'!
test21DigitAfterTurnCounterClockwiseRepeatsIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'g0'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:36:12 am (UTC)'!
test22DigitOnlyRepeatsTheCommandRightBeforeIt

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha0'.
	
	self assert: (crawler isAt: 4@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:36:12 am (UTC)'!
test23DigitWithoutACommandBeforeItIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '0' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 15/Sep/2026, 12:36:12 am (UTC)'!
test24DigitAfterARepetitionDigitIsInvalid

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a00' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@5 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:36:34 am (UTC)'!
test25CanNotAdvanceOntoABoulder

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@3 -> BoulderGround new }).
	
	self 
		should: [ crawler process: 'a' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround cannotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:36:34 am (UTC)'!
test26CanNotRetreatOntoABoulder

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@1 -> BoulderGround new }).
	
	self 
		should: [ crawler process: 't' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround cannotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:36:34 am (UTC)'!
test27CanNotTurnClockwiseWhenStandingOnABoulder

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@2 -> BoulderGround new }).
	
	self 
		should: [ crawler process: 'h' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround cannotTurnOnBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:36:34 am (UTC)'!
test28CanNotTurnCounterClockwiseWhenStandingOnABoulder

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@2 -> BoulderGround new }).
	
	self 
		should: [ crawler process: 'g' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround cannotTurnOnBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - boulder' stamp: 'HAW 15/Sep/2026, 12:36:34 am (UTC)'!
test29CommandsBeforeFindingABoulderAreExecuted

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@5 -> BoulderGround new }).
	
	self 
		should: [ crawler process: 'aaa' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround cannotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 12:36:34 am (UTC)'!
test30AdvancingOntoSiltCanSlideTheCrawlerOnlyToItsDestination

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@3 -> (self siltSliding: 1) }).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 12:36:34 am (UTC)'!
test31AdvancingOntoSiltCanSlideTheCrawlerTenCells

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@3 -> (self siltSliding: 10) }).
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@12 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 12:36:34 am (UTC)'!
test32RetreatingOntoSiltSlidesTheCrawlerBackwards

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@1 -> (self siltSliding: 3) }).
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@-1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - silt' stamp: 'HAW 15/Sep/2026, 12:36:34 am (UTC)'!
test33TurningOnSiltWorksAsOnFirmSand

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@2 -> (self siltSliding: 10) }).
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test34GuardedRunExecutesItsCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '(aa)'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test35FindingABoulderDuringAGuardedRunUndoesItsMovements

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@4 -> BoulderGround new }).
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround cannotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test36TurnsMadeDuringAFailedGuardedRunAreAlsoUndone

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 3@3 -> BoulderGround new }).
	
	self 
		should: [ crawler process: '(ahaa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround cannotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test37RetreatsMadeDuringAFailedGuardedRunAreAlsoUndone

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@0 -> BoulderGround new }).
	
	self 
		should: [ crawler process: '(tt)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround cannotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test38CounterClockwiseTurnsMadeDuringAFailedGuardedRunAreAlsoUndone

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 0@2 -> BoulderGround new }).
	
	self 
		should: [ crawler process: '(ga)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround cannotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test39CanNotSlideOnSiltDuringAGuardedRun

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@4 -> (self siltSliding: 5) }).
	
	self 
		should: [ crawler process: '(aa)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerGuardedRun slidingDuringGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test40TurningOnSiltDuringAGuardedRunIsAllowed

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@2 -> (self siltSliding: 5) }).
	
	crawler process: '(h)'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test41InvalidCommandsDuringAGuardedRunUndoItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: '(ax)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test42CanNotStartAGuardedRunDuringAGuardedRun

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'aa(aa(ht)a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerGuardedRun nestedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@4 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test43AGuardedRunThatIsNotFinishedUndoesItsMovements

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerGuardedRun unfinishedGuardedRunErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test44CanNotFinishAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerUnguardedRun guardedRunNotStartedErrorDescription.
			self assert: (crawler isAt: 1@3 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test45SeveralGuardedRunsCanBeProcessedInOneSequenceOfCommands

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test46CommandsAfterAFailedGuardedRunAreNotExecuted

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@4 -> BoulderGround new }).
	
	self 
		should: [ crawler process: '(aa)aa' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround cannotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test47RepeatedCommandsOfAFailedGuardedRunAreAllUndone

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@5 -> BoulderGround new }).
	
	self 
		should: [ crawler process: '(a3)' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: BoulderGround cannotMoveOntoBoulderErrorDescription.
			self assert: (crawler isAt: 1@2 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:10 am (UTC)'!
test48MovementsOfAFinishedGuardedRunAreNotUndoneByALaterError

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	self 
		should: [ crawler process: 'a(aa)x' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self 
				assert: anError messageText 
				equals: CrawlerCommand invalidCommandErrorDescription.
			self assert: (crawler isAt: 1@5 facing: #Up) ]! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:35 am (UTC)'!
test49AnEmptyGuardedRunDoesNothing

	| crawler |
	
	crawler := SurveyCrawler at: 1@2 facing: #Up.
	
	crawler process: '()'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 15/Sep/2026, 12:37:35 am (UTC)'!
test50TheCrawlerKeepsProcessingCommandsAfterAFailedGuardedRun

	| crawler |
	
	crawler := self 
		crawlerAt: 1@2 
		facing: #Up 
		detecting: (Dictionary newFrom: { 1@4 -> BoulderGround new }).
	
	self should: [ crawler process: '(aa)' ] raise: Error - MessageNotUnderstood.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !
