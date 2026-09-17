'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 10:06:00 pm'!
'Description '!
!provides: 'ISW1-2022-1C-Parcial-1' 1 0!
SystemOrganization addCategory: #'ISW1-2022-1C-Parcial-1'!
SystemOrganization addCategory: #'ISW1-2022-1C-Parcial-1-Tests'!


!classDefinition: #FormulaOneCar category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #FormulaOneCar
	instanceVariableNames: 'driver speed traveledDistance currentSector turbo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'FormulaOneCar class' category: #'ISW1-2022-1C-Parcial-1'!
FormulaOneCar class
	instanceVariableNames: ''!

!classDefinition: #GrandPrix category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #GrandPrix
	instanceVariableNames: 'track numberOfLaps'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'GrandPrix class' category: #'ISW1-2022-1C-Parcial-1'!
GrandPrix class
	instanceVariableNames: ''!

!classDefinition: #Sector category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #Sector
	instanceVariableNames: 'length carPositions'
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
	instanceVariableNames: 'boost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'Turbo class' category: #'ISW1-2022-1C-Parcial-1'!
Turbo class
	instanceVariableNames: ''!

!classDefinition: #ActivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
Turbo subclass: #ActivatedTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ActivatedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
ActivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #DeactivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
Turbo subclass: #DeactivatedTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'DeactivatedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
DeactivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #TurboBoost category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #TurboBoost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost class
	instanceVariableNames: ''!

!classDefinition: #ExhaustedTurboBoost category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost subclass: #ExhaustedTurboBoost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ExhaustedTurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
ExhaustedTurboBoost class
	instanceVariableNames: ''!

!classDefinition: #FirstTurboBoost category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost subclass: #FirstTurboBoost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'FirstTurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
FirstTurboBoost class
	instanceVariableNames: ''!

!classDefinition: #SecondTurboBoost category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost subclass: #SecondTurboBoost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'SecondTurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
SecondTurboBoost class
	instanceVariableNames: ''!

!classDefinition: #ThirdTurboBoost category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost subclass: #ThirdTurboBoost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ThirdTurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
ThirdTurboBoost class
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


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 1:02:40 am (UTC)'!
initializeDrivenBy: aDriver

	driver := aDriver.
	speed := 0 * kilometer / hour.
	traveledDistance := 0 * kilometer.
	turbo := DeactivatedTurbo unused! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 1:02:44 am (UTC)'!
advanceDuring: aTimeLapse

	traveledDistance := traveledDistance + (self speed * aTimeLapse)! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 1:02:46 am (UTC)'!
atSector: aSector

	currentSector := aSector! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 1:02:45 am (UTC)'!
moveTo: aDistance

	traveledDistance := aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 1:02:47 am (UTC)'!
activateTurbo

	turbo := turbo activatedIn: currentSector by: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 1:02:48 am (UTC)'!
deactivateTurbo

	turbo := turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 1:02:49 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 1:02:41 am (UTC)'!
speed

	^turbo boost: speed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 1:02:42 am (UTC)'!
speed: aSpeed

	speed := aSpeed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 1:02:43 am (UTC)'!
traveledDistance

	^traveledDistance! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 1:02:56 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track := aTrack.
	numberOfLaps := aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:02 am (UTC)'!
lapDistanceOf: aCar

	^(self locationOf: aCar) \\ track length! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:03 am (UTC)'!
locationOf: aCar

	^aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:01 am (UTC)'!
placeOnTrack: aCar

	track put: aCar at: (self lapDistanceOf: aCar)! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:00 am (UTC)'!
put: aCar at: aDistance

	aCar moveTo: aDistance.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:04 am (UTC)'!
sectorOf: aCar

	^track sectorOf: aCar! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 11/Sep/2026, 1:02:57 am (UTC)'!
advance: aTimeLapse

	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 11/Sep/2026, 1:02:58 am (UTC)'!
