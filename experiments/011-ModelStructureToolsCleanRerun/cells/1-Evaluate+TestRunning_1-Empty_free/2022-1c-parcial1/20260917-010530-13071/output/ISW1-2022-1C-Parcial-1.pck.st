'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:09:00 am'!
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
	instanceVariableNames: 'track numberOfLaps cars'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'GrandPrix class' category: #'ISW1-2022-1C-Parcial-1'!
GrandPrix class
	instanceVariableNames: ''!

!classDefinition: #Sector category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #Sector
	instanceVariableNames: 'length carsPositions'
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

!classDefinition: #AvailableTurboBoost category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost subclass: #AvailableTurboBoost
	instanceVariableNames: 'factor nextBoost'
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


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:07:54 am (UTC)'!
initializeDrivenBy: aDriver 

	driver _ aDriver.
	speed _ 0 * kilometer / hour.
	turbo _ Turbo readyToUse.
	traveledDistance _ 0 * kilometer! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
advanceDuring: aTimeLapse

	traveledDistance _ traveledDistance + (self speed * aTimeLapse)! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
atSector: aSector

	currentSector _ aSector! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
moveTo: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
activateTurbo

	turbo _ turbo activateFor: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
deactivateTurbo
	
	turbo _ turbo deactivate! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
isTurboActivated
	
	^ turbo isActivated! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
speed

	^ turbo boost: speed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
speed: newSpeed

	speed _ newSpeed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
assertTurboCanBeActivated

	currentSector assertTurboCanBeActivatedBy: self! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
drivenBy: aDriver 

	^ self new initializeDrivenBy: aDriver! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps with: aCollectionOfCars

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps.
	cars _ aCollectionOfCars copy! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
locationOf: aCar

	^ aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
put: aCar at: aDistance

	aCar moveTo: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
sectorOf: aCar 

	^ track sectorOf: aCar! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
advance: aTimeLapse
	
	cars do: [ :aCar | self relocate: aCar after: aTimeLapse ]! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation - private' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advanceDuring: aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
on: aTrack running: aNumberOfLaps 

	^ self on: aTrack running: aNumberOfLaps with: #()! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
on: aTrack running: aNumberOfLaps with: aCollectionOfCars

	^ self new initializeOn: aTrack running: aNumberOfLaps with: aCollectionOfCars! !

!Sector methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
initializeOf: aLength 

	length _ aLength.
	carsPositions _ Dictionary new! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
atStartPut: aCar
 
	self put: aCar at: 0 * kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
positionOf: aCar
 
	^ carsPositions at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
put: aCar at: aPosition
 
	self assertIsInside: aPosition.
	
	carsPositions at: aCar put: aPosition.
	aCar atSector: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
remove: aCar
 
	carsPositions removeKey: aCar ifAbsent: []! !

!Sector methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
cars
	
	^ carsPositions keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
length

	^ length! !

!Sector methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
includes: aCar

	^ carsPositions includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
assertIsInside: aPosition

	length < aPosition ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
of: aLength 

	self assertIsPositive: aLength.

	^ self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
withTurboOf: aLength 

	^ SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
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

!Sector class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
assertIsPositive: aLength

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| carAhead |
	
	carAhead _ self 
		carAheadOf: aCar 
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self assert: aCar isLessThanOneSecondBehind: carAhead! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
assert: aCar isLessThanOneSecondBehind: carAhead

	((self timeToReachPositionOf: carAhead) - (self timeToReachPositionOf: aCar)) < (1 * second)
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
carAheadOf: aCar ifNone: noCarAheadBlock

	| carPosition carsAhead |
	
	carPosition _ self positionOf: aCar.
	carsAhead _ self cars select: [ :aCarInSector | (self positionOf: aCarInSector) > carPosition ].
	
	^ carsAhead 
		ifEmpty: noCarAheadBlock 
		ifNotEmpty: [ carsAhead detectMin: [ :aCarAhead | self positionOf: aCarAhead ] ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
timeToReachPositionOf: aCar

	^ (self positionOf: aCar) / aCar speed! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors asArray! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.
	
	^ (self startOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsInside: aPosition.
	self remove: aCar.

	sector _ sectors detect: [ :aSector | aPosition <= (self endOf: aSector) ].
	sector put: aCar at: aPosition - (self startOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
remove: aCar
	
	sectors do: [ :aSector | aSector remove: aCar ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:07:49 am (UTC)'!
sectorOf: aCar
	
	^ self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:07:49 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^ sectors detect: [ :aSector | aSector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
cars

	^ sectors inject: Set new into: [ :allCars :aSector | allCars addAll: aSector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
length

	^ self lengthOf: sectors! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
includes: aCar

	^ sectors anySatisfy: [ :aSector | aSector includes: aCar ]! !

!Track methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:07:49 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 4:07:49 am (UTC)'!
endOf: aSector

	^ (self startOf: aSector) + aSector length! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 4:07:49 am (UTC)'!
lengthOf: aCollectionOfSectors

	^ aCollectionOfSectors inject: 0 * kilometer into: [ :totalLength :aSector | totalLength + aSector length ]! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 4:07:49 am (UTC)'!
startOf: aSector

	^ self lengthOf: (sectors copyFrom: 1 to: (sectors indexOf: aSector) - 1)! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
withSectors: sectors

	sectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ].
	
	^ self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
carNotFoundErrorDescription

	^ 'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Turbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
initializeWith: aTurboBoost

	boost _ aTurboBoost! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
activateFor: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
deactivate

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:07:54 am (UTC)'!
readyToUse

	^ DeactivatedTurbo with: (AvailableTurboBoost 
		of: 12 / 10 
		followedBy: (AvailableTurboBoost 
			of: 11 / 10 
			followedBy: (AvailableTurboBoost 
				of: 105 / 100 
				followedBy: ExhaustedTurboBoost new)))! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:07:54 am (UTC)'!
with: aTurboBoost

	^ self new initializeWith: aTurboBoost! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
turboAlreadyActivatedErrorDescription
	
	^ 'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
turboAlreadyDeactivatedErrorDescription
	
	^ 'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
activateFor: aCar

	^ self error: self class turboAlreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
deactivate

	^ DeactivatedTurbo with: boost next! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
isActivated

	^ true! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
boost: aSpeed

	^ boost applyTo: aSpeed! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
activateFor: aCar

	aCar assertTurboCanBeActivated.
	
	^ ActivatedTurbo with: boost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
deactivate

	^ self error: self class turboAlreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
isActivated

	^ false! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
boost: aSpeed

	^ aSpeed! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
applyTo: aSpeed

	self subclassResponsibility! !

!TurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
next

	self subclassResponsibility! !

!AvailableTurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
initializeOf: aFactor followedBy: aTurboBoost

	factor _ aFactor.
	nextBoost _ aTurboBoost! !

!AvailableTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
applyTo: aSpeed

	^ aSpeed * factor! !

!AvailableTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
next

	^ nextBoost! !

!AvailableTurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
of: aFactor followedBy: aTurboBoost

	^ self new initializeOf: aFactor followedBy: aTurboBoost! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
applyTo: aSpeed

	^ aSpeed! !

!ExhaustedTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:07:48 am (UTC)'!
next

	^ self! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test02ACarCanNotBePlacedInAKilometerGreaterThanSectorLength

	| sector outside car |
	
	sector _ Sector withTurboOf: 10 * kilometer.
	outside _ sector length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self 
		should: [ sector put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (sector includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	| car sector |

	sector _ Sector withoutTurboOf: 10 * kilometer.
	car _ FormulaOneCar drivenBy: #Schumacher.
	sector atStartPut: car.
	
	self 
		assertActivatingTurboOf: car 
		failsWith: Sector turboNotAllowedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	| hamilton sector |
	
	sector _ Sector withTurboOf: 20 * kilometer.
	self carDrivenBy: #Schumacher withSpeed: 0 * kilometer / hour at: 12 * kilometer in: sector.
	hamilton _ self carDrivenBy: #Hamilton withSpeed: 0 * kilometer / hour at: 13 * kilometer in: sector.
	
	self 
		assertActivatingTurboOf: hamilton 
		failsWith: Sector cannotActivateTurboWhenNoCarAheadErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self carAt: 12.95 * kilometer behindCarAt: 13 * kilometer bothWithSpeed: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self carAt: 12.9 * kilometer behindCarAt: 13 * kilometer bothWithSpeed: 300 * kilometer / hour.
	
	self 
		assertActivatingTurboOf: schumacher 
		failsWith: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |
	
	track _ Track withSectors: self twoSectors.
	
	self assert: 30 * kilometer equals: track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |
	
	track _ Track withSectors: self twoSectors.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self 
		should: [ track put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack |
	
	sectors _ self twoSectors.
	positionInTrack _ sectors first length + (5 * kilometer).
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.
	
	self assert: sectors second equals: (track sectorOf: car).
	self assert: positionInTrack equals: (track positionOf: car).
	self assertOnlySecondOf: sectors includes: car! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track schumacher verstappen |
	
	sectors _ self twoSectors.
	track _ Track withSectors: sectors.
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.

	track put: schumacher at: 10 * kilometer.
	track put: verstappen at: 30 * kilometer.
	
	self assert: (track includes: schumacher).
	self assert: (track includes: verstappen).
	self assert: (sectors first includes: schumacher).
	self assert: (sectors second includes: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |
	
	sectors _ self twoSectors.
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.
	
	self assert: sectors second equals: (track sectorOf: car).
	self assertOnlySecondOf: sectors includes: car! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix |
	
	track _ Track withSectors: self twoSectors.
	
	grandPrix _ GrandPrix on: track running: 100.
	
	self assert: track length * 100 equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	grandPrix _ GrandPrix on: self oneSectorTrack running: 100.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.	
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	grandPrix _ GrandPrix on: self oneSectorTrack running: 100 with: (Set with: verstappen).
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	grandPrix _ self grandPrixOn: self twoSectors with: verstappen.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:29 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ self twoSectors.
	grandPrix _ self grandPrixOn: sectors with: verstappen.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ self twoSectors.
	grandPrix _ self grandPrixOn: sectors with: verstappen.
		
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self assertSpeedAfterActivatingTurbo: 1 timesIs: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self assertSpeedAfterActivatingTurbo: 2 timesIs: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self assertSpeedAfterActivatingTurbo: 3 timesIs: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	self assertSpeedAfterActivatingTurbo: 4 timesIs: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher _ self carReadyToActivateTurbo.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: Turbo turboAlreadyActivatedErrorDescription equals: error messageText.
			self assert: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |
	
	schumacher _ self carReadyToActivateTurbo.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: Turbo turboAlreadyDeactivatedErrorDescription equals: error messageText.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
carAt: aPositionBehind behindCarAt: aPositionAhead bothWithSpeed: aSpeed

	| sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	self carDrivenBy: #Hamilton withSpeed: aSpeed at: aPositionAhead in: sector.
	
	^ self carDrivenBy: #Schumacher withSpeed: aSpeed at: aPositionBehind in: sector! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
carDrivenBy: aDriver withSpeed: aSpeed at: aPosition in: aSector

	| car |
	
	car _ FormulaOneCar drivenBy: aDriver.
	car speed: aSpeed.
	aSector put: car at: aPosition.
	
	^ car! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
carReadyToActivateTurbo

	^ self carAt: 12.99 * kilometer behindCarAt: 13 * kilometer bothWithSpeed: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
grandPrixOn: sectors with: aCar

	^ GrandPrix on: (Track withSectors: sectors) running: 100 with: (Set with: aCar)! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
oneSectorTrack

	^ Track withSectors: (Array with: (Sector withTurboOf: 10 * kilometer))! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
twoSectors

	^ OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
activateTurboOf: aCar times: aNumberOfActivations

	aCar activateTurbo.
	aNumberOfActivations - 1 timesRepeat: [ aCar deactivateTurbo; activateTurbo ]! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
assertActivatingTurboOf: aCar failsWith: anErrorDescription

	self 
		should: [ aCar activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			self deny: aCar isTurboActivated ]! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
assertOnlySecondOf: sectors includes: aCar

	self deny: (sectors first includes: aCar).
	self assert: (sectors second includes: aCar)! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:08:30 am (UTC)'!
assertSpeedAfterActivatingTurbo: aNumberOfActivations timesIs: anExpectedSpeed

	| schumacher |
	
	schumacher _ self carReadyToActivateTurbo.
	
	self activateTurboOf: schumacher times: aNumberOfActivations.
	
	self assert: schumacher isTurboActivated.
	self assert: anExpectedSpeed equals: schumacher speed! !
