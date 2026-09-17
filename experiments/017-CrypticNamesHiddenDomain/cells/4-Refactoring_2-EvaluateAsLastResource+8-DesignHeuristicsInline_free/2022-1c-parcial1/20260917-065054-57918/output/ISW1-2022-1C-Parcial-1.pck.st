'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:55:11 am'!
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
	instanceVariableNames: 'percentage next'
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


!ExhaustedTurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
speedUp: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
next

	^self! !

!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:53:27 am (UTC)'!
initializeDrivenBy: aDriver 

	driver _ aDriver.
	turbo _ DeactivatedTurbo unused.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:53:27 am (UTC)'!
advanceDuring: aTimeLapse

	traveledDistance _ traveledDistance + (self speed * aTimeLapse)! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:53:27 am (UTC)'!
activateTurbo

	turbo activateIn: currentSector for: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:53:27 am (UTC)'!
deactivateTurbo

	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:53:27 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!FormulaOneCar methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 9:53:27 am (UTC)'!
activateTurboInSectorWithTurbo

	turbo _ turbo activated! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'FRT 30/Apr/2022, 7:33:07 pm (UTC)'!
atSector: aSector

	currentSector _ aSector.! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:53:27 am (UTC)'!
speed

	^turbo speedUp: speed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 1/May/2022, 8:34:26 pm (UTC)'!
speed: newSpeed

	speed _ newSpeed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 30/Apr/2022, 10:15:19 pm (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 30/Apr/2022, 10:15:31 pm (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
locationOf: aCar

	^aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
sectorOf: aCar 

	^track sectorOf: aCar! !

!GrandPrix methodsFor: 'length' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
advance: aTimeLapse

	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advanceDuring: aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
on: aTrack running: aNumberOfLaps 

	^self new initializeOn: aTrack running: aNumberOfLaps! !

!Sector methodsFor: 'initialization' stamp: 'FRT 1/May/2022, 1:02:21 pm (UTC)'!
initializeOf: aLength 

	cars _ Dictionary new.
	length _ aLength.! !

!Sector methodsFor: 'car position' stamp: 'HAW 1/May/2022, 7:59:05 pm (UTC)'!
atStartPut: aCar
 
	self put: aCar at: 0*kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:53:46 am (UTC)'!
carAheadOf: aCar ifNone: aNoneBlock

	| carsAhead |
	
	carsAhead _ self carsAheadOf: aCar.
	
	^carsAhead 
		ifEmpty: aNoneBlock 
		ifNotEmpty: [ carsAhead detectMin: [ :carAhead | self positionOf: carAhead ] ]! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:53:46 am (UTC)'!
carsAheadOf: aCar

	^self cars select: [ :car | (self positionOf: car) > (self positionOf: aCar) ]! !

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

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:53:46 am (UTC)'!
activateTurboTo: aCar

	self subclassResponsibility! !

!Sector methodsFor: 'assertions' stamp: 'FRT 1/May/2022, 5:13:55 pm (UTC)'!
assertValidPosition: aPosition

	length < aPosition ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:53:45 am (UTC)'!
of: aLength

	self assertIsPositive: aLength.

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:53:45 am (UTC)'!
withTurboOf: aLength 

	^SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:53:45 am (UTC)'!
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

!Sector class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:53:46 am (UTC)'!
assertIsPositive: aLength

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:53:46 am (UTC)'!
activateTurboTo: aCar

	| carAhead |
	
	carAhead _ self 
		carAheadOf: aCar 
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
	self assert: aCar isLessThanASecondBehind: carAhead.

	aCar activateTurboInSectorWithTurbo! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 9:53:46 am (UTC)'!
assert: aCar isLessThanASecondBehind: aCarAhead

	(self timeBetween: aCar and: aCarAhead) < (1 * second) ifFalse: [ 
		self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 9:53:46 am (UTC)'!
timeBetween: aCar and: aCarAhead

	^(self timeToReachPositionOf: aCarAhead) - (self timeToReachPositionOf: aCar)! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 9:53:46 am (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:53:46 am (UTC)'!
activateTurboTo: aCar

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
initializeWithSectors: aCollectionOfSectors

	sectors _ aCollectionOfSectors copy! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.
	
	^(self lengthBefore: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsInside: aPosition.
	self remove: aCar.
	
	sector _ self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self lengthBefore: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
remove: aCar

	sectors do: [ :sector | sector remove: aCar ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
sectorOf: aCar

	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
sectorOf: aCar ifNone: aNoneBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aNoneBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
cars

	^sectors inject: Set new into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
length

	^sectors sum: [ :sector | sector length ]! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
lengthBefore: aSector

	^(self lengthUpTo: aSector) - aSector length! !

!Track methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
lengthUpTo: aSector

	^(sectors copyFrom: 1 to: (sectors indexOf: aSector)) sum: [ :sector | sector length ]! !

!Track methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self lengthUpTo: sector) ]! !

!Track methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
withSectors: aCollectionOfSectors

	self assertIsNotEmpty: aCollectionOfSectors.
	
	^self new initializeWithSectors: aCollectionOfSectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Track class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:54:01 am (UTC)'!
assertIsNotEmpty: aCollectionOfSectors

	aCollectionOfSectors ifEmpty: [ self error: self mustHaveSectorsErrorDescription ]! !

!Turbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
initializeBoosting: aBoost

	boost _ aBoost! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
activateIn: aSector for: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
speedUp: aSpeed

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
boosting: aBoost

	^self new initializeBoosting: aBoost! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
alreadyActivatedErrorDescription

	^'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
alreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
activateIn: aSector for: aCar

	self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
deactivated

	^DeactivatedTurbo boosting: boost next! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
speedUp: aSpeed

	^boost speedUp: aSpeed! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
activateIn: aSector for: aCar

	aSector activateTurboTo: aCar! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
activated

	^ActivatedTurbo boosting: boost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
deactivated

	self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
speedUp: aSpeed

	^aSpeed! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
unused

	^self boosting: TurboBoost initialBoost! !

!TurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
initializeIncreasingBy: aPercentage then: aNextBoost

	percentage _ aPercentage.
	next _ aNextBoost! !

!TurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
speedUp: aSpeed

	^aSpeed * (100 + percentage) / 100! !

!TurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
next

	^next! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
increasingBy: aPercentage then: aNextBoost

	^self new initializeIncreasingBy: aPercentage then: aNextBoost! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:53:18 am (UTC)'!
initialBoost

	^self 
		increasingBy: 20 
		then: (self increasingBy: 10 then: (self increasingBy: 5 then: ExhaustedTurboBoost new))! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 30/Apr/2022, 9:38:56 pm (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer.]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	| hamilton |
	
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	(Sector withTurboOf: 20 * kilometer) put: hamilton at: 13 * kilometer.
	
	self 
		should: [ hamilton activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: error messageText equals: Sector cannotActivateTurboWhenNoCarAheadErrorDescription. 
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self 
		carAt: 12.95 * kilometer 
		behindCarAt: 13 * kilometer 
		bothDrivingAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self 
		carAt: 12.9 * kilometer 
		behindCarAt: 13 * kilometer 
		bothDrivingAt: 300 * kilometer / hour.
	
	self 
		should: [ schumacher activateTurbo ]
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |
	
	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.
	
	self assert: track length equals: 30 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |
	
	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self 
		should: [ track put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: error messageText equals: Track cannotPlacedCarErrorDescription.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack |
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
	positionInTrack _ sectors first length + (5 * kilometer).
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.
	
	self assert: (track sectorOf: car) equals: sectors second.
	self assert: (track positionOf: car) equals: positionInTrack.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix |
	
	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.
	grandPrix _ GrandPrix on: track running: 100.
	
	self assert: grandPrix length equals: track length * 100! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	grandPrix _ self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)).
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.	
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix locationOf: hamilton) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	grandPrix _ self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)).
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |
	
	grandPrix _ self grandPrixOn: self sectorsOfTenAndTwentyKilometers.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: (grandPrix locationOf: verstappen) equals: 300 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
	grandPrix _ self grandPrixOn: sectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
	grandPrix _ self grandPrixOn: sectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
		
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCar.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated.
	self assert: schumacher speed equals: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCar.
	
	self activateTurboOf: schumacher times: 2.
	
	self assert: schumacher isTurboActivated.
	self assert: schumacher speed equals: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCar.
	
	self activateTurboOf: schumacher times: 3.
	
	self assert: schumacher isTurboActivated.
	self assert: schumacher speed equals: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test23AfterThirdTurboTurboIsExhausted

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCar.
	
	self activateTurboOf: schumacher times: 4.
	
	self assert: schumacher isTurboActivated.
	self assert: schumacher speed equals: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCar.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCar.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
activateTurboOf: aCar times: aNumberOfActivations

	aNumberOfActivations - 1 timesRepeat: [ aCar activateTurbo; deactivateTurbo ].
	aCar activateTurbo! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
carAt: aPositionBehind behindCarAt: aPositionAhead bothDrivingAt: aSpeed

	| sector carBehind carAhead |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	carBehind _ FormulaOneCar drivenBy: #Schumacher.
	carAhead _ FormulaOneCar drivenBy: #Hamilton.
	
	carBehind speed: aSpeed.
	carAhead speed: aSpeed.
	
	sector put: carBehind at: aPositionBehind.
	sector put: carAhead at: aPositionAhead.
	
	^carBehind! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
carLessThanASecondBehindAnotherCar

	^self 
		carAt: 12.99 * kilometer 
		behindCarAt: 13 * kilometer 
		bothDrivingAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
grandPrixOn: aCollectionOfSectors

	^GrandPrix on: (Track withSectors: aCollectionOfSectors) running: 100! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 9:54:43 am (UTC)'!
sectorsOfTenAndTwentyKilometers

	^OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !
