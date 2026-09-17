'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 8:05:51 pm'!
'Description '!
!provides: 'ISW1-2022-1C-Parcial-1' 1 0!
SystemOrganization addCategory: #'ISW1-2022-1C-Parcial-1'!
SystemOrganization addCategory: #'ISW1-2022-1C-Parcial-1-Tests'!


!classDefinition: #FormulaOneCar category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #FormulaOneCar
	instanceVariableNames: 'driver speed turbo currentSector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'FormulaOneCar class' category: #'ISW1-2022-1C-Parcial-1'!
FormulaOneCar class
	instanceVariableNames: ''!

!classDefinition: #GrandPrix category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #GrandPrix
	instanceVariableNames: 'track numberOfLaps traveledDistances'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'GrandPrix class' category: #'ISW1-2022-1C-Parcial-1'!
GrandPrix class
	instanceVariableNames: ''!

!classDefinition: #Sector category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #Sector
	instanceVariableNames: 'carPositions length'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'Sector class' category: #'ISW1-2022-1C-Parcial-1'!
Sector class
	instanceVariableNames: ''!

!classDefinition: #SectorWithTurbo category: #'ISW1-2022-1C-Parcial-1'!
Sector subclass: #SectorWithTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'SectorWithTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
SectorWithTurbo class
	instanceVariableNames: ''!

!classDefinition: #SectorWithoutTurbo category: #'ISW1-2022-1C-Parcial-1'!
Sector subclass: #SectorWithoutTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'SectorWithoutTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
SectorWithoutTurbo class
	instanceVariableNames: ''!

!classDefinition: #Track category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #Track
	instanceVariableNames: 'sectors'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'Track class' category: #'ISW1-2022-1C-Parcial-1'!
Track class
	instanceVariableNames: ''!

!classDefinition: #Turbo category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #Turbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'Turbo class' category: #'ISW1-2022-1C-Parcial-1'!
Turbo class
	instanceVariableNames: ''!

!classDefinition: #ActivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
Turbo subclass: #ActivatedTurbo
	instanceVariableNames: 'stage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ActivatedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
ActivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #DeactivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
Turbo subclass: #DeactivatedTurbo
	instanceVariableNames: 'nextStage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'DeactivatedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
DeactivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #TurboStage category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #TurboStage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboStage class' category: #'ISW1-2022-1C-Parcial-1'!
TurboStage class
	instanceVariableNames: ''!

!classDefinition: #BoostingTurboStage category: #'ISW1-2022-1C-Parcial-1'!
TurboStage subclass: #BoostingTurboStage
	instanceVariableNames: 'speedIncrement next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'BoostingTurboStage class' category: #'ISW1-2022-1C-Parcial-1'!
BoostingTurboStage class
	instanceVariableNames: ''!

!classDefinition: #ExhaustedTurboStage category: #'ISW1-2022-1C-Parcial-1'!
TurboStage subclass: #ExhaustedTurboStage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ExhaustedTurboStage class' category: #'ISW1-2022-1C-Parcial-1'!
ExhaustedTurboStage class
	instanceVariableNames: ''!

!classDefinition: #FormulaOneTest category: #'ISW1-2022-1C-Parcial-1-Tests'!
TestCase subclass: #FormulaOneTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1-Tests'!
!classDefinition: 'FormulaOneTest class' category: #'ISW1-2022-1C-Parcial-1-Tests'!
FormulaOneTest class
	instanceVariableNames: ''!


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 11:01:53 pm (UTC)'!
initializeDrivenBy: aDriver

	driver := aDriver.
	speed := 0 * kilometer / hour.
	turbo := DeactivatedTurbo unused! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:01:53 pm (UTC)'!
activateTurbo

	turbo := turbo activatedFor: self in: currentSector! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:01:53 pm (UTC)'!
deactivateTurbo

	turbo := turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 11:01:53 pm (UTC)'!
isTurboActivated

	^turbo isActivated! !

!FormulaOneCar methodsFor: 'speed' stamp: 'HAW 10/Sep/2026, 11:01:53 pm (UTC)'!
distanceTraveledIn: aTimeLapse

	^self speed * aTimeLapse! !

!FormulaOneCar methodsFor: 'speed' stamp: 'HAW 10/Sep/2026, 11:01:53 pm (UTC)'!
speed

	^turbo boost: speed! !

!FormulaOneCar methodsFor: 'speed' stamp: 'HAW 10/Sep/2026, 11:01:53 pm (UTC)'!
speed: aSpeed

	speed := aSpeed! !

