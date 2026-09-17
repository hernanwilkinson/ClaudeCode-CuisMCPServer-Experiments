'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 5:32:52 am'!
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

!classDefinition: #CrawlerMovementCommand category: #SurveyCrawler!
Object subclass: #CrawlerMovementCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerMovementCommand class' category: #SurveyCrawler!
CrawlerMovementCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerAdvanceCommand category: #SurveyCrawler!
CrawlerMovementCommand subclass: #CrawlerAdvanceCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerAdvanceCommand class' category: #SurveyCrawler!
CrawlerAdvanceCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerRetreatCommand category: #SurveyCrawler!
CrawlerMovementCommand subclass: #CrawlerRetreatCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRetreatCommand class' category: #SurveyCrawler!
CrawlerRetreatCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerTurnClockwiseCommand category: #SurveyCrawler!
CrawlerMovementCommand subclass: #CrawlerTurnClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurnClockwiseCommand class' category: #SurveyCrawler!
CrawlerTurnClockwiseCommand class
	instanceVariableNames: ''!

!classDefinition: #CrawlerTurnCounterClockwiseCommand category: #SurveyCrawler!
CrawlerMovementCommand subclass: #CrawlerTurnCounterClockwiseCommand
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerTurnCounterClockwiseCommand class' category: #SurveyCrawler!
CrawlerTurnCounterClockwiseCommand class
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
	instanceVariableNames: 'executedCommands'
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
	instanceVariableNames: 'position facing sonar random runState lastMovementCommand'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #SimulatedRandom category: #'SurveyCrawler-Tests'!
Object subclass: #SimulatedRandom
	instanceVariableNames: 'numberToReturn requestedLimit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SimulatedRandom class' category: #'SurveyCrawler-Tests'!
SimulatedRandom class
	instanceVariableNames: ''!

!classDefinition: #SimulatedSonar category: #'SurveyCrawler-Tests'!
Object subclass: #SimulatedSonar
	instanceVariableNames: 'grounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SimulatedSonar class' category: #'SurveyCrawler-Tests'!
SimulatedSonar class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerTest
	instanceVariableNames: 'sonar random'
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

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
direction

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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
direction

	^0@-1! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:50 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:11:55 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingDown class methodsFor: 'facing name' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
direction

	^-1@0! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:41 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:12:26 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingLeft class methodsFor: 'facing name' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
direction

	^1@0! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:54 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceDown! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:09:42 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceUp! !

!CrawlerFacingRight class methodsFor: 'facing name' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
direction

	^0@1! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:51 pm (UTC)'!
turnClockwise: aCrawler
	
	^aCrawler faceRight! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 22/Aug/2019, 3:10:40 pm (UTC)'!
turnCounterClockwise: aCrawler
	
	^aCrawler faceLeft! !

!CrawlerFacingUp class methodsFor: 'facing name' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
facingName

	^#Up! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
executeOn: aCrawler

	self subclassResponsibility! !

!CrawlerMovementCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
undoOn: aCrawler

	self subclassResponsibility! !

!CrawlerMovementCommand class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
for: aCharacter ifNone: aNoneBlock

	^self subclasses
		detect: [ :aCommandClass | aCommandClass isFor: aCharacter ]
		ifFound: [ :aCommandClass | aCommandClass new ]
		ifNone: aNoneBlock! !

!CrawlerMovementCommand class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
isFor: aCharacter

	^self commandCharacter = aCharacter! !

!CrawlerMovementCommand class methodsFor: 'command character' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
commandCharacter

	self subclassResponsibility! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
executeOn: aCrawler

	aCrawler advance! !

!CrawlerAdvanceCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
undoOn: aCrawler

	aCrawler undoAdvance! !

!CrawlerAdvanceCommand class methodsFor: 'command character' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
commandCharacter

	^$a! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
executeOn: aCrawler

	aCrawler retreat! !

!CrawlerRetreatCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
undoOn: aCrawler

	aCrawler undoRetreat! !

!CrawlerRetreatCommand class methodsFor: 'command character' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
commandCharacter

	^$t! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
executeOn: aCrawler

	aCrawler turnClockwise! !

!CrawlerTurnClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
undoOn: aCrawler

	aCrawler undoTurnClockwise! !

