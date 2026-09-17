'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:47:30 am'!
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
	instanceVariableNames: 'driver speed turbo traveledDistance currentSector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'FormulaOneCar class' category: #'ISW1-2022-1C-Parcial-1'!
FormulaOneCar class
	instanceVariableNames: ''!

!classDefinition: #GrandPrix category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #GrandPrix
	instanceVariableNames: 'track numberOfLaps cars'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'GrandPrix class' category: #'ISW1-2022-1C-Parcial-1'!
GrandPrix class
	instanceVariableNames: ''!

!classDefinition: #Sector category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #Sector
	instanceVariableNames: 'cars length'
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

!classDefinition: #TurboBoost category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #TurboBoost
	instanceVariableNames: 'speedFactor next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost class
	instanceVariableNames: ''!

!classDefinition: #TurboState category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #TurboState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboState class' category: #'ISW1-2022-1C-Parcial-1'!
TurboState class
	instanceVariableNames: ''!

!classDefinition: #ActivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
TurboState subclass: #ActivatedTurbo
	instanceVariableNames: 'boost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ActivatedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
ActivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #DeactivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
TurboState subclass: #DeactivatedTurbo
	instanceVariableNames: 'nextBoost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'DeactivatedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
DeactivatedTurbo class
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


!ExhaustedTurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
applyTo: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
next

	^self! !

!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:45:22 am (UTC)'!
initializeDrivenBy: aDriver 

	driver _ aDriver.
	turbo _ DeactivatedTurbo unused.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:07 pm (UTC)'!
advance: aDistance

	traveledDistance _ traveledDistance + aDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:45:22 am (UTC)'!
speed

	^turbo speedFrom: speed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 1/May/2022, 8:34:26 pm (UTC)'!
