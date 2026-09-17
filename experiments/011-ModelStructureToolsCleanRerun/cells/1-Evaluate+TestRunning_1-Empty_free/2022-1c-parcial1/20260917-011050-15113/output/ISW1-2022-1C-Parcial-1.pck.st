'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:14:25 am'!
'Description '!
!provides: 'ISW1-2022-1C-Parcial-1' 1 0!
SystemOrganization addCategory: #'ISW1-2022-1C-Parcial-1'!
SystemOrganization addCategory: #'ISW1-2022-1C-Parcial-1-Tests'!


!classDefinition: #ExhaustedTurboCharge category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #ExhaustedTurboCharge
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ExhaustedTurboCharge class' category: #'ISW1-2022-1C-Parcial-1'!
ExhaustedTurboCharge class
	instanceVariableNames: ''!

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
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'Turbo class' category: #'ISW1-2022-1C-Parcial-1'!
Turbo class
	instanceVariableNames: ''!

!classDefinition: #ActivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
Turbo subclass: #ActivatedTurbo
	instanceVariableNames: 'charge'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ActivatedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
ActivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #DeactivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
Turbo subclass: #DeactivatedTurbo
	instanceVariableNames: 'nextCharge'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'DeactivatedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
DeactivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #TurboCharge category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #TurboCharge
	instanceVariableNames: 'speedIncrementPercentage nextCharge'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboCharge class' category: #'ISW1-2022-1C-Parcial-1'!
TurboCharge class
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


!ExhaustedTurboCharge methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!ExhaustedTurboCharge methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
next

	^self! !

!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:13:01 am (UTC)'!
initializeDrivenBy: aDriver 

	driver _ aDriver.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer.
	turbo _ Turbo ready! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 4:13:01 am (UTC)'!
advance: aDistance

	traveledDistance _ traveledDistance + aDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 4:13:01 am (UTC)'!
