'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 4:56:57 am'!
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
	instanceVariableNames: 'schumacher hamilton verstappen'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1-Tests'!
!classDefinition: 'FormulaOneTest class' category: #'ISW1-2022-1C-Parcial-1-Tests'!
FormulaOneTest class
	instanceVariableNames: ''!


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:54:55 am (UTC)'!
initializeDrivenBy: aDriver 

	driver _ aDriver.
	turbo _ Turbo new.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer.! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:07 pm (UTC)'!
advance: aDistance

	traveledDistance _ traveledDistance + aDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'FRT 30/Apr/2022, 7:33:07 pm (UTC)'!
atSector: aSector

	currentSector _ aSector.! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:54:55 am (UTC)'!
speed

	^ turbo applyTo: speed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 1/May/2022, 8:34:26 pm (UTC)'!
speed: newSpeed

	speed _ newSpeed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:19 pm (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:31 pm (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:54:55 am (UTC)'!
activateTurbo

	| activatedTurbo |
	
	activatedTurbo _ turbo activate.
	currentSector assertTurboCanBeActivatedBy: self.
	
	turbo _ activatedTurbo! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:54:55 am (UTC)'!
deactivateTurbo
	
	turbo _ turbo deactivate! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:54:55 am (UTC)'!
isTurboActivated
	
	^ turbo isActivated! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:55:15 am (UTC)'!
initializeWithTrack: aTrack andNumberOfLaps: aNumberOfLaps andCars: aCollectionOfCars

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps.
	aCollectionOfCars do: [ :car | self put: car at: 0 * kilometer ]! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 1/May/2022, 1:23:59 am (UTC)'!
locationOf: aCar

	^ aCar traveledDistance.	! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:55:15 am (UTC)'!
placeOnTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:55:15 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 30/Apr/2022, 6:38:16 pm (UTC)'!
sectorOf: aCar 

	^ track sectorOf: aCar.! !

!GrandPrix methodsFor: 'length' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 7:55:15 am (UTC)'!
advance: aTimeLapse
	
	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 7:55:15 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeOnTrack: aCar! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 10:36:05 pm (UTC)'!
on: aTrack running: aNumberOfLaps 

	^self on: aTrack running: aNumberOfLaps with: #()! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 10:36:16 pm (UTC)'!
on: aTrack running: aNumberOfLaps with: aCollectionOfCars

	^self new initializeWithTrack: aTrack andNumberOfLaps: aNumberOfLaps andCars: aCollectionOfCars! !

!Sector methodsFor: 'initialization' stamp: 'FRT 1/May/2022, 1:02:21 pm (UTC)'!
initializeOf: aLength 

	cars _ Dictionary new.
	length _ aLength.! !

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

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
remove: aCar
 
	cars removeKey: aCar! !

!Sector methodsFor: 'accessing' stamp: 'FRT 1/May/2022, 1:08:51 am (UTC)'!
cars
	
	^ cars keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 2/May/2022, 5:26:16 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 1/May/2022, 7:54:33 pm (UTC)'!
includes: aCar

	^ cars includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
of: aLength 

	self assertIsPositive: aLength.

	^ self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
withTurboOf: aLength 

	^ SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
withoutTurboOf: aLength 

	^ SectorWithoutTurbo of: aLength! !

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

!Sector class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
assertIsPositive: aLength

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| carAhead |
	
	carAhead _ self 
		carAheadOf: aCar 
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self assert: aCar isLessThanASecondBehind: carAhead! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
assert: aCar isLessThanASecondBehind: carAhead

	((self timeToReach: carAhead) - (self timeToReach: aCar)) < (1 * second)
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
carAheadOf: aCar ifNone: aBlock

	| position |
	
	position _ self positionOf: aCar.
	
	^ (self cars asSortedCollection: [ :aCarBehind :aCarInFront | (self positionOf: aCarBehind) <= (self positionOf: aCarInFront) ])
		detect: [ :anotherCar | (self positionOf: anotherCar) > position ]
		ifNone: aBlock! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
timeToReach: aCar

	^ (self positionOf: aCar) / aCar speed! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 30/Apr/2022, 8:06:50 pm (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy.! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.
	
	^ (self distanceToStartOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsInside: aPosition.
	self remove: aCar.
	
	sector _ sectors detect: [ :aSector | aPosition <= (self distanceToEndOf: aSector) ].
	sector put: aCar at: aPosition - (self distanceToStartOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
remove: aCar
	
	(self sectorOf: aCar ifNone: [ ^ self ]) remove: aCar! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
sectorOf: aCar
	
	^ self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^ sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
cars

	^ sectors 
		inject: Set new 
		into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:55:15 am (UTC)'!
length

	^ sectors sum: [ :sector | sector length ]! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:55:15 am (UTC)'!
includes: aCar

	^ sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'sectors - private' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
distanceToEndOf: aSector

	^ (self distanceToStartOf: aSector) + aSector length! !

!Track methodsFor: 'sectors - private' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
distanceToStartOf: aSector

	^ (sectors copyFrom: 1 to: (sectors indexOf: aSector) - 1) 
		inject: 0 * kilometer 
		into: [ :distance :sector | distance + sector length ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 8:10:08 pm (UTC)'!
withSectors: sectors

	sectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ].
	
	^ self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:55:14 am (UTC)'!
carNotFoundErrorDescription

	^ 'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Turbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
initializeWith: aTurboBoost

	boost _ aTurboBoost! !

!Turbo methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
activate

	self subclassResponsibility! !

!Turbo methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
deactivate

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
applyTo: aSpeed

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
new

	^ DeactivatedTurbo with: FirstTurboBoost new! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
with: aTurboBoost

	^ self basicNew initializeWith: aTurboBoost! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
alreadyActivatedErrorDescription

	^ 'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
alreadyDeactivatedErrorDescription

	^ 'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
activate

	^ self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
deactivate

	^ DeactivatedTurbo with: boost next! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
isActivated

	^ true! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
applyTo: aSpeed

	^ boost applyTo: aSpeed! !

!DeactivatedTurbo methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
activate

	^ ActivatedTurbo with: boost! !

!DeactivatedTurbo methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
deactivate

	^ self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
isActivated

	^ false! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
applyTo: aSpeed

	^ aSpeed! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
applyTo: aSpeed

	self subclassResponsibility! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
next

	self subclassResponsibility! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
applyTo: aSpeed

	^ aSpeed! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
next

	^ self! !

!FirstTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
applyTo: aSpeed

	^ aSpeed * 12 / 10! !

!FirstTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
next

	^ SecondTurboBoost new! !

!SecondTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
applyTo: aSpeed

	^ aSpeed * 11 / 10! !

!SecondTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
next

	^ ThirdTurboBoost new! !

!ThirdTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
applyTo: aSpeed

	^ aSpeed * 105 / 100! !

!ThirdTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:54:54 am (UTC)'!
next

	^ ExhaustedTurboBoost new! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
setUp

	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	verstappen _ FormulaOneCar drivenBy: #Verstappen! !

!FormulaOneTest methodsFor: 'objects creation' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
grandPrixOn: sectors withVerstappenAt: aDistance

	| grandPrix |
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: sectors)
		running: 100
		with: (Set with: verstappen).
	grandPrix put: verstappen at: aDistance.
	
	^ grandPrix! !

!FormulaOneTest methodsFor: 'objects creation' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
putSchumacherAt: aSchumacherPosition behindHamiltonAt: aHamiltonPosition bothAt: aSpeed

	| sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	
	schumacher speed: aSpeed.
	hamilton speed: aSpeed.
	
	sector put: schumacher at: aSchumacherPosition.
	sector put: hamilton at: aHamiltonPosition! !

!FormulaOneTest methodsFor: 'objects creation' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
putSchumacherCloseBehindHamilton

	self 
		putSchumacherAt: 12.99 * kilometer 
		behindHamiltonAt: 13 * kilometer 
		bothAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'objects creation' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
sectorWithTurboAndSectorWithoutTurbo

	^ OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'objects creation' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
trackWithOneSector

	^ Track withSectors: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer))! !

!FormulaOneTest methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
activateSchumacherTurboForTheTime: aNumberOfActivation

	aNumberOfActivation - 1 timesRepeat: [ schumacher activateTurbo; deactivateTurbo ].
	schumacher activateTurbo! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
assertIn: aGrandPrix verstappenIsAt: aDistance inSector: aSector

	self assert: aDistance equals: (aGrandPrix locationOf: verstappen). 
	self assert: aSector equals: (aGrandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
assertSchumacherCanNotActivateTurboBecause: anErrorDescription

	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
assertSchumacherHasTurboActivatedWithSpeed: aSpeed

	self assert: schumacher isTurboActivated.
	self assert: aSpeed equals: schumacher speed! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	(Sector withoutTurboOf: 10 * kilometer) atStartPut: schumacher.
	
	self assertSchumacherCanNotActivateTurboBecause: Sector turboNotAllowedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	self 
		putSchumacherAt: 13 * kilometer 
		behindHamiltonAt: 12 * kilometer 
		bothAt: 300 * kilometer / hour.
	
	self assertSchumacherCanNotActivateTurboBecause: Sector cannotActivateTurboWhenNoCarAheadErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	self 
		putSchumacherAt: 12.95 * kilometer 
		behindHamiltonAt: 13 * kilometer 
		bothAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	self 
		putSchumacherAt: 12.9 * kilometer 
		behindHamiltonAt: 13 * kilometer 
		bothAt: 300 * kilometer / hour.
	
	self assertSchumacherCanNotActivateTurboBecause: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |
	
	track _ Track withSectors: self sectorWithTurboAndSectorWithoutTurbo.
	
	self assert: 30 * kilometer equals: track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track outside |
	
	track _ Track withSectors: self sectorWithTurboAndSectorWithoutTurbo.
	outside _ track length + (1 * millimeter).
	
	self 
		should: [ track put: schumacher at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (track includes: schumacher) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track positionInTrack |
	
	sectors _ self sectorWithTurboAndSectorWithoutTurbo.
	positionInTrack _ sectors first length + (5 * kilometer).
	track _ Track withSectors: sectors.

	track put: schumacher at: positionInTrack.
	
	self assert: sectors second equals: (track sectorOf: schumacher).
	self assert: positionInTrack equals: (track positionOf: schumacher).
	self deny: (sectors first includes: schumacher).
	self assert: (sectors second includes: schumacher)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track |
	
	sectors _ self sectorWithTurboAndSectorWithoutTurbo.
	track _ Track withSectors: sectors.

	track put: schumacher at: 10 * kilometer.
	track put: verstappen at: 30 * kilometer.
	
	self assert: (track includes: schumacher).
	self assert: (track includes: verstappen).
	self assert: (sectors first includes: schumacher).
	self assert: (sectors second includes: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track |
	
	sectors _ self sectorWithTurboAndSectorWithoutTurbo.
	track _ Track withSectors: sectors.

	track put: schumacher at: 5 * kilometer.
	track put: schumacher at: 15 * kilometer.
	
	self assert: sectors second equals: (track sectorOf: schumacher).
	self deny: (sectors first includes: schumacher).
	self assert: (sectors second includes: schumacher)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |
	
	track _ Track withSectors: self sectorWithTurboAndSectorWithoutTurbo.
	numberOfLaps _ 100.
	
	grandPrix _ GrandPrix on: track running: numberOfLaps.
	
	self assert: track length * numberOfLaps equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix |
	
	grandPrix _ GrandPrix on: self trackWithOneSector running: 100.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix |
	
	verstappen speed: 0 * kilometer / hour.
	grandPrix _ self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)) withVerstappenAt: 5 * kilometer.
	
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix |
	
	grandPrix _ self grandPrixOn: self sectorWithTurboAndSectorWithoutTurbo withVerstappenAt: 0 * kilometer.
	
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix sectors |
	
	sectors _ self sectorWithTurboAndSectorWithoutTurbo.
	grandPrix _ self grandPrixOn: sectors withVerstappenAt: 5 * kilometer.
	
	self assertIn: grandPrix verstappenIsAt: 5 * kilometer inSector: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix sectors |
	
	sectors _ self sectorWithTurboAndSectorWithoutTurbo.
	grandPrix _ self grandPrixOn: sectors withVerstappenAt: 0 * kilometer.
	
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assertIn: grandPrix verstappenIsAt: 5 * kilometer inSector: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix sectorA sectorB |
	
	sectorA _ Sector withTurboOf: 10 * kilometer.
	sectorB _ Sector withTurboOf: 30 * kilometer.
	grandPrix _ self grandPrixOn: (OrderedCollection with: sectorA with: sectorB) withVerstappenAt: 5 * kilometer.

	self assertIn: grandPrix verstappenIsAt: 5 * kilometer inSector: sectorA.
	
	verstappen speed: 15 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assertIn: grandPrix verstappenIsAt: 20 * kilometer inSector: sectorB! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self putSchumacherCloseBehindHamilton.
	
	self activateSchumacherTurboForTheTime: 1.
	
	self assertSchumacherHasTurboActivatedWithSpeed: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self putSchumacherCloseBehindHamilton.
	
	self activateSchumacherTurboForTheTime: 2.
	
	self assertSchumacherHasTurboActivatedWithSpeed: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self putSchumacherCloseBehindHamilton.
	
	self activateSchumacherTurboForTheTime: 3.
	
	self assertSchumacherHasTurboActivatedWithSpeed: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	self putSchumacherCloseBehindHamilton.
	
	self activateSchumacherTurboForTheTime: 4.
	
	self assertSchumacherHasTurboActivatedWithSpeed: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	self putSchumacherCloseBehindHamilton.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:56:31 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	self putSchumacherCloseBehindHamilton.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !
