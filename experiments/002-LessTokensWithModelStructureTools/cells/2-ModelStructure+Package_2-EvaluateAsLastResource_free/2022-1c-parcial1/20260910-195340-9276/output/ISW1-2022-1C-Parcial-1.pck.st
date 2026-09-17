'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 8:05:15 pm'!
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

!classDefinition: #AvailableTurboBoost category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost subclass: #AvailableTurboBoost
	instanceVariableNames: 'speedIncreasePercentage nextBoost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'AvailableTurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
AvailableTurboBoost class
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

!classDefinition: #FormulaOneTest category: #'ISW1-2022-1C-Parcial-1-Tests'!
TestCase subclass: #FormulaOneTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1-Tests'!
!classDefinition: 'FormulaOneTest class' category: #'ISW1-2022-1C-Parcial-1-Tests'!
FormulaOneTest class
	instanceVariableNames: ''!


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 11:01:23 pm (UTC)'!
initializeDrivenBy: aDriver 

	driver := aDriver.
	speed := 0 * kilometer / hour.
	traveledDistance := 0 * kilometer.
	turbo := Turbo unused! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 10/Sep/2026, 11:01:26 pm (UTC)'!
advanceDuring: aTimeLapse

	traveledDistance := traveledDistance + (self speed * aTimeLapse)! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 10/Sep/2026, 11:04:42 pm (UTC)'!
atSector: aSector

	currentSector := aSector! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 10/Sep/2026, 11:01:27 pm (UTC)'!
moveTo: aDistance

	traveledDistance := aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:01:28 pm (UTC)'!
activateTurbo

	turbo := turbo activatedIn: currentSector by: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:01:29 pm (UTC)'!
deactivateTurbo

	turbo := turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 11:01:30 pm (UTC)'!
isTurboActivated
	
	^ turbo isActivated! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 11:01:24 pm (UTC)'!
