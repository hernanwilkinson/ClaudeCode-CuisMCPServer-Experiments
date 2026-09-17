'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 9:47:23 am'!
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

!classDefinition: #CrawlerRunState category: #SurveyCrawler!
Object subclass: #CrawlerRunState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'CrawlerRunState class' category: #SurveyCrawler!
CrawlerRunState class
	instanceVariableNames: ''!

!classDefinition: #GuardedRun category: #SurveyCrawler!
CrawlerRunState subclass: #GuardedRun
	instanceVariableNames: 'undoActions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'GuardedRun class' category: #SurveyCrawler!
GuardedRun class
	instanceVariableNames: ''!

!classDefinition: #UnguardedRun category: #SurveyCrawler!
CrawlerRunState subclass: #UnguardedRun
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
	instanceVariableNames: 'position facing sonar random runState'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler'!
!classDefinition: 'SurveyCrawler class' category: #SurveyCrawler!
SurveyCrawler class
	instanceVariableNames: 'facings'!

!classDefinition: #RandomSimulator category: #'SurveyCrawler-Tests'!
Object subclass: #RandomSimulator
	instanceVariableNames: 'number requestedLimit'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'RandomSimulator class' category: #'SurveyCrawler-Tests'!
RandomSimulator class
	instanceVariableNames: ''!

!classDefinition: #SonarSimulator category: #'SurveyCrawler-Tests'!
Object subclass: #SonarSimulator
	instanceVariableNames: 'grounds'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SonarSimulator class' category: #'SurveyCrawler-Tests'!
SonarSimulator class
	instanceVariableNames: ''!

!classDefinition: #SurveyCrawlerTest category: #'SurveyCrawler-Tests'!
TestCase subclass: #SurveyCrawlerTest
	instanceVariableNames: 'sonar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SurveyCrawler-Tests'!
!classDefinition: 'SurveyCrawlerTest class' category: #'SurveyCrawler-Tests'!
SurveyCrawlerTest class
	instanceVariableNames: ''!


!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
clockwise

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
counterClockwise

	self subclassResponsibility! !

!CrawlerFacing methodsFor: 'testing' stamp: 'HAW 2/Jul/2018, 10:07:42 pm (UTC)'!
isFacing: aFacingName

	^self class isFor: aFacingName! !

!CrawlerFacing methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
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

!CrawlerFacingDown methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
direction

	^0@-1! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
clockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingDown methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
counterClockwise

	^CrawlerFacingRight new! !

!CrawlerFacingDown class methodsFor: 'facing name' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
facingName

	^#Down! !

!CrawlerFacingLeft methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
direction

	^-1@0! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
clockwise

	^CrawlerFacingUp new! !

!CrawlerFacingLeft methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
counterClockwise

	^CrawlerFacingDown new! !

!CrawlerFacingLeft class methodsFor: 'facing name' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
facingName

	^#Left! !

!CrawlerFacingRight methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
direction

	^1@0! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
clockwise

	^CrawlerFacingDown new! !

!CrawlerFacingRight methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
counterClockwise

	^CrawlerFacingUp new! !

!CrawlerFacingRight class methodsFor: 'facing name' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
facingName

	^#Right! !

!CrawlerFacingUp methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
direction

	^0@1! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
clockwise

	^CrawlerFacingRight new! !

!CrawlerFacingUp methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
counterClockwise

	^CrawlerFacingLeft new! !

!CrawlerFacingUp class methodsFor: 'facing name' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
facingName

	^#Up! !

!CrawlerRunState methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
abortOn: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
assertIsFinished

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
finishGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
startGuardedRunOf: aCrawler

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'movements' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
crawlerSlid

	self subclassResponsibility! !

!CrawlerRunState methodsFor: 'movements' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
recordUndo: anUndoAction

	self subclassResponsibility! !

!GuardedRun methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
initialize

	undoActions := OrderedCollection new! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
abortOn: aCrawler

	undoActions reverseDo: [ :anUndoAction | anUndoAction value ].
	aCrawler finishGuardedRun! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
assertIsFinished

	self error: SurveyCrawler unfinishedGuardedRunErrorDescription! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
finishGuardedRunOf: aCrawler

	aCrawler finishGuardedRun! !

!GuardedRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
startGuardedRunOf: aCrawler

	self error: SurveyCrawler nestedGuardedRunErrorDescription! !

!GuardedRun methodsFor: 'movements' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
crawlerSlid

	self error: SurveyCrawler siltFoundInGuardedRunErrorDescription! !

!GuardedRun methodsFor: 'movements' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
recordUndo: anUndoAction

	undoActions add: anUndoAction! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
abortOn: aCrawler! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
assertIsFinished! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
finishGuardedRunOf: aCrawler

	self error: SurveyCrawler guardedRunNotStartedErrorDescription! !

!UnguardedRun methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
startGuardedRunOf: aCrawler

	aCrawler startGuardedRun! !

!UnguardedRun methodsFor: 'movements' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
crawlerSlid! !

!UnguardedRun methodsFor: 'movements' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
recordUndo: anUndoAction! !

!SeabedGround methodsFor: 'crawler movement' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
move: aCrawler towards: aDirection

	self subclassResponsibility! !

!SeabedGround methodsFor: 'crawler movement' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
turn: aCrawler to: aFacing

	self subclassResponsibility! !

!BoulderGround methodsFor: 'crawler movement' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
move: aCrawler towards: aDirection

	aCrawler signalBoulderFound! !

!BoulderGround methodsFor: 'crawler movement' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
turn: aCrawler to: aFacing

	aCrawler signalBoulderFound! !

!FirmSandGround methodsFor: 'crawler movement' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
move: aCrawler towards: aDirection

	aCrawler moveBy: aDirection! !

!FirmSandGround methodsFor: 'crawler movement' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
turn: aCrawler to: aFacing

	aCrawler face: aFacing! !

!SiltGround methodsFor: 'crawler movement' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
move: aCrawler towards: aDirection

	aCrawler slideTowards: aDirection! !

!SiltGround methodsFor: 'crawler movement' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
turn: aCrawler to: aFacing

	aCrawler face: aFacing! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:48:45 pm (UTC)'!
invalidCommandErrorDescription
	
	^'Invalid command'! !

!SurveyCrawler methodsFor: 'exceptions' stamp: 'HAW 30/Jun/2018, 10:50:26 pm (UTC)'!
signalInvalidCommand
	
	self error: self invalidCommandErrorDescription ! !

!SurveyCrawler methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
initializeAt: aPosition facing: aFacing sonar: aSonar random: aRandom

	position := aPosition.
	facing := aFacing.
	sonar := aSonar.
	random := aRandom.
	runState := UnguardedRun new! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
turnClockwise

	self turnTo: facing clockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
turnCounterClockwise

	self turnTo: facing counterClockwise! !

!SurveyCrawler methodsFor: 'facing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
turnTo: aFacing

	(sonar groundAt: position) turn: self to: aFacing! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:19 pm (UTC)'!
isAdvanceCommand: aCommand

	^aCommand = $a ! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 22/Aug/2019, 3:00:30 pm (UTC)'!
isAt: aPosition facing: aFacingName

	^position = aPosition and: [ facing isFacing: aFacingName ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
isFinishGuardedRunCommand: aCommand

	^aCommand = $)! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
isRepeatableCommand: aCommand

	^(self isAdvanceCommand: aCommand)
		or: [ (self isRetreatCommand: aCommand)
		or: [ (self isTurnClockwiseCommand: aCommand)
		or: [ self isTurnCounterClockwiseCommand: aCommand ] ] ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
isRepetitionNextIn: commands

	^commands atEnd not and: [ commands peek isDigit ]! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:16:51 pm (UTC)'!
isRetreatCommand: aCommand

	^aCommand = $t! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
isStartGuardedRunCommand: aCommand

	^aCommand = $(! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:21 pm (UTC)'!
isTurnClockwiseCommand: aCommand

	^aCommand = $h! !

!SurveyCrawler methodsFor: 'testing' stamp: 'HAW 6/Jul/2018, 9:17:51 pm (UTC)'!
isTurnCounterClockwiseCommand: aCommand

	^aCommand = $g! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
advance

	self moveTowards: facing direction! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
moveTowards: aDirection

	(sonar groundAt: position + aDirection) move: self towards: aDirection! !

!SurveyCrawler methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
retreat

	self moveTowards: facing direction negated! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
process: aSequenceOfCommands

	| commands |
	
	commands := ReadStream on: aSequenceOfCommands.
	[ [ commands atEnd ] whileFalse: [ self processNextCommandFrom: commands ].
	runState assertIsFinished ]
		on: Error
		do: [ :anError |
			runState abortOn: self.
			anError pass ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
processCommand: aCommand

	(self isAdvanceCommand: aCommand) ifTrue: [ ^ self advance ].
	(self isRetreatCommand: aCommand) ifTrue: [ ^ self retreat ].
	(self isTurnClockwiseCommand: aCommand) ifTrue: [ ^ self turnClockwise ].
	(self isTurnCounterClockwiseCommand: aCommand) ifTrue: [ ^ self turnCounterClockwise ].
	(self isStartGuardedRunCommand: aCommand) ifTrue: [ ^ runState startGuardedRunOf: self ].
	(self isFinishGuardedRunCommand: aCommand) ifTrue: [ ^ runState finishGuardedRunOf: self ].

	self signalInvalidCommand.! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
processNextCommandFrom: commands

	| command |
	
	command := commands next.
	(self timesToProcess: command from: commands) timesRepeat: [ self processCommand: command ]! !

!SurveyCrawler methodsFor: 'command processing' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
timesToProcess: aCommand from: commands

	^((self isRepeatableCommand: aCommand) and: [ self isRepetitionNextIn: commands ])
		ifTrue: [ 1 + (commands next digitValue + 2) ]
		ifFalse: [ 1 ]! !

!SurveyCrawler methodsFor: 'ground movements' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
face: aFacing

	| previousFacing |
	
	previousFacing := facing.
	facing := aFacing.
	runState recordUndo: [ facing := previousFacing ]! !

!SurveyCrawler methodsFor: 'ground movements' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
moveBy: aDisplacement

	position := position + aDisplacement.
	runState recordUndo: [ position := position - aDisplacement ]! !

!SurveyCrawler methodsFor: 'ground movements' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
signalBoulderFound

	self error: self class boulderFoundErrorDescription! !

!SurveyCrawler methodsFor: 'ground movements' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
slideTowards: aDirection

	self moveBy: aDirection * (random nextInteger: self class slideLimit).
	runState crawlerSlid! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
finishGuardedRun

	runState := UnguardedRun new! !

!SurveyCrawler methodsFor: 'guarded run' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
startGuardedRun

	runState := GuardedRun new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar

	^self at: aPosition facing: aFacingName sonar: aSonar random: Random new! !

!SurveyCrawler class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
at: aPosition facing: aFacingName sonar: aSonar random: aRandom

	^self new initializeAt: aPosition facing: (CrawlerFacing facing: aFacingName) sonar: aSonar random: aRandom! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
boulderFoundErrorDescription

	^'A boulder was found'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
guardedRunNotStartedErrorDescription

	^'Can not finish a guarded run that was not started'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
invalidFacingErrorDescription

	^'Invalid facing'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
nestedGuardedRunErrorDescription

	^'A guarded run can not be started inside another guarded run'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
siltFoundInGuardedRunErrorDescription

	^'Silt was found during a guarded run'! !

!SurveyCrawler class methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
unfinishedGuardedRunErrorDescription

	^'The guarded run was not finished'! !

!SurveyCrawler class methodsFor: 'sliding' stamp: 'HAW 16/Sep/2026, 12:46:53 pm (UTC)'!
slideLimit

	^10! !

!RandomSimulator methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
initializeReturning: aNumber

	number := aNumber! !

!RandomSimulator methodsFor: 'generating' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
nextInteger: aLimit

	requestedLimit := aLimit.
	^number! !

!RandomSimulator methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
requestedLimit

	^requestedLimit! !

!RandomSimulator class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
returning: aNumber

	^self new initializeReturning: aNumber! !

!SonarSimulator methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
initialize

	grounds := Dictionary new! !

!SonarSimulator methodsFor: 'configuring' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
boulderAt: aPosition

	grounds at: aPosition put: BoulderGround new! !

!SonarSimulator methodsFor: 'configuring' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
siltAt: aPosition

	grounds at: aPosition put: SiltGround new! !

!SonarSimulator methodsFor: 'sensing' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
groundAt: aPosition

	^grounds at: aPosition ifAbsent: [ FirmSandGround new ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test01EmptyCommandStringDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: ''.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test02aWhenFacingUpIncrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test03tWhenFacingUpDecrementsY

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 1@1 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test04hWhenFacingUpMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test05gWhenFacingUpMakesCrawlerFaceLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test06InvalidCommandsAreNotProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'x' with: crawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test07MoreThanOneCommandAreProcessedCorrectly

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@4 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test08aWhenFacingRightIncrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 2@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test09tWhenFacingRightDecrementsX

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 0@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test10hWhenFacingRightMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'h'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test11gWhenFacingRightMakesCrawlerFaceUp

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Right.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test12athAreProcessedCorrectlyWhenFacingDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 1@1 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test13gWhenFacingDownMakesCrawlerFaceRight

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Down.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test14athAreProcessedCorrectlyWhenFacingLeft

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'aath'.
	
	self assert: (crawler isAt: 0@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test15gWhenFacingLeftMakesCrawlerFaceDown

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Left.
	
	crawler process: 'g'.
	
	self assert: (crawler isAt: 1@2 facing: #Down)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test16CanNotCreateACrawlerWithAnInvalidFacing

	self 
		should: [ SurveyCrawler at: 1@2 facing: #X sonar: sonar ]
		raise: Error
		withExceptionDo: [:anError |
			self assert: SurveyCrawler invalidFacingErrorDescription equals: anError messageText ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test17DigitAfterAdvanceRepeatsItDigitPlusTwoMoreTimes

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a0'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test18RepetitionUsesTheDigitValue

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a9'.
	
	self assert: (crawler isAt: 1@14 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test19DigitAfterRetreatRepeatsIt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 't1'.
	
	self assert: (crawler isAt: 1@-2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test20DigitAfterTurnClockwiseRepeatsIt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'h2'.
	
	self assert: (crawler isAt: 1@2 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test21DigitAfterTurnCounterClockwiseRepeatsIt

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'g1'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test22CommandsAfterARepetitionAreProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a0ha'.
	
	self assert: (crawler isAt: 2@5 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test23DigitWithoutPreviousCommandIsInvalid

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '3' with: crawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test24RepetitionIsASingleDigit

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a00' with: crawler invalidCommandErrorDescription andBeAt: 1@5 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test25DigitCanNotRepeatAnInvalidCommand

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'x2' with: crawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test26DigitCanNotRepeatAGuardedRunStart

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a(2a)' with: crawler invalidCommandErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test27DigitCanNotRepeatAGuardedRunFinish

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(a)2' with: crawler invalidCommandErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test28CanNotAdvanceToABoulder

	| crawler |
	
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test29CanNotRetreatToABoulder

	| crawler |
	
	sonar boulderAt: 1@1.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 't' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test30CanNotTurnClockwiseOnABoulder

	| crawler |
	
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'h' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test31CanNotTurnCounterClockwiseOnABoulder

	| crawler |
	
	sonar boulderAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'g' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test32BouldersOutOfTheWayDoNotAffectTheCrawler

	| crawler |
	
	sonar boulderAt: 2@2; boulderAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@3 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test33CommandsBeforeABoulderOutsideAGuardedRunAreKept

	| crawler |
	
	sonar boulderAt: 2@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'haga' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 2@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test34RepetitionStopsAtABoulder

	| crawler |
	
	sonar boulderAt: 1@5.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a5' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test35CommandsAfterABoulderAreNotProcessed

	| crawler |
	
	sonar boulderAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'ah' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test36AdvancingToSiltSlidesARandomNumberOfCells

	| crawler random |
	
	sonar siltAt: 1@3.
	random := RandomSimulator returning: 4.
	crawler := self crawlerAt: 1@2 facing: #Up random: random.
	
	crawler process: 'a'.
	
	self assert: (crawler isAt: 1@6 facing: #Up).
	self assert: SurveyCrawler slideLimit equals: random requestedLimit.
	self assert: 10 equals: SurveyCrawler slideLimit! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test37RetreatingToSiltSlidesBackwards

	| crawler |
	
	sonar siltAt: 3@2.
	crawler := self crawlerAt: 2@2 facing: #Left random: (RandomSimulator returning: 3).
	
	crawler process: 't'.
	
	self assert: (crawler isAt: 5@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test38SlidingOnSiltEndsBetweenOneAndTenCellsAway

	| crawler |
	
	sonar siltAt: 1@3.
	100 timesRepeat: [
		crawler := self crawlerAt: 1@2 facing: #Up random: Random new.
		crawler process: 'a'.
		self assert: ((3 to: 12) anySatisfy: [ :y | crawler isAt: 1@y facing: #Up ]) ]! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test39TurningOnSiltIsNotAffected

	| crawler |
	
	sonar siltAt: 1@2.
	crawler := self crawlerAt: 1@2 facing: #Up random: (RandomSimulator returning: 5).
	
	crawler process: 'hgg'.
	
	self assert: (crawler isAt: 1@2 facing: #Left)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test40OnlyMovingToSiltMakesTheCrawlerSlide

	| crawler |
	
	sonar siltAt: 1@3.
	crawler := self crawlerAt: 1@2 facing: #Up random: (RandomSimulator returning: 2).
	
	crawler process: 'aa'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test41GuardedRunWithoutProblemsProcessesItsCommands

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: '(aha)'.
	
	self assert: (crawler isAt: 2@3 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test42EmptyGuardedRunDoesNothing

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: '()'.
	
	self assert: (crawler isAt: 1@2 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test43BoulderInGuardedRunReturnsToItsStart

	| crawler |
	
	sonar boulderAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(aa)' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test44AllMovementsAndTurnsOfAGuardedRunAreUndone

	| crawler |
	
	sonar boulderAt: 1@1.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(hagtga)' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test45RepeatedCommandsOfAGuardedRunAreUndone

	| crawler |
	
	sonar boulderAt: 1@7.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(h1g1a3)' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test46SiltInGuardedRunReturnsToItsStart

	| crawler |
	
	sonar siltAt: 2@2.
	crawler := self crawlerAt: 1@2 facing: #Up random: (RandomSimulator returning: 3).
	
	self should: crawler failProcessing: '(ha)' with: SurveyCrawler siltFoundInGuardedRunErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test47InvalidCommandInGuardedRunReturnsToItsStart

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(ahx)' with: crawler invalidCommandErrorDescription andBeAt: 1@2 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test48CommandsBeforeAGuardedRunAreNotUndone

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'ah(ax)' with: crawler invalidCommandErrorDescription andBeAt: 1@3 facing: #Right! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test49CanNotStartAGuardedRunInsideAnotherOne

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'aa(aa(ht)a)' with: SurveyCrawler nestedGuardedRunErrorDescription andBeAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test50GuardedRunMustBeFinished

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a(aa' with: SurveyCrawler unfinishedGuardedRunErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test51GuardedRunStartAloneIsNotFinished

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a(' with: SurveyCrawler unfinishedGuardedRunErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test52CanNotFinishAGuardedRunThatWasNotStarted

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: 'a)a' with: SurveyCrawler guardedRunNotStartedErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test53SeveralGuardedRunsCanBeProcessed

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	crawler process: 'aha(aagt3)aa(ht)'.
	
	self assert: (crawler isAt: 3@-1 facing: #Right)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test54FailingGuardedRunReturnsToItsOwnStart

	| crawler |
	
	sonar boulderAt: 1@6.
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(a)a(aa)' with: SurveyCrawler boulderFoundErrorDescription andBeAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test55FinishedGuardedRunIsNotUndoneByLaterErrors

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	
	self should: crawler failProcessing: '(aa)x' with: crawler invalidCommandErrorDescription andBeAt: 1@4 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test56SiltOutsideAGuardedRunSlidesAfterAGuardedRunFinished

	| crawler |
	
	sonar siltAt: 1@4.
	crawler := self crawlerAt: 1@2 facing: #Up random: (RandomSimulator returning: 2).
	
	crawler process: '(a)a'.
	
	self assert: (crawler isAt: 1@5 facing: #Up)! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test57CrawlerIsNotInAGuardedRunAfterAFailedOne

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self should: [ crawler process: '(ax' ] raise: Error - MessageNotUnderstood.
	
	self should: crawler failProcessing: 'a)' with: SurveyCrawler guardedRunNotStartedErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
test58GuardedRunCanNotSpanMoreThanOneCommandSequence

	| crawler |
	
	crawler := self crawlerAt: 1@2 facing: #Up.
	self should: [ crawler process: '(a' ] raise: Error - MessageNotUnderstood.
	
	self should: crawler failProcessing: 'a)' with: SurveyCrawler guardedRunNotStartedErrorDescription andBeAt: 1@3 facing: #Up! !

!SurveyCrawlerTest methodsFor: 'setUp' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
setUp

	sonar := SonarSimulator new! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
crawlerAt: aPosition facing: aFacingName

	^SurveyCrawler at: aPosition facing: aFacingName sonar: sonar! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
crawlerAt: aPosition facing: aFacingName random: aRandom

	^SurveyCrawler at: aPosition facing: aFacingName sonar: sonar random: aRandom! !

!SurveyCrawlerTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:46:55 pm (UTC)'!
should: aCrawler failProcessing: aSequenceOfCommands with: anErrorDescription andBeAt: aPosition facing: aFacingName

	self 
		should: [ aCrawler process: aSequenceOfCommands ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorDescription.
			self assert: (aCrawler isAt: aPosition facing: aFacingName) ]! !