!CrawlerTurnClockwiseCommand class methodsFor: 'command character' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
commandCharacter

	^$h! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
executeOn: aCrawler

	aCrawler turnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
undoOn: aCrawler

	aCrawler undoTurnCounterClockwise! !

!CrawlerTurnCounterClockwiseCommand class methodsFor: 'command character' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
commandCharacter

	^$g! !

!CrawlerRunState methodsFor: 'error handling' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
guard: aBlock for: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
execute: aMovementCommand for: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
endGuardedRunFor: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
finishCommandSequenceFor: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
startGuardedRunFor: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
moveOnSiltTowards: aDirection for: aCrawler

	self subclassResponsibility! !

!CrawlerGuardedRun methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
initialize

	executedCommands := OrderedCollection new! !

!CrawlerGuardedRun methodsFor: 'error handling' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
guard: aBlock for: aCrawler

	^aBlock on: Error do: [ :anError |
		self undoExecutedCommandsOn: aCrawler.
		aCrawler startNormalRun.
		anError pass ]! !

!CrawlerGuardedRun methodsFor: 'error handling' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
undoExecutedCommandsOn: aCrawler

	executedCommands reverseDo: [ :anExecutedCommand | anExecutedCommand undoOn: aCrawler ]! !

!CrawlerGuardedRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
execute: aMovementCommand for: aCrawler

	aMovementCommand executeOn: aCrawler.
	executedCommands add: aMovementCommand! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
endGuardedRunFor: aCrawler

	aCrawler startNormalRun! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
finishCommandSequenceFor: aCrawler

	self guard: [ aCrawler signalGuardedRunNotFinished ] for: aCrawler! !

!CrawlerGuardedRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
startGuardedRunFor: aCrawler

	aCrawler signalGuardedRunAlreadyStarted! !

!CrawlerGuardedRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
moveOnSiltTowards: aDirection for: aCrawler

	aCrawler signalSiltFoundDuringGuardedRun! !

!CrawlerNormalRun methodsFor: 'error handling' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
guard: aBlock for: aCrawler

	^aBlock value! !

!CrawlerNormalRun methodsFor: 'executing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
execute: aMovementCommand for: aCrawler

	aMovementCommand executeOn: aCrawler! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
endGuardedRunFor: aCrawler

	aCrawler signalGuardedRunNotStarted! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
finishCommandSequenceFor: aCrawler! !

!CrawlerNormalRun methodsFor: 'guarded run' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
startGuardedRunFor: aCrawler

	aCrawler startGuardedRun! !

!CrawlerNormalRun methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
moveOnSiltTowards: aDirection for: aCrawler

	aCrawler slideTowards: aDirection! !

!SeabedGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
turnCrawler: aCrawler with: aTurningBlock

	self subclassResponsibility! !

!SeabedGround class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
boulder

	^BoulderGround new! !

!SeabedGround class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
firmSand

	^FirmSandGround new! !

!SeabedGround class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
silt

	^SiltGround new! !

!BoulderGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!BoulderGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
turnCrawler: aCrawler with: aTurningBlock

	aCrawler signalBoulderFound! !

!FirmSandGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	aCrawler moveOnFirmSandTowards: aDirection! !

!FirmSandGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
turnCrawler: aCrawler with: aTurningBlock

	aTurningBlock value! !

!SiltGround methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
moveCrawler: aCrawler towards: aDirection

	aCrawler moveOnSiltTowards: aDirection! !

!SiltGround methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
turnCrawler: aCrawler with: aTurningBlock

	aTurningBlock value! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
boulderFoundErrorDescription

	^'Boulder found'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
guardedRunAlreadyStartedErrorDescription

	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
guardedRunNotFinishedErrorDescription

	^'Guarded run not finished'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
guardedRunNotStartedErrorDescription

	^'There is no guarded run to finish'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:48:45 pm (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
signalBoulderFound

	self error: self boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
signalGuardedRunAlreadyStarted

	self error: self guardedRunAlreadyStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
signalGuardedRunNotFinished

	self error: self guardedRunNotFinishedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
signalGuardedRunNotStarted

	self error: self guardedRunNotStartedErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:50:26 pm (UTC)'!
signalInvalidCommand
	
	self error: self invalidCommandErrorDescription ! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
signalSiltFoundDuringGuardedRun

	self error: self siltFoundDuringGuardedRunErrorDescription! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
siltFoundDuringGuardedRunErrorDescription

	^'Silt found during guarded run'! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar random: aRandom

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	random := aRandom.
	self startNormalRun! !

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

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
turnClockwise

	(sonar groundAt: position) turnCrawler: self with: [ facing turnClockwise: self ]! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
turnCounterClockwise

	(sonar groundAt: position) turnCrawler: self with: [ facing turnCounterClockwise: self ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
isEndGuardedRunCommand: aCommand

	^aCommand = $)! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
isRepetitionCommand: aCommand

	^aCommand isDigit! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
isStartGuardedRunCommand: aCommand

	^aCommand = $(! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
advance

	self moveTowards: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
moveOnFirmSandTowards: aDirection

	position := position + aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
moveOnSiltTowards: aDirection

	runState moveOnSiltTowards: aDirection for: self! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) moveCrawler: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
retreat

	self moveTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
slideTowards: aDirection

	position := position + (aDirection * (random nextInteger: self class siltSlidingLimit))! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
executeMovementCommand: aMovementCommand

	runState execute: aMovementCommand for: self.
	lastMovementCommand := aMovementCommand! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:32:03 am (UTC)'!
interpretCommand: aCommand

	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^runState startGuardedRunFor: self ].
	(self isEndGuardedRunCommand: aCommand) ifTrue: [ ^runState endGuardedRunFor: self ].
	(self isRepetitionCommand: aCommand) ifTrue: [ ^self repeatLastMovementCommand: aCommand digitValue + 2 ].

	self executeMovementCommand: (CrawlerMovementCommand for: aCommand ifNone: [ ^self signalInvalidCommand ])! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
process: aSequenceOfCommands

	self startNormalRun.
	aSequenceOfCommands do: [ :aCommand | self processCommand: aCommand ].
	runState finishCommandSequenceFor: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
processCommand: aCommand

	runState guard: [ self interpretCommand: aCommand ] for: self! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
repeatLastMovementCommand: numberOfTimes

	| commandToRepeat |

	lastMovementCommand ifNil: [ ^self signalInvalidCommand ].
	commandToRepeat := lastMovementCommand.
	lastMovementCommand := nil.
	numberOfTimes timesRepeat: [ runState execute: commandToRepeat for: self ]! !

!SurveyCrawler methodsFor: 'run state' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
startGuardedRun

	runState := CrawlerGuardedRun new.
	lastMovementCommand := nil! !

!SurveyCrawler methodsFor: 'run state' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
startNormalRun

	runState := CrawlerNormalRun new.
	lastMovementCommand := nil! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
undoAdvance

	position := position - facing direction! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
undoRetreat

	position := position + facing direction! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
undoTurnClockwise

	facing turnCounterClockwise: self! !

!SurveyCrawler methodsFor: 'undoing' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
undoTurnCounterClockwise

	facing turnClockwise: self! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar random: aRandom

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar random: aRandom! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 2/Jul/2018, 7:26:14 pm (UTC)'!
invalidFacingErrorDescription
	
	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:30:43 am (UTC)'!
siltSlidingLimit

	^10! !

!SimulatedRandom methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
initializeReturning: aNumber

	numberToReturn := aNumber! !

!SimulatedRandom methodsFor: 'random' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
nextInteger: aLimit

	requestedLimit := aLimit.
	^numberToReturn! !

!SimulatedRandom methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
requestedLimit

	^requestedLimit! !

!SimulatedRandom class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
returning: aNumber

	^self new initializeReturning: aNumber! !

!SimulatedSonar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
initialize

	grounds := Dictionary new! !

!SimulatedSonar methodsFor: 'ground placing' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
placeBoulderAt: aPosition

	grounds at: aPosition put: SeabedGround boulder! !

!SimulatedSonar methodsFor: 'ground placing' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
placeSiltAt: aPosition

	grounds at: aPosition put: SeabedGround silt! !

!SimulatedSonar methodsFor: 'sensing' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
groundAt: aPosition

	^grounds at: aPosition ifAbsent: [ SeabedGround firmSand ]! !

!SurveyCrawlerTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
setUp

	sonar := SimulatedSonar new.
	random := SimulatedRandom returning: 1! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
assertProcessing: aSequenceOfCommands with: aCrawler failsWith: anErrorDescription leavingItAt: aPosition facing: aFacingName

	self
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: sonar random: random! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: ''.

	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 'a'.

	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 't'.

	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 'h'.

	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 'g'.

	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: 'x' with: crawler failsWith: crawler invalidCommandErrorDescription leavingItAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 'aa'.

	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Right.

	crawler process: 'a'.

	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Right.

	crawler process: 't'.

	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Right.

	crawler process: 'h'.

	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Right.

	crawler process: 'g'.

	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Down.

	crawler process: 'aath'.

	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Down.

	crawler process: 'g'.

	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Left.

	crawler process: 'aath'.

	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Left.

	crawler process: 'g'.

	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests - basic commands' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self
		should: [ self crawlerAt: 1@2 facing: #X ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: SurveyCrawler invalidFacingErrorDescription equals: anError messageText ]! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test17DigitAfterAdvanceRepeatsItDigitPlusTwoTimes

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 'a0'.

	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:32:04 am (UTC)'!
test18DigitAfterRetreatRepeatsItDigitPlusTwoTimes

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 't1'.

	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:32:04 am (UTC)'!
test19DigitAfterTurnClockwiseRepeatsItDigitPlusTwoTimes

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 'h2'.

	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test20DigitAfterTurnCounterClockwiseRepeatsItDigitPlusTwoTimes

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 'g0'.

	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:32:04 am (UTC)'!
test21HighestDigitRepeatsCommandElevenMoreTimes

	| crawler |

	crawler := self crawlerAt: 0@0 facing: #Right.

	crawler process: 'a9'.

	self assert: (crawler isAt: 12@0 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test22DigitAtTheBeginningIsInvalid

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: '3a' with: crawler failsWith: crawler invalidCommandErrorDescription leavingItAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:32:04 am (UTC)'!
test23RepetitionIsOnlyOneDigit

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: 'a00' with: crawler failsWith: crawler invalidCommandErrorDescription leavingItAt: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test24DigitAfterEndOfGuardedRunIsInvalid

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: '(a)0' with: crawler failsWith: crawler invalidCommandErrorDescription leavingItAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - repetition' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test25RepetitionDoesNotCarryOverToNextCommandSequence

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.
	crawler process: 'a'.

	self assertProcessing: '0' with: crawler failsWith: crawler invalidCommandErrorDescription leavingItAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test26CanNotAdvanceToABoulder

	| crawler |

	sonar placeBoulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: 'a' with: crawler failsWith: crawler boulderFoundErrorDescription leavingItAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test27CanNotRetreatToABoulder

	| crawler |

	sonar placeBoulderAt: 1@1.
	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: 't' with: crawler failsWith: crawler boulderFoundErrorDescription leavingItAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test28CanNotTurnCounterClockwiseOnABoulder

	| crawler |

	sonar placeBoulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: 'g' with: crawler failsWith: crawler boulderFoundErrorDescription leavingItAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test29CanNotTurnClockwiseOnABoulder

	| crawler |

	sonar placeBoulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: 'h' with: crawler failsWith: crawler boulderFoundErrorDescription leavingItAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:32:04 am (UTC)'!
test30BoulderOutsideGuardedRunKeepsPreviousMovements

	| crawler |

	sonar placeBoulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: 'a3' with: crawler failsWith: crawler boulderFoundErrorDescription leavingItAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test31AdvancingOnSiltSlidesARandomNumberOfCells

	| crawler |

	random := SimulatedRandom returning: 5.
	sonar placeSiltAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 'a'.

	self assert: (crawler isAt: 1@7 facing: #Up).
	self assert: 10 equals: random requestedLimit! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test32RetreatingOnSiltSlidesBackwards

	| crawler |

	random := SimulatedRandom returning: 10.
	sonar placeSiltAt: 0@2.
	crawler := self crawlerAt: 1@2 facing: #Right.

	crawler process: 't'.

	self assert: (crawler isAt: -9@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test33SlidingOnSiltEndsWithinTenCells

	| crawler |

	sonar placeSiltAt: 1@3.
	crawler := SurveyCrawler at: 1@2 facing: #Up sonar: sonar random: Random new.

	crawler process: 'a'.

	self assert: ((3 to: 12) anySatisfy: [ :y | crawler isAt: 1@y facing: #Up ])! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test34SiltDoesNotAffectTurning

	| crawler |

	sonar placeSiltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 'hhg'.

	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - sonar' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test35FirmSandDoesNotAskForRandomNumbers

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 'at'.

	self assert: random requestedLimit isNil! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test36GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: '(aa)'.

	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test37EmptyGuardedRunDoesNothing

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: '()'.

	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test38BoulderInGuardedRunReturnsToInitialPosition

	| crawler |

	sonar placeBoulderAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: '(aa)' with: crawler failsWith: crawler boulderFoundErrorDescription leavingItAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test39GuardedRunUndoesAllKindOfMovements

	| crawler |

	sonar placeBoulderAt: 0@4.
	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: '(ahtga)' with: crawler failsWith: crawler boulderFoundErrorDescription leavingItAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:32:19 am (UTC)'!
test40GuardedRunUndoesRepeatedMovements

	| crawler |

	sonar placeBoulderAt: 1@1.
	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: '(a1h0ga2)' with: crawler failsWith: crawler boulderFoundErrorDescription leavingItAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test41SiltInGuardedRunReturnsToInitialPosition

	| crawler |

	sonar placeSiltAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: '(aa)' with: crawler failsWith: crawler siltFoundDuringGuardedRunErrorDescription leavingItAt: 1@2 facing: #Up.
	self assert: random requestedLimit isNil! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test42InvalidCommandInGuardedRunReturnsToInitialPosition

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: '(ahx)' with: crawler failsWith: crawler invalidCommandErrorDescription leavingItAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test43InvalidRepetitionInGuardedRunReturnsToInitialPosition

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: '(a(0' with: crawler failsWith: crawler guardedRunAlreadyStartedErrorDescription leavingItAt: 1@2 facing: #Up.
	self assertProcessing: '(a00)' with: crawler failsWith: crawler invalidCommandErrorDescription leavingItAt: 1@2 facing: #Up.
	self assertProcessing: 'a(0)' with: crawler failsWith: crawler invalidCommandErrorDescription leavingItAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test44MovementsBeforeGuardedRunAreNotUndone

	| crawler |

	sonar placeBoulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: 'a(aa)' with: crawler failsWith: crawler boulderFoundErrorDescription leavingItAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:32:19 am (UTC)'!
test45SeveralGuardedRunsCanBeProcessed

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: 'aha(aagt3)aa(ht)'.

	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test46FailingGuardedRunOnlyUndoesItsOwnMovements

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: '(a)a(ahx)' with: crawler failsWith: crawler invalidCommandErrorDescription leavingItAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test47CanNotStartAGuardedRunInsideAnotherOne

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: 'aa(aa(ht)a)' with: crawler failsWith: crawler guardedRunAlreadyStartedErrorDescription leavingItAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test48GuardedRunMustBeFinished

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: 'a(aa' with: crawler failsWith: crawler guardedRunNotFinishedErrorDescription leavingItAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test49CanNotFinishAGuardedRunThatWasNotStarted

	| crawler |

	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: 'a)a' with: crawler failsWith: crawler guardedRunNotStartedErrorDescription leavingItAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test50NextCommandSequenceIsNotGuardedAfterAFailedGuardedRun

	| crawler |

	sonar placeBoulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	self should: [ crawler process: '(a' ] raise: Error.

	self assertProcessing: 'aaa' with: crawler failsWith: crawler boulderFoundErrorDescription leavingItAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:31:39 am (UTC)'!
test51SiltOutsideGuardedRunStillSlidesAfterAGuardedRun

	| crawler |

	random := SimulatedRandom returning: 2.
	sonar placeSiltAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.

	crawler process: '(a)a'.

	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests - guarded run' stamp: 'HAW 17/Sep/2026, 8:32:29 am (UTC)'!
test52BoulderInTheMiddleOfARepetitionInGuardedRunReturnsToInitialPosition

	| crawler |

	sonar placeBoulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.

	self assertProcessing: '(a1)' with: crawler failsWith: crawler boulderFoundErrorDescription leavingItAt: 1@2 facing: #Up! !
