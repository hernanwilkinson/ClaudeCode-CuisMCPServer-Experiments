'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:10:33 am'!
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

!classDefinition: #Sector category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #Sector
	instanceVariableNames: 'carPositions length'
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
	instanceVariableNames: 'speedFactor next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost class
	instanceVariableNames: ''!

!classDefinition: #FormulaOneTest category: #'ISW1-2022-1C-Parcial-1-Tests'!
TestCase subclass: #FormulaOneTest
	instanceVariableNames: 'schumacher hamilton'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1-Tests'!
!classDefinition: 'FormulaOneTest class' category: #'ISW1-2022-1C-Parcial-1-Tests'!
FormulaOneTest class
	instanceVariableNames: ''!


!ExhaustedTurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
applyTo: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
next

	^self! !

!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
initializeDrivenBy: aDriver 

	driver _ aDriver.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer.
	turbo _ Turbo ready! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:07 pm (UTC)'!
advance: aDistance

	traveledDistance _ traveledDistance + aDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
atSector: aSector

	sector _ aSector! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
speed

	^turbo applyTo: speed! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
activateTurbo

	turbo _ turbo activateIn: sector for: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
deactivateTurbo
	
	turbo _ turbo deactivate! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
isTurboActivated
	
	^turbo isActivated! !

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

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:09:02 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps with: aCollectionOfCars

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps.
	aCollectionOfCars do: [ :car | self put: car at: 0 * kilometer ]! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:09:02 am (UTC)'!
locationOf: aCar

	^aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:09:02 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:09:02 am (UTC)'!
sectorOf: aCar 

	^track sectorOf: aCar! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 4:09:02 am (UTC)'!
advance: aTimeLapse
	
	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 4:09:02 am (UTC)'!
placeOnTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 4:09:02 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeOnTrack: aCar! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 10:36:05 pm (UTC)'!
on: aTrack running: aNumberOfLaps 

	^self on: aTrack running: aNumberOfLaps with: #()! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
on: aTrack running: aNumberOfLaps with: aCollectionOfCars

	self assertIsValidNumberOfLaps: aNumberOfLaps.

	^self new initializeOn: aTrack running: aNumberOfLaps with: aCollectionOfCars! !

!GrandPrix class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
assertIsValidNumberOfLaps: aNumberOfLaps

	aNumberOfLaps strictlyPositive ifFalse: [ self error: self numberOfLapsMustBePositiveErrorDescription ]! !

!GrandPrix class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:09:02 am (UTC)'!
numberOfLapsMustBePositiveErrorDescription

	^'Number of laps must be positive'! !

!Sector methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
initializeOf: aLength 

	carPositions _ Dictionary new.
	length _ aLength! !

!Sector methodsFor: 'car position' stamp: 'HAW 1/May/2022, 7:59:05 pm (UTC)'!
atStartPut: aCar
 
	self put: aCar at: 0*kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
positionOf: aCar
 
	^carPositions at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
put: aCar at: aPosition
 
	self assertIsInside: aPosition.
	
	carPositions at: aCar put: aPosition.
	aCar atSector: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
remove: aCar
 
	carPositions removeKey: aCar ifAbsent: []! !

!Sector methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
cars
	
	^carPositions keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 2/May/2022, 5:26:16 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
includes: aCar

	^carPositions includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
assertIsInside: aPosition

	aPosition > length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
of: aLength 

	self assertIsPositive: aLength.

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
withTurboOf: aLength 

	^SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
withoutTurboOf: aLength 

	^SectorWithoutTurbo of: aLength! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
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

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
assert: aCar isLessThanASecondBehind: carAhead

	((self timeToReachPositionOf: carAhead) - (self timeToReachPositionOf: aCar)) < (1 * second)
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| carAhead |
	
	carAhead _ self 
		carAheadOf: aCar 
		ifNone: [ ^self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self assert: aCar isLessThanASecondBehind: carAhead! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
carAheadOf: aCar ifNone: noneBlock

	| position |
	
	position _ self positionOf: aCar.
	
	^(self cars select: [ :car | (self positionOf: car) > position ])
		ifEmpty: noneBlock
		ifNotEmpty: [ :carsAhead | carsAhead detectMin: [ :car | self positionOf: car ] ]! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 30/Apr/2022, 8:06:50 pm (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy.! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.
	
	^(self startOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsInside: aPosition.
	self remove: aCar.

	sector _ sectors detect: [ :aSector | aPosition <= (self endOf: aSector) ].
	sector put: aCar at: aPosition - (self startOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
remove: aCar
	
	(self sectorOf: aCar ifNone: [ ^self ]) remove: aCar! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
sectorOf: aCar
	
	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
cars

	^sectors inject: Set new into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
length

	^self lengthOf: sectors! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'sectors - private' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector length! !

!Track methodsFor: 'sectors - private' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
lengthOf: someSectors

	^someSectors inject: 0 * kilometer into: [ :totalLength :sector | totalLength + sector length ]! !

!Track methodsFor: 'sectors - private' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
startOf: aSector

	^self lengthOf: (sectors first: (sectors indexOf: aSector) - 1)! !

!Track methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 8:10:08 pm (UTC)'!
withSectors: sectors

	sectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ].
	
	^ self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Turbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
initializeWithBoost: aTurboBoost

	boost _ aTurboBoost! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
activateIn: aSector for: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
deactivate

	self subclassResponsibility! !

!Turbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
applyTo: aSpeed

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
ready

	^DeactivatedTurbo withBoost: TurboBoost first! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
withBoost: aTurboBoost

	^self new initializeWithBoost: aTurboBoost! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
alreadyActivatedErrorDescription

	^'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
alreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
activateIn: aSector for: aCar

	^self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
deactivate

	^DeactivatedTurbo withBoost: boost next! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
applyTo: aSpeed

	^boost applyTo: aSpeed! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
isActivated

	^true! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
activateIn: aSector for: aCar

	aSector assertTurboCanBeActivatedBy: aCar.
	
	^ActivatedTurbo withBoost: boost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
deactivate

	^self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
applyTo: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
isActivated

	^false! !

!TurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
initializeIncreasingSpeedByPercentage: aPercentage followedBy: aNextBoost

	speedFactor _ 1 + (aPercentage / 100).
	next _ aNextBoost! !

!TurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
applyTo: aSpeed

	^aSpeed * speedFactor! !

!TurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
next

	^next! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
first

	^self 
		increasingSpeedByPercentage: 20 
		followedBy: (self 
			increasingSpeedByPercentage: 10 
			followedBy: (self 
				increasingSpeedByPercentage: 5 
				followedBy: ExhaustedTurboBoost new))! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:09:01 am (UTC)'!
increasingSpeedByPercentage: aPercentage followedBy: aNextBoost

	^self new initializeIncreasingSpeedByPercentage: aPercentage followedBy: aNextBoost! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	| car sector |

	sector _ Sector withoutTurboOf: 10 * kilometer.
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	sector atStartPut: car.
	
	self 
		should: [ car activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Sector turboNotAllowedErrorDescription equals: error messageText.
			self deny: car isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	self placeSchumacherAt: 12 * kilometer andHamiltonAt: 13 * kilometer bothRunningAt: 300 * kilometer / hour.
	
	self 
		should: [ hamilton activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Sector cannotActivateTurboWhenNoCarAheadErrorDescription equals: error messageText. 
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	self placeSchumacherAt: 12.95 * kilometer andHamiltonAt: 13 * kilometer bothRunningAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	self placeSchumacherAt: 12.9 * kilometer andHamiltonAt: 13 * kilometer bothRunningAt: 300 * kilometer / hour.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self 
				assert: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription 
				equals: error messageText.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |
	
	track _ Track withSectors: self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	
	self assert: 30 * kilometer equals: track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |
	
	track _ Track withSectors: self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self 
		should: [ track put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack |
	
	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	positionInTrack _ sectors first length + (5 * kilometer).
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.
	
	self assert: sectors second equals: (track sectorOf: car).
	self assert: positionInTrack equals: (track positionOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track |
	
	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	track _ Track withSectors: sectors.
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.

	track put: schumacher at: 10 * kilometer.
	track put: hamilton at: 30 * kilometer.
	
	self assert: (track includes: schumacher).
	self assert: (track includes: hamilton).
	self assert: (sectors first includes: schumacher).
	self assert: (sectors second includes: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |
	
	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.
	
	self assert: sectors second equals: (track sectorOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix |
	
	track _ Track withSectors: self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	grandPrix _ GrandPrix on: track running: 100.
	
	self assert: track length * 100 equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix |
	
	grandPrix _ GrandPrix on: (Track withSectors: self tenKilometersWithTurboSectors) running: 100.
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.	
	
	grandPrix put: schumacher at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: schumacher). 
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix |
	
	grandPrix _ self grandPrixOn: self tenKilometersWithTurboSectors withSchumacherRunningAt: 0 * kilometer / hour.
	
	grandPrix put: schumacher at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: schumacher)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix |
	
	grandPrix _ self 
		grandPrixOn: self tenKilometersWithTurboAndTwentyWithoutTurboSectors 
		withSchumacherRunningAt: 300 * kilometer / hour.
	
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: schumacher)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix sectors |
	
	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	grandPrix _ self grandPrixOn: sectors withSchumacherRunningAt: 0 * kilometer / hour.
		
	grandPrix put: schumacher at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: schumacher). 
	self assert: sectors first equals: (grandPrix sectorOf: schumacher)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix sectors |
	
	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	grandPrix _ self grandPrixOn: sectors withSchumacherRunningAt: 5 * kilometer / hour.
	
	grandPrix advance: 1 * hour.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: schumacher). 
	self assert: sectors first equals: (grandPrix sectorOf: schumacher)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix sectorA sectorB |
	
	sectorA _ Sector withTurboOf: 10 * kilometer.
	sectorB _ Sector withTurboOf: 30 * kilometer.
	grandPrix _ self grandPrixOn: (OrderedCollection with: sectorA with: sectorB) withSchumacherRunningAt: 15 * kilometer / hour.
		
	grandPrix put: schumacher at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: schumacher). 
	self assert: sectorA equals: (grandPrix sectorOf: schumacher).
	
	grandPrix advance: 1 * hour.
	
	self assert: 20 * kilometer equals: (grandPrix locationOf: schumacher). 
	self assert: sectorB equals: (grandPrix sectorOf: schumacher)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self placeSchumacherLessThanASecondBehindHamilton.
	
	self activateSchumacherTurboAfterUsingItTimes: 0.
	
	self assertSchumacherTurboIsActivatedRunningAt: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self placeSchumacherLessThanASecondBehindHamilton.
	
	self activateSchumacherTurboAfterUsingItTimes: 1.
	
	self assertSchumacherTurboIsActivatedRunningAt: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self placeSchumacherLessThanASecondBehindHamilton.
	
	self activateSchumacherTurboAfterUsingItTimes: 2.
	
	self assertSchumacherTurboIsActivatedRunningAt: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test23AfterThirdTurboTurboIsExhausted

	self placeSchumacherLessThanASecondBehindHamilton.
	
	self activateSchumacherTurboAfterUsingItTimes: 3.
	
	self assertSchumacherTurboIsActivatedRunningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	self placeSchumacherLessThanASecondBehindHamilton.
	
	self activateSchumacherTurboAfterUsingItTimes: 0.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	self placeSchumacherLessThanASecondBehindHamilton.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test26GrandPrixMustRunAtLeastOneLap

	self 
		should: [ GrandPrix on: (Track withSectors: self tenKilometersWithTurboSectors) running: 0 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: GrandPrix numberOfLapsMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test27GrandPrixCarsStartAtTheBeginningOfTheTrack

	| sectors grandPrix |
	
	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	grandPrix _ self grandPrixOn: sectors withSchumacherRunningAt: 0 * kilometer / hour.
	
	self assert: 0 * kilometer equals: (grandPrix locationOf: schumacher).
	self assert: sectors first equals: (grandPrix sectorOf: schumacher)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
test28FourthTurboActivationStillFollowsTheActivationRules

	self placeSchumacherLessThanASecondBehindHamilton.
	self activateSchumacherTurboAfterUsingItTimes: 3.
	schumacher deactivateTurbo.
	(Sector withoutTurboOf: 10 * kilometer) atStartPut: schumacher.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Sector turboNotAllowedErrorDescription! !

!FormulaOneTest methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 4:10:08 am (UTC)'!
tenKilometersWithTurboAndTwentyWithoutTurboSectors

	^OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 4:10:07 am (UTC)'!
tenKilometersWithTurboSectors

	^OrderedCollection with: (Sector withTurboOf: 10 * kilometer)! !

!FormulaOneTest methodsFor: 'grand prix' stamp: 'HAW 17/Sep/2026, 4:10:08 am (UTC)'!
grandPrixOn: sectors withSchumacherRunningAt: aSpeed

	schumacher _ self carDrivenBy: #Schumacher runningAt: aSpeed.
	
	^GrandPrix 
		on: (Track withSectors: sectors)
		running: 100
		with: (Set with: schumacher)! !

!FormulaOneTest methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 4:10:08 am (UTC)'!
carDrivenBy: aDriver runningAt: aSpeed

	^(FormulaOneCar drivenBy: aDriver) speed: aSpeed; yourself! !

!FormulaOneTest methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 4:10:08 am (UTC)'!
placeSchumacherAt: schumacherPosition andHamiltonAt: hamiltonPosition bothRunningAt: aSpeed

	| sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	schumacher _ self carDrivenBy: #Schumacher runningAt: aSpeed.
	hamilton _ self carDrivenBy: #Hamilton runningAt: aSpeed.
	
	sector put: schumacher at: schumacherPosition.
	sector put: hamilton at: hamiltonPosition! !

!FormulaOneTest methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 4:10:08 am (UTC)'!
placeSchumacherLessThanASecondBehindHamilton

	self placeSchumacherAt: 12.99 * kilometer andHamiltonAt: 13 * kilometer bothRunningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:10:08 am (UTC)'!
activateSchumacherTurboAfterUsingItTimes: numberOfPreviousUses

	numberOfPreviousUses timesRepeat: [ schumacher activateTurbo; deactivateTurbo ].
	schumacher activateTurbo! !

!FormulaOneTest methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:10:08 am (UTC)'!
assertSchumacherTurboIsActivatedRunningAt: aSpeed

	self assert: schumacher isTurboActivated.
	self assert: aSpeed equals: schumacher speed! !
