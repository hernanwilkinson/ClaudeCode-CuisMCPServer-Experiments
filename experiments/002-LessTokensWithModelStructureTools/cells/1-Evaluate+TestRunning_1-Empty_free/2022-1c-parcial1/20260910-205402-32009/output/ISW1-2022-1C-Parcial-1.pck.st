'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 9:07:28 pm'!
'Description '!
!provides: 'ISW1-2022-1C-Parcial-1' 1 0!
SystemOrganization addCategory: #'ISW1-2022-1C-Parcial-1'!
SystemOrganization addCategory: #'ISW1-2022-1C-Parcial-1-Tests'!


!classDefinition: #FormulaOneCar category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #FormulaOneCar
	instanceVariableNames: 'driver speed turbo traveledDistance currentSector'
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
	instanceVariableNames: 'positionsByCar length'
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


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:04:27 am (UTC)'!
initializeDrivenBy: aDriver

	driver _ aDriver.
	speed _ 0 * kilometer / hour.
	turbo _ DeactivatedTurbo boosting: FirstTurboBoost new.
	traveledDistance _ 0 * kilometer! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 12:04:27 am (UTC)'!
advanceDuring: aTimeLapse

	traveledDistance _ traveledDistance + (self speed * aTimeLapse)! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 12:04:27 am (UTC)'!
placedIn: aSector

	currentSector _ aSector! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 12:04:27 am (UTC)'!
speed

	^turbo applyTo: speed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 12:04:27 am (UTC)'!
speed: aSpeed

	speed _ aSpeed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:19 pm (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:31 pm (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:04:27 am (UTC)'!
activateTurbo

	turbo _ turbo activatedBy: self in: currentSector! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:04:27 am (UTC)'!
deactivateTurbo

	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:04:27 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
locationOf: aCar

	^aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
placeOnTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
sectorOf: aCar

	^track sectorOf: aCar! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
advance: aTimeLapse

	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
relocate: aCar after: aTimeLapse

	aCar advanceDuring: aTimeLapse.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
length

	^track length * numberOfLaps! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
on: aTrack running: aNumberOfLaps

	self assertIsPositive: aNumberOfLaps.

	^self new initializeOn: aTrack running: aNumberOfLaps! !

!GrandPrix class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
assertIsPositive: aNumberOfLaps

	aNumberOfLaps strictlyPositive
		ifFalse: [ self error: self numberOfLapsMustBePositiveErrorDescription ]! !

!GrandPrix class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
numberOfLapsMustBePositiveErrorDescription

	^'Number of laps must be positive'! !

!Sector methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
initializeOf: aLength

	positionsByCar _ Dictionary new.
	length _ aLength! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
atStartPut: aCar

	self put: aCar at: 0 * kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
carAheadOf: aCar ifNone: aBlock

	^self carsSortedByPosition
		detect: [ :car | (self positionOf: car) > (self positionOf: aCar) ]
		ifNone: aBlock! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
carsSortedByPosition

	^self cars asSortedCollection: [ :aCar :anotherCar |
		(self positionOf: aCar) <= (self positionOf: anotherCar) ]! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
positionOf: aCar

	^positionsByCar at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
put: aCar at: aPosition

	self assertIsInside: aPosition.

	positionsByCar at: aCar put: aPosition.
	aCar placedIn: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
remove: aCar

	positionsByCar removeKey: aCar ifAbsent: []! !

!Sector methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
cars

	^positionsByCar keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 2/May/2022, 5:26:16 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
includes: aCar

	^positionsByCar includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
assertIsInside: aPosition

	aPosition > length
		ifTrue: [ self error: self class cannotPlaceCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
of: aLength

	self assertIsPositive: aLength.

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
withTurboOf: aLength

	^SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
withoutTurboOf: aLength

	^SectorWithoutTurbo of: aLength! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
assertIsPositive: aLength

	aLength strictlyPositive
		ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!Sector class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
cannotPlaceCarErrorDescription

	^'Driver can not be placed outside section'! !

!Sector class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
lengthMustBePositiveErrorDescription

	^'Length must be positive'! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
assert: aCar isLessThanOneSecondBehind: aCarAhead

	(self timeFrom: aCar to: aCarAhead) < (1 * second) ifFalse: [
		self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| carAhead |

	carAhead _ self
		carAheadOf: aCar
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].

	self assert: aCar isLessThanOneSecondBehind: carAhead! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
timeFrom: aCar to: aCarAhead

	^(self timeToReachPositionOf: aCarAhead) - (self timeToReachPositionOf: aCar)! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!SectorWithTurbo class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription

	^'Cannot activate Turbo when opponent is more than 1 second ahead'! !

!SectorWithTurbo class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
cannotActivateTurboWhenNoCarAheadErrorDescription

	^'Cannot activate Turbo without opponent ahead'! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class turboNotAllowedErrorDescription! !

!SectorWithoutTurbo class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
turboNotAllowedErrorDescription

	^'Turbo not allowed in this Sector'! !

!Track methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
initializeWithSectors: aCollectionOfSectors

	sectors _ aCollectionOfSectors copy! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
positionOf: aCar

	| sector |

	sector _ self sectorOf: aCar.
	^(self startOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
put: aCar at: aPosition

	| sector |

	self assertIsInside: aPosition.
	self remove: aCar.

	sector _ self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self startOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
remove: aCar

	sectors do: [ :sector | sector remove: aCar ]! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
sectorOf: aCar

	^self
		sectorOf: aCar
		ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
cars

	^sectors
		inject: Set new
		into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
length

	^self lengthOf: sectors! !

!Track methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'sectors' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector length! !

!Track methodsFor: 'sectors' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
lengthOf: aCollectionOfSectors

	^aCollectionOfSectors
		sum: [ :sector | sector length ]
		ifEmpty: [ 0 * kilometer ]! !

!Track methodsFor: 'sectors' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self endOf: sector) ]! !

!Track methodsFor: 'sectors' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
startOf: aSector

	^self lengthOf: (sectors copyUpTo: aSector)! !

!Track methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length
		ifTrue: [ self error: self class cannotPlaceCarErrorDescription ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
withSectors: aCollectionOfSectors

	self assertHasSectors: aCollectionOfSectors.

	^self new initializeWithSectors: aCollectionOfSectors! !

!Track class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
assertHasSectors: aCollectionOfSectors

	aCollectionOfSectors
		ifEmpty: [ self error: self mustHaveSectorsErrorDescription ]! !

!Track class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
cannotPlaceCarErrorDescription

	^'Car cannot be placed in track'! !

!Track class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Turbo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
initializeBoosting: aBoost

	boost _ aBoost! !

!Turbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
activatedBy: aCar in: aSector

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
applyTo: aSpeed

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
boosting: aBoost

	^self new initializeBoosting: aBoost! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
activatedBy: aCar in: aSector

	self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
deactivated

	^DeactivatedTurbo boosting: boost next! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
applyTo: aSpeed

	^boost applyTo: aSpeed! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
alreadyActivatedErrorDescription

	^'Turbo already activated'! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
activatedBy: aCar in: aSector

	aSector assertTurboCanBeActivatedBy: aCar.

	^ActivatedTurbo boosting: boost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
deactivated

	self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
applyTo: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
alreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!TurboBoost methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
applyTo: aSpeed

	^aSpeed * (1 + self increment)! !

!TurboBoost methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
increment

	self subclassResponsibility! !

!TurboBoost methodsFor: 'sequencing' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
next

	self subclassResponsibility! !

!ExhaustedTurboBoost methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
increment

	^0! !

!ExhaustedTurboBoost methodsFor: 'sequencing' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
next

	^self! !

!FirstTurboBoost methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
increment

	^20 / 100! !

!FirstTurboBoost methodsFor: 'sequencing' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
next

	^SecondTurboBoost new! !

!SecondTurboBoost methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
increment

	^10 / 100! !

!SecondTurboBoost methodsFor: 'sequencing' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
next

	^ThirdTurboBoost new! !

!ThirdTurboBoost methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
increment

	^5 / 100! !

!ThirdTurboBoost methodsFor: 'sequencing' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
next

	^ExhaustedTurboBoost new! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test01SectorLengthMustBePositive

	self
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
test02ACarCanNotBePlacedInAKilometerGreaterThanSectorLength

	| sector outside car |

	sector _ Sector withTurboOf: 10 * kilometer.
	outside _ sector length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.

	self
		should: [ sector put: car at: outside ]
		raise: Error
		withExceptionDo: [ :error |
			self
				assert: error messageText
				equals: Sector cannotPlaceCarErrorDescription.
			self deny: (sector includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	| sector car |

	sector _ Sector withoutTurboOf: 10 * kilometer.
	car _ FormulaOneCar drivenBy: #Schumacher.
	sector atStartPut: car.

	self
		should: [ car activateTurbo ]
		raise: Error
		withExceptionDo: [ :error |
			self
				assert: error messageText
				equals: SectorWithoutTurbo turboNotAllowedErrorDescription.
			self deny: car isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	| sector schumacher hamilton |

	sector _ Sector withTurboOf: 20 * kilometer.
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	sector put: schumacher at: 12 * kilometer.
	sector put: hamilton at: 13 * kilometer.

	self
		should: [ hamilton activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self
				assert: error messageText
				equals: SectorWithTurbo cannotActivateTurboWhenNoCarAheadErrorDescription.
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| car |

	car _ self
		carAt: 12.95 * kilometer
		behindCarAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.

	car activateTurbo.

	self assert: car isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| car |

	car _ self
		carAt: 12.9 * kilometer
		behindCarAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.

	self
		should: [ car activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self
				assert: error messageText
				equals: SectorWithTurbo cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription.
			self deny: car isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |

	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.

	self assert: track length equals: 30 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track outside car |

	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.

	self
		should: [ track put: car at: outside ]
		raise: Error
		withExceptionDo: [ :error |
			self
				assert: error messageText
				equals: Track cannotPlaceCarErrorDescription.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack |

	sectors _ self sectorsOfTenAndTwentyKilometers.
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.
	positionInTrack _ sectors first length + (5 * kilometer).

	track put: car at: positionInTrack.

	self assert: (track sectorOf: car) equals: sectors second.
	self assert: (track positionOf: car) equals: positionInTrack.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track schumacher verstappen |

	sectors _ self sectorsOfTenAndTwentyKilometers.
	track _ Track withSectors: sectors.
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.

	track put: schumacher at: 10 * kilometer.
	track put: verstappen at: 30 * kilometer.

	self assert: (track includes: schumacher).
	self assert: (track includes: verstappen).
	self assert: (sectors first includes: schumacher).
	self assert: (sectors second includes: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |

	sectors _ self sectorsOfTenAndTwentyKilometers.
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.

	self assert: (track sectorOf: car) equals: sectors second.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track numberOfLaps grandPrix |

	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.
	numberOfLaps _ 100.

	grandPrix _ GrandPrix on: track running: numberOfLaps.

	self assert: grandPrix length equals: track length * numberOfLaps! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix verstappen hamilton |

	grandPrix _ self
		grandPrixOfOneHundredLapsOn: self singleSectorOfTenKilometers.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.

	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix locationOf: hamilton) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |

	grandPrix _ self
		grandPrixOfOneHundredLapsOn: self singleSectorOfTenKilometers.
	verstappen _ self carDrivenBy: #Verstappen runningAt: 0 * kilometer / hour.
	grandPrix put: verstappen at: 5 * kilometer.

	grandPrix advance: 10 * minute.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |

	grandPrix _ self
		grandPrixOfOneHundredLapsOn: self sectorsOfTenAndTwentyKilometers.
	verstappen _ self
		carDrivenBy: #Verstappen
		runningAt: 300 * kilometer / hour.
	grandPrix put: verstappen at: 0 * kilometer.

	grandPrix advance: 1 * hour.

	self assert: (grandPrix locationOf: verstappen) equals: 300 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| sectors grandPrix verstappen |

	sectors _ self sectorsOfTenAndTwentyKilometers.
	grandPrix _ self grandPrixOfOneHundredLapsOn: sectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.

	grandPrix put: verstappen at: 5 * kilometer.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| sectors grandPrix verstappen |

	sectors _ self sectorsOfTenAndTwentyKilometers.
	grandPrix _ self grandPrixOfOneHundredLapsOn: sectors.
	verstappen _ self carDrivenBy: #Verstappen runningAt: 5 * kilometer / hour.
	grandPrix put: verstappen at: 0 * kilometer.

	grandPrix advance: 1 * hour.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| firstSector secondSector grandPrix verstappen |

	firstSector _ Sector withTurboOf: 10 * kilometer.
	secondSector _ Sector withTurboOf: 30 * kilometer.
	grandPrix _ self
		grandPrixOfOneHundredLapsOn: (OrderedCollection with: firstSector with: secondSector).
	verstappen _ FormulaOneCar drivenBy: #Verstappen.

	grandPrix put: verstappen at: 5 * kilometer.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: firstSector.

	verstappen speed: 15 * kilometer / hour.
	grandPrix advance: 1 * hour.

	self assert: (grandPrix locationOf: verstappen) equals: 20 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: secondSector! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self
		assertTurboActivationNumber: 1
		speedsUp: 100 * kilometer / hour
		to: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test21SecondTurboIncrementsSpeedByTenPercent

	self
		assertTurboActivationNumber: 2
		speedsUp: 100 * kilometer / hour
		to: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test22ThirdTurboIncrementsSpeedByFivePercent

	self
		assertTurboActivationNumber: 3
		speedsUp: 100 * kilometer / hour
		to: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test23AfterThirdTurboTurboIsExhausted

	self
		assertTurboActivationNumber: 4
		speedsUp: 100 * kilometer / hour
		to: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| car |

	car _ self carTenMetersBehindAnotherCarRunningAt: 100 * kilometer / hour.
	car activateTurbo.

	self
		should: [ car activateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: ActivatedTurbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| car |

	car _ self carTenMetersBehindAnotherCarRunningAt: 100 * kilometer / hour.

	self
		should: [ car deactivateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: DeactivatedTurbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
test26GrandPrixMustRunAtLeastOneLap

	| track |

	track _ Track withSectors: self singleSectorOfTenKilometers.

	self
		should: [ GrandPrix on: track running: 0 ]
		raise: Error
		withMessageText: GrandPrix numberOfLapsMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
carAt: aPosition behindCarAt: aPositionAhead bothRunningAt: aSpeed

	| sector car carAhead |

	sector _ Sector withTurboOf: 24 * kilometer.
	car _ self carDrivenBy: #Schumacher runningAt: aSpeed.
	carAhead _ self carDrivenBy: #Hamilton runningAt: aSpeed.

	sector put: car at: aPosition.
	sector put: carAhead at: aPositionAhead.

	^car! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
carDrivenBy: aDriver runningAt: aSpeed

	^(FormulaOneCar drivenBy: aDriver) speed: aSpeed; yourself! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 12:06:54 am (UTC)'!
carTenMetersBehindAnotherCarRunningAt: aSpeed

	^self
		carAt: 12.99 * kilometer
		behindCarAt: 13 * kilometer
		bothRunningAt: aSpeed! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
grandPrixOfOneHundredLapsOn: aCollectionOfSectors

	^GrandPrix on: (Track withSectors: aCollectionOfSectors) running: 100! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
sectorsOfTenAndTwentyKilometers

	^OrderedCollection
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
singleSectorOfTenKilometers

	^OrderedCollection with: (Sector withTurboOf: 10 * kilometer)! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
useTurboOf: aCar times: aNumberOfTimes

	aNumberOfTimes timesRepeat: [ aCar activateTurbo; deactivateTurbo ]! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:05:38 am (UTC)'!
assertTurboActivationNumber: anActivationNumber speedsUp: aSpeed to: aBoostedSpeed

	| car |

	car _ self carTenMetersBehindAnotherCarRunningAt: aSpeed.
	self useTurboOf: car times: anActivationNumber - 1.

	car activateTurbo.

	self assert: car isTurboActivated.
	self assert: car speed equals: aBoostedSpeed! !
