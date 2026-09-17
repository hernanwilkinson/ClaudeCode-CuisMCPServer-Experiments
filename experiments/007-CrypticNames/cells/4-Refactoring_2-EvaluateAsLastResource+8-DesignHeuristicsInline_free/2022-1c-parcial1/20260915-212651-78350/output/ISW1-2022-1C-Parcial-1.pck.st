'From Cuis7.9 [latest update: #8182] on 15 September 2026 at 9:43:11 pm'!
'Description '!
!provides: 'ISW1-2022-1C-Parcial-1' 1 0!
SystemOrganization addCategory: #'ISW1-2022-1C-Parcial-1'!
SystemOrganization addCategory: #'ISW1-2022-1C-Parcial-1-Tests'!


!classDefinition: #FormulaOneCar category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #FormulaOneCar
	instanceVariableNames: 'driver maximumSpeed turbo traveledDistance currentSector'
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

!classDefinition: #OutsideOfTrack category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #OutsideOfTrack
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'OutsideOfTrack class' category: #'ISW1-2022-1C-Parcial-1'!
OutsideOfTrack class
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
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ActivatedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
ActivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #BoostingTurbo category: #'ISW1-2022-1C-Parcial-1'!
ActivatedTurbo subclass: #BoostingTurbo
	instanceVariableNames: 'speedIncreasePercentage deactivation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'BoostingTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
BoostingTurbo class
	instanceVariableNames: ''!

!classDefinition: #ExhaustedTurbo category: #'ISW1-2022-1C-Parcial-1'!
ActivatedTurbo subclass: #ExhaustedTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ExhaustedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
ExhaustedTurbo class
	instanceVariableNames: ''!

!classDefinition: #DeactivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
Turbo subclass: #DeactivatedTurbo
	instanceVariableNames: 'activation'
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


!FormulaOneCar commentStamp: '<historical>' prior: 0!
I am a race car driven by a driver. I know my maximum speed, the distance I have traveled, the sector I am in and my turbo, which is the one that tells the speed I reach from my maximum speed.!

!GrandPrix commentStamp: '<historical>' prior: 0!
I am a race that takes place on a Track for a number of laps. I line up the cars that run in me at the starting line and I move them along the track as time goes by, giving the illusion that the track is closed: it ends where it begins.!

!OutsideOfTrack commentStamp: '<historical>' prior: 0!
I am where a FormulaOneCar is before it is placed on a track. A car can not use its turbo while it is outside of the track.!

!Sector commentStamp: '<historical>' prior: 0!
I am one of the parts a Track is made up of. I know my length and the position of every car running in me. My subclasses know whether the cars in me are allowed to use their turbo.!

!SectorWithTurbo commentStamp: '<historical>' prior: 0!
I am a sector where a car is allowed to use its turbo, as long as there is another car ahead of it less than a second away.!

!SectorWithoutTurbo commentStamp: '<historical>' prior: 0!
I am a sector where using the turbo is not allowed.!

!Track commentStamp: '<historical>' prior: 0!
I am the path where a GrandPrix takes place. I am made up of sectors, one after another, and I know where a car is by knowing the sector it is in and its position within that sector.!

!Turbo commentStamp: '<historical>' prior: 0!
I am the state of the turbo system of a FormulaOneCar. I answer the speed a car reaches from its maximum speed and, when I am activated or deactivated, I answer the turbo the car has from then on. My instances are immutable, so a car replaces its turbo with the one my transitions answer. My subclasses are the states I can be in.!

!ActivatedTurbo commentStamp: '<historical>' prior: 0!
I am a turbo that is already activated, so I can not be activated again.!

!BoostingTurbo commentStamp: '<historical>' prior: 0!
I am an activated turbo that increases the maximum speed of the car by a percentage. I know the deactivated turbo the car gets when it deactivates me.!

!ExhaustedTurbo commentStamp: '<historical>' prior: 0!
I am an activated turbo with no boost left, so the car runs at its maximum speed. Deactivating me answers a deactivated turbo that is exhausted as well.!