relocate: aCar after: aTimeLapse

	aCar advanceDuring: aTimeLapse.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 1:03:05 am (UTC)'!
length

	^track length * numberOfLaps! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
on: aTrack running: aNumberOfLaps

	^self new initializeOn: aTrack running: aNumberOfLaps! !

!Sector methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 1:01:16 am (UTC)'!
initializeOf: aLength

	length := aLength.
	carPositions := Dictionary new! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:01:17 am (UTC)'!
assertIsValidPosition: aPosition

	length < aPosition ifTrue: [ self error: self class cannotPlaceCarErrorDescription ]! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:01:18 am (UTC)'!
atStartPut: aCar

	self put: aCar at: 0 * kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:01:19 am (UTC)'!
positionOf: aCar

	^carPositions at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:01:20 am (UTC)'!
put: aCar at: aPosition

	self assertIsValidPosition: aPosition.

	carPositions at: aCar put: aPosition.
	aCar atSector: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:01:21 am (UTC)'!
remove: aCar

	carPositions removeKey: aCar ifAbsent: []! !

!Sector methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 1:01:22 am (UTC)'!
cars

	^carPositions keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 2/May/2022, 5:26:16 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 1:01:23 am (UTC)'!
includes: aCar

	^carPositions includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 1:01:24 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:01:43 am (UTC)'!
of: aLength

	self assertIsPositive: aLength.

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:01:44 am (UTC)'!
withTurboOf: aLength

	^SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:01:45 am (UTC)'!
withoutTurboOf: aLength

	^SectorWithoutTurbo of: aLength! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 1:01:46 am (UTC)'!
assertIsPositive: aLength

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 11:24:41 pm (UTC)'!
cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription
	
	^ 'Cannot activate Turbo when opponent is more than 1 second ahead'! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 11:13:07 pm (UTC)'!
cannotActivateTurboWhenNoCarAheadErrorDescription
	
	^ 'Cannot activate Turbo without opponent ahead'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:01:47 am (UTC)'!
cannotPlaceCarErrorDescription

	^'Driver can not be placed outside section'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:05:20 pm (UTC)'!
lengthMustBePositiveErrorDescription

	^ 'Length must be positive'! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 12:54:45 pm (UTC)'!
turboNotAllowedErrorDescription
	
	^ 'Turbo not allowed in this Sector'! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 1:01:30 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| carAhead |

	carAhead := self
		carAheadOf: aCar
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].

	self assertIsCloseEnough: aCar toOvertake: carAhead! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 11/Sep/2026, 1:01:32 am (UTC)'!
