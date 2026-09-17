'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 9:08:02 pm'!
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
	instanceVariableNames: 'carPositions length'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'Sector class' category: #'ISW1-2022-1C-Parcial-1'!
Sector class
	instanceVariableNames: ''!

!classDefinition: #TurboDisabledSector category: #'ISW1-2022-1C-Parcial-1'!
Sector subclass: #TurboDisabledSector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboDisabledSector class' category: #'ISW1-2022-1C-Parcial-1'!
TurboDisabledSector class
	instanceVariableNames: ''!

!classDefinition: #TurboEnabledSector category: #'ISW1-2022-1C-Parcial-1'!
Sector subclass: #TurboEnabledSector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboEnabledSector class' category: #'ISW1-2022-1C-Parcial-1'!
TurboEnabledSector class
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
	instanceVariableNames: 'percentage next'
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
	instanceVariableNames: 'schumacher hamilton verstappen firstSector secondSector track grandPrix'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1-Tests'!
!classDefinition: 'FormulaOneTest class' category: #'ISW1-2022-1C-Parcial-1-Tests'!
FormulaOneTest class
	instanceVariableNames: ''!


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:04:17 am (UTC)'!
initializeDrivenBy: aDriver

	driver _ aDriver.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer.
	turbo _ Turbo unused! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 11/Sep/2026, 12:04:24 am (UTC)'!
advanceDuring: aTimeLapse

	traveledDistance _ traveledDistance + (self speed * aTimeLapse)! !