speed: newSpeed

	speed _ newSpeed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:19 pm (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:31 pm (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:45:22 am (UTC)'!
activateTurbo

	turbo activateFor: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:45:22 am (UTC)'!
deactivateTurbo
	
	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:45:22 am (UTC)'!
isTurboActivated
	
	^turbo isActivated! !

!FormulaOneCar methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
activateTurboInCurrentSector

	currentSector activateTurboTo: self! !

!FormulaOneCar methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 10:45:22 am (UTC)'!
activateTurboInSectorWithTurbo
	
	turbo _ turbo activated! !

!FormulaOneCar methodsFor: 'sector' stamp: 'FRT 30/Apr/2022, 7:33:07 pm (UTC)'!
atSector: aSector

	currentSector _ aSector.! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!FormulaOneCar class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
turboAlreadyActivatedErrorDescription
	
	^'Turbo already activated'! !

!FormulaOneCar class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
turboAlreadydeActivatedErrorDescription
	
	^'Turbo is already deactivated'! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:46:00 am (UTC)'!
initializeWithTrack: aTrack andNumberOfLaps: aNumberOfLaps andCars: aCollectionOfCars

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps.
	cars _ aCollectionOfCars copy! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 1/May/2022, 1:23:59 am (UTC)'!
locationOf: aCar

	^ aCar traveledDistance.	! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:45:53 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: (self locationOf: aCar) \\ track length! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:45:53 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 30/Apr/2022, 6:38:16 pm (UTC)'!
sectorOf: aCar 

	^ track sectorOf: aCar.! !

!GrandPrix methodsFor: 'length' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 10:46:00 am (UTC)'!
advance: aTimeLapse
	
	cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 10:45:53 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 10:36:05 pm (UTC)'!
on: aTrack running: aNumberOfLaps 

	^self on: aTrack running: aNumberOfLaps with: #()! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
on: aTrack running: aNumberOfLaps with: aCollectionOfCars

	self assertIsValidNumberOfLaps: aNumberOfLaps.

	^self new initializeWithTrack: aTrack andNumberOfLaps: aNumberOfLaps andCars: aCollectionOfCars! !

!GrandPrix class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
assertIsValidNumberOfLaps: aNumberOfLaps

	aNumberOfLaps strictlyPositive ifFalse: [ self error: self numberOfLapsMustBePositiveErrorDescription ]! !

!GrandPrix class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
numberOfLapsMustBePositiveErrorDescription

	^'Number of laps must be positive'! !

!Sector methodsFor: 'initialization' stamp: 'FRT 1/May/2022, 1:02:21 pm (UTC)'!
initializeOf: aLength 

	cars _ Dictionary new.
	length _ aLength.! !

!Sector methodsFor: 'car position' stamp: 'HAW 1/May/2022, 7:59:05 pm (UTC)'!
atStartPut: aCar
 
	self put: aCar at: 0*kilometer! !

!Sector methodsFor: 'car position' stamp: 'FRT 30/Apr/2022, 12:23:35 pm (UTC)'!
positionOf: aCar
 
	^ cars at: aCar.
! !

!Sector methodsFor: 'car position' stamp: 'FRT 1/May/2022, 5:13:55 pm (UTC)'!
put: aCar at: aPosition
 
	self assertValidPosition: aPosition.
	
	cars at: aCar put: aPosition.
	aCar atSector: self.! !

!Sector methodsFor: 'car position' stamp: 'FRT 30/Apr/2022, 6:04:40 pm (UTC)'!
remove: aCar
 
	cars removeKey: aCar ifAbsent: [].
! !

!Sector methodsFor: 'accessing' stamp: 'FRT 1/May/2022, 1:08:51 am (UTC)'!
cars
	
	^ cars keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 2/May/2022, 5:26:16 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 1/May/2022, 7:54:33 pm (UTC)'!
includes: aCar

	^ cars includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
activateTurboTo: aCarToActivateTurboTo

	self subclassResponsibility! !

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!Sector methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
assertValidPosition: aPosition

	length < aPosition ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
of: aLength

	self assertIsValidLength: aLength.

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
withTurboOf: aLength 

	^SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
withoutTurboOf: aLength 
	
	^SectorWithoutTurbo of: aLength! !

!Sector class methodsFor: 'error message' stamp: 'FRT 30/Apr/2022, 11:24:41 pm (UTC)'!
cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription
	
	^ 'Cannot activate Turbo when opponent is more than 1 second ahead'! !

!Sector class methodsFor: 'error message' stamp: 'FRT 30/Apr/2022, 11:13:07 pm (UTC)'!
cannotActivateTurboWhenNoCarAheadErrorDescription
	
	^ 'Cannot activate Turbo without opponent ahead'! !

!Sector class methodsFor: 'error message' stamp: 'FRT 30/Apr/2022, 1:08:26 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Driver can not be placed outside section'! !

!Sector class methodsFor: 'error message' stamp: 'HAW 30/Apr/2022, 8:05:20 pm (UTC)'!
lengthMustBePositiveErrorDescription

	^ 'Length must be positive'! !

!Sector class methodsFor: 'error message' stamp: 'FRT 30/Apr/2022, 12:54:45 pm (UTC)'!
turboNotAllowedErrorDescription
	
	^ 'Turbo not allowed in this Sector'! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
assertIsValidLength: aLength

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
activateTurboTo: aCarToActivateTurboTo

	| positionOfCarAhead |

	positionOfCarAhead _ self 
		positionOfCarAheadOf: aCarToActivateTurboTo 
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self 
		assertDriverIsOneSecondOrLess: aCarToActivateTurboTo
		ofDriverAt: positionOfCarAhead.

	aCarToActivateTurboTo activateTurboInSectorWithTurbo! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
assertDriverIsOneSecondOrLess: aCarToActivateTurboTo ofDriverAt: positionOfCarAhead

	| carAhead |
	
	carAhead _ self carAtPosition: positionOfCarAhead.
	
	(self timeToReachPositionOf: carAhead) - (self timeToReachPositionOf: aCarToActivateTurboTo) < (1 * second)
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
carAtPosition: positionOfDriver

	^cars keyAtValue: positionOfDriver! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
positionOfCarAheadOf: aCarToActiveTurboTo ifNone: alternativeClosure

	| carToActivateTurboToPosition |
	
	carToActivateTurboToPosition _ self positionOf: aCarToActiveTurboTo.
	 
	^cars asSortedCollection 
		detect: [ :aPosition | aPosition > carToActivateTurboToPosition ]
		ifNone: alternativeClosure! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
activateTurboTo: aCarToActivateTurboTo

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 30/Apr/2022, 8:06:50 pm (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy.! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.

	^(self lengthBefore: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsInside: aPosition.
	self remove: aCar.

	sector _ self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self lengthBefore: sector)! !

!Track methodsFor: 'car position' stamp: 'FRT 30/Apr/2022, 6:15:27 pm (UTC)'!
remove: aCar
	
	| currentSector |
	
	currentSector _ self sectorOf: aCar ifNone: [ ^ self ].
	currentSector remove: aCar.
	! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
sectorOf: aCar
	
	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
cars

	^sectors inject: Set new into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
length

	^self lengthOf: sectors! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self lengthUpToEndOf: sector) ]! !

!Track methodsFor: 'length - private' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
lengthBefore: aSector

	^self lengthOf: (sectors copyUpTo: aSector)! !

!Track methodsFor: 'length - private' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
lengthOf: aCollectionOfSectors

	^aCollectionOfSectors sum: [ :sector | sector length ] ifEmpty: [ 0 * kilometer ]! !

!Track methodsFor: 'length - private' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
lengthUpToEndOf: aSector

	^(self lengthBefore: aSector) + aSector length! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
withSectors: sectors

	self assertHasSectors: sectors.
	
	^self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Track class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:45:52 am (UTC)'!
assertHasSectors: aCollectionOfSectors

	aCollectionOfSectors ifEmpty: [ self error: self mustHaveSectorsErrorDescription ]! !

!TurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
initializeIncreasingSpeedBy: aSpeedFactor followedBy: aNextBoost

	speedFactor _ aSpeedFactor.
	next _ aNextBoost! !

!TurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
applyTo: aSpeed

	^aSpeed * speedFactor! !

!TurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
next

	^next! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
first

	^self
		increasingSpeedBy: 12 / 10
		followedBy: (self
			increasingSpeedBy: 11 / 10
			followedBy: (self increasingSpeedBy: 105 / 100 followedBy: ExhaustedTurboBoost new))! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
increasingSpeedBy: aSpeedFactor followedBy: aNextBoost

	^self new initializeIncreasingSpeedBy: aSpeedFactor followedBy: aNextBoost! !

!TurboState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
isActivated

	self subclassResponsibility! !

!TurboState methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
speedFrom: aSpeed

	self subclassResponsibility! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
activateFor: aCar

	self subclassResponsibility! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
activated

	self subclassResponsibility! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
deactivated

	self subclassResponsibility! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
initializeWithBoost: aBoost

	boost _ aBoost! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
speedFrom: aSpeed

	^boost applyTo: aSpeed! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
activateFor: aCar

	^self error: FormulaOneCar turboAlreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
activated

	^self error: FormulaOneCar turboAlreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
deactivated

	^DeactivatedTurbo withNextBoost: boost next! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
withBoost: aBoost

	^self new initializeWithBoost: aBoost! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
initializeWithNextBoost: aBoost

	nextBoost _ aBoost! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
speedFrom: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
activateFor: aCar

	aCar activateTurboInCurrentSector! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
activated

	^ActivatedTurbo withBoost: nextBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
deactivated

	^self error: FormulaOneCar turboAlreadydeActivatedErrorDescription! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
unused

	^self withNextBoost: TurboBoost first! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:45:14 am (UTC)'!
withNextBoost: aBoost

	^self new initializeWithNextBoost: aBoost! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 30/Apr/2022, 9:38:56 pm (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer.]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	| car sector |

	sector _ Sector withoutTurboOf: 10 * kilometer.
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	sector atStartPut: car.
	
	self should: [ car activateTurbo ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: error messageText equals: Sector turboNotAllowedErrorDescription.
			self deny: car isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
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
		withExceptionDo: [ :exception |
			self assert: exception messageText equals: Sector cannotActivateTurboWhenNoCarAheadErrorDescription.
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self 
		schumacherAt: 12.95 * kilometer
		behindHamiltonAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self 
		schumacherAt: 12.9 * kilometer
		behindHamiltonAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.
	
	self should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self 
				assert: error messageText
				equals: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 2/May/2022, 12:16:40 pm (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |
	
	track _ Track withSectors: self sectorsOfTenKilometersWithTurboAndTwentyWithoutTurbo.
	
	self assert: track length equals: 30 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |
	
	track _ Track withSectors: self sectorsOfTenKilometersWithTurboAndTwentyWithoutTurbo.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self should: [ track put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: error messageText equals: Track cannotPlacedCarErrorDescription.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack positionInSector2 |
	
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithoutTurbo.
		
	positionInSector2 _ 5 * kilometer.
	positionInTrack _ sectors first length + positionInSector2.
	
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.
	
	self assert: (track sectorOf: car) equals: sectors second.
	self assert: (track positionOf: car) equals: positionInTrack.
	
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track car1 car2 |
	
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithoutTurbo.
		
	track _ Track withSectors: sectors.
	car1 _ FormulaOneCar drivenBy: #Schumacher.
	car2 _ FormulaOneCar drivenBy: #Verstappen.

	track put: car1 at: 10 * kilometer.
	track put: car2 at: 30 * kilometer.
	
	self assert: (track includes: car1).
	self assert: (track includes: car2).
		
	self assert: (sectors first includes: car1).
	self assert: (sectors second includes: car2)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |
	
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithoutTurbo.
	
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.
	
	self assert: (track sectorOf: car) equals: sectors second.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |
	
	track _ Track withSectors: self sectorsOfTenKilometersWithTurboAndTwentyWithoutTurbo.
	numberOfLaps _ 100.
	
	grandPrix _ GrandPrix on: track running: numberOfLaps.
	
	self assert: grandPrix length equals: track length * numberOfLaps! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	grandPrix _ GrandPrix on: self trackOfTenKilometers running: 100.
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.	
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix locationOf: hamilton) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	verstappen speed: 0 * kilometer / hour.
	
	grandPrix _ GrandPrix 
		on: self trackOfTenKilometers
		running: 100
		with: (Set with: verstappen).
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: self sectorsOfTenKilometersWithTurboAndTwentyWithoutTurbo)
		running: 100
		with: (Set with: verstappen).
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: (grandPrix locationOf: verstappen) equals: 300 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithoutTurbo.
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: sectors)
		running: 100
		with: (Set with: verstappen).
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithoutTurbo.
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: sectors)
		running: 100
		with: (Set with: verstappen).
		
	grandPrix put: verstappen at: 0 * kilometer.
	
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix verstappen sectorA sectorB |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectorA _ Sector withTurboOf: 10 * kilometer.
	sectorB _ Sector withTurboOf: 30 * kilometer.
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: (OrderedCollection with: sectorA with: sectorB))
		running: 100
		with: (Set with: verstappen).
		
	grandPrix put: verstappen at: 5 * kilometer.
	verstappen speed: 15 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: (grandPrix locationOf: verstappen) equals: 20 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectorB! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	
	schumacher activateTurbo.
	
	self assert: schumacher speed equals: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	self useTurboOf: schumacher times: 1.
	
	schumacher activateTurbo.
	
	self assert: schumacher speed equals: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	self useTurboOf: schumacher times: 2.
	
	schumacher activateTurbo.
	
	self assert: schumacher speed equals: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	self useTurboOf: schumacher times: 3.
	
	schumacher activateTurbo.
	
	self assert: schumacher speed equals: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: FormulaOneCar turboAlreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: FormulaOneCar turboAlreadydeActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
test26GrandPrixMustHavePositiveNumberOfLaps

	self
		should: [ GrandPrix on: self trackOfTenKilometers running: 0 ]
		raise: Error - MessageNotUnderstood
		withMessageText: GrandPrix numberOfLapsMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
schumacherAt: aSchumacherPosition behindHamiltonAt: aHamiltonPosition bothRunningAt: aSpeed

	| schumacher hamilton sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	
	schumacher speed: aSpeed.
	hamilton speed: aSpeed.
	
	sector put: schumacher at: aSchumacherPosition.
	sector put: hamilton at: aHamiltonPosition.
	
	^schumacher! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
schumacherLessThanASecondBehindHamilton

	^self 
		schumacherAt: 12.99 * kilometer
		behindHamiltonAt: 13 * kilometer
		bothRunningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
sectorsOfTenKilometersWithTurboAndTwentyWithoutTurbo

	^OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
trackOfTenKilometers

	^Track withSectors: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer))! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 10:46:45 am (UTC)'!
useTurboOf: aCar times: aNumberOfUses

	aNumberOfUses timesRepeat: [ aCar activateTurbo; deactivateTurbo ]! !