atSector: aSector

	currentSector _ aSector! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 4:13:01 am (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:13:01 am (UTC)'!
activateTurbo

	turbo _ turbo activateFor: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:13:01 am (UTC)'!
deactivateTurbo

	turbo _ turbo deactivate! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:13:01 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!FormulaOneCar methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 4:13:01 am (UTC)'!
assertCanActivateTurbo

	currentSector assertCanActivateTurboTo: self! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:13:01 am (UTC)'!
speed

	^turbo boost: speed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:13:01 am (UTC)'!
speed: newSpeed

	speed _ newSpeed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:13:01 am (UTC)'!
traveledDistance

	^traveledDistance! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:13:18 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps with: aCollectionOfCars

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps.
	aCollectionOfCars do: [ :car | self put: car at: 0 * kilometer ]! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:13:18 am (UTC)'!
locationOf: aCar

	^aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:13:18 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:13:18 am (UTC)'!
sectorOf: aCar 

	^track sectorOf: aCar! !

!GrandPrix methodsFor: 'length' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 4:13:18 am (UTC)'!
advance: aTimeLapse
	
	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation - private' stamp: 'HAW 17/Sep/2026, 4:13:18 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'simulation - private' stamp: 'HAW 17/Sep/2026, 4:13:18 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 10:36:05 pm (UTC)'!
on: aTrack running: aNumberOfLaps 

	^self on: aTrack running: aNumberOfLaps with: #()! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
on: aTrack running: aNumberOfLaps with: aCollectionOfCars

	self assertIsPositive: aNumberOfLaps.

	^self new initializeOn: aTrack running: aNumberOfLaps with: aCollectionOfCars! !

!GrandPrix class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:13:18 am (UTC)'!
assertIsPositive: aNumberOfLaps

	aNumberOfLaps strictlyPositive ifFalse: [ self error: self numberOfLapsMustBePositiveErrorDescription ]! !

!GrandPrix class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:13:18 am (UTC)'!
numberOfLapsMustBePositiveErrorDescription

	^'Number of laps must be positive'! !

!Sector methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:13:02 am (UTC)'!
initializeOf: aLength 

	cars _ Dictionary new.
	length _ aLength! !

!Sector methodsFor: 'car position' stamp: 'FRT 1/May/2022, 5:13:55 pm (UTC)'!
assertValidPosition: aPosition

	length < aPosition ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

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

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:13:02 am (UTC)'!
assertCanActivateTurboTo: aCar

	self subclassResponsibility! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:13:02 am (UTC)'!
of: aLength 

	self assertIsPositive: aLength.

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:13:02 am (UTC)'!
withTurboOf: aLength 

	^SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:13:02 am (UTC)'!
withoutTurboOf: aLength 

	^SectorWithoutTurbo of: aLength! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:13:02 am (UTC)'!
assertIsPositive: aLength

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

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:13:02 am (UTC)'!
assertCanActivateTurboTo: aCar

	| carAhead |

	carAhead _ self 
		carAheadOf: aCar 
		ifNone: [ self error: Sector cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self assert: aCar isLessThanOneSecondBehind: carAhead! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 4:13:02 am (UTC)'!
assert: aCar isLessThanOneSecondBehind: aCarAhead

	(self timeToReachPositionOf: aCarAhead) - (self timeToReachPositionOf: aCar) < (1 * second)
		ifFalse: [ self error: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 4:13:02 am (UTC)'!
carAheadOf: aCar ifNone: aBlock

	^self carsSortedByPosition 
		detect: [ :aCarInSector | (self positionOf: aCarInSector) > (self positionOf: aCar) ]
		ifNone: aBlock! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 4:13:02 am (UTC)'!
carsSortedByPosition

	^self cars asSortedCollection: [ :aCar :anotherCar | (self positionOf: aCar) <= (self positionOf: anotherCar) ]! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 4:13:02 am (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:13:02 am (UTC)'!
assertCanActivateTurboTo: aCar

	self error: Sector turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.

	^(self startOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsInside: aPosition.
	self remove: aCar.

	sector _ sectors detect: [ :aSector | aPosition <= (self endOf: aSector) ].
	sector put: aCar at: aPosition - (self startOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
sectorOf: aCar
	
	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
cars

	^sectors 
		inject: Set new 
		into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
length

	^self lengthOf: sectors! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
remove: aCar
	
	(self sectorOf: aCar ifNone: [ ^self ]) remove: aCar! !

!Track methodsFor: 'sectors - private' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector length! !

!Track methodsFor: 'sectors - private' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
lengthOf: someSectors

	^someSectors sum: [ :sector | sector length ] ifEmpty: [ 0 * kilometer ]! !

!Track methodsFor: 'sectors - private' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
startOf: aSector

	^self lengthOf: (sectors first: (sectors indexOf: aSector) - 1)! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
withSectors: sectors

	self assertIsNotEmpty: sectors.
	
	^self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Track class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:13:17 am (UTC)'!
assertIsNotEmpty: sectors

	sectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ]! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
activateFor: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
deactivate

	self subclassResponsibility! !

!Turbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:13:01 am (UTC)'!
ready

	^DeactivatedTurbo withNextCharge: 
		(TurboCharge increasingSpeedBy: 20 followedBy: 
			(TurboCharge increasingSpeedBy: 10 followedBy: 
				(TurboCharge increasingSpeedBy: 5 followedBy: ExhaustedTurboCharge new)))! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
turboAlreadyActivatedErrorDescription

	^'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
turboAlreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
initializeBoostingWith: aTurboCharge

	charge _ aTurboCharge! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
activateFor: aCar

	self error: Turbo turboAlreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
deactivate

	^DeactivatedTurbo withNextCharge: charge next! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
boost: aSpeed

	^charge boost: aSpeed! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
boostingWith: aTurboCharge

	^self new initializeBoostingWith: aTurboCharge! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
initializeWithNextCharge: aTurboCharge

	nextCharge _ aTurboCharge! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
activateFor: aCar

	aCar assertCanActivateTurbo.
	
	^ActivatedTurbo boostingWith: nextCharge! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
deactivate

	self error: Turbo turboAlreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:12:45 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
withNextCharge: aTurboCharge

	^self new initializeWithNextCharge: aTurboCharge! !

!TurboCharge methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
initializeIncreasingSpeedBy: aPercentage followedBy: aTurboCharge

	speedIncrementPercentage _ aPercentage.
	nextCharge _ aTurboCharge! !

!TurboCharge methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
boost: aSpeed

	^aSpeed * (100 + speedIncrementPercentage) / 100! !

!TurboCharge methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
next

	^nextCharge! !

!TurboCharge class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:12:44 am (UTC)'!
increasingSpeedBy: aPercentage followedBy: aTurboCharge

	^self new initializeIncreasingSpeedBy: aPercentage followedBy: aTurboCharge! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test02ACarCanNotBePlacedInAKilometerGreaterThanSectorLength

	| sector outside |
	
	sector _ Sector withTurboOf: 10 * kilometer.
	outside _ sector length + (1 * millimeter).
	
	self 
		should: [ sector put: schumacher at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (sector includes: schumacher) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	(Sector withoutTurboOf: 10 * kilometer) atStartPut: schumacher.
	
	self assertSchumacherCanNotActivateTurboWith: Sector turboNotAllowedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	self 
		placeInTurboSectorSchumacherAt: 13 * kilometer 
		andHamiltonAt: 12 * kilometer 
		bothRunningAt: 300 * kilometer / hour.
	
	self assertSchumacherCanNotActivateTurboWith: Sector cannotActivateTurboWhenNoCarAheadErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	self 
		placeInTurboSectorSchumacherAt: 12.95 * kilometer 
		andHamiltonAt: 13 * kilometer 
		bothRunningAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	self 
		placeInTurboSectorSchumacherAt: 12.9 * kilometer 
		andHamiltonAt: 13 * kilometer 
		bothRunningAt: 300 * kilometer / hour.
	
	self assertSchumacherCanNotActivateTurboWith: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	self assert: 30 * kilometer equals: (Track withSectors: self twoSectors) length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track outside |
	
	track _ Track withSectors: self twoSectors.
	outside _ track length + (1 * millimeter).
	
	self 
		should: [ track put: schumacher at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (track includes: schumacher) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track positionInTrack |
	
	sectors _ self twoSectors.
	positionInTrack _ sectors first length + (5 * kilometer).
	track _ Track withSectors: sectors.

	track put: schumacher at: positionInTrack.
	
	self assert: sectors second equals: (track sectorOf: schumacher).
	self assert: positionInTrack equals: (track positionOf: schumacher).
	self deny: (sectors first includes: schumacher).
	self assert: (sectors second includes: schumacher)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track |
	
	sectors _ self twoSectors.
	track _ Track withSectors: sectors.

	track put: schumacher at: 10 * kilometer.
	track put: verstappen at: 30 * kilometer.
	
	self assert: (track includes: schumacher).
	self assert: (track includes: verstappen).
	self assert: (sectors first includes: schumacher).
	self assert: (sectors second includes: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track |
	
	sectors _ self twoSectors.
	track _ Track withSectors: sectors.

	track put: schumacher at: 5 * kilometer.
	track put: schumacher at: 15 * kilometer.
	
	self assert: sectors second equals: (track sectorOf: schumacher).
	self deny: (sectors first includes: schumacher).
	self assert: (sectors second includes: schumacher)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix |
	
	track _ Track withSectors: self twoSectors.
	grandPrix _ GrandPrix on: track running: 100.
	
	self assert: track length * 100 equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix |
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)))
		running: 100.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix |
	
	grandPrix _ self 
		grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)) 
		with: verstappen.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix |
	
	grandPrix _ self grandPrixOn: self twoSectors with: verstappen.
	
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix sectors |
	
	sectors _ self twoSectors.
	grandPrix _ self grandPrixOn: sectors with: verstappen.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix sectors |
	
	sectors _ self twoSectors.
	grandPrix _ self grandPrixOn: sectors with: verstappen.
	
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix sectorA sectorB |
	
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self assertSchumacherSpeedIs: 120 * kilometer / hour afterUsingTurbo: 1! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self assertSchumacherSpeedIs: 110 * kilometer / hour afterUsingTurbo: 2! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self assertSchumacherSpeedIs: 105 * kilometer / hour afterUsingTurbo: 3! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	self assertSchumacherSpeedIs: 100 * kilometer / hour afterUsingTurbo: 4! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	self placeSchumacherCloseBehindHamilton.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: Turbo turboAlreadyActivatedErrorDescription equals: error messageText.
			self assert: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	self placeSchumacherCloseBehindHamilton.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: Turbo turboAlreadyDeactivatedErrorDescription equals: error messageText.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test26GrandPrixNumberOfLapsMustBePositive

	self 
		should: [ GrandPrix on: (Track withSectors: self twoSectors) running: 0 ]
		raise: Error
		withMessageText: GrandPrix numberOfLapsMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
test27GrandPrixPlacesItsCarsAtTheStart

	| sectors grandPrix |
	
	sectors _ self twoSectors.
	grandPrix _ self grandPrixOn: sectors with: verstappen.
	
	self assert: 0 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:13:53 am (UTC)'!
setUp

	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	verstappen _ FormulaOneCar drivenBy: #Verstappen! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 4:13:53 am (UTC)'!
grandPrixOn: sectors with: aCar

	^GrandPrix 
		on: (Track withSectors: sectors)
		running: 100
		with: (Set with: aCar)! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 4:13:53 am (UTC)'!
placeInTurboSectorSchumacherAt: schumacherPosition andHamiltonAt: hamiltonPosition bothRunningAt: aSpeed

	| sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	
	schumacher speed: aSpeed.
	hamilton speed: aSpeed.
	
	sector put: schumacher at: schumacherPosition.
	sector put: hamilton at: hamiltonPosition! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 4:13:53 am (UTC)'!
placeSchumacherCloseBehindHamilton

	self 
		placeInTurboSectorSchumacherAt: 12.99 * kilometer 
		andHamiltonAt: 13 * kilometer 
		bothRunningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 4:13:53 am (UTC)'!
twoSectors

	^OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:13:54 am (UTC)'!
assertSchumacherCanNotActivateTurboWith: anErrorDescription

	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:13:53 am (UTC)'!
assertSchumacherSpeedIs: aSpeed afterUsingTurbo: numberOfTimes

	self placeSchumacherCloseBehindHamilton.
	
	self useTurboOfSchumacher: numberOfTimes.
	
	self assert: schumacher isTurboActivated.
	self assert: aSpeed equals: schumacher speed! !

!FormulaOneTest methodsFor: 'test actions' stamp: 'HAW 17/Sep/2026, 4:13:53 am (UTC)'!
useTurboOfSchumacher: numberOfTimes

	numberOfTimes - 1 timesRepeat: [ schumacher activateTurbo; deactivateTurbo ].
	schumacher activateTurbo! !