speed

	^ turbo speedUp: speed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 30/Apr/2022, 10:15:19 pm (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'driving' stamp: 'HAW 10/Sep/2026, 11:04:43 pm (UTC)'!
speed: aSpeed

	speed := aSpeed! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 11:01:39 pm (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track := aTrack.
	numberOfLaps := aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:01:45 pm (UTC)'!
locationOf: aCar

	^ aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:01:43 pm (UTC)'!
put: aCar at: aDistance

	aCar moveTo: aDistance.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:01:47 pm (UTC)'!
sectorOf: aCar 

	^ track sectorOf: aCar! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 10/Sep/2026, 11:01:41 pm (UTC)'!
advance: aTimeLapse
	
	track cars do: [ :aCar | self relocate: aCar after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation - private' stamp: 'HAW 10/Sep/2026, 11:01:42 pm (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advanceDuring: aTimeLapse.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'car position - private' stamp: 'HAW 10/Sep/2026, 11:01:44 pm (UTC)'!
placeOnTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 11:01:47 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:01:38 pm (UTC)'!
on: aTrack running: aNumberOfLaps 

	^ self new initializeOn: aTrack running: aNumberOfLaps! !

!Sector methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 11:00:41 pm (UTC)'!
initializeOf: aLength 

	positionsByCar := Dictionary new.
	length := aLength! !

!Sector methodsFor: 'car position' stamp: 'HAW 1/May/2022, 7:59:05 pm (UTC)'!
atStartPut: aCar
 
	self put: aCar at: 0*kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:00:48 pm (UTC)'!
carAheadOf: aCar ifNone: aBlock

	^ self carsByPosition 
		detect: [ :aCarInSector | (self positionOf: aCarInSector) > (self positionOf: aCar) ]
		ifNone: aBlock! !

!Sector methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:00:49 pm (UTC)'!
carsByPosition

	^ self cars asSortedCollection: [ :aCar :anotherCar | (self positionOf: aCar) <= (self positionOf: anotherCar) ]! !

!Sector methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:00:44 pm (UTC)'!
positionOf: aCar
 
	^ positionsByCar at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:00:45 pm (UTC)'!
put: aCar at: aPosition
 
	self assertValidPosition: aPosition.
	
	positionsByCar at: aCar put: aPosition.
	aCar atSector: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:00:47 pm (UTC)'!
remove: aCar
 
	positionsByCar removeKey: aCar ifAbsent: []! !

!Sector methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:00:51 pm (UTC)'!
timeToReachPositionOf: aCar

	^ (self positionOf: aCar) / aCar speed! !

!Sector methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 11:00:42 pm (UTC)'!
cars
	
	^ positionsByCar keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 2/May/2022, 5:26:16 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 11:00:43 pm (UTC)'!
includes: aCar

	^ positionsByCar includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:00:52 pm (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector methodsFor: 'car position - private' stamp: 'HAW 10/Sep/2026, 11:01:09 pm (UTC)'!
assertValidPosition: aPosition

	length < aPosition ifTrue: [ self error: self class cannotPlaceCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:00:37 pm (UTC)'!
withTurboOf: aLength 

	^ SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:00:39 pm (UTC)'!
withoutTurboOf: aLength 

	^ SectorWithoutTurbo of: aLength! !

!Sector class methodsFor: 'instance creation - private' stamp: 'HAW 10/Sep/2026, 11:00:40 pm (UTC)'!
of: aLength 

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ].

	^ self new initializeOf: aLength! !

!Sector class methodsFor: 'error descriptions' stamp: 'FRT 30/Apr/2022, 11:24:41 pm (UTC)'!
cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription
	
	^ 'Cannot activate Turbo when opponent is more than 1 second ahead'! !

!Sector class methodsFor: 'error descriptions' stamp: 'FRT 30/Apr/2022, 11:13:07 pm (UTC)'!
cannotActivateTurboWhenNoCarAheadErrorDescription
	
	^ 'Cannot activate Turbo without opponent ahead'! !

!Sector class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:01:08 pm (UTC)'!
cannotPlaceCarErrorDescription

	^ 'Driver can not be placed outside section'! !

!Sector class methodsFor: 'error descriptions' stamp: 'HAW 30/Apr/2022, 8:05:20 pm (UTC)'!
lengthMustBePositiveErrorDescription

	^ 'Length must be positive'! !

!Sector class methodsFor: 'error descriptions' stamp: 'FRT 30/Apr/2022, 12:54:45 pm (UTC)'!
turboNotAllowedErrorDescription
	
	^ 'Turbo not allowed in this Sector'! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:00:55 pm (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| carAhead |
	
	carAhead := self 
		carAheadOf: aCar 
		ifNone: [ ^ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self assertCloseEnough: aCar toActivateTurboBehind: carAhead! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 10/Sep/2026, 11:00:57 pm (UTC)'!
assertCloseEnough: aCar toActivateTurboBehind: aCarAhead

	((self timeToReachPositionOf: aCarAhead) - (self timeToReachPositionOf: aCar)) < self maximumTimeBehindToActivateTurbo
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 10/Sep/2026, 11:00:58 pm (UTC)'!
maximumTimeBehindToActivateTurbo

	^ 1 * second! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 10/Sep/2026, 11:00:53 pm (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 11:02:36 pm (UTC)'!
initializeWithSectors: aSectors

	sectors := aSectors copy! !

!Track methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:23 pm (UTC)'!
positionOf: aCar

	| sectorOfCar |
	
	sectorOfCar := self sectorOf: aCar.
	
	^ (self distanceToStartOf: sectorOfCar) + (sectorOfCar positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:25 pm (UTC)'!
put: aCar at: aPosition

	| sectorAtPosition |
	
	self assertIsWithinTrack: aPosition.
	
	self remove: aCar.
	sectorAtPosition := self sectorAt: aPosition.
	sectorAtPosition put: aCar at: aPosition - (self distanceToStartOf: sectorAtPosition)! !

!Track methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:26 pm (UTC)'!
remove: aCar
	
	sectors do: [ :aSector | aSector remove: aCar ]! !

!Track methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:22 pm (UTC)'!
sectorOf: aCar
	
	^ self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 10/Sep/2026, 11:02:20 pm (UTC)'!
sectorOf: aCar ifNone: aBlock

	^ sectors detect: [ :aSector | aSector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 11:02:17 pm (UTC)'!
cars

	^ sectors 
		inject: Set new 
		into: [ :allCars :aSector | allCars addAll: aSector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 11:02:18 pm (UTC)'!
length

	^ sectors sum: [ :aSector | aSector length ]! !

!Track methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 11:02:19 pm (UTC)'!
includes: aCar

	^ sectors anySatisfy: [ :aSector | aSector includes: aCar ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 10/Sep/2026, 11:02:27 pm (UTC)'!
assertIsWithinTrack: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlaceCarErrorDescription ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 10/Sep/2026, 11:02:30 pm (UTC)'!
distanceToEndOf: aSector

	^ (sectors first: (sectors indexOf: aSector)) sum: [ :aSectorUpToIt | aSectorUpToIt length ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 10/Sep/2026, 11:02:31 pm (UTC)'!
distanceToStartOf: aSector

	^ (self distanceToEndOf: aSector) - aSector length! !

!Track methodsFor: 'car position - private' stamp: 'HAW 10/Sep/2026, 11:02:29 pm (UTC)'!
sectorAt: aPosition

	^ sectors detect: [ :aSector | aPosition <= (self distanceToEndOf: aSector) ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:02:35 pm (UTC)'!
withSectors: aSectors

	aSectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ].
	
	^ self new initializeWithSectors: aSectors! !

!Track class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:02:33 pm (UTC)'!
cannotPlaceCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 11:02:34 pm (UTC)'!
carNotFoundErrorDescription

	^ 'Car not found'! !

!Track class methodsFor: 'error descriptions' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Turbo methodsFor: 'activation' stamp: 'HAW 10/Sep/2026, 10:59:53 pm (UTC)'!
activatedIn: aSector by: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 10/Sep/2026, 10:59:54 pm (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 10:59:55 pm (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 10:59:55 pm (UTC)'!
speedUp: aSpeed

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 10:59:47 pm (UTC)'!
unused

	^ DeactivatedTurbo withNextBoost: self boosts! !

!Turbo class methodsFor: 'instance creation - private' stamp: 'HAW 10/Sep/2026, 10:59:49 pm (UTC)'!
boosts

	^ AvailableTurboBoost 
		increasingSpeedBy: 20 
		followedBy: (AvailableTurboBoost 
			increasingSpeedBy: 10 
			followedBy: (AvailableTurboBoost 
				increasingSpeedBy: 5 
				followedBy: ExhaustedTurboBoost new))! !

!Turbo class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 10:59:50 pm (UTC)'!
alreadyActivatedErrorDescription

	^ 'Turbo already activated'! !

!Turbo class methodsFor: 'error descriptions' stamp: 'HAW 10/Sep/2026, 10:59:52 pm (UTC)'!
alreadyDeactivatedErrorDescription

	^ 'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 11:00:06 pm (UTC)'!
initializeBoosting: aBoost

	boost := aBoost! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 10/Sep/2026, 11:00:07 pm (UTC)'!
activatedIn: aSector by: aCar

	^ self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 10/Sep/2026, 11:00:08 pm (UTC)'!
deactivated

	^ DeactivatedTurbo withNextBoost: boost next! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 11:00:09 pm (UTC)'!
isActivated

	^ true! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 11:00:10 pm (UTC)'!
speedUp: aSpeed

	^ boost speedUp: aSpeed! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 11:00:05 pm (UTC)'!
boosting: aBoost

	^ self new initializeBoosting: aBoost! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 10:59:59 pm (UTC)'!
initializeWithNextBoost: aBoost

	nextBoost := aBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 10/Sep/2026, 11:00:01 pm (UTC)'!
activatedIn: aSector by: aCar

	aSector assertTurboCanBeActivatedBy: aCar.
	
	^ ActivatedTurbo boosting: nextBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 10/Sep/2026, 11:00:02 pm (UTC)'!
deactivated

	^ self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 11:00:03 pm (UTC)'!
isActivated

	^ false! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 11:00:04 pm (UTC)'!
speedUp: aSpeed

	^ aSpeed! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 10:59:58 pm (UTC)'!
withNextBoost: aBoost

	^ self new initializeWithNextBoost: aBoost! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 10:59:34 pm (UTC)'!
next

	self subclassResponsibility! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 10:59:34 pm (UTC)'!
speedUp: aSpeed

	self subclassResponsibility! !

!AvailableTurboBoost methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 10:59:37 pm (UTC)'!
initializeIncreasingSpeedBy: aPercentage followedBy: aNextBoost

	speedIncreasePercentage := aPercentage.
	nextBoost := aNextBoost! !

!AvailableTurboBoost methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 10:59:40 pm (UTC)'!
next

	^ nextBoost! !

!AvailableTurboBoost methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 10:59:39 pm (UTC)'!
speedUp: aSpeed

	^ aSpeed * (100 + speedIncreasePercentage) / 100! !

!AvailableTurboBoost class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 10:59:36 pm (UTC)'!
increasingSpeedBy: aPercentage followedBy: aNextBoost

	^ self new initializeIncreasingSpeedBy: aPercentage followedBy: aNextBoost! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 10:59:42 pm (UTC)'!
next

	^ self! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 10/Sep/2026, 10:59:41 pm (UTC)'!
speedUp: aSpeed

	^ aSpeed! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 30/Apr/2022, 9:38:56 pm (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer.]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:35 pm (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:04:45 pm (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:38 pm (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	| hamilton sector |
	
	sector := Sector withTurboOf: 20 * kilometer.
	self carDrivenBy: #Schumacher goingAt: 300 * kilometer / hour placedIn: sector at: 12 * kilometer.
	hamilton := self carDrivenBy: #Hamilton goingAt: 300 * kilometer / hour placedIn: sector at: 13 * kilometer.
	
	self 
		should: [ hamilton activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Sector cannotActivateTurboWhenNoCarAheadErrorDescription equals: error messageText. 
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:40 pm (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher := self 
		carAt: 12.95 * kilometer 
		behindCarAt: 13 * kilometer 
		inSectorWithTurboGoingAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:43 pm (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher := self 
		carAt: 12.9 * kilometer 
		behindCarAt: 13 * kilometer 
		inSectorWithTurboGoingAt: 300 * kilometer / hour.
	
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:44 pm (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |
	
	track := Track withSectors: self sectorsOfTenAndTwentyKilometers.
	
	self assert: 30 * kilometer equals: track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:47 pm (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:50 pm (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:52 pm (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:55 pm (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:57 pm (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |
	
	track := Track withSectors: self sectorsOfTenAndTwentyKilometers.
	numberOfLaps := 100.
	
	grandPrix := GrandPrix on: track running: numberOfLaps.
	
	self assert: track length * numberOfLaps equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:04:00 pm (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	grandPrix := self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)).
	verstappen := FormulaOneCar drivenBy: #Verstappen.
	hamilton := FormulaOneCar drivenBy: #Hamilton.	
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:04:02 pm (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	grandPrix := self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)).
	verstappen := FormulaOneCar drivenBy: #Verstappen.
	verstappen speed: 0 * kilometer / hour.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:04:05 pm (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |
	
	grandPrix := self grandPrixOn: self sectorsOfTenAndTwentyKilometers.
	verstappen := FormulaOneCar drivenBy: #Verstappen.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:04:07 pm (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| sectors grandPrix verstappen |
	
	sectors := self sectorsOfTenAndTwentyKilometers.
	grandPrix := self grandPrixOn: sectors.
	verstappen := FormulaOneCar drivenBy: #Verstappen.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:04:10 pm (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| sectors grandPrix verstappen |
	
	sectors := self sectorsOfTenAndTwentyKilometers.
	grandPrix := self grandPrixOn: sectors.
	verstappen := FormulaOneCar drivenBy: #Verstappen.
		
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:04:14 pm (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:22 pm (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self 
		assertActivatingTurboAfterUsingIt: 0 
		speedsUp: 100 * kilometer / hour 
		to: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:23 pm (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self 
		assertActivatingTurboAfterUsingIt: 1 
		speedsUp: 100 * kilometer / hour 
		to: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:25 pm (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self 
		assertActivatingTurboAfterUsingIt: 2 
		speedsUp: 100 * kilometer / hour 
		to: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:26 pm (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	self 
		assertActivatingTurboAfterUsingIt: 3 
		speedsUp: 100 * kilometer / hour 
		to: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:28 pm (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher := self carAbleToActivateTurboGoingAt: 100 * kilometer / hour.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 11:03:30 pm (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |
	
	schumacher := self carAbleToActivateTurboGoingAt: 100 * kilometer / hour.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 11:03:15 pm (UTC)'!
carAbleToActivateTurboGoingAt: aSpeed

	^ self 
		carAt: 12.99 * kilometer 
		behindCarAt: 13 * kilometer 
		inSectorWithTurboGoingAt: aSpeed! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 11:03:13 pm (UTC)'!
carAt: aPositionBehind behindCarAt: aPositionAhead inSectorWithTurboGoingAt: aSpeed

	| sector |
	
	sector := Sector withTurboOf: 24 * kilometer.
	self carDrivenBy: #Hamilton goingAt: aSpeed placedIn: sector at: aPositionAhead.
	
	^ self carDrivenBy: #Schumacher goingAt: aSpeed placedIn: sector at: aPositionBehind! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 11:03:11 pm (UTC)'!
carDrivenBy: aDriver goingAt: aSpeed placedIn: aSector at: aPosition

	| car |
	
	car := FormulaOneCar drivenBy: aDriver.
	car speed: aSpeed.
	aSector put: car at: aPosition.
	
	^ car! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 11:03:09 pm (UTC)'!
grandPrixOn: someSectors

	^ GrandPrix on: (Track withSectors: someSectors) running: 100! !

!FormulaOneTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 11:03:08 pm (UTC)'!
sectorsOfTenAndTwentyKilometers

	^ OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'test actions' stamp: 'HAW 10/Sep/2026, 11:03:16 pm (UTC)'!
activateTurboOf: aCar afterUsingIt: aNumberOfUses

	aNumberOfUses timesRepeat: [ aCar activateTurbo; deactivateTurbo ].
	aCar activateTurbo! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 10/Sep/2026, 11:03:18 pm (UTC)'!
assertActivatingTurboAfterUsingIt: aNumberOfUses speedsUp: aSpeed to: aBoostedSpeed

	| car |
	
	car := self carAbleToActivateTurboGoingAt: aSpeed.
	self activateTurboOf: car afterUsingIt: aNumberOfUses.
	
	self assert: car isTurboActivated.
	self assert: aBoostedSpeed equals: car speed! !