!FormulaOneCar methodsFor: 'moving' stamp: 'FRT 30/Apr/2022, 7:33:07 pm (UTC)'!
atSector: aSector

	currentSector _ aSector.! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:31 pm (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:04:20 am (UTC)'!
activateTurbo

	turbo _ turbo activatedIn: currentSector by: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:04:21 am (UTC)'!
deactivateTurbo

	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:04:22 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 12:04:18 am (UTC)'!
speed

	^turbo speedUp: speed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 30/Apr/2022, 10:15:19 pm (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'driving' stamp: 'HAW 11/Sep/2026, 12:04:19 am (UTC)'!
speed: aSpeed

	speed _ aSpeed! !

!FormulaOneCar methodsFor: 'printing' stamp: 'HAW 11/Sep/2026, 12:04:25 am (UTC)'!
printOn: aStream

	aStream
		nextPutAll: 'Formula One car driven by ';
		print: driver! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:04:43 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:47 am (UTC)'!
locationOf: aCar

	^aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:45 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:04:48 am (UTC)'!
sectorOf: aCar

	^track sectorOf: aCar! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 11/Sep/2026, 12:04:43 am (UTC)'!
advance: aTimeLapse

	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation - private' stamp: 'HAW 11/Sep/2026, 12:04:44 am (UTC)'!
relocate: aCar after: aTimeLapse

	aCar advanceDuring: aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position - private' stamp: 'HAW 11/Sep/2026, 12:04:46 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:04:41 am (UTC)'!
on: aTrack running: aNumberOfLaps

	self assertIsValidNumberOfLaps: aNumberOfLaps.

	^self new initializeOn: aTrack running: aNumberOfLaps! !

!GrandPrix class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:04:42 am (UTC)'!
assertIsValidNumberOfLaps: aNumberOfLaps

	aNumberOfLaps strictlyPositive ifFalse: [ self error: self numberOfLapsMustBePositiveErrorDescription ]! !

!GrandPrix class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 12:04:43 am (UTC)'!
numberOfLapsMustBePositiveErrorDescription

	^'Number of laps must be positive'! !

!Sector methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:03:46 am (UTC)'!
initializeOf: aLength

	carPositions _ Dictionary new.
	length _ aLength! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:03:51 am (UTC)'!
atStartPut: aCar

	self put: aCar at: 0 * kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:03:55 am (UTC)'!
carAheadOf: aCar ifNone: aBlock

	^(self carsAheadOf: aCar)
		ifEmpty: aBlock
		ifNotEmpty: [ :carsAhead | carsAhead detectMin: [ :carAhead | self positionOf: carAhead ] ]! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:03:53 am (UTC)'!
carsAheadOf: aCar

	^self cars select: [ :car | (self positionOf: car) > (self positionOf: aCar) ]! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:03:49 am (UTC)'!
positionOf: aCar

	^carPositions at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:03:50 am (UTC)'!
put: aCar at: aPosition

	self assertIsInside: aPosition.

	carPositions at: aCar put: aPosition.
	aCar atSector: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:03:52 am (UTC)'!
remove: aCar

	carPositions removeKey: aCar ifAbsent: []! !

!Sector methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 12:03:47 am (UTC)'!
cars

	^carPositions keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 2/May/2022, 5:26:16 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:03:48 am (UTC)'!
includes: aCar

	^carPositions includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:03:57 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:03:56 am (UTC)'!
assertIsInside: aPosition

	aPosition > length ifTrue: [ self error: self class cannotPlaceCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:03:27 am (UTC)'!
of: aLength

	self assertIsValidLength: aLength.

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:03:28 am (UTC)'!
withTurboOf: aLength

	^TurboEnabledSector of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:03:29 am (UTC)'!
withoutTurboOf: aLength

	^TurboDisabledSector of: aLength! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:03:31 am (UTC)'!
assertIsValidLength: aLength

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 11:24:41 pm (UTC)'!
cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription
	
	^ 'Cannot activate Turbo when opponent is more than 1 second ahead'! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 11:13:07 pm (UTC)'!
cannotActivateTurboWhenNoCarAheadErrorDescription
	
	^ 'Cannot activate Turbo without opponent ahead'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 12:03:32 am (UTC)'!
cannotPlaceCarErrorDescription

	^'Driver can not be placed outside section'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:05:20 pm (UTC)'!
lengthMustBePositiveErrorDescription

	^ 'Length must be positive'! !

!Sector class methodsFor: 'error messages' stamp: 'FRT 30/Apr/2022, 12:54:45 pm (UTC)'!
turboNotAllowedErrorDescription
	
	^ 'Turbo not allowed in this Sector'! !

!TurboDisabledSector methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:04:02 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class turboNotAllowedErrorDescription! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 11/Sep/2026, 12:04:04 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| carAhead |

	carAhead _ self
		carAheadOf: aCar
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].

	self assertIsLessThanASecondBetween: aCar and: carAhead! !

!TurboEnabledSector methodsFor: 'turbo - private' stamp: 'HAW 11/Sep/2026, 12:04:06 am (UTC)'!
assertIsLessThanASecondBetween: aCar and: aCarAhead

	(self timeBetween: aCar and: aCarAhead) < (1 * second) ifFalse: [
		self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!TurboEnabledSector methodsFor: 'turbo - private' stamp: 'HAW 11/Sep/2026, 12:04:07 am (UTC)'!
timeBetween: aCar and: aCarAhead

	^(self timeToReachPositionOf: aCarAhead) - (self timeToReachPositionOf: aCar)! !

!TurboEnabledSector methodsFor: 'turbo - private' stamp: 'HAW 11/Sep/2026, 12:04:08 am (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!Track methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:05:06 am (UTC)'!
initializeWithSectors: aCollectionOfSectors

	sectors _ aCollectionOfSectors copy! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:05:10 am (UTC)'!
positionOf: aCar

	| sector |

	sector _ self sectorOf: aCar.

	^(self startOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:05:12 am (UTC)'!
put: aCar at: aPosition

	| sector |

	self assertIsInside: aPosition.
	self remove: aCar.

	sector _ self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self startOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:05:13 am (UTC)'!
remove: aCar

	sectors do: [ :sector | sector remove: aCar ]! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:05:14 am (UTC)'!
sectorOf: aCar

	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 11/Sep/2026, 12:05:15 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 12:05:07 am (UTC)'!
cars

	^sectors inject: Set new into: [ :cars :sector | cars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 12:05:08 am (UTC)'!
length

	^sectors sum: [ :sector | sector length ]! !

!Track methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:05:09 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 11/Sep/2026, 12:05:19 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector length! !

!Track methodsFor: 'car position - private' stamp: 'HAW 11/Sep/2026, 12:05:16 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self endOf: sector) ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 11/Sep/2026, 12:05:18 am (UTC)'!
startOf: aSector

	^(sectors copyUpTo: aSector)
		sum: [ :sectorBefore | sectorBefore length ]
		ifEmpty: [ 0 * kilometer ]! !

!Track methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:05:20 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlaceCarErrorDescription ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:05:01 am (UTC)'!
withSectors: aCollectionOfSectors

	self assertHasSectors: aCollectionOfSectors.

	^self new initializeWithSectors: aCollectionOfSectors! !

!Track class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 12:05:03 am (UTC)'!
cannotPlaceCarErrorDescription

	^'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 12:05:04 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Track class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:05:02 am (UTC)'!
assertHasSectors: aCollectionOfSectors

	aCollectionOfSectors ifEmpty: [ self error: self mustHaveSectorsErrorDescription ]! !

!Turbo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:03:02 am (UTC)'!
initializeBoostingWith: aBoost

	boost _ aBoost! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 12:03:03 am (UTC)'!
speedUp: aSpeed

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 12:03:04 am (UTC)'!
activatedIn: aSector by: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 12:03:05 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:03:06 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:02:58 am (UTC)'!
boostingWith: aBoost

	^self new initializeBoostingWith: aBoost! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:02:59 am (UTC)'!
unused

	^DeactivatedTurbo boostingWith: TurboBoost sequence! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 12:03:00 am (UTC)'!
alreadyActivatedErrorDescription

	^'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 11/Sep/2026, 12:03:01 am (UTC)'!
alreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 12:03:09 am (UTC)'!
speedUp: aSpeed

	^boost applyTo: aSpeed! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 12:03:10 am (UTC)'!
activatedIn: aSector by: aCar

	^self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 12:03:11 am (UTC)'!
deactivated

	^DeactivatedTurbo boostingWith: boost next! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:03:12 am (UTC)'!
isActivated

	^true! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 12:03:13 am (UTC)'!
speedUp: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 12:03:14 am (UTC)'!
activatedIn: aSector by: aCar

	aSector assertTurboCanBeActivatedBy: aCar.

	^ActivatedTurbo boostingWith: boost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 11/Sep/2026, 12:03:15 am (UTC)'!
deactivated

	^self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:03:16 am (UTC)'!
isActivated

	^false! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 12:02:45 am (UTC)'!
applyTo: aSpeed

	self subclassResponsibility! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 12:02:46 am (UTC)'!
next

	self subclassResponsibility! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:02:48 am (UTC)'!
sequence

	^AvailableTurboBoost
		increasingBy: 20
		followedBy: (AvailableTurboBoost
			increasingBy: 10
			followedBy: (AvailableTurboBoost increasingBy: 5 followedBy: ExhaustedTurboBoost new))! !

!AvailableTurboBoost methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:02:51 am (UTC)'!
initializeIncreasingBy: aPercentage followedBy: aNextBoost

	percentage _ aPercentage.
	next _ aNextBoost! !

!AvailableTurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 12:02:52 am (UTC)'!
applyTo: aSpeed

	^aSpeed * (100 + percentage) / 100! !

!AvailableTurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 12:02:53 am (UTC)'!
next

	^next! !

!AvailableTurboBoost class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:02:49 am (UTC)'!
increasingBy: aPercentage followedBy: aNextBoost

	^self new initializeIncreasingBy: aPercentage followedBy: aNextBoost! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 12:02:54 am (UTC)'!
applyTo: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 11/Sep/2026, 12:02:54 am (UTC)'!
next

	^self! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 11/Sep/2026, 12:05:53 am (UTC)'!
putInTurboSectorSchumacherAt: aSchumacherPosition andHamiltonAt: aHamiltonPosition bothRunningAt: aSpeed

	| turboSector |

	turboSector _ Sector withTurboOf: 24 * kilometer.

	schumacher speed: aSpeed.
	hamilton speed: aSpeed.

	turboSector put: schumacher at: aSchumacherPosition.
	turboSector put: hamilton at: aHamiltonPosition! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 11/Sep/2026, 12:05:54 am (UTC)'!
putSchumacherLessThanASecondBehindHamilton

	self
		putInTurboSectorSchumacherAt: 12.99 * kilometer
		andHamiltonAt: 13 * kilometer
		bothRunningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 11/Sep/2026, 12:05:51 am (UTC)'!
setUp

	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.

	firstSector _ Sector withTurboOf: 10 * kilometer.
	secondSector _ Sector withoutTurboOf: 20 * kilometer.
	track _ Track withSectors: (OrderedCollection with: firstSector with: secondSector).
	grandPrix _ GrandPrix on: track running: 100! !

!FormulaOneTest methodsFor: 'exercising' stamp: 'HAW 11/Sep/2026, 12:05:56 am (UTC)'!
useTurboOf: aCar times: aNumberOfUses

	aNumberOfUses timesRepeat: [ aCar activateTurbo; deactivateTurbo ]! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:05:57 am (UTC)'!
assertTurboOf: aCar isActivatedReaching: aSpeed

	self assert: aCar isTurboActivated.
	self assert: aSpeed equals: aCar speed! !

!FormulaOneTest methodsFor: 'tests - sector' stamp: 'HAW 11/Sep/2026, 12:06:01 am (UTC)'!
test01SectorLengthMustBePositive

	self
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests - sector' stamp: 'HAW 11/Sep/2026, 12:06:03 am (UTC)'!
test02ACarCanNotBePlacedInAKilometerGreaterThanSectorLength

	| outside |

	outside _ firstSector length + (1 * millimeter).

	self
		should: [ firstSector put: schumacher at: outside ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector cannotPlaceCarErrorDescription equals: error messageText.
			self deny: (firstSector includes: schumacher) ]! !

!FormulaOneTest methodsFor: 'tests - sector' stamp: 'HAW 11/Sep/2026, 12:06:05 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	| nonTurboSector |

	nonTurboSector _ Sector withoutTurboOf: 10 * kilometer.
	nonTurboSector atStartPut: schumacher.

	self
		should: [ schumacher activateTurbo ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector turboNotAllowedErrorDescription equals: error messageText.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests - sector' stamp: 'HAW 11/Sep/2026, 12:06:08 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	self
		putInTurboSectorSchumacherAt: 12 * kilometer
		andHamiltonAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.

	self
		should: [ hamilton activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Sector cannotActivateTurboWhenNoCarAheadErrorDescription equals: error messageText.
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests - sector' stamp: 'HAW 11/Sep/2026, 12:06:10 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	self
		putInTurboSectorSchumacherAt: 12.95 * kilometer
		andHamiltonAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.

	schumacher activateTurbo.

	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests - sector' stamp: 'HAW 11/Sep/2026, 12:06:13 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	self
		putInTurboSectorSchumacherAt: 12.9 * kilometer
		andHamiltonAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.

	self
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self
				assert: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription
				equals: error messageText.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests - track' stamp: 'HAW 11/Sep/2026, 12:06:14 am (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests - track' stamp: 'HAW 11/Sep/2026, 12:06:15 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	self assert: 30 * kilometer equals: track length! !

!FormulaOneTest methodsFor: 'tests - track' stamp: 'HAW 11/Sep/2026, 12:06:17 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| outside |

	outside _ track length + (1 * millimeter).

	self
		should: [ track put: schumacher at: outside ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlaceCarErrorDescription equals: error messageText.
			self deny: (track includes: schumacher) ]! !

!FormulaOneTest methodsFor: 'tests - track' stamp: 'HAW 11/Sep/2026, 12:06:20 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| positionInTrack |

	positionInTrack _ firstSector length + (5 * kilometer).

	track put: schumacher at: positionInTrack.

	self assert: secondSector equals: (track sectorOf: schumacher).
	self assert: positionInTrack equals: (track positionOf: schumacher).
	self deny: (firstSector includes: schumacher).
	self assert: (secondSector includes: schumacher)! !

!FormulaOneTest methodsFor: 'tests - track' stamp: 'HAW 11/Sep/2026, 12:06:21 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	track put: schumacher at: 10 * kilometer.
	track put: verstappen at: 30 * kilometer.

	self assert: (track includes: schumacher).
	self assert: (track includes: verstappen).
	self assert: (firstSector includes: schumacher).
	self assert: (secondSector includes: verstappen)! !

!FormulaOneTest methodsFor: 'tests - track' stamp: 'HAW 11/Sep/2026, 12:06:23 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	track put: schumacher at: 5 * kilometer.
	track put: schumacher at: 15 * kilometer.

	self assert: secondSector equals: (track sectorOf: schumacher).
	self deny: (firstSector includes: schumacher).
	self assert: (secondSector includes: schumacher)! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 12:06:24 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	self assert: 3000 * kilometer equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 12:06:28 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 12:06:30 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	verstappen speed: 0 * kilometer / hour.
	grandPrix put: verstappen at: 5 * kilometer.

	grandPrix advance: 10 * minute.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 12:06:32 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.

	grandPrix advance: 1 * hour.

	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 12:06:34 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	grandPrix put: verstappen at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: firstSector equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 12:06:36 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.

	grandPrix advance: 1 * hour.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: firstSector equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 12:06:39 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	grandPrix put: verstappen at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: firstSector equals: (grandPrix sectorOf: verstappen).

	verstappen speed: 15 * kilometer / hour.
	grandPrix advance: 1 * hour.

	self assert: 20 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: secondSector equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests - grand prix' stamp: 'HAW 11/Sep/2026, 12:06:51 am (UTC)'!
test26GrandPrixMustHaveAtLeastOneLap

	self
		should: [ GrandPrix on: track running: 0 ]
		raise: Error
		withMessageText: GrandPrix numberOfLapsMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 12:06:40 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self putSchumacherLessThanASecondBehindHamilton.

	schumacher activateTurbo.

	self assertTurboOf: schumacher isActivatedReaching: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 12:06:42 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self putSchumacherLessThanASecondBehindHamilton.
	self useTurboOf: schumacher times: 1.

	schumacher activateTurbo.

	self assertTurboOf: schumacher isActivatedReaching: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 12:06:44 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self putSchumacherLessThanASecondBehindHamilton.
	self useTurboOf: schumacher times: 2.

	schumacher activateTurbo.

	self assertTurboOf: schumacher isActivatedReaching: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 12:06:46 am (UTC)'!
test23AfterThirdTurboTurboIsExhausted

	self putSchumacherLessThanASecondBehindHamilton.
	self useTurboOf: schumacher times: 3.

	schumacher activateTurbo.

	self assertTurboOf: schumacher isActivatedReaching: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 12:06:48 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	self putSchumacherLessThanASecondBehindHamilton.
	schumacher activateTurbo.

	self
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests - turbo' stamp: 'HAW 11/Sep/2026, 12:06:49 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	self putSchumacherLessThanASecondBehindHamilton.

	self
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !
