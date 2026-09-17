'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 5:05:37 am'!
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
	instanceVariableNames: 'factor nextBoost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost class
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


!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
boost: aSpeed

	^ aSpeed! !

!ExhaustedTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
next

	^ self! !

!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:03:59 am (UTC)'!
initializeDrivenBy: aDriver 

	driver _ aDriver.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer.
	turbo _ Turbo unused! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:07 pm (UTC)'!
advance: aDistance

	traveledDistance _ traveledDistance + aDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:03:59 am (UTC)'!
speed

	^ turbo boost: speed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 1/May/2022, 8:34:26 pm (UTC)'!
speed: newSpeed

	speed _ newSpeed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:19 pm (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:31 pm (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:03:59 am (UTC)'!
activateTurbo

	turbo activateOn: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:03:59 am (UTC)'!
deactivateTurbo

	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:03:59 am (UTC)'!
isTurboActivated
	
	^ turbo isActivated! !

!FormulaOneCar methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 8:03:59 am (UTC)'!
activateTurboInCurrentSector

	currentSector activateTurboTo: self! !

!FormulaOneCar methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 8:03:59 am (UTC)'!
activateTurboInSectorWithTurbo

	turbo _ turbo activated! !

!FormulaOneCar methodsFor: 'moving - private' stamp: 'FRT 30/Apr/2022, 7:33:07 pm (UTC)'!
atSector: aSector

	currentSector _ aSector.! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 1/May/2022, 1:23:59 am (UTC)'!
locationOf: aCar

	^ aCar traveledDistance.	! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 30/Apr/2022, 6:38:16 pm (UTC)'!
sectorOf: aCar 

	^ track sectorOf: aCar.! !

!GrandPrix methodsFor: 'length' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
advance: aTimeLapse
	
	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation - private' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
on: aTrack running: aNumberOfLaps 

	^ self new initializeOn: aTrack running: aNumberOfLaps! !

!Sector methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:04:11 am (UTC)'!
initializeOf: aLength 

	cars _ Dictionary new.
	length _ aLength! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:04:11 am (UTC)'!
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

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:04:11 am (UTC)'!
activateTurboTo: aCar

	self subclassResponsibility! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:04:11 am (UTC)'!
of: aLength 

	self assertIsPositive: aLength.

	^ self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:04:11 am (UTC)'!
withTurboOf: aLength 

	^ SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:04:11 am (UTC)'!
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

!Sector class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:04:11 am (UTC)'!
assertIsPositive: aLength 

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:04:11 am (UTC)'!
activateTurboTo: aCar

	| carAhead |

	carAhead _ self 
		carAheadOf: aCar 
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self assert: aCar isLessThanASecondBehind: carAhead.

	aCar activateTurboInSectorWithTurbo! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 8:04:11 am (UTC)'!
assert: aCar isLessThanASecondBehind: carAhead

	((self timeToPositionOf: carAhead) - (self timeToPositionOf: aCar)) < (1 * second)
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 8:04:11 am (UTC)'!
carAheadOf: aCar ifNone: aBlock

	| carPosition carsAhead |
	
	carPosition _ self positionOf: aCar.
	carsAhead _ self cars select: [ :aCarInSector | (self positionOf: aCarInSector) > carPosition ].
	
	^ carsAhead 
		ifEmpty: aBlock 
		ifNotEmpty: [ carsAhead detectMin: [ :aCarAhead | self positionOf: aCarAhead ] ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 8:04:11 am (UTC)'!
timeToPositionOf: aCar

	^ (self positionOf: aCar) / aCar speed! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:04:11 am (UTC)'!
activateTurboTo: aCar

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 30/Apr/2022, 8:06:50 pm (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy.! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.
	
	^ (self lengthBefore: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsInside: aPosition.
	self remove: aCar.
	
	sector _ sectors detect: [ :aSector | aPosition <= (self lengthUpTo: aSector) ].
	sector put: aCar at: aPosition - (self lengthBefore: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
remove: aCar
	
	(self sectorOf: aCar ifNone: [ ^ self ]) remove: aCar! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
sectorOf: aCar
	
	^ self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^ sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
cars

	^ sectors 
		inject: Set new 
		into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
length

	^ self lengthOf: sectors! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
includes: aCar

	^ sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'accessing - private' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
lengthBefore: aSector

	^ self lengthOf: (sectors first: (sectors indexOf: aSector) - 1)! !

!Track methodsFor: 'accessing - private' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
lengthOf: someSectors

	^ someSectors sum: [ :sector | sector length ] ifEmpty: [ 0 * kilometer ]! !

!Track methodsFor: 'accessing - private' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
lengthUpTo: aSector

	^ (self lengthBefore: aSector) + aSector length! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
withSectors: aSectors

	aSectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ].
	
	^ self new initializeWithSectors: aSectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 8:04:24 am (UTC)'!
carNotFoundErrorDescription

	^ 'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Turbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
initializeWithBoost: aBoost

	boost _ aBoost! !

!Turbo methodsFor: 'activating' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
activateOn: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'activating' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
activated

	self subclassResponsibility! !

!Turbo methodsFor: 'activating' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:03:59 am (UTC)'!
unused

	^ DeactivatedTurbo withNextBoost: TurboBoost first! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:05:13 am (UTC)'!
withNextBoost: aBoost

	^ self new initializeWithBoost: aBoost! !

!Turbo class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
alreadyActivatedErrorDescription

	^ 'Turbo already activated'! !

!Turbo class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
alreadyDeactivatedErrorDescription

	^ 'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'activating' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
activateOn: aCar

	self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activating' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
activated

	self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activating' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
deactivated

	^ DeactivatedTurbo withNextBoost: boost next! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
isActivated

	^ true! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
boost: aSpeed

	^ boost boost: aSpeed! !

!DeactivatedTurbo methodsFor: 'activating' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
activateOn: aCar

	aCar activateTurboInCurrentSector! !

!DeactivatedTurbo methodsFor: 'activating' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
activated

	^ ActivatedTurbo withNextBoost: boost! !

!DeactivatedTurbo methodsFor: 'activating' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
deactivated

	self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
isActivated

	^ false! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
boost: aSpeed

	^ aSpeed! !

!TurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
initializeMultiplyingBy: aFactor followedBy: aNextBoost

	factor _ aFactor.
	nextBoost _ aNextBoost! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
boost: aSpeed

	^ aSpeed * factor! !

!TurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
next

	^ nextBoost! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
first

	^ self 
		multiplyingBy: 12/10 
		followedBy: (self 
			multiplyingBy: 11/10 
			followedBy: (self 
				multiplyingBy: 105/100 
				followedBy: ExhaustedTurboBoost new))! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:03:49 am (UTC)'!
multiplyingBy: aFactor followedBy: aNextBoost

	^ self new initializeMultiplyingBy: aFactor followedBy: aNextBoost! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test02ACarCanNotBePlacedInAKilometerGreaterThanSectorLength

	| sector |
	
	sector _ Sector withTurboOf: 10 * kilometer.
	
	self 
		should: [ sector put: schumacher at: sector length + (1 * millimeter) ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (sector includes: schumacher) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	(Sector withoutTurboOf: 10 * kilometer) atStartPut: schumacher.
	
	self 
		assertCannotActivateTurboOf: schumacher 
		withMessageText: Sector turboNotAllowedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	self putInTurboSector: schumacher at: 12 * kilometer behind: hamilton at: 13 * kilometer.
	
	self 
		assertCannotActivateTurboOf: hamilton 
		withMessageText: Sector cannotActivateTurboWhenNoCarAheadErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	self putBothAt: 300 * kilometer / hour inTurboSector: schumacher at: 12.95 * kilometer behind: hamilton at: 13 * kilometer.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	self putBothAt: 300 * kilometer / hour inTurboSector: schumacher at: 12.9 * kilometer behind: hamilton at: 13 * kilometer.
	
	self 
		assertCannotActivateTurboOf: schumacher 
		withMessageText: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	self assert: 30 * kilometer equals: (Track withSectors: self twoSectors) length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track |
	
	track _ Track withSectors: self twoSectors.
	
	self 
		should: [ track put: schumacher at: track length + (1 * millimeter) ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (track includes: schumacher) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track positionInTrack |
	
	sectors _ self twoSectors.
	positionInTrack _ sectors first length + (5 * kilometer).
	track _ Track withSectors: sectors.

	track put: schumacher at: positionInTrack.
	
	self assert: sectors second equals: (track sectorOf: schumacher).
	self assert: positionInTrack equals: (track positionOf: schumacher).
	self assertOnlySecondOf: sectors includes: schumacher! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track |
	
	sectors _ self twoSectors.
	track _ Track withSectors: sectors.

	track put: schumacher at: 5 * kilometer.
	track put: schumacher at: 15 * kilometer.
	
	self assert: sectors second equals: (track sectorOf: schumacher).
	self assertOnlySecondOf: sectors includes: schumacher! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track numberOfLaps |
	
	track _ Track withSectors: self twoSectors.
	numberOfLaps _ 100.
	
	self assert: track length * numberOfLaps equals: (GrandPrix on: track running: numberOfLaps) length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix |
	
	grandPrix _ self grandPrixOn: self oneSector.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix |
	
	grandPrix _ self grandPrixOn: self oneSector.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix |
	
	grandPrix _ self grandPrixOn: self twoSectors.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix sectors |
	
	sectors _ self twoSectors.
	grandPrix _ self grandPrixOn: sectors.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: grandPrix locates: verstappen at: 5 * kilometer in: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix sectors |
	
	sectors _ self twoSectors.
	grandPrix _ self grandPrixOn: sectors.
		
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: grandPrix locates: verstappen at: 5 * kilometer in: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix sectorA sectorB |
	
	sectorA _ Sector withTurboOf: 10 * kilometer.
	sectorB _ Sector withTurboOf: 30 * kilometer.
	grandPrix _ self grandPrixOn: (OrderedCollection with: sectorA with: sectorB).
		
	grandPrix put: verstappen at: 5 * kilometer.
	self assert: grandPrix locates: verstappen at: 5 * kilometer in: sectorA.
	
	verstappen speed: 15 * kilometer / hour.
	grandPrix advance: 1 * hour.
	self assert: grandPrix locates: verstappen at: 20 * kilometer in: sectorB! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self assertSpeedAfterActivatingTurbo: 1 equals: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self assertSpeedAfterActivatingTurbo: 2 equals: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self assertSpeedAfterActivatingTurbo: 3 equals: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	self assertSpeedAfterActivatingTurbo: 4 equals: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	self putSchumacherLessThanASecondBehindHamilton.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	self putSchumacherLessThanASecondBehindHamilton.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'setUp/tearDown' stamp: 'HAW 17/Sep/2026, 8:05:06 am (UTC)'!
setUp

	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	verstappen _ FormulaOneCar drivenBy: #Verstappen! !

!FormulaOneTest methodsFor: 'fixtures' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
activateTurboOf: aCar times: aNumberOfActivations

	aNumberOfActivations - 1 timesRepeat: [ aCar activateTurbo; deactivateTurbo ].
	aCar activateTurbo! !

!FormulaOneTest methodsFor: 'fixtures' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
grandPrixOn: sectors

	^ GrandPrix on: (Track withSectors: sectors) running: 100! !

!FormulaOneTest methodsFor: 'fixtures' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
oneSector

	^ OrderedCollection with: (Sector withTurboOf: 10 * kilometer)! !

!FormulaOneTest methodsFor: 'fixtures' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
putBothAt: aSpeed inTurboSector: aCarBehind at: aPositionBehind behind: aCarAhead at: aPositionAhead

	aCarBehind speed: aSpeed.
	aCarAhead speed: aSpeed.
	self putInTurboSector: aCarBehind at: aPositionBehind behind: aCarAhead at: aPositionAhead! !

!FormulaOneTest methodsFor: 'fixtures' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
putInTurboSector: aCarBehind at: aPositionBehind behind: aCarAhead at: aPositionAhead

	| sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	sector put: aCarBehind at: aPositionBehind.
	sector put: aCarAhead at: aPositionAhead! !

!FormulaOneTest methodsFor: 'fixtures' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
putSchumacherLessThanASecondBehindHamilton

	self putBothAt: 100 * kilometer / hour inTurboSector: schumacher at: 12.99 * kilometer behind: hamilton at: 13 * kilometer! !

!FormulaOneTest methodsFor: 'fixtures' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
twoSectors

	^ OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
assert: aGrandPrix locates: aCar at: aDistance in: aSector

	self assert: aDistance equals: (aGrandPrix locationOf: aCar).
	self assert: aSector equals: (aGrandPrix sectorOf: aCar)! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
assertCannotActivateTurboOf: aCar withMessageText: anErrorDescription

	self 
		should: [ aCar activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			self deny: aCar isTurboActivated ]! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
assertOnlySecondOf: sectors includes: aCar

	self deny: (sectors first includes: aCar).
	self assert: (sectors second includes: aCar)! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:05:07 am (UTC)'!
assertSpeedAfterActivatingTurbo: aNumberOfActivations equals: anExpectedSpeed

	self putSchumacherLessThanASecondBehindHamilton.
	
	self activateTurboOf: schumacher times: aNumberOfActivations.
	
	self assert: schumacher isTurboActivated.
	self assert: anExpectedSpeed equals: schumacher speed! !