!FormulaOneCar methodsFor: 'sector' stamp: 'HAW 10/Sep/2026, 11:01:53 pm (UTC)'!
atSector: aSector

	currentSector := aSector! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:01:53 pm (UTC)'!
drivenBy: aDriver

	^self new initializeDrivenBy: aDriver! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 11:02:17 pm (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track := aTrack.
	numberOfLaps := aNumberOfLaps.
	traveledDistances := Dictionary new! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:17 pm (UTC)'!
locationOf: aCar

	^traveledDistances at: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:17 pm (UTC)'!
put: aCar at: aDistance

	traveledDistances at: aCar put: aDistance.
	track put: aCar at: aDistance \\ track length! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:17 pm (UTC)'!
sectorOf: aCar

	^track sectorOf: aCar! !

!GrandPrix methodsFor: 'length' stamp: 'HAW 10/Sep/2026, 11:02:17 pm (UTC)'!
length

	^track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 10/Sep/2026, 11:02:17 pm (UTC)'!
advance: aTimeLapse

	self cars do: [ :car | self advance: car during: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
advance: aCar during: aTimeLapse

	self
		put: aCar
		at: (self locationOf: aCar) + (aCar distanceTraveledIn: aTimeLapse)! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 11:02:17 pm (UTC)'!
cars

	^traveledDistances keys! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:02:17 pm (UTC)'!
on: aTrack running: aNumberOfLaps

	self assertIsPositive: aNumberOfLaps.

	^self new initializeOn: aTrack running: aNumberOfLaps! !

!GrandPrix class methodsFor: 'assertions' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
assertIsPositive: aNumberOfLaps

	aNumberOfLaps strictlyPositive ifFalse: [
		self error: self numberOfLapsMustBePositiveErrorDescription ]! !

!GrandPrix class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:02:17 pm (UTC)'!
numberOfLapsMustBePositiveErrorDescription

	^'Number of laps must be positive'! !

!Sector methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
initializeOf: aLength

	carPositions := Dictionary new.
	length := aLength! !

!Sector methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
atStartPut: aCar

	self put: aCar at: 0 * kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
carAheadOf: aCar ifNone: aNoneBlock

	| carsAhead |

	carsAhead := self carsAheadOf: aCar.

	^carsAhead
		ifEmpty: aNoneBlock
		ifNotEmpty: [ carsAhead detectMin: [ :carAhead | self positionOf: carAhead ] ]! !

!Sector methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
carsAheadOf: aCar

	| position |

	position := self positionOf: aCar.

	^self cars select: [ :car | (self positionOf: car) > position ]! !

!Sector methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
positionOf: aCar

	^carPositions at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
put: aCar at: aPosition

	self assertIsWithinLength: aPosition.

	carPositions at: aCar put: aPosition.
	aCar atSector: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
remove: aCar

	carPositions removeKey: aCar ifAbsent: []! !

!Sector methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
cars

	^carPositions keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
includes: aCar

	^carPositions includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector methodsFor: 'assertions' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
assertIsWithinLength: aPosition

	aPosition > length ifTrue: [
		self error: self class cannotPlaceCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
of: aLength

	self assertIsPositive: aLength.

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
withTurboOf: aLength

	^SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
withoutTurboOf: aLength

	^SectorWithoutTurbo of: aLength! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
assertIsPositive: aLength

	aLength strictlyPositive ifFalse: [
		self error: self lengthMustBePositiveErrorDescription ]! !

!Sector class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription

	^'Cannot activate Turbo when opponent is more than 1 second ahead'! !

!Sector class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
cannotActivateTurboWhenNoCarAheadErrorDescription

	^'Cannot activate Turbo without opponent ahead'! !

!Sector class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
cannotPlaceCarErrorDescription

	^'Driver can not be placed outside section'! !

!Sector class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
lengthMustBePositiveErrorDescription

	^'Length must be positive'! !

!Sector class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
turboNotAllowedErrorDescription

	^'Turbo not allowed in this Sector'! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
assert: aCar isLessThanOneSecondBehind: aCarAhead

	(self timeBetween: aCar and: aCarAhead) < (1 * second) ifFalse: [
		self error:
			self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| carAhead |

	carAhead := self
		carAheadOf: aCar
		ifNone: [
			self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].

	self assert: aCar isLessThanOneSecondBehind: carAhead! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
timeBetween: aCar and: aCarAhead

	^(self timeToReachPositionOf: aCarAhead)
		- (self timeToReachPositionOf: aCar)! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
initializeWithSectors: someSectors

	sectors := someSectors copy! !

!Track methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
positionOf: aCar

	| sector |

	sector := self sectorOf: aCar.

	^(self lengthUntilStartOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
put: aCar at: aPosition

	| sector |

	self assertIsWithinLength: aPosition.

	self remove: aCar.
	sector := self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self lengthUntilStartOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
remove: aCar

	sectors do: [ :sector | sector remove: aCar ]! !

!Track methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self lengthUntilEndOf: sector) ]! !

!Track methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
sectorOf: aCar

	^self
		sectorOf: aCar
		ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
sectorOf: aCar ifNone: aNoneBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aNoneBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
cars

	^sectors
		inject: Set new
		into: [ :cars :sector | cars addAll: sector cars; yourself ]! !

!Track methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'length' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
length

	^self lengthOf: sectors! !

!Track methodsFor: 'length' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
lengthOf: someSectors

	^someSectors sum: [ :sector | sector length ] ifEmpty: [ 0 * kilometer ]! !

!Track methodsFor: 'length' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
lengthUntilEndOf: aSector

	^self lengthOf: (sectors copyUpThrough: aSector)! !

!Track methodsFor: 'length' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
lengthUntilStartOf: aSector

	^self lengthOf: (sectors copyUpTo: aSector)! !

!Track methodsFor: 'assertions' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
assertIsWithinLength: aPosition

	aPosition > self length ifTrue: [
		self error: self class cannotPlaceCarErrorDescription ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
withSectors: someSectors

	self assertIsNotEmpty: someSectors.

	^self new initializeWithSectors: someSectors! !

!Track class methodsFor: 'assertions' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
assertIsNotEmpty: someSectors

	someSectors ifEmpty: [ self error: self mustHaveSectorsErrorDescription ]! !

!Track class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
cannotPlaceCarErrorDescription

	^'Car cannot be placed in track'! !

!Track class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:02:07 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Turbo methodsFor: 'activation' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
activatedFor: aCar in: aSector

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
alreadyActivatedErrorDescription

	^'Turbo already activated'! !

!Turbo class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
alreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
initializeIn: aTurboStage

	stage := aTurboStage! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
activatedFor: aCar in: aSector

	self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
deactivated

	^DeactivatedTurbo withNextStage: stage next! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
boost: aSpeed

	^stage boost: aSpeed! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
in: aTurboStage

	^self new initializeIn: aTurboStage! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
initializeWithNextStage: aTurboStage

	nextStage := aTurboStage! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
activatedFor: aCar in: aSector

	aSector assertTurboCanBeActivatedBy: aCar.
	
	^ActivatedTurbo in: nextStage! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
deactivated

	self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
boost: aSpeed

	^aSpeed! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
unused

	^self withNextStage: TurboStage first! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
withNextStage: aTurboStage

	^self new initializeWithNextStage: aTurboStage! !

!TurboStage methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!TurboStage methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
next

	self subclassResponsibility! !

!TurboStage class methodsFor: 'stages' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
exhausted

	^ExhaustedTurboStage new! !

!TurboStage class methodsFor: 'stages' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
first

	^BoostingTurboStage increasingSpeedBy: 20 / 100 followedBy: self second! !

!TurboStage class methodsFor: 'stages' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
second

	^BoostingTurboStage increasingSpeedBy: 10 / 100 followedBy: self third! !

!TurboStage class methodsFor: 'stages' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
third

	^BoostingTurboStage increasingSpeedBy: 5 / 100 followedBy: self exhausted! !

!BoostingTurboStage methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
initializeIncreasingSpeedBy: aSpeedIncrement followedBy: aNextStage

	speedIncrement := aSpeedIncrement.
	next := aNextStage! !

!BoostingTurboStage methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
boost: aSpeed

	^aSpeed + (aSpeed * speedIncrement)! !

!BoostingTurboStage methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
next

	^next! !

!BoostingTurboStage class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
increasingSpeedBy: aSpeedIncrement followedBy: aNextStage

	^self new
		initializeIncreasingSpeedBy: aSpeedIncrement
		followedBy: aNextStage! !

!ExhaustedTurboStage methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
boost: aSpeed

	^aSpeed! !

!ExhaustedTurboStage methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 11:01:25 pm (UTC)'!
next

	^self! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test01SectorLengthMustBePositive

	self
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
test02ACarCanNotBePlacedInAKilometerGreaterThanSectorLength

	| sector outside car |

	sector := Sector withTurboOf: 10 * kilometer.
	outside := sector length + (1 * millimeter).
	car := FormulaOneCar drivenBy: #Schumacher.

	self
		should: [ sector put: car at: outside ]
		raise: Error
		withExceptionDo: [ :error |
			self
				assert: error messageText
				equals: Sector cannotPlaceCarErrorDescription.
			self deny: (sector includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	| car sector |

	sector := Sector withoutTurboOf: 10 * kilometer.
	car := FormulaOneCar drivenBy: #Schumacher.
	sector atStartPut: car.

	self
		should: [ car activateTurbo ]
		raise: Error
		withExceptionDo: [ :error |
			self
				assert: error messageText
				equals: Sector turboNotAllowedErrorDescription.
			self deny: car isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	| schumacher hamilton sector |

	sector := Sector withTurboOf: 20 * kilometer.
	schumacher := FormulaOneCar drivenBy: #Schumacher.
	hamilton := FormulaOneCar drivenBy: #Hamilton.
	sector put: schumacher at: 12 * kilometer.
	sector put: hamilton at: 13 * kilometer.

	self
		should: [ hamilton activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self
				assert: error messageText
				equals: Sector cannotActivateTurboWhenNoCarAheadErrorDescription.
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |

	schumacher := self
		carInSectorWithTurboAt: 12.95 * kilometer
		behindCarAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.

	schumacher activateTurbo.

	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |

	schumacher := self
		carInSectorWithTurboAt: 12.9 * kilometer
		behindCarAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.

	self
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self
				assert: error messageText
				equals:
					Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |

	track := Track withSectors: self sectorsOfTenAndTwentyKilometers.

	self assert: track length equals: 30 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |

	track := Track withSectors: self sectorsOfTenAndTwentyKilometers.
	outside := track length + (1 * millimeter).
	car := FormulaOneCar drivenBy: #Schumacher.

	self
		should: [ track put: car at: outside ]
		raise: Error
		withExceptionDo: [ :error |
			self
				assert: error messageText
				equals: Track cannotPlaceCarErrorDescription.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack |

	sectors := self sectorsOfTenAndTwentyKilometers.
	positionInTrack := sectors first length + (5 * kilometer).
	track := Track withSectors: sectors.
	car := FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.

	self assert: (track sectorOf: car) equals: sectors second.
	self assert: (track positionOf: car) equals: positionInTrack.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track schumacher verstappen |

	sectors := self sectorsOfTenAndTwentyKilometers.
	track := Track withSectors: sectors.
	schumacher := FormulaOneCar drivenBy: #Schumacher.
	verstappen := FormulaOneCar drivenBy: #Verstappen.

	track put: schumacher at: 10 * kilometer.
	track put: verstappen at: 30 * kilometer.

	self assert: (track includes: schumacher).
	self assert: (track includes: verstappen).
	self assert: (sectors first includes: schumacher).
	self assert: (sectors second includes: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |

	sectors := self sectorsOfTenAndTwentyKilometers.
	track := Track withSectors: sectors.
	car := FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.

	self assert: (track sectorOf: car) equals: sectors second.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |

	track := Track withSectors: self sectorsOfTenAndTwentyKilometers.
	numberOfLaps := 100.

	grandPrix := GrandPrix on: track running: numberOfLaps.

	self assert: grandPrix length equals: track length * numberOfLaps! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |

	grandPrix := self grandPrixOn: self sectorsOfTenKilometers.
	verstappen := FormulaOneCar drivenBy: #Verstappen.
	hamilton := FormulaOneCar drivenBy: #Hamilton.

	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix locationOf: hamilton) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |

	grandPrix := self grandPrixOn: self sectorsOfTenKilometers.
	verstappen := self carDrivenBy: #Verstappen runningAt: 0 * kilometer / hour.
	grandPrix put: verstappen at: 5 * kilometer.

	grandPrix advance: 10 * minute.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |

	grandPrix := self grandPrixOn: self sectorsOfTenAndTwentyKilometers.
	verstappen := self
		carDrivenBy: #Verstappen
		runningAt: 300 * kilometer / hour.
	grandPrix put: verstappen at: 0 * kilometer.

	grandPrix advance: 1 * hour.

	self assert: (grandPrix locationOf: verstappen) equals: 300 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |

	sectors := self sectorsOfTenAndTwentyKilometers.
	grandPrix := self grandPrixOn: sectors.
	verstappen := FormulaOneCar drivenBy: #Verstappen.

	grandPrix put: verstappen at: 5 * kilometer.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |

	sectors := self sectorsOfTenAndTwentyKilometers.
	grandPrix := self grandPrixOn: sectors.
	verstappen := self carDrivenBy: #Verstappen runningAt: 5 * kilometer / hour.
	grandPrix put: verstappen at: 0 * kilometer.

	grandPrix advance: 1 * hour.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix verstappen sectorA sectorB |

	sectorA := Sector withTurboOf: 10 * kilometer.
	sectorB := Sector withTurboOf: 30 * kilometer.
	grandPrix := self grandPrixOn: (OrderedCollection with: sectorA with: sectorB).
	verstappen := self
		carDrivenBy: #Verstappen
		runningAt: 15 * kilometer / hour.
	grandPrix put: verstappen at: 5 * kilometer.

	grandPrix advance: 1 * hour.

	self assert: (grandPrix locationOf: verstappen) equals: 20 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectorB! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self
		assertActivatingTurbo: 1
		timesChangesSpeedFrom: 100 * kilometer / hour
		to: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self
		assertActivatingTurbo: 2
		timesChangesSpeedFrom: 100 * kilometer / hour
		to: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self
		assertActivatingTurbo: 3
		timesChangesSpeedFrom: 100 * kilometer / hour
		to: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test23AfterThirdTurbo_TurboIsExhausted

	self
		assertActivatingTurbo: 4
		timesChangesSpeedFrom: 100 * kilometer / hour
		to: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |

	schumacher := self carAbleToActivateTurbo.
	schumacher activateTurbo.

	self
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |

	schumacher := self carAbleToActivateTurbo.

	self
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
test26GrandPrixMustHavePositiveNumberOfLaps

	| track |

	track := Track withSectors: self sectorsOfTenKilometers.

	self
		should: [ GrandPrix on: track running: 0 ]
		raise: Error
		withMessageText: GrandPrix numberOfLapsMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'sectors' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
sectorsOfTenAndTwentyKilometers

	^OrderedCollection
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'sectors' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
sectorsOfTenKilometers

	^OrderedCollection with: (Sector withTurboOf: 10 * kilometer)! !

!FormulaOneTest methodsFor: 'grand prix' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
grandPrixOn: someSectors

	^GrandPrix on: (Track withSectors: someSectors) running: 100! !

!FormulaOneTest methodsFor: 'cars' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
carAbleToActivateTurbo

	^self carAbleToActivateTurboRunningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'cars' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
carAbleToActivateTurboRunningAt: aSpeed

	^self
		carInSectorWithTurboAt: 12.99 * kilometer
		behindCarAt: 13 * kilometer
		bothRunningAt: aSpeed! !

!FormulaOneTest methodsFor: 'cars' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
carDrivenBy: aDriver runningAt: aSpeed

	^(FormulaOneCar drivenBy: aDriver) speed: aSpeed; yourself! !

!FormulaOneTest methodsFor: 'cars' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
carInSectorWithTurboAt: aPosition behindCarAt: aPositionAhead bothRunningAt: aSpeed

	| sector follower leader |

	sector := Sector withTurboOf: 24 * kilometer.
	follower := self carDrivenBy: #Schumacher runningAt: aSpeed.
	leader := self carDrivenBy: #Hamilton runningAt: aSpeed.

	sector put: follower at: aPosition.
	sector put: leader at: aPositionAhead.

	^follower! !

!FormulaOneTest methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:05:18 pm (UTC)'!
activateTurboOf: aCar times: aNumberOfActivations

	aCar activateTurbo.
	aNumberOfActivations - 1 timesRepeat: [
		aCar deactivateTurbo; activateTurbo ]! !

!FormulaOneTest methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:03:48 pm (UTC)'!
assertActivatingTurbo: aNumberOfActivations timesChangesSpeedFrom: aSpeed to: anExpectedSpeed

	| schumacher |

	schumacher := self carAbleToActivateTurboRunningAt: aSpeed.

	self activateTurboOf: schumacher times: aNumberOfActivations.

	self assert: schumacher isTurboActivated.
	self assert: schumacher speed equals: anExpectedSpeed! !
