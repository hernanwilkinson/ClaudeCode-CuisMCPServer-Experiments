'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 10:05:59 pm'!
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
	instanceVariableNames: 'length positionsByCar'
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
	instanceVariableNames: 'schumacher hamilton verstappen'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1-Tests'!
!classDefinition: 'FormulaOneTest class' category: #'ISW1-2022-1C-Parcial-1-Tests'!
FormulaOneTest class
	instanceVariableNames: ''!


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 1:03:45 am (UTC)'!
initializeDrivenBy: aDriver

	driver _ aDriver.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer.
	turbo _ Turbo unused! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 1:03:45 am (UTC)'!
advanceDuring: aTimeLapse

	traveledDistance _ traveledDistance + (self speed * aTimeLapse)! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 1:03:45 am (UTC)'!
atSector: aSector

	currentSector _ aSector! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 1:03:45 am (UTC)'!
placeAt: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 1:03:45 am (UTC)'!
traveledDistance

	^traveledDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 1:03:45 am (UTC)'!
activateTurbo

	turbo _ turbo activatedBy: self in: currentSector! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 1:03:45 am (UTC)'!
deactivateTurbo

	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 1:03:45 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!FormulaOneCar methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 1:03:45 am (UTC)'!
speed

	^turbo speedUp: speed! !

!FormulaOneCar methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 1:03:45 am (UTC)'!
speed: aSpeed

	speed _ aSpeed! !

!FormulaOneCar methodsFor: 'printing' stamp: 'HAW 11/Sep/2026, 1:03:45 am (UTC)'!
printOn: aStream

	aStream nextPutAll: 'Car driven by '; print: driver! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:03:44 am (UTC)'!
drivenBy: aDriver

	^self new initializeDrivenBy: aDriver! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 1:03:44 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:44 am (UTC)'!
locationOf: aCar

	^aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:44 am (UTC)'!
put: aCar at: aDistance

	aCar placeAt: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:44 am (UTC)'!
sectorOf: aCar

	^track sectorOf: aCar! !

!GrandPrix methodsFor: 'length' stamp: 'HAW 11/Sep/2026, 1:03:44 am (UTC)'!
length

	^track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 11/Sep/2026, 1:03:44 am (UTC)'!
advance: aTimeLapse

	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation - private' stamp: 'HAW 11/Sep/2026, 1:03:44 am (UTC)'!
relocate: aCar after: aTimeLapse

	aCar advanceDuring: aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position - private' stamp: 'HAW 11/Sep/2026, 1:03:44 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:03:44 am (UTC)'!
on: aTrack running: aNumberOfLaps

	self assertIsPositive: aNumberOfLaps.

	^self new initializeOn: aTrack running: aNumberOfLaps! !

!GrandPrix class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
assertIsPositive: aNumberOfLaps

	aNumberOfLaps strictlyPositive 
		ifFalse: [ self error: self numberOfLapsMustBePositiveErrorDescription ]! !

!GrandPrix class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:03:44 am (UTC)'!
numberOfLapsMustBePositiveErrorDescription

	^'Number of laps must be positive'! !

!Sector methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
initializeOf: aLength

	length _ aLength.
	positionsByCar _ Dictionary new! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
atStartPut: aCar

	self put: aCar at: 0 * kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
carAheadOf: aCar ifNone: aNoneBlock

	^self carsSortedByPosition
		detect: [ :car | (self positionOf: car) > (self positionOf: aCar) ]
		ifNone: aNoneBlock! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
positionOf: aCar

	^positionsByCar at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
put: aCar at: aPosition

	self assertIsWithinLength: aPosition.

	positionsByCar at: aCar put: aPosition.
	aCar atSector: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
remove: aCar

	positionsByCar removeKey: aCar ifAbsent: []! !

!Sector methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
cars

	^positionsByCar keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
includes: aCar

	^positionsByCar includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector methodsFor: 'car position - private' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
carsSortedByPosition

	^self cars asSortedCollection: [ :aCar :anotherCar | 
		(self positionOf: aCar) <= (self positionOf: anotherCar) ]! !

!Sector methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
assertIsWithinLength: aPosition

	aPosition > length 
		ifTrue: [ self error: self class cannotPlaceCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
of: aLength

	self assertIsPositive: aLength.

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
withTurboOf: aLength

	^SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
withoutTurboOf: aLength

	^SectorWithoutTurbo of: aLength! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
assertIsPositive: aLength

	aLength strictlyPositive 
		ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription

	^'Cannot activate Turbo when opponent is more than 1 second ahead'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
cannotActivateTurboWhenNoCarAheadErrorDescription

	^'Cannot activate Turbo without opponent ahead'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
cannotPlaceCarErrorDescription

	^'Driver can not be placed outside section'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
lengthMustBePositiveErrorDescription

	^'Length must be positive'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
turboNotAllowedErrorDescription

	^'Turbo not allowed in this Sector'! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| carAhead |

	carAhead _ self 
		carAheadOf: aCar 
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].

	self assertCar: aCar isLessThanASecondBehind: carAhead! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
assertCar: aCar isLessThanASecondBehind: aCarAhead

	(self timeFrom: aCar to: aCarAhead) < (1 * second) 
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
timeFrom: aCar to: aCarAhead

	^(self timeToReachPositionOf: aCarAhead) 
		- (self timeToReachPositionOf: aCar)! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 11/Sep/2026, 1:03:15 am (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 1:03:14 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
initializeWithSectors: aCollectionOfSectors

	sectors _ aCollectionOfSectors copy! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
positionOf: aCar

	| sector |

	sector _ self sectorOf: aCar.

	^(self startOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
put: aCar at: aPosition

	| sector |

	self assertIsWithinLength: aPosition.

	self remove: aCar.
	sector _ self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self startOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
sectorOf: aCar

	^self 
		sectorOf: aCar 
		ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
sectorOf: aCar ifNone: aNoneBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aNoneBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
cars

	^sectors 
		inject: Set new 
		into: [ :cars :sector | cars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
length

	^self lengthOf: sectors! !

!Track methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
remove: aCar

	sectors do: [ :sector | sector remove: aCar ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self endOf: sector) ]! !

!Track methodsFor: 'length - private' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
endOf: aSector

	^self lengthOf: (sectors copyUpThrough: aSector)! !

!Track methodsFor: 'length - private' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
lengthOf: aCollectionOfSectors

	^aCollectionOfSectors sum: [ :sector | sector length ]! !

!Track methodsFor: 'length - private' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
startOf: aSector

	^(self endOf: aSector) - aSector length! !

!Track methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
assertIsWithinLength: aPosition

	aPosition > self length 
		ifTrue: [ self error: self class cannotPlaceCarErrorDescription ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
withSectors: aCollectionOfSectors

	self assertIsNotEmpty: aCollectionOfSectors.

	^self new initializeWithSectors: aCollectionOfSectors! !

!Track class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
cannotPlaceCarErrorDescription

	^'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:03:28 am (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Track class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
assertIsNotEmpty: aCollectionOfSectors

	aCollectionOfSectors 
		ifEmpty: [ self error: self mustHaveSectorsErrorDescription ]! !

!Turbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
activatedBy: aCar in: aSector

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
speedUp: aSpeed

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
unused

	^DeactivatedTurbo readyToBoost: FirstTurboBoost new! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
alreadyActivatedErrorDescription

	^'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
alreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
initializeBoosting: aTurboBoost

	boost _ aTurboBoost! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
activatedBy: aCar in: aSector

	^self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
deactivated

	^DeactivatedTurbo readyToBoost: boost next! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
speedUp: aSpeed

	^boost speedUp: aSpeed! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
boosting: aTurboBoost

	^self new initializeBoosting: aTurboBoost! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
initializeReadyToBoost: aTurboBoost

	nextBoost _ aTurboBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
activatedBy: aCar in: aSector

	aSector assertTurboCanBeActivatedBy: aCar.
	
	^ActivatedTurbo boosting: nextBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
deactivated

	^self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
speedUp: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
readyToBoost: aTurboBoost

	^self new initializeReadyToBoost: aTurboBoost! !

!TurboBoost methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
speedUp: aSpeed

	self subclassResponsibility! !

!TurboBoost methodsFor: 'sequence' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
next

	self subclassResponsibility! !

!ExhaustedTurboBoost methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
speedUp: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'sequence' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
next

	^self! !

!FirstTurboBoost methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
speedUp: aSpeed

	^aSpeed * 12 / 10! !

!FirstTurboBoost methodsFor: 'sequence' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
next

	^SecondTurboBoost new! !

!SecondTurboBoost methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
speedUp: aSpeed

	^aSpeed * 11 / 10! !

!SecondTurboBoost methodsFor: 'sequence' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
next

	^ThirdTurboBoost new! !

!ThirdTurboBoost methodsFor: 'speed' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
speedUp: aSpeed

	^aSpeed * 105 / 100! !

!ThirdTurboBoost methodsFor: 'sequence' stamp: 'HAW 11/Sep/2026, 1:02:55 am (UTC)'!
next

	^ExhaustedTurboBoost new! !

!FormulaOneTest methodsFor: 'setUp' stamp: 'HAW 11/Sep/2026, 1:04:04 am (UTC)'!
setUp

	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	verstappen _ FormulaOneCar drivenBy: #Verstappen! !

!FormulaOneTest methodsFor: 'fixture' stamp: 'HAW 11/Sep/2026, 1:04:04 am (UTC)'!
activateAndDeactivateTurboOf: aCar times: aNumberOfTimes

	aNumberOfTimes timesRepeat: [ aCar activateTurbo; deactivateTurbo ]! !

!FormulaOneTest methodsFor: 'fixture' stamp: 'HAW 11/Sep/2026, 1:04:04 am (UTC)'!
grandPrixOn: aCollectionOfSectors

	^GrandPrix on: (Track withSectors: aCollectionOfSectors) running: 100! !

!FormulaOneTest methodsFor: 'fixture' stamp: 'HAW 11/Sep/2026, 1:04:04 am (UTC)'!
placeSchumacherAt: aSchumacherPosition behindHamiltonAt: aHamiltonPosition bothRunningAt: aSpeed

	| sector |

	sector _ Sector withTurboOf: 24 * kilometer.
	schumacher speed: aSpeed.
	hamilton speed: aSpeed.

	sector put: schumacher at: aSchumacherPosition.
	sector put: hamilton at: aHamiltonPosition! !

!FormulaOneTest methodsFor: 'fixture' stamp: 'HAW 11/Sep/2026, 1:04:04 am (UTC)'!
placeSchumacherLessThanASecondBehindHamilton

	self 
		placeSchumacherAt: 12.99 * kilometer 
		behindHamiltonAt: 13 * kilometer 
		bothRunningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'fixture' stamp: 'HAW 11/Sep/2026, 1:04:04 am (UTC)'!
sectorsOfTenAndTwentyKilometers

	^OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'fixture' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
sectorsOfTenKilometers

	^OrderedCollection with: (Sector withTurboOf: 10 * kilometer)! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 1:04:04 am (UTC)'!
assertSchumacherHasTurboActivatedRunningAt: anExpectedSpeed

	self assert: schumacher isTurboActivated.
	self assert: schumacher speed equals: anExpectedSpeed! !

!FormulaOneTest methodsFor: 'tests - sector' stamp: 'HAW 11/Sep/2026, 1:04:04 am (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests - sector' stamp: 'HAW 11/Sep/2026, 1:04:04 am (UTC)'!
test02ACarCanNotBePlacedInAKilometerGreaterThanSectorLength

	| sector outside |

	sector _ Sector withTurboOf: 10 * kilometer.
	outside _ sector length + (1 * millimeter).

	self 
		should: [ sector put: schumacher at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: error messageText equals: Sector cannotPlaceCarErrorDescription.
			self deny: (sector includes: schumacher) ]! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 1:04:04 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	| sector |

	sector _ Sector withoutTurboOf: 10 * kilometer.
	sector atStartPut: schumacher.

	self 
		should: [ schumacher activateTurbo ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: error messageText equals: Sector turboNotAllowedErrorDescription.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	self 
		placeSchumacherAt: 12 * kilometer 
		behindHamiltonAt: 13 * kilometer 
		bothRunningAt: 300 * kilometer / hour.

	self 
		should: [ hamilton activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self 
				assert: error messageText 
				equals: Sector cannotActivateTurboWhenNoCarAheadErrorDescription. 
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 1:04:04 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	self 
		placeSchumacherAt: 12.95 * kilometer 
		behindHamiltonAt: 13 * kilometer 
		bothRunningAt: 300 * kilometer / hour.

	schumacher activateTurbo.

	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 1:04:04 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	self 
		placeSchumacherAt: 12.9 * kilometer 
		behindHamiltonAt: 13 * kilometer 
		bothRunningAt: 300 * kilometer / hour.

	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self 
				assert: error messageText 
				equals: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 1:04:38 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self placeSchumacherLessThanASecondBehindHamilton.

	schumacher activateTurbo.

	self assertSchumacherHasTurboActivatedRunningAt: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 1:04:38 am (UTC)'!
test21SecondTurboIncrementsSpeedByTenPercent

	self placeSchumacherLessThanASecondBehindHamilton.
	self activateAndDeactivateTurboOf: schumacher times: 1.

	schumacher activateTurbo.

	self assertSchumacherHasTurboActivatedRunningAt: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 1:04:38 am (UTC)'!
test22ThirdTurboIncrementsSpeedByFivePercent

	self placeSchumacherLessThanASecondBehindHamilton.
	self activateAndDeactivateTurboOf: schumacher times: 2.

	schumacher activateTurbo.

	self assertSchumacherHasTurboActivatedRunningAt: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 1:04:38 am (UTC)'!
test23AfterThirdTurboTurboIsExhausted

	self placeSchumacherLessThanASecondBehindHamilton.
	self activateAndDeactivateTurboOf: schumacher times: 3.

	schumacher activateTurbo.

	self assertSchumacherHasTurboActivatedRunningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 1:04:38 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	self placeSchumacherLessThanASecondBehindHamilton.
	schumacher activateTurbo.

	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 1:04:38 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	self placeSchumacherLessThanASecondBehindHamilton.

	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests - track' stamp: 'HAW 11/Sep/2026, 1:04:26 am (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests - track' stamp: 'HAW 11/Sep/2026, 1:04:26 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |

	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.

	self assert: track length equals: 30 * kilometer! !

!FormulaOneTest methodsFor: 'tests - track' stamp: 'HAW 11/Sep/2026, 1:04:26 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track outside |

	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.
	outside _ track length + (1 * millimeter).

	self 
		should: [ track put: schumacher at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: error messageText equals: Track cannotPlaceCarErrorDescription.
			self deny: (track includes: schumacher) ]! !

!FormulaOneTest methodsFor: 'tests - track' stamp: 'HAW 11/Sep/2026, 1:04:26 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track positionInTrack |

	sectors _ self sectorsOfTenAndTwentyKilometers.
	positionInTrack _ sectors first length + (5 * kilometer).
	track _ Track withSectors: sectors.

	track put: schumacher at: positionInTrack.

	self assert: (track sectorOf: schumacher) equals: sectors second.
	self assert: (track positionOf: schumacher) equals: positionInTrack.
	self deny: (sectors first includes: schumacher).
	self assert: (sectors second includes: schumacher)! !

!FormulaOneTest methodsFor: 'tests - track' stamp: 'HAW 11/Sep/2026, 1:04:26 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track |

	sectors _ self sectorsOfTenAndTwentyKilometers.
	track _ Track withSectors: sectors.

	track put: schumacher at: 10 * kilometer.
	track put: verstappen at: 30 * kilometer.

	self assert: (track includes: schumacher).
	self assert: (track includes: verstappen).
	self assert: (sectors first includes: schumacher).
	self assert: (sectors second includes: verstappen)! !

!FormulaOneTest methodsFor: 'tests - track' stamp: 'HAW 11/Sep/2026, 1:04:26 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track |

	sectors _ self sectorsOfTenAndTwentyKilometers.
	track _ Track withSectors: sectors.

	track put: schumacher at: 5 * kilometer.
	track put: schumacher at: 15 * kilometer.

	self assert: (track sectorOf: schumacher) equals: sectors second.
	self deny: (sectors first includes: schumacher).
	self assert: (sectors second includes: schumacher)! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 1:04:26 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |

	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.
	numberOfLaps _ 100.

	grandPrix _ GrandPrix on: track running: numberOfLaps.

	self assert: grandPrix length equals: track length * numberOfLaps! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix |

	grandPrix _ self grandPrixOn: self sectorsOfTenKilometers.

	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer. 
	self assert: (grandPrix locationOf: hamilton) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix |

	grandPrix _ self grandPrixOn: self sectorsOfTenKilometers.
	grandPrix put: verstappen at: 5 * kilometer.

	grandPrix advance: 10 * minute.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 1:04:26 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix |

	grandPrix _ self grandPrixOn: self sectorsOfTenAndTwentyKilometers.
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.

	grandPrix advance: 1 * hour.

	self assert: (grandPrix locationOf: verstappen) equals: 300 * kilometer! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 1:04:26 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix sectors |

	sectors _ self sectorsOfTenAndTwentyKilometers.
	grandPrix _ self grandPrixOn: sectors.

	grandPrix put: verstappen at: 5 * kilometer.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer. 
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 1:04:26 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix sectors |

	sectors _ self sectorsOfTenAndTwentyKilometers.
	grandPrix _ self grandPrixOn: sectors.
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.

	grandPrix advance: 1 * hour.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer. 
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 1:05:33 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix sectorA sectorB |

	sectorA _ Sector withTurboOf: 10 * kilometer.
	sectorB _ Sector withTurboOf: 30 * kilometer.
	grandPrix _ self grandPrixOn: (OrderedCollection with: sectorA with: sectorB).
	grandPrix put: verstappen at: 5 * kilometer.
	verstappen speed: 15 * kilometer / hour.

	grandPrix advance: 1 * hour.

	self assert: (grandPrix locationOf: verstappen) equals: 20 * kilometer. 
	self assert: (grandPrix sectorOf: verstappen) equals: sectorB! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 1:04:38 am (UTC)'!
test26GrandPrixMustHavePositiveNumberOfLaps

	| track |

	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.

	self 
		should: [ GrandPrix on: track running: 0 ]
		raise: Error
		withMessageText: GrandPrix numberOfLapsMustBePositiveErrorDescription! !