assertIsCloseEnough: aCar toOvertake: aCarAhead

	(self timeGapBetween: aCar and: aCarAhead) < self maximumTimeGapToActivateTurbo
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 11/Sep/2026, 1:01:37 am (UTC)'!
carAheadOf: aCar ifNone: aBlock

	^(self carsAheadOf: aCar)
		ifEmpty: aBlock
		ifNotEmpty: [ :carsAhead | carsAhead detectMin: [ :carAhead | self positionOf: carAhead ] ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 11/Sep/2026, 1:01:39 am (UTC)'!
carsAheadOf: aCar

	^self cars select: [ :car | (self positionOf: car) > (self positionOf: aCar) ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 11/Sep/2026, 1:01:33 am (UTC)'!
maximumTimeGapToActivateTurbo

	^1 * second! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 11/Sep/2026, 1:01:34 am (UTC)'!
timeGapBetween: aCar and: aCarAhead

	^(self timeToReachPositionOf: aCarAhead) - (self timeToReachPositionOf: aCar)! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 11/Sep/2026, 1:01:35 am (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 1:01:40 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 1:02:27 am (UTC)'!
initializeWithSectors: aCollectionOfSectors

	sectors := aCollectionOfSectors copy! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:02:10 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlaceCarErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:02:08 am (UTC)'!
positionOf: aCar

	| sector |

	sector := self sectorOf: aCar.

	^(self distanceToStartOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:02:09 am (UTC)'!
put: aCar at: aPosition

	| sector |

	self assertIsInside: aPosition.

	self remove: aCar.
	sector := self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self distanceToStartOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:02:12 am (UTC)'!
remove: aCar

	sectors do: [ :sector | sector remove: aCar ]! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:02:13 am (UTC)'!
sectorOf: aCar

	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:02:14 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 1:02:04 am (UTC)'!
cars

	^sectors inject: Set new into: [ :cars :sector | cars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 1:02:05 am (UTC)'!
length

	^sectors sum: [ :sector | sector length ]! !

!Track methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 1:02:06 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'sectors - private' stamp: 'HAW 11/Sep/2026, 1:02:17 am (UTC)'!
distanceToEndOf: aSector

	^(self sectorsUpTo: aSector) sum: [ :sector | sector length ]! !

!Track methodsFor: 'sectors - private' stamp: 'HAW 11/Sep/2026, 1:02:16 am (UTC)'!
distanceToStartOf: aSector

	^(self distanceToEndOf: aSector) - aSector length! !

!Track methodsFor: 'sectors - private' stamp: 'HAW 11/Sep/2026, 1:02:15 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self distanceToEndOf: sector) ]! !

!Track methodsFor: 'sectors - private' stamp: 'HAW 11/Sep/2026, 1:02:18 am (UTC)'!
sectorsUpTo: aSector

	^sectors copyFrom: 1 to: (sectors indexOf: aSector)! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:02:22 am (UTC)'!
withSectors: aCollectionOfSectors

	self assertHasSectors: aCollectionOfSectors.

	^self new initializeWithSectors: aCollectionOfSectors! !

!Track class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:02:25 am (UTC)'!
cannotPlaceCarErrorDescription

	^'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:02:26 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Track class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 1:02:24 am (UTC)'!
assertHasSectors: aCollectionOfSectors

	aCollectionOfSectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ]! !

!Turbo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 1:00:47 am (UTC)'!
initializeBoosting: aTurboBoost

	boost := aTurboBoost! !

!Turbo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 1:00:48 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:49 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 1:00:50 am (UTC)'!
activatedIn: aSector by: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 1:00:50 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:00:43 am (UTC)'!
boosting: aTurboBoost

	^self new initializeBoosting: aTurboBoost! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:00:44 am (UTC)'!
alreadyActivatedErrorDescription

	^'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:00:46 am (UTC)'!
alreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 1:00:53 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:54 am (UTC)'!
boost: aSpeed

	^boost applyTo: aSpeed! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 1:00:55 am (UTC)'!
activatedIn: aSector by: aCar

	^self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 1:00:56 am (UTC)'!
deactivated

	^DeactivatedTurbo boosting: boost next! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 1:00:58 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:01:00 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 1:01:01 am (UTC)'!
activatedIn: aSector by: aCar

	aSector assertTurboCanBeActivatedBy: aCar.

	^ActivatedTurbo boosting: boost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 1:01:02 am (UTC)'!
deactivated

	^self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:00:57 am (UTC)'!
unused

	^self boosting: FirstTurboBoost new! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:29 am (UTC)'!
applyTo: aSpeed

	^aSpeed * self speedFactor! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:31 am (UTC)'!
next

	self subclassResponsibility! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:30 am (UTC)'!
speedFactor

	self subclassResponsibility! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:40 am (UTC)'!
next

	^self! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:40 am (UTC)'!
speedFactor

	^1! !

!FirstTurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:35 am (UTC)'!
next

	^SecondTurboBoost new! !

!FirstTurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:34 am (UTC)'!
speedFactor

	^120/100! !

!SecondTurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:37 am (UTC)'!
next

	^ThirdTurboBoost new! !

!SecondTurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:36 am (UTC)'!
speedFactor

	^110/100! !

!ThirdTurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:39 am (UTC)'!
next

	^ExhaustedTurboBoost new! !

!ThirdTurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 1:00:38 am (UTC)'!
speedFactor

	^105/100! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:36 am (UTC)'!
test01SectorLengthMustBePositive

	self
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:38 am (UTC)'!
test02ACarCanNotBePlacedInAKilometerGreaterThanSectorLength

	| sector outside car |

	sector := Sector withTurboOf: 10 * kilometer.
	outside := sector length + (1 * millimeter).
	car := FormulaOneCar drivenBy: #Schumacher.

	self
		should: [ sector put: car at: outside ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector cannotPlaceCarErrorDescription equals: error messageText.
			self deny: (sector includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:40 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	| car sector |

	sector := Sector withoutTurboOf: 10 * kilometer.
	car := FormulaOneCar drivenBy: #Schumacher.
	sector atStartPut: car.

	self
		should: [ car activateTurbo ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector turboNotAllowedErrorDescription equals: error messageText.
			self deny: car isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:43 am (UTC)'!
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
			self assert: Sector cannotActivateTurboWhenNoCarAheadErrorDescription equals: error messageText.
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:45 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |

	schumacher := self
		schumacherAt: 12.95 * kilometer
		behindHamiltonAt: 13 * kilometer
		bothDrivingAt: 300 * kilometer / hour.

	schumacher activateTurbo.

	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:48 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |

	schumacher := self
		schumacherAt: 12.9 * kilometer
		behindHamiltonAt: 13 * kilometer
		bothDrivingAt: 300 * kilometer / hour.

	self
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self
				assert: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription
				equals: error messageText.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 2/May/2022, 12:16:40 pm (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:50 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |

	track := Track withSectors: self sectorsOfTenAndTwentyKilometers.

	self assert: 30 * kilometer equals: track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:52 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |

	track := Track withSectors: self sectorsOfTenAndTwentyKilometers.
	outside := track length + (1 * millimeter).
	car := FormulaOneCar drivenBy: #Schumacher.

	self
		should: [ track put: car at: outside ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlaceCarErrorDescription equals: error messageText.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:55 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack |

	sectors := self sectorsOfTenAndTwentyKilometers.
	positionInTrack := sectors first length + (5 * kilometer).
	track := Track withSectors: sectors.
	car := FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.

	self assert: sectors second equals: (track sectorOf: car).
	self assert: positionInTrack equals: (track positionOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:58 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:05:00 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |

	sectors := self sectorsOfTenAndTwentyKilometers.
	track := Track withSectors: sectors.
	car := FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.

	self assert: sectors second equals: (track sectorOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:05:02 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |

	track := Track withSectors: self sectorsOfTenAndTwentyKilometers.
	numberOfLaps := 100.

	grandPrix := GrandPrix on: track running: numberOfLaps.

	self assert: track length * numberOfLaps equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:05:07 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |

	grandPrix := self grandPrixOnATenKilometersTrack.
	verstappen := FormulaOneCar drivenBy: #Verstappen.
	hamilton := FormulaOneCar drivenBy: #Hamilton.

	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:05:09 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |

	grandPrix := self grandPrixOnATenKilometersTrack.
	verstappen := self carDrivenBy: #Verstappen drivingAt: 0 * kilometer / hour.
	grandPrix put: verstappen at: 5 * kilometer.

	grandPrix advance: 10 * minute.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:05:11 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |

	grandPrix := self grandPrixOn: self sectorsOfTenAndTwentyKilometers.
	verstappen := self carDrivenBy: #Verstappen drivingAt: 300 * kilometer / hour.
	grandPrix put: verstappen at: 0 * kilometer.

	grandPrix advance: 1 * hour.

	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:05:14 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |

	sectors := self sectorsOfTenAndTwentyKilometers.
	grandPrix := self grandPrixOn: sectors.
	verstappen := FormulaOneCar drivenBy: #Verstappen.

	grandPrix put: verstappen at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:05:16 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |

	sectors := self sectorsOfTenAndTwentyKilometers.
	grandPrix := self grandPrixOn: sectors.
	verstappen := self carDrivenBy: #Verstappen drivingAt: 5 * kilometer / hour.
	grandPrix put: verstappen at: 0 * kilometer.

	grandPrix advance: 1 * hour.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:05:20 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix verstappen sectorA sectorB |

	sectorA := Sector withTurboOf: 10 * kilometer.
	sectorB := Sector withTurboOf: 30 * kilometer.
	grandPrix := self grandPrixOn: (OrderedCollection with: sectorA with: sectorB).
	verstappen := FormulaOneCar drivenBy: #Verstappen.

	grandPrix put: verstappen at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: sectorA equals: (grandPrix sectorOf: verstappen).

	verstappen speed: 15 * kilometer / hour.
	grandPrix advance: 1 * hour.

	self assert: 20 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: sectorB equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:22 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	| schumacher |

	schumacher := self schumacherLessThanASecondBehindHamilton.

	schumacher activateTurbo.

	self assert: schumacher hasTurboActivatedAt: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:24 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	| schumacher |

	schumacher := self schumacherLessThanASecondBehindHamilton.
	self activateAndDeactivateTurboOf: schumacher times: 1.

	schumacher activateTurbo.

	self assert: schumacher hasTurboActivatedAt: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:26 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	| schumacher |

	schumacher := self schumacherLessThanASecondBehindHamilton.
	self activateAndDeactivateTurboOf: schumacher times: 2.

	schumacher activateTurbo.

	self assert: schumacher hasTurboActivatedAt: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:28 am (UTC)'!
test23AfterThirdTurboTurboIsExhausted

	| schumacher |

	schumacher := self schumacherLessThanASecondBehindHamilton.
	self activateAndDeactivateTurboOf: schumacher times: 3.

	schumacher activateTurbo.

	self assert: schumacher hasTurboActivatedAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:30 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |

	schumacher := self schumacherLessThanASecondBehindHamilton.
	schumacher activateTurbo.

	self
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 1:04:32 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |

	schumacher := self schumacherLessThanASecondBehindHamilton.

	self
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 1:04:13 am (UTC)'!
activateAndDeactivateTurboOf: aCar times: aNumberOfTimes

	aNumberOfTimes timesRepeat: [ aCar activateTurbo; deactivateTurbo ]! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 1:04:14 am (UTC)'!
assert: aCar hasTurboActivatedAt: aSpeed

	self assert: aCar isTurboActivated.
	self assert: aSpeed equals: aCar speed! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 1:04:08 am (UTC)'!
carDrivenBy: aDriver drivingAt: aSpeed

	^(FormulaOneCar drivenBy: aDriver)
		speed: aSpeed;
		yourself! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 1:04:17 am (UTC)'!
grandPrixOn: aCollectionOfSectors

	^GrandPrix on: (Track withSectors: aCollectionOfSectors) running: 100! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 1:04:18 am (UTC)'!
grandPrixOnATenKilometersTrack

	^self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer))! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 1:04:10 am (UTC)'!
schumacherAt: aSchumacherPosition behindHamiltonAt: aHamiltonPosition bothDrivingAt: aSpeed

	| sector schumacher |

	sector := Sector withTurboOf: 24 * kilometer.
	schumacher := self carDrivenBy: #Schumacher drivingAt: aSpeed.

	sector put: schumacher at: aSchumacherPosition.
	sector put: (self carDrivenBy: #Hamilton drivingAt: aSpeed) at: aHamiltonPosition.

	^schumacher! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 1:04:12 am (UTC)'!
schumacherLessThanASecondBehindHamilton

	^self
		schumacherAt: 12.99 * kilometer
		behindHamiltonAt: 13 * kilometer
		bothDrivingAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 1:04:16 am (UTC)'!
sectorsOfTenAndTwentyKilometers

	^OrderedCollection
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !
