'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:27:40 am'!
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


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:26:05 am (UTC)'!
initializeDrivenBy: aDriver 

	driver _ aDriver.
	turbo _ DeactivatedTurbo using: FirstTurboBoost new.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:07 pm (UTC)'!
advance: aDistance

	traveledDistance _ traveledDistance + aDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'FRT 30/Apr/2022, 7:33:07 pm (UTC)'!
atSector: aSector

	currentSector _ aSector.! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:26:05 am (UTC)'!
speed

	^turbo boost: speed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 1/May/2022, 8:34:26 pm (UTC)'!
speed: newSpeed

	speed _ newSpeed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:19 pm (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:31 pm (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:26:05 am (UTC)'!
activateTurbo

	turbo activateFor: self in: currentSector! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:26:05 am (UTC)'!
deactivateTurbo
	
	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:26:05 am (UTC)'!
isTurboActivated
	
	^turbo isActivated! !

!FormulaOneCar methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 10:26:05 am (UTC)'!
activateTurboInSectorWithTurbo
	
	turbo _ turbo activated! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!FormulaOneCar class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:26:05 am (UTC)'!
turboAlreadyActivatedErrorDescription
	
	^'Turbo already activated'! !

!FormulaOneCar class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:26:05 am (UTC)'!
turboAlreadydeActivatedErrorDescription
	
	^'Turbo is already deactivated'! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:26:15 am (UTC)'!
initializeWithTrack: aTrack andNumberOfLaps: aNumberOfLaps andCars: aCollectionOfCars

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps.
	cars _ aCollectionOfCars copy! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 1/May/2022, 1:23:59 am (UTC)'!
locationOf: aCar

	^ aCar traveledDistance.	! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:26:15 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 30/Apr/2022, 6:38:16 pm (UTC)'!
sectorOf: aCar 

	^ track sectorOf: aCar.! !

!GrandPrix methodsFor: 'length' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 10:26:15 am (UTC)'!
advance: aTimeLapse
	
	cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 10:26:15 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 10:26:15 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 10:36:05 pm (UTC)'!
on: aTrack running: aNumberOfLaps 

	^self on: aTrack running: aNumberOfLaps with: #()! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:26:15 am (UTC)'!
on: aTrack running: aNumberOfLaps with: aCollectionOfCars

	self assertIsValidNumberOfLaps: aNumberOfLaps.

	^self new initializeWithTrack: aTrack andNumberOfLaps: aNumberOfLaps andCars: aCollectionOfCars! !

!GrandPrix class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:26:15 am (UTC)'!
assertIsValidNumberOfLaps: aNumberOfLaps

	aNumberOfLaps strictlyPositive ifFalse: [ self error: self numberOfLapsMustBePositiveErrorDescription ]! !

!GrandPrix class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:26:15 am (UTC)'!
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

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:26:34 am (UTC)'!
activateTurboTo: aCarToActivateTurboTo

	self subclassResponsibility! !

!Sector methodsFor: 'car position - private' stamp: 'FRT 1/May/2022, 5:13:55 pm (UTC)'!
assertValidPosition: aPosition

	length < aPosition ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:26:34 am (UTC)'!
of: aLength

	self assertIsValidLength: aLength.

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:26:34 am (UTC)'!
withTurboOf: aLength 

	^SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:26:34 am (UTC)'!
withoutTurboOf: aLength 
	
	^SectorWithoutTurbo of: aLength! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:26:34 am (UTC)'!
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

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:26:34 am (UTC)'!
activateTurboTo: aCarToActivateTurboTo

	| positionOfCarAhead |

	positionOfCarAhead _ self 
		positionOfCarAheadOf: aCarToActivateTurboTo 
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self 
		assertDriverIsOneSecondOrLess: aCarToActivateTurboTo
		ofDriverAt: positionOfCarAhead.

	aCarToActivateTurboTo activateTurboInSectorWithTurbo! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 10:26:34 am (UTC)'!
assertDriverIsOneSecondOrLess: aCarToActivateTurboTo ofDriverAt: positionOfCarAhead

	| carAhead |
	
	carAhead _ self carAtPosition: positionOfCarAhead.
	
	(self timeToReachPositionOf: carAhead) - (self timeToReachPositionOf: aCarToActivateTurboTo) < (1 * second)
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
carAtPosition: positionOfDriver

	^cars keyAtValue: positionOfDriver! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
positionOfCarAheadOf: aCarToActiveTurboTo ifNone: alternativeClosure

	| carToActivateTurboToPosition |
	
	carToActivateTurboToPosition _ cars at: aCarToActiveTurboTo.
	 
	^cars asSortedCollection 
		detect: [ :aPosition | aPosition > carToActivateTurboToPosition ]
		ifNone: alternativeClosure! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
timeToReachPositionOf: aCar

	^(cars at: aCar) / aCar speed! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:26:34 am (UTC)'!
activateTurboTo: aCarToActivateTurboTo

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 30/Apr/2022, 8:06:50 pm (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy.! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.

	^(self distanceToStartOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsInTrack: aPosition.
	self remove: aCar.

	sector _ self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self distanceToStartOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
sectorOf: aCar
	
	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
cars

	^sectors inject: Set new into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
length

	^self lengthOf: sectors! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
assertIsInTrack: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
distanceToEndOf: aSector

	^(self distanceToStartOf: aSector) + aSector length! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
distanceToStartOf: aSector

	^self lengthOf: (sectors copyUpTo: aSector)! !

!Track methodsFor: 'car position - private' stamp: 'FRT 30/Apr/2022, 6:15:27 pm (UTC)'!
remove: aCar
	
	| currentSector |
	
	currentSector _ self sectorOf: aCar ifNone: [ ^ self ].
	currentSector remove: aCar.
	! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self distanceToEndOf: sector) ]! !

!Track methodsFor: 'accessing - private' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
lengthOf: aSectors

	^aSectors sum: [ :sector | sector length ] ifEmpty: [ 0 * kilometer ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
withSectors: sectors

	self assertHasSectors: sectors.
	
	^self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Track class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:26:35 am (UTC)'!
assertHasSectors: aSectors

	aSectors ifEmpty: [ self error: self mustHaveSectorsErrorDescription ]! !

!Turbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
initializeUsing: aTurboBoost

	boost _ aTurboBoost! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
activateFor: aCar in: aSector

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
using: aTurboBoost

	^self new initializeUsing: aTurboBoost! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
boost: aSpeed

	^boost applyTo: aSpeed! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
activateFor: aCar in: aSector

	self error: FormulaOneCar turboAlreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
deactivated

	^DeactivatedTurbo using: boost next! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
isActivated

	^true! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
activateFor: aCar in: aSector

	aSector activateTurboTo: aCar! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
activated

	^ActivatedTurbo using: boost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:26:05 am (UTC)'!
deactivated

	self error: FormulaOneCar turboAlreadydeActivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:26:05 am (UTC)'!
isActivated

	^false! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
applyTo: aSpeed

	self subclassResponsibility! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
next

	self subclassResponsibility! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
applyTo: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
next

	^self! !

!FirstTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
applyTo: aSpeed

	^aSpeed * 12 / 10! !

!FirstTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
next

	^SecondTurboBoost new! !

!SecondTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
applyTo: aSpeed

	^aSpeed * 11 / 10! !

!SecondTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
next

	^ThirdTurboBoost new! !

!ThirdTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
applyTo: aSpeed

	^aSpeed * 105 / 100! !

!ThirdTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:26:04 am (UTC)'!
next

	^ExhaustedTurboBoost new! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 30/Apr/2022, 9:38:56 pm (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer.]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 2/May/2022, 12:16:07 pm (UTC)'!
test02ACarCanNotBePlacedInAKilometerGreaterThanSectorLength

	| sector  outside car |
	
	sector _ Sector withTurboOf: 10 * kilometer.
	outside _ sector length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self 
		should: [ sector put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (sector includes: car) ]	
! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 2/May/2022, 12:16:07 pm (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	| car sector |

	sector _ Sector withoutTurboOf: 10*kilometer.
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	sector atStartPut: car.
	
	self should: [ car activateTurbo ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector turboNotAllowedErrorDescription equals: error messageText.
			self deny: car isTurboActivated]
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	| hamilton |
	
	hamilton _ self 
		carAt: 13 * kilometer
		inTurboSectorWithAnotherCarAt: 12 * kilometer
		runningAt: 300 * kilometer / hour.
	
	self 
		should: [ hamilton activateTurbo]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [:exception |
			self assert: Sector cannotActivateTurboWhenNoCarAheadErrorDescription equals: exception messageText. 
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self 
		carAt: 12.95 * kilometer
		inTurboSectorWithAnotherCarAt: 13 * kilometer
		runningAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self 
		carAt: 12.9 * kilometer
		inTurboSectorWithAnotherCarAt: 13 * kilometer
		runningAt: 300 * kilometer / hour.
	
	self should: [schumacher activateTurbo]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self 
				assert: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription 
				equals: error messageText.
			self deny: schumacher isTurboActivated]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 2/May/2022, 12:16:40 pm (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |
	
	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.
	
	self assert: 30 * kilometer equals: track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |
	
	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self should: [ track put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack positionInSector2 |
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
	positionInSector2 _ 5 * kilometer.
	positionInTrack _ sectors first length + positionInSector2.
	
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.
	
	self assert: sectors second equals: (track sectorOf: car).
	self assert: positionInTrack equals: (track positionOf: car).
	
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track car1 car2 |
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
	track _ Track withSectors: sectors.
	car1 _ FormulaOneCar drivenBy: #Schumacher.
	car2 _ FormulaOneCar drivenBy: #Verstappen.

	track put: car1 at: 10 * kilometer.
	track put: car2 at: 30 * kilometer.
	
	self assert: (track includes: car1).
	self assert: (track includes: car2).
		
	self assert: (sectors first includes: car1).
	self assert: (sectors second includes: car2)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.
	
	self assert: sectors second equals: (track sectorOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |
	
	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.
	numberOfLaps _ 100.
	
	grandPrix _ GrandPrix on: track running: numberOfLaps.
	
	self assert: track length * numberOfLaps equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 2/May/2022, 12:17:14 pm (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)))
		running: 100.
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.	
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert:  5 * kilometer equals: (grandPrix locationOf: hamilton). 
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	verstappen speed: 0 * kilometer / hour.
	
	grandPrix _ self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)) with: verstappen.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	grandPrix _ self grandPrixOn: self sectorsOfTenAndTwentyKilometers with: verstappen.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ self sectorsOfTenAndTwentyKilometers.
	grandPrix _ self grandPrixOn: sectors with: verstappen.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ self sectorsOfTenAndTwentyKilometers.
	grandPrix _ self grandPrixOn: sectors with: verstappen.
		
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix verstappen sectorA sectorB |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectorA _ Sector withTurboOf: 10 * kilometer.
	sectorB _ Sector withTurboOf: 30 * kilometer.
	grandPrix _ self grandPrixOn: (OrderedCollection with: sectorA with: sectorB) with: verstappen.
		
	grandPrix put: verstappen at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectorA equals: (grandPrix sectorOf: verstappen).
	
	verstappen speed: 15 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 20 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectorB equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCarAtOneHundredKilometersPerHour.
	
	self activateTurboOf: schumacher times: 1.
	
	self assertTurboOf: schumacher isActivatedRunningAt: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCarAtOneHundredKilometersPerHour.
	
	self activateTurboOf: schumacher times: 2.
	
	self assertTurboOf: schumacher isActivatedRunningAt: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCarAtOneHundredKilometersPerHour.
	
	self activateTurboOf: schumacher times: 3.
	
	self assertTurboOf: schumacher isActivatedRunningAt: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCarAtOneHundredKilometersPerHour.
	
	self activateTurboOf: schumacher times: 4.
	
	self assertTurboOf: schumacher isActivatedRunningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCarAtOneHundredKilometersPerHour.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: FormulaOneCar turboAlreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCarAtOneHundredKilometersPerHour.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: FormulaOneCar turboAlreadydeActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
test26GrandPrixMustHaveAPositiveNumberOfLaps

	| track |
	
	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.
	
	self 
		should: [ GrandPrix on: track running: 0 ]
		raise: Error - MessageNotUnderstood
		withMessageText: GrandPrix numberOfLapsMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
carAt: aPosition inTurboSectorWithAnotherCarAt: anotherCarPosition runningAt: aSpeed

	| schumacher hamilton sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	
	schumacher speed: aSpeed.
	hamilton speed: aSpeed.
	
	sector put: schumacher at: aPosition.
	sector put: hamilton at: anotherCarPosition.
	
	^schumacher! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
carLessThanASecondBehindAnotherCarAtOneHundredKilometersPerHour

	^self 
		carAt: 12.99 * kilometer
		inTurboSectorWithAnotherCarAt: 13 * kilometer
		runningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
grandPrixOn: aSectors with: aCar

	^GrandPrix 
		on: (Track withSectors: aSectors)
		running: 100
		with: (Set with: aCar)! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
sectorsOfTenAndTwentyKilometers

	^OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'exercising' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
activateTurboOf: aCar times: aNumberOfActivations

	aNumberOfActivations - 1 timesRepeat: [ aCar activateTurbo; deactivateTurbo ].
	aCar activateTurbo! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:27:15 am (UTC)'!
assertTurboOf: aCar isActivatedRunningAt: aSpeed

	self assert: aCar isTurboActivated.
	self assert: aSpeed equals: aCar speed! !
