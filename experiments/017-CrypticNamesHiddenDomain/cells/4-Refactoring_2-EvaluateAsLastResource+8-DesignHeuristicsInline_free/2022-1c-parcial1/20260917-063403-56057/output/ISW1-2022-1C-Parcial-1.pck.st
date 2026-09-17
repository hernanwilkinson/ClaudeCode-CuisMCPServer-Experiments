'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:39:24 am'!
'Description '!
!provides: 'ISW1-2022-1C-Parcial-1' 1 0!
SystemOrganization addCategory: #'ISW1-2022-1C-Parcial-1'!
SystemOrganization addCategory: #'ISW1-2022-1C-Parcial-1-Tests'!


!classDefinition: #ExhaustedTurboBoost category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #ExhaustedTurboBoost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ExhaustedTurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
ExhaustedTurboBoost class
	instanceVariableNames: ''!

!classDefinition: #FormulaOneCar category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #FormulaOneCar
	instanceVariableNames: 'driver speed traveledDistance sector turbo'
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

!classDefinition: #OffTrack category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #OffTrack
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'OffTrack class' category: #'ISW1-2022-1C-Parcial-1'!
OffTrack class
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

!classDefinition: #TurboDisabledSector category: #'ISW1-2022-1C-Parcial-1'!
Sector subclass: #TurboDisabledSector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboDisabledSector class' category: #'ISW1-2022-1C-Parcial-1'!
TurboDisabledSector class
	instanceVariableNames: ''!

!classDefinition: #TurboEnabledSector category: #'ISW1-2022-1C-Parcial-1'!
Sector subclass: #TurboEnabledSector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboEnabledSector class' category: #'ISW1-2022-1C-Parcial-1'!
TurboEnabledSector class
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
	instanceVariableNames: 'boost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ActivatedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
ActivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #DeactivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
Turbo subclass: #DeactivatedTurbo
	instanceVariableNames: 'nextBoost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'DeactivatedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
DeactivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #TurboBoost category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #TurboBoost
	instanceVariableNames: 'speedFactor following'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost class
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


!ExhaustedTurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
applyTo: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
following

	^self! !

!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:37:38 am (UTC)'!
initializeDrivenBy: aDriver

	driver _ aDriver.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer.
	sector _ OffTrack new.
	turbo _ DeactivatedTurbo unused! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:37:38 am (UTC)'!
advanceDuring: aTimeLapse

	traveledDistance _ traveledDistance + (self speed * aTimeLapse)! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:37:38 am (UTC)'!
atSector: aSector

	sector _ aSector! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:19 pm (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:31 pm (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:37:38 am (UTC)'!
activateTurbo

	turbo _ turbo activatedFor: self in: sector! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:37:38 am (UTC)'!
deactivateTurbo

	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:37:38 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:37:38 am (UTC)'!
speed

	^turbo boost: speed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:37:38 am (UTC)'!
speed: aSpeed

	speed _ aSpeed! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:37:38 am (UTC)'!
drivenBy: aDriver

	^self new initializeDrivenBy: aDriver! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 1/May/2022, 1:23:59 am (UTC)'!
locationOf: aCar

	^ aCar traveledDistance.	! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
placeOnTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 30/Apr/2022, 6:38:16 pm (UTC)'!
sectorOf: aCar 

	^ track sectorOf: aCar.! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
advance: aTimeLapse

	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
relocate: aCar after: aTimeLapse

	aCar advanceDuring: aTimeLapse.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
on: aTrack running: aNumberOfLaps

	self assertIsValidNumberOfLaps: aNumberOfLaps.

	^self new initializeOn: aTrack running: aNumberOfLaps! !

!GrandPrix class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
assertIsValidNumberOfLaps: aNumberOfLaps

	aNumberOfLaps strictlyPositive ifFalse: [ self error: self numberOfLapsMustBePositiveErrorDescription ]! !

!GrandPrix class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
numberOfLapsMustBePositiveErrorDescription

	^'Number of laps must be positive'! !

!OffTrack methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class cannotActivateTurboErrorDescription! !

!OffTrack class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
cannotActivateTurboErrorDescription

	^'Cannot activate Turbo when car is off track'! !

!Sector methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:37:28 am (UTC)'!
initializeOf: aLength

	carPositions _ Dictionary new.
	length _ aLength! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
assertIsWithinLength: aPosition

	aPosition > length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
atStartPut: aCar

	self put: aCar at: 0 * kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:28 am (UTC)'!
positionOf: aCar

	^carPositions at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:28 am (UTC)'!
put: aCar at: aPosition

	self assertIsWithinLength: aPosition.

	carPositions at: aCar put: aPosition.
	aCar atSector: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:28 am (UTC)'!
remove: aCar

	carPositions removeKey: aCar ifAbsent: []! !

!Sector methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:37:28 am (UTC)'!
cars

	^carPositions keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 2/May/2022, 5:26:16 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:37:28 am (UTC)'!
includes: aCar

	^carPositions includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
of: aLength

	self assertIsValidLength: aLength.

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:37:28 am (UTC)'!
withTurboOf: aLength

	^TurboEnabledSector of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:37:28 am (UTC)'!
withoutTurboOf: aLength

	^TurboDisabledSector of: aLength! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
assertIsValidLength: aLength

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 11:24:41 pm (UTC)'!
cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription
	
	^ 'Cannot activate Turbo when opponent is more than 1 second ahead'! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 11:13:07 pm (UTC)'!
cannotActivateTurboWhenNoCarAheadErrorDescription
	
	^ 'Cannot activate Turbo without opponent ahead'! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 1:08:26 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Driver can not be placed outside section'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:05:20 pm (UTC)'!
lengthMustBePositiveErrorDescription

	^ 'Length must be positive'! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 12:54:45 pm (UTC)'!
turboNotAllowedErrorDescription
	
	^ 'Turbo not allowed in this Sector'! !

!TurboDisabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class turboNotAllowedErrorDescription! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
assertIsLessThanOneSecondBetween: aCar and: aCarAhead

	(self timeToReachPositionOf: aCarAhead) - (self timeToReachPositionOf: aCar) >= (1 * second)
		ifTrue: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| carAhead |

	carAhead _ self
		carAheadOf: aCar
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].

	self assertIsLessThanOneSecondBetween: aCar and: carAhead! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
carAheadOf: aCar ifNone: aBlock

	| carsAhead |

	carsAhead _ self carsAheadOf: aCar.
	carsAhead ifEmpty: [ ^aBlock value ].

	^carsAhead detectMin: [ :carAhead | self positionOf: carAhead ]! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
carsAheadOf: aCar

	^self cars select: [ :car | (self positionOf: car) > (self positionOf: aCar) ]! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!Track methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
initializeWithSectors: aCollectionOfSectors

	sectors _ aCollectionOfSectors copy! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
assertIsWithinLength: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
positionOf: aCar

	| sector |

	sector _ self sectorOf: aCar.

	^(self startOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
put: aCar at: aPosition

	| sector |

	self assertIsWithinLength: aPosition.
	self remove: aCar.

	sector _ self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self startOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
remove: aCar

	sectors do: [ :sector | sector remove: aCar ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
sectorOf: aCar

	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
cars

	^sectors inject: Set new into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
length

	^sectors sum: [ :sector | sector length ]! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector length! !

!Track methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self endOf: sector) ]! !

!Track methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
startOf: aSector

	^(sectors first: (sectors indexOf: aSector) - 1)
		sum: [ :sector | sector length ]
		ifEmpty: [ 0 * kilometer ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
withSectors: aCollectionOfSectors

	self assertHasSectors: aCollectionOfSectors.

	^self new initializeWithSectors: aCollectionOfSectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Track class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:37:54 am (UTC)'!
assertHasSectors: aCollectionOfSectors

	aCollectionOfSectors ifEmpty: [ self error: self mustHaveSectorsErrorDescription ]! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
activatedFor: aCar in: aSector

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
alreadyActivatedErrorDescription

	^'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
alreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
initializeBoostingWith: aBoost

	boost _ aBoost! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
activatedFor: aCar in: aSector

	self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
deactivated

	^DeactivatedTurbo readyWith: boost following! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
boost: aSpeed

	^boost applyTo: aSpeed! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
boostingWith: aBoost

	^self new initializeBoostingWith: aBoost! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
initializeReadyWith: aBoost

	nextBoost _ aBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
activatedFor: aCar in: aSector

	aSector assertTurboCanBeActivatedBy: aCar.

	^ActivatedTurbo boostingWith: nextBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
deactivated

	self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
readyWith: aBoost

	^self new initializeReadyWith: aBoost! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
unused

	^self readyWith: (TurboBoost
		multiplyingSpeedBy: 12 / 10
		followedBy: (TurboBoost
			multiplyingSpeedBy: 11 / 10
			followedBy: (TurboBoost multiplyingSpeedBy: 105 / 100 followedBy: ExhaustedTurboBoost new)))! !

!TurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
initializeMultiplyingSpeedBy: aSpeedFactor followedBy: aBoost

	speedFactor _ aSpeedFactor.
	following _ aBoost! !

!TurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
applyTo: aSpeed

	^aSpeed * speedFactor! !

!TurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
following

	^following! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:37:20 am (UTC)'!
multiplyingSpeedBy: aSpeedFactor followedBy: aBoost

	^self new initializeMultiplyingSpeedBy: aSpeedFactor followedBy: aBoost! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test01SectorLengthMustBePositive

	self
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test02ACarCanNotBePlacedInAKilometerGreaterThanSectorLength

	| sector outside car |

	sector _ Sector withTurboOf: 10 * kilometer.
	outside _ sector length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.

	self
		should: [ sector put: car at: outside ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: error messageText equals: Sector cannotPlacedCarErrorDescription.
			self deny: (sector includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	| car sector |

	sector _ Sector withoutTurboOf: 10 * kilometer.
	car _ FormulaOneCar drivenBy: #Schumacher.
	sector atStartPut: car.

	self
		should: [ car activateTurbo ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: error messageText equals: Sector turboNotAllowedErrorDescription.
			self deny: car isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	| schumacher hamilton sector |

	sector _ Sector withTurboOf: 20 * kilometer.
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	sector put: schumacher at: 12 * kilometer.
	sector put: hamilton at: 13 * kilometer.

	self
		should: [ hamilton activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: error messageText equals: Sector cannotActivateTurboWhenNoCarAheadErrorDescription.
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |

	schumacher _ self
		carAt: 12.95 * kilometer
		behindAnotherCarAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.

	schumacher activateTurbo.

	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |

	schumacher _ self
		carAt: 12.9 * kilometer
		behindAnotherCarAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.

	self
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self
				assert: error messageText
				equals: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |

	track _ Track withSectors: self sectorsOfTenKilometersWithTurboAndTwentyWithout.

	self assert: track length equals: 30 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |

	track _ Track withSectors: self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.

	self
		should: [ track put: car at: outside ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: error messageText equals: Track cannotPlacedCarErrorDescription.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack |

	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	positionInTrack _ sectors first length + (5 * kilometer).
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.

	self assert: (track sectorOf: car) equals: sectors second.
	self assert: (track positionOf: car) equals: positionInTrack.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track schumacher verstappen |

	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	track _ Track withSectors: sectors.
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.

	track put: schumacher at: 10 * kilometer.
	track put: verstappen at: 30 * kilometer.

	self assert: (track includes: schumacher).
	self assert: (track includes: verstappen).
	self assert: (sectors first includes: schumacher).
	self assert: (sectors second includes: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |

	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.

	self assert: (track sectorOf: car) equals: sectors second.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix |

	track _ Track withSectors: self sectorsOfTenKilometersWithTurboAndTwentyWithout.

	grandPrix _ GrandPrix on: track running: 100.

	self assert: grandPrix length equals: track length * 100! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |

	grandPrix _ self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)).
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.

	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix locationOf: hamilton) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |

	grandPrix _ self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)).
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	grandPrix put: verstappen at: 5 * kilometer.

	grandPrix advance: 10 * minute.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |

	grandPrix _ self grandPrixOn: self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.

	grandPrix advance: 1 * hour.

	self assert: (grandPrix locationOf: verstappen) equals: 300 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |

	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	grandPrix _ self grandPrixOn: sectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.

	grandPrix put: verstappen at: 5 * kilometer.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |

	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	grandPrix _ self grandPrixOn: sectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.

	grandPrix advance: 1 * hour.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix verstappen sectorA sectorB |

	sectorA _ Sector withTurboOf: 10 * kilometer.
	sectorB _ Sector withTurboOf: 30 * kilometer.
	grandPrix _ self grandPrixOn: (OrderedCollection with: sectorA with: sectorB).
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	grandPrix put: verstappen at: 5 * kilometer.
	verstappen speed: 15 * kilometer / hour.

	grandPrix advance: 1 * hour.

	self assert: (grandPrix locationOf: verstappen) equals: 20 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectorB! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self assertActivatingTurboAfterUsingIt: 0 timesRunsCarAt: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self assertActivatingTurboAfterUsingIt: 1 timesRunsCarAt: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self assertActivatingTurboAfterUsingIt: 2 timesRunsCarAt: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	self assertActivatingTurboAfterUsingIt: 3 timesRunsCarAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |

	schumacher _ self carCloseBehindAnotherCar.
	schumacher activateTurbo.

	self
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |

	schumacher _ self carCloseBehindAnotherCar.

	self
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test26GrandPrixNumberOfLapsMustBePositive

	self
		should: [ GrandPrix on: (Track withSectors: self sectorsOfTenKilometersWithTurboAndTwentyWithout) running: 0 ]
		raise: Error - MessageNotUnderstood
		withMessageText: GrandPrix numberOfLapsMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
test27CarOffTrackCannotActivateTurbo

	| car |

	car _ FormulaOneCar drivenBy: #Schumacher.

	self
		should: [ car activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: error messageText equals: OffTrack cannotActivateTurboErrorDescription.
			self deny: car isTurboActivated ]! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
carAt: aPosition behindAnotherCarAt: aPositionAhead bothRunningAt: aSpeed

	| sector car carAhead |

	sector _ Sector withTurboOf: 24 * kilometer.
	car _ FormulaOneCar drivenBy: #Schumacher.
	carAhead _ FormulaOneCar drivenBy: #Hamilton.
	car speed: aSpeed.
	carAhead speed: aSpeed.
	sector put: car at: aPosition.
	sector put: carAhead at: aPositionAhead.

	^car! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:38:48 am (UTC)'!
carCloseBehindAnotherCar

	^self
		carAt: 12.99 * kilometer
		behindAnotherCarAt: 13 * kilometer
		bothRunningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
grandPrixOn: aCollectionOfSectors

	^GrandPrix on: (Track withSectors: aCollectionOfSectors) running: 100! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:38:47 am (UTC)'!
sectorsOfTenKilometersWithTurboAndTwentyWithout

	^OrderedCollection
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:38:48 am (UTC)'!
assertActivatingTurboAfterUsingIt: aNumberOfUses timesRunsCarAt: aSpeed

	| car |

	car _ self carCloseBehindAnotherCar.
	aNumberOfUses timesRepeat: [ car activateTurbo; deactivateTurbo ].

	car activateTurbo.

	self assert: car isTurboActivated.
	self assert: car speed equals: aSpeed! !