!DeactivatedTurbo commentStamp: '<historical>' prior: 0!
I am a turbo that is not activated, so I do not change the speed of the car. I know the activated turbo the car gets when it activates me.!

!FormulaOneTest commentStamp: '<historical>' prior: 0!
I test the F1 simulator engine: GrandPrix, Track, Sector, FormulaOneCar and the states of Turbo.!

!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:39:04 am (UTC)'!
initializeDrivenBy: aDriver

	driver _ aDriver.
	maximumSpeed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer.
	turbo _ Turbo unused.
	currentSector _ OutsideOfTrack new! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:39:04 am (UTC)'!
advanceDuring: aTimeLapse

	traveledDistance _ traveledDistance + (self speed * aTimeLapse)! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:39:04 am (UTC)'!
atSector: aSector

	currentSector _ aSector! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:39:04 am (UTC)'!
moveTo: aDistanceFromStart

	traveledDistance _ aDistanceFromStart! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:39:04 am (UTC)'!
speed

	^turbo speedFrom: maximumSpeed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:39:04 am (UTC)'!
speed: aSpeed

	maximumSpeed _ aSpeed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:39:04 am (UTC)'!
traveledDistance

	^traveledDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:39:04 am (UTC)'!
activateTurbo

	| activatedTurbo |
	
	activatedTurbo _ turbo activate.
	currentSector allowTurboTo: self.
	
	turbo _ activatedTurbo! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:39:04 am (UTC)'!
deactivateTurbo

	turbo _ turbo deactivate! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:39:04 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
lineUp: aCollectionOfCars

	aCollectionOfCars do: [ :aCar | self put: aCar at: self startLine ]! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
locationOf: aCar

	^aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
put: aCar at: aDistanceFromStart

	aCar moveTo: aDistanceFromStart.
	self relocateInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
relocateInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
sectorOf: aCar

	^track sectorOf: aCar! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
