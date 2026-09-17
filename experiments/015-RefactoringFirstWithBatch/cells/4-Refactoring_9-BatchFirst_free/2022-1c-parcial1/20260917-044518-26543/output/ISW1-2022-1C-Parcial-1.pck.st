'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 4:49:31 am'!
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
	instanceVariableNames: 'sectors driversDistanceFromBeginning'
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
	instanceVariableNames: 'percentage nextBoost'
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
	instanceVariableNames: 'schumacher hamilton verstappen'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1-Tests'!
!classDefinition: 'FormulaOneTest class' category: #'ISW1-2022-1C-Parcial-1-Tests'!
FormulaOneTest class
	instanceVariableNames: ''!


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
initializeDrivenBy: aDriver

	driver _ aDriver.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer.
	turbo _ Turbo unused! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:07 pm (UTC)'!
advance: aDistance

	traveledDistance _ traveledDistance + aDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'FRT 30/Apr/2022, 7:33:07 pm (UTC)'!
atSector: aSector

	currentSector _ aSector.! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
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

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
activateTurbo

	| activatedTurbo |

	activatedTurbo _ turbo activated.
	currentSector assertTurboCanBeActivatedBy: self.
	turbo _ activatedTurbo! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
deactivateTurbo

	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps with: aCollectionOfCars

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps.
	cars _ aCollectionOfCars copy! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
locationOf: aCar

	^aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
sectorOf: aCar

	^track sectorOf: aCar! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
advance: aTimeLapse

	cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation - private' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
relocate: aCar after: aTimeLapse

	aCar advance: aCar speed * aTimeLapse.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
placeOnTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
length

	^track length * numberOfLaps! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 10:36:05 pm (UTC)'!
on: aTrack running: aNumberOfLaps 

	^self on: aTrack running: aNumberOfLaps with: #()! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
on: aTrack running: aNumberOfLaps with: aCollectionOfCars

	^self new initializeOn: aTrack running: aNumberOfLaps with: aCollectionOfCars! !

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

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector methodsFor: 'car position - private' stamp: 'FRT 1/May/2022, 5:13:55 pm (UTC)'!
assertValidPosition: aPosition

	length < aPosition ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
of: aLength

	aLength strictlyPositive ifFalse: [ self error: Sector lengthMustBePositiveErrorDescription ].

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
withTurboOf: aLength

	^SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
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

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| carAhead |

	carAhead _ self
		carAheadOf: aCar
		ifNone: [ ^self error: Sector cannotActivateTurboWhenNoCarAheadErrorDescription ].

	(self timeFrom: aCar to: carAhead) < (1 * second)
		ifFalse: [ self error: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
carAheadOf: aCar ifNone: aBlock

	| carsAhead |

	carsAhead _ self cars select: [ :car | (self positionOf: car) > (self positionOf: aCar) ].

	^carsAhead
		ifEmpty: aBlock
		ifNotEmpty: [ carsAhead detectMin: [ :car | self positionOf: car ] ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
timeFrom: aCar to: aCarAhead

	^((self positionOf: aCarAhead) / aCarAhead speed) - ((self positionOf: aCar) / aCar speed)! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: Sector turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 30/Apr/2022, 8:06:50 pm (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy.! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
positionOf: aCar

	| sector |

	sector _ self sectorOf: aCar.
	^(self lengthBefore: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
put: aCar at: aPosition

	| sector |

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ].

	self remove: aCar.
	sector _ sectors detect: [ :aSector | aPosition <= ((self lengthBefore: aSector) + aSector length) ].
	sector put: aCar at: aPosition - (self lengthBefore: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
sectorOf: aCar

	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
cars

	^sectors inject: Set new into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
length

	^sectors sum: [ :sector | sector length ]! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
lengthBefore: aSector

	^(sectors copyFrom: 1 to: (sectors indexOf: aSector) - 1)
		sum: [ :sector | sector length ]
		ifEmpty: [ 0 * kilometer ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
remove: aCar

	(self sectorOf: aCar ifNone: [ ^self ]) remove: aCar! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 8:10:08 pm (UTC)'!
withSectors: sectors

	sectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ].
	
	^ self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
activated

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
unused

	^DeactivatedTurbo withNextBoost: TurboBoost first! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
alreadyActivatedErrorDescription

	^'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
alreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
initializeBoostingWith: aTurboBoost

	boost _ aTurboBoost! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
activated

	self error: Turbo alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
deactivated

	^DeactivatedTurbo withNextBoost: boost next! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
boost: aSpeed

	^boost applyTo: aSpeed! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:48:22 am (UTC)'!
boostingWith: aTurboBoost

	^self new initializeBoostingWith: aTurboBoost! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
initializeWithNextBoost: aTurboBoost

	nextBoost _ aTurboBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
activated

	^ActivatedTurbo boostingWith: nextBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
deactivated

	self error: Turbo alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
withNextBoost: aTurboBoost

	^self new initializeWithNextBoost: aTurboBoost! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
applyTo: aSpeed

	self subclassResponsibility! !

!TurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
next

	self subclassResponsibility! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
first

	^AvailableTurboBoost
		increasing: 20
		then: (AvailableTurboBoost
			increasing: 10
			then: (AvailableTurboBoost
				increasing: 5
				then: ExhaustedTurboBoost new))! !

!AvailableTurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
initializeIncreasing: aPercentage then: aNextTurboBoost

	percentage _ aPercentage.
	nextBoost _ aNextTurboBoost! !

!AvailableTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
applyTo: aSpeed

	^aSpeed * (100 + percentage) / 100! !

!AvailableTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
next

	^nextBoost! !

!AvailableTurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
increasing: aPercentage then: aNextTurboBoost

	^self new initializeIncreasing: aPercentage then: aNextTurboBoost! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
applyTo: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:48:23 am (UTC)'!
next

	^self! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test01SectorLengthMustBePositive

	self
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	(Sector withoutTurboOf: 10 * kilometer) atStartPut: schumacher.

	self
		should: [ schumacher activateTurbo ]
		raise: Sector turboNotAllowedErrorDescription
		andDenyTurboActivatedOf: schumacher! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	self
		placeInTurboSectorSchumacherAt: 12 * kilometer
		andHamiltonAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.

	self
		should: [ hamilton activateTurbo ]
		raise: Sector cannotActivateTurboWhenNoCarAheadErrorDescription
		andDenyTurboActivatedOf: hamilton! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	self
		placeInTurboSectorSchumacherAt: 12.95 * kilometer
		andHamiltonAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.

	schumacher activateTurbo.

	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	self
		placeInTurboSectorSchumacherAt: 12.9 * kilometer
		andHamiltonAt: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.

	self
		should: [ schumacher activateTurbo ]
		raise: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription
		andDenyTurboActivatedOf: schumacher! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |

	track _ Track withSectors: self tenKilometersWithTurboAndTwentyWithoutTurboSectors.

	self assert: 30 * kilometer equals: track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track outside |

	track _ Track withSectors: self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	outside _ track length + (1 * millimeter).

	self
		should: [ track put: schumacher at: outside ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (track includes: schumacher) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track positionInTrack |

	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	positionInTrack _ sectors first length + (5 * kilometer).
	track _ Track withSectors: sectors.

	track put: schumacher at: positionInTrack.

	self assert: sectors second equals: (track sectorOf: schumacher).
	self assert: positionInTrack equals: (track positionOf: schumacher).
	self deny: (sectors first includes: schumacher).
	self assert: (sectors second includes: schumacher)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track |

	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	track _ Track withSectors: sectors.

	track put: schumacher at: 10 * kilometer.
	track put: verstappen at: 30 * kilometer.

	self assert: (track includes: schumacher).
	self assert: (track includes: verstappen).
	self assert: (sectors first includes: schumacher).
	self assert: (sectors second includes: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track |

	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	track _ Track withSectors: sectors.

	track put: schumacher at: 5 * kilometer.
	track put: schumacher at: 15 * kilometer.

	self assert: sectors second equals: (track sectorOf: schumacher).
	self deny: (sectors first includes: schumacher).
	self assert: (sectors second includes: schumacher)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |

	track _ Track withSectors: self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	numberOfLaps _ 100.

	grandPrix _ GrandPrix on: track running: numberOfLaps.

	self assert: track length * numberOfLaps equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix |

	grandPrix _ GrandPrix
		on: (Track withSectors: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)))
		running: 100.

	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix |

	verstappen speed: 0 * kilometer / hour.
	grandPrix _ self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)) with: verstappen.

	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix |

	grandPrix _ self grandPrixOn: self tenKilometersWithTurboAndTwentyWithoutTurboSectors with: verstappen.

	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.

	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix sectors |

	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	grandPrix _ self grandPrixOn: sectors with: verstappen.

	grandPrix put: verstappen at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:08 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix sectors |

	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	grandPrix _ self grandPrixOn: sectors with: verstappen.

	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen).
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:08 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:08 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self assertSchumacherRunsAt: 120 * kilometer / hour afterActivatingTurbo: 1! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:08 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self assertSchumacherRunsAt: 110 * kilometer / hour afterActivatingTurbo: 2! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:08 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self assertSchumacherRunsAt: 105 * kilometer / hour afterActivatingTurbo: 3! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:08 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	self assertSchumacherRunsAt: 100 * kilometer / hour afterActivatingTurbo: 4! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:08 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	self placeSchumacherCloseBehindHamilton.
	schumacher activateTurbo.

	self
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:49:08 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	self placeSchumacherCloseBehindHamilton.

	self
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
grandPrixOn: aSectors with: aCar

	^GrandPrix
		on: (Track withSectors: aSectors)
		running: 100
		with: (Set with: aCar)! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
placeInTurboSectorSchumacherAt: aSchumacherPosition andHamiltonAt: aHamiltonPosition bothRunningAt: aSpeed

	| sector |

	sector _ Sector withTurboOf: 24 * kilometer.

	schumacher speed: aSpeed.
	hamilton speed: aSpeed.

	sector put: schumacher at: aSchumacherPosition.
	sector put: hamilton at: aHamiltonPosition! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
placeSchumacherCloseBehindHamilton

	self
		placeInTurboSectorSchumacherAt: 12.99 * kilometer
		andHamiltonAt: 13 * kilometer
		bothRunningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
setUp

	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	verstappen _ FormulaOneCar drivenBy: #Verstappen! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
tenKilometersWithTurboAndTwentyWithoutTurboSectors

	^OrderedCollection
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
assertSchumacherRunsAt: anExpectedSpeed afterActivatingTurbo: aNumberOfActivations

	self placeSchumacherCloseBehindHamilton.

	aNumberOfActivations - 1 timesRepeat: [ schumacher activateTurbo; deactivateTurbo ].
	schumacher activateTurbo.

	self assert: schumacher isTurboActivated.
	self assert: anExpectedSpeed equals: schumacher speed! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:49:07 am (UTC)'!
should: aBlock raise: anErrorDescription andDenyTurboActivatedOf: aCar

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			self deny: aCar isTurboActivated ]! !