advance: aTimeLapse

	track cars do: [ :aCar | self move: aCar during: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
move: aCar during: aTimeLapse

	aCar advanceDuring: aTimeLapse.
	self relocateInTrack: aCar! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
length

	^track length * numberOfLaps! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
startLine

	^0 * kilometer! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
on: aTrack running: aNumberOfLaps

	^self on: aTrack running: aNumberOfLaps with: #()! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:42:38 am (UTC)'!
on: aTrack running: aNumberOfLaps with: aCollectionOfCars

	| grandPrix |
	
	self assertIsValidNumberOfLaps: aNumberOfLaps.
	
	grandPrix _ self new initializeOn: aTrack running: aNumberOfLaps.
	grandPrix lineUp: aCollectionOfCars.
	
	^grandPrix! !

!GrandPrix class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
assertIsValidNumberOfLaps: aNumberOfLaps

	aNumberOfLaps strictlyPositive ifFalse: [ self error: self numberOfLapsMustBePositiveErrorDescription ]! !

!GrandPrix class methodsFor: 'error messages' stamp: 'HAW 16/Sep/2026, 12:39:34 am (UTC)'!
numberOfLapsMustBePositiveErrorDescription

	^'Number of laps must be positive'! !

!OutsideOfTrack methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:38:49 am (UTC)'!
allowTurboTo: aCar

	^self error: self class turboCanNotBeActivatedOutsideOfTrackErrorDescription! !

!OutsideOfTrack class methodsFor: 'error messages' stamp: 'HAW 16/Sep/2026, 12:38:49 am (UTC)'!
turboCanNotBeActivatedOutsideOfTrackErrorDescription

	^'Turbo can not be activated outside of the track'! !

!Sector methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
initializeOf: aLength

	cars _ Dictionary new.
	length _ aLength! !

!Sector methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
assertCanPlaceCarAt: aPosition

	length < aPosition ifTrue: [ self error: self class canNotPlaceCarOutsideSectorErrorDescription ]! !

!Sector methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
atStartPut: aCar

	self put: aCar at: 0 * kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
positionOf: aCar

	^cars at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
put: aCar at: aPosition

	self assertCanPlaceCarAt: aPosition.
	
	cars at: aCar put: aPosition.
	aCar atSector: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
remove: aCar

	cars removeKey: aCar ifAbsent: [ ]! !

!Sector methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
cars

	^cars keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 2/May/2022, 5:26:16 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 1/May/2022, 7:54:33 pm (UTC)'!
includes: aCar

	^ cars includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
allowTurboTo: aCar

	^self subclassResponsibility! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
of: aLength

	self assertIsValidLength: aLength.
	
	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
withTurboOf: aLength

	^SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
withoutTurboOf: aLength

	^SectorWithoutTurbo of: aLength! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
assertIsValidLength: aLength

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
canNotPlaceCarOutsideSectorErrorDescription

	^'Driver can not be placed outside section'! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 11:24:41 pm (UTC)'!
cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription
	
	^ 'Cannot activate Turbo when opponent is more than 1 second ahead'! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 11:13:07 pm (UTC)'!
cannotActivateTurboWhenNoCarAheadErrorDescription
	
	^ 'Cannot activate Turbo without opponent ahead'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:05:20 pm (UTC)'!
lengthMustBePositiveErrorDescription

	^ 'Length must be positive'! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 12:54:45 pm (UTC)'!
turboNotAllowedErrorDescription
	
	^ 'Turbo not allowed in this Sector'! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
allowTurboTo: aCar

	self assert: aCar isLessThanASecondBehind: (self carAheadOf: aCar)! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
assert: aCar isLessThanASecondBehind: aCarAhead

	(self timeGapBetween: aCar and: aCarAhead) >= (1 * second) ifTrue: [ 
		self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
elapsedTimeOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
timeGapBetween: aCar and: aCarAhead

	^(self elapsedTimeOf: aCarAhead) - (self elapsedTimeOf: aCar)! !

!SectorWithTurbo methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
carAheadOf: aCar

	^self carsSortedByPosition 
		detect: [ :anotherCar | (self positionOf: anotherCar) > (self positionOf: aCar) ]
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ]! !

!SectorWithTurbo methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
carsSortedByPosition

	^self cars asSortedCollection: [ :aCar :anotherCar | (self positionOf: aCar) <= (self positionOf: anotherCar) ]! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:38:37 am (UTC)'!
allowTurboTo: aCar

	^self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
initializeWithSectors: aCollectionOfSectors

	sectors _ aCollectionOfSectors copy! !

!Track methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
assertCanPlaceCarAt: aPosition

	aPosition > self length ifTrue: [ self error: self class canNotPlaceCarOutsideTrackErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
positionOf: aCar

	| sectorOfCar |
	
	sectorOfCar _ self sectorOf: aCar.
	
	^(self lengthUpTo: sectorOfCar) + (sectorOfCar positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
put: aCar at: aPosition

	| sectorAtPosition |
	
	self assertCanPlaceCarAt: aPosition.
	self remove: aCar.
	
	sectorAtPosition _ self sectorAt: aPosition.
	sectorAtPosition put: aCar at: aPosition - (self lengthUpTo: sectorAtPosition)! !

!Track methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
remove: aCar

	sectors do: [ :aSector | aSector remove: aCar ]! !

!Track methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :aSector | aPosition <= ((self lengthUpTo: aSector) + aSector length) ]! !

!Track methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
sectorOf: aCar

	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :aSector | aSector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
cars

	^sectors inject: Set new into: [ :allCars :aSector | allCars addAll: aSector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
length

	^self lengthOfSectors: sectors! !

!Track methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:42:25 am (UTC)'!
lengthOfSectors: aCollectionOfSectors

	^aCollectionOfSectors inject: 0 * kilometer into: [ :accumulatedLength :aSector | accumulatedLength + aSector length ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
lengthUpTo: aSector

	^self lengthOfSectors: (sectors copyUpTo: aSector)! !

!Track methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :aSector | aSector includes: aCar ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
withSectors: aCollectionOfSectors

	self assertIsNotEmpty: aCollectionOfSectors.
	
	^self new initializeWithSectors: aCollectionOfSectors! !

!Track class methodsFor: 'error messages' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
canNotPlaceCarOutsideTrackErrorDescription

	^'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Track class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:39:20 am (UTC)'!
assertIsNotEmpty: aCollectionOfSectors

	aCollectionOfSectors ifEmpty: [ self error: self mustHaveSectorsErrorDescription ]! !

!Turbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:37:54 am (UTC)'!
activate

	^self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:37:54 am (UTC)'!
deactivate

	^self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:37:54 am (UTC)'!
isActivated

	^self subclassResponsibility! !

!Turbo methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:37:54 am (UTC)'!
speedFrom: aMaximumSpeed

	^self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:37:54 am (UTC)'!
unused

	^self boostPercentages reversed 
		inject: DeactivatedTurbo exhausted
		into: [ :nextDeactivation :aPercentage |
			DeactivatedTurbo activatingInto: (BoostingTurbo 
				increasingSpeedBy: aPercentage 
				deactivatingInto: nextDeactivation) ]! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 16/Sep/2026, 12:37:54 am (UTC)'!
alreadyActivatedErrorDescription

	^'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 16/Sep/2026, 12:37:54 am (UTC)'!
alreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!Turbo class methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:37:54 am (UTC)'!
boostPercentages

	^#(20 10 5)! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
activate

	^self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
isActivated

	^true! !

!BoostingTurbo methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
initializeIncreasingSpeedBy: aPercentage deactivatingInto: aDeactivatedTurbo

	speedIncreasePercentage _ aPercentage.
	deactivation _ aDeactivatedTurbo! !

!BoostingTurbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
deactivate

	^deactivation! !

!BoostingTurbo methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
speedFrom: aMaximumSpeed

	^aMaximumSpeed + (aMaximumSpeed * speedIncreasePercentage / 100)! !

!BoostingTurbo class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
increasingSpeedBy: aPercentage deactivatingInto: aDeactivatedTurbo

	^self new 
		initializeIncreasingSpeedBy: aPercentage 
		deactivatingInto: aDeactivatedTurbo! !

!ExhaustedTurbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
deactivate

	^DeactivatedTurbo exhausted! !

!ExhaustedTurbo methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
speedFrom: aMaximumSpeed

	^aMaximumSpeed! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
initializeActivatingInto: anActivatedTurbo

	activation _ anActivatedTurbo! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
activate

	^activation! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
deactivate

	^self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
speedFrom: aMaximumSpeed

	^aMaximumSpeed! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
activatingInto: anActivatedTurbo

	^self new initializeActivatingInto: anActivatedTurbo! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:38:04 am (UTC)'!
exhausted

	^self activatingInto: ExhaustedTurbo new! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 30/Apr/2022, 9:38:56 pm (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer.]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:20 am (UTC)'!
test02ACarCanNotBePlacedInAKilometerGreaterThanSectorLength

	| sector outside car |
	
	sector _ Sector withTurboOf: 10 * kilometer.
	outside _ sector length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self 
		should: [ sector put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector canNotPlaceCarOutsideSectorErrorDescription equals: error messageText.
			self deny: (sector includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:20 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	| car sector |

	sector _ Sector withoutTurboOf: 10 * kilometer.
	car _ FormulaOneCar drivenBy: #Schumacher.
	sector atStartPut: car.
	
	self 
		should: [ car activateTurbo ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector turboNotAllowedErrorDescription equals: error messageText.
			self deny: car isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:20 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	| hamilton sector |
	
	sector _ Sector withTurboOf: 20 * kilometer.
	self 
		carDrivenBy: #Schumacher 
		in: sector 
		at: 12 * kilometer 
		speedingAt: self racingSpeed.
	hamilton _ self 
		carDrivenBy: #Hamilton 
		in: sector 
		at: 13 * kilometer 
		speedingAt: self racingSpeed.
	
	self 
		should: [ hamilton activateTurbo ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector cannotActivateTurboWhenNoCarAheadErrorDescription equals: error messageText. 
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:20 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	schumacher _ self 
		carDrivenBy: #Schumacher 
		in: sector 
		at: 12.95 * kilometer 
		speedingAt: 300 * kilometer / hour.
	self 
		carDrivenBy: #Hamilton 
		in: sector 
		at: 13 * kilometer 
		speedingAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:20 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	schumacher _ self 
		carDrivenBy: #Schumacher 
		in: sector 
		at: 12.9 * kilometer 
		speedingAt: 300 * kilometer / hour.
	self 
		carDrivenBy: #Hamilton 
		in: sector 
		at: 13 * kilometer 
		speedingAt: 300 * kilometer / hour.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:37 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |
	
	track _ Track withSectors: self sectorWithTurboAndSectorWithoutTurbo.
	
	self assert: 30 * kilometer equals: track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:37 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |
	
	track _ Track withSectors: self sectorWithTurboAndSectorWithoutTurbo.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self 
		should: [ track put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track canNotPlaceCarOutsideTrackErrorDescription equals: error messageText.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:37 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack positionInSecondSector |
	
	sectors _ self sectorWithTurboAndSectorWithoutTurbo.
	positionInSecondSector _ 5 * kilometer.
	positionInTrack _ sectors first length + positionInSecondSector.
	
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.
	
	self assert: sectors second equals: (track sectorOf: car).
	self assert: positionInTrack equals: (track positionOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:37 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track schumacher verstappen |
	
	sectors _ self sectorWithTurboAndSectorWithoutTurbo.
	track _ Track withSectors: sectors.
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.

	track put: schumacher at: 10 * kilometer.
	track put: verstappen at: 30 * kilometer.
	
	self assert: (track includes: schumacher).
	self assert: (track includes: verstappen).
	self assert: (sectors first includes: schumacher).
	self assert: (sectors second includes: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:37 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |
	
	sectors _ self sectorWithTurboAndSectorWithoutTurbo.
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.
	
	self assert: sectors second equals: (track sectorOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:37 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix |
	
	track _ Track withSectors: self sectorWithTurboAndSectorWithoutTurbo.
	grandPrix _ GrandPrix on: track running: self numberOfLaps.
	
	self assert: track length * self numberOfLaps equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:37 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	grandPrix _ GrandPrix 
		on: self trackOfOneSectorWithTurbo
		running: self numberOfLaps
		with: (Array with: verstappen with: hamilton).
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:51 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	verstappen speed: 0 * kilometer / hour.
	grandPrix _ self grandPrixOn: self oneSectorWithTurbo racing: verstappen.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:51 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	grandPrix _ self grandPrixOn: self sectorWithTurboAndSectorWithoutTurbo racing: verstappen.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:51 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ self sectorWithTurboAndSectorWithoutTurbo.
	grandPrix _ self grandPrixOn: sectors racing: verstappen.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:51 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ self sectorWithTurboAndSectorWithoutTurbo.
	grandPrix _ self grandPrixOn: sectors racing: verstappen.
		
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:40:51 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withTurboOf: 30 * kilometer).
	grandPrix _ self grandPrixOn: sectors racing: verstappen.
		
	grandPrix put: verstappen at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen).
	
	verstappen speed: 15 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 20 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors second equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:41:09 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCarInSectorWithTurbo.
	
	self activateTurboOf: schumacher numberOfTimes: 1.
	
	self assert: schumacher isTurboActivated.
	self assert: 120 * kilometer / hour equals: schumacher speed! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:41:09 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCarInSectorWithTurbo.
	
	self activateTurboOf: schumacher numberOfTimes: 2.
	
	self assert: schumacher isTurboActivated.
	self assert: 110 * kilometer / hour equals: schumacher speed! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:41:09 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCarInSectorWithTurbo.
	
	self activateTurboOf: schumacher numberOfTimes: 3.
	
	self assert: schumacher isTurboActivated.
	self assert: 105 * kilometer / hour equals: schumacher speed! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:41:09 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCarInSectorWithTurbo.
	
	self activateTurboOf: schumacher numberOfTimes: 4.
	
	self assert: schumacher isTurboActivated.
	self assert: 100 * kilometer / hour equals: schumacher speed! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:41:09 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCarInSectorWithTurbo.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error 
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:41:09 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |
	
	schumacher _ self carLessThanASecondBehindAnotherCarInSectorWithTurbo.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error 
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:41:09 am (UTC)'!
test26CarOutsideOfTrackCanNotActivateTurbo

	| car |
	
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self 
		should: [ car activateTurbo ]
		raise: Error
		withExceptionDo: [ :error |
			self 
				assert: OutsideOfTrack turboCanNotBeActivatedOutsideOfTrackErrorDescription 
				equals: error messageText.
			self deny: car isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:41:09 am (UTC)'!
test27GrandPrixNumberOfLapsMustBePositive

	| track |
	
	track _ self trackOfOneSectorWithTurbo.
	
	self 
		should: [ GrandPrix on: track running: 0 ]
		raise: Error
		withMessageText: GrandPrix numberOfLapsMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'test support' stamp: 'HAW 16/Sep/2026, 12:39:53 am (UTC)'!
activateTurboOf: aCar numberOfTimes: aNumberOfActivations

	aNumberOfActivations - 1 timesRepeat: [ aCar activateTurbo; deactivateTurbo ].
	aCar activateTurbo! !

!FormulaOneTest methodsFor: 'test support' stamp: 'HAW 16/Sep/2026, 12:39:53 am (UTC)'!
carDrivenBy: aDriver in: aSector at: aPosition speedingAt: aSpeed

	| car |
	
	car _ FormulaOneCar drivenBy: aDriver.
	car speed: aSpeed.
	aSector put: car at: aPosition.
	
	^car! !

!FormulaOneTest methodsFor: 'test support' stamp: 'HAW 16/Sep/2026, 12:39:53 am (UTC)'!
carLessThanASecondBehindAnotherCarInSectorWithTurbo

	| sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	self 
		carDrivenBy: #Hamilton 
		in: sector 
		at: 13 * kilometer 
		speedingAt: self racingSpeed.
	
	^self 
		carDrivenBy: #Schumacher 
		in: sector 
		at: 12.99 * kilometer 
		speedingAt: self racingSpeed! !

!FormulaOneTest methodsFor: 'test support' stamp: 'HAW 16/Sep/2026, 12:42:26 am (UTC)'!
grandPrixOn: aCollectionOfSectors racing: aCar

	^GrandPrix 
		on: (Track withSectors: aCollectionOfSectors) 
		running: self numberOfLaps 
		with: (Array with: aCar)! !

!FormulaOneTest methodsFor: 'test support' stamp: 'HAW 16/Sep/2026, 12:39:53 am (UTC)'!
numberOfLaps

	^100! !

!FormulaOneTest methodsFor: 'test support' stamp: 'HAW 16/Sep/2026, 12:40:20 am (UTC)'!
oneSectorWithTurbo

	^OrderedCollection with: (Sector withTurboOf: 10 * kilometer)! !

!FormulaOneTest methodsFor: 'test support' stamp: 'HAW 16/Sep/2026, 12:39:53 am (UTC)'!
racingSpeed

	^100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'test support' stamp: 'HAW 16/Sep/2026, 12:39:53 am (UTC)'!
sectorWithTurboAndSectorWithoutTurbo

	^OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'test support' stamp: 'HAW 16/Sep/2026, 12:40:20 am (UTC)'!
trackOfOneSectorWithTurbo

	^Track withSectors: self oneSectorWithTurbo! !
