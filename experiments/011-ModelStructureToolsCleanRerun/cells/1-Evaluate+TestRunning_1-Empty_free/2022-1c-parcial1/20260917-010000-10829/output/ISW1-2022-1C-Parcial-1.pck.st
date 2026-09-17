'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:03:50 am'!
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
	instanceVariableNames: 'percentage nextBoost'
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


!ExhaustedTurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
applyTo: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
next

	^self! !

!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:02:16 am (UTC)'!
initializeDrivenBy: aDriver 

	driver _ aDriver.
	turbo _ DeactivatedTurbo neverUsed.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:07 pm (UTC)'!
advance: aDistance

	traveledDistance _ traveledDistance + aDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 4:02:16 am (UTC)'!
speed

	^turbo applyTo: speed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 1/May/2022, 8:34:26 pm (UTC)'!
speed: newSpeed

	speed _ newSpeed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:19 pm (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:31 pm (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:02:16 am (UTC)'!
activateTurbo

	turbo assertCanBeActivated.
	currentSector activateTurboTo: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:02:16 am (UTC)'!
deactivateTurbo
	
	turbo _ turbo deactivate! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:02:16 am (UTC)'!
isTurboActivated
	
	^turbo isActivated! !

!FormulaOneCar methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 4:02:16 am (UTC)'!
activateTurboInSectorWithTurbo
	
	turbo _ turbo activate! !

!FormulaOneCar methodsFor: 'sector' stamp: 'FRT 30/Apr/2022, 7:33:07 pm (UTC)'!
atSector: aSector

	currentSector _ aSector.! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
locationOf: aCar

	^aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
sectorOf: aCar 

	^track sectorOf: aCar! !

!GrandPrix methodsFor: 'length' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
advance: aTimeLapse
	
	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position-private' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
on: aTrack running: aNumberOfLaps 

	^self new initializeOn: aTrack running: aNumberOfLaps! !

!Sector methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
initializeOf: aLength 

	cars _ Dictionary new.
	length _ aLength! !

!Sector methodsFor: 'car position' stamp: 'FRT 1/May/2022, 5:13:55 pm (UTC)'!
assertValidPosition: aPosition

	length < aPosition ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Sector methodsFor: 'car position' stamp: 'HAW 1/May/2022, 7:59:05 pm (UTC)'!
atStartPut: aCar
 
	self put: aCar at: 0*kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
positionOf: aCar
 
	^cars at: aCar! !

!Sector methodsFor: 'car position' stamp: 'FRT 1/May/2022, 5:13:55 pm (UTC)'!
put: aCar at: aPosition
 
	self assertValidPosition: aPosition.
	
	cars at: aCar put: aPosition.
	aCar atSector: self.! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
remove: aCar
 
	cars removeKey: aCar ifAbsent: []! !

!Sector methodsFor: 'accessing' stamp: 'FRT 1/May/2022, 1:08:51 am (UTC)'!
cars
	
	^ cars keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 2/May/2022, 5:26:16 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 1/May/2022, 7:54:33 pm (UTC)'!
includes: aCar

	^ cars includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
activateTurboTo: aCar

	self subclassResponsibility! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
of: aLength 

	self assertIsPositive: aLength.
	
	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
withTurboOf: aLength 

	^SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
withoutTurboOf: aLength 

	^SectorWithoutTurbo of: aLength! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
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

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
activateTurboTo: aCar

	| carAhead |

	carAhead _ self 
		carAheadOf: aCar 
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
	self assert: aCar isLessThanOneSecondBehind: carAhead.

	aCar activateTurboInSectorWithTurbo! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
assert: aCar isLessThanOneSecondBehind: carAhead

	(self timeToReachPositionOf: carAhead) - (self timeToReachPositionOf: aCar) < (1 * second)
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
carAheadOf: aCar ifNone: noneBlock

	| carPosition |
	
	carPosition _ self positionOf: aCar.
	
	^(self cars asSortedCollection: [ :aCarBehind :aCarAhead | (self positionOf: aCarBehind) <= (self positionOf: aCarAhead) ])
		detect: [ :anotherCar | (self positionOf: anotherCar) > carPosition ]
		ifNone: noneBlock! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:02:31 am (UTC)'!
activateTurboTo: aCar

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 30/Apr/2022, 8:06:50 pm (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy.! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.
	
	^(self startOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsInside: aPosition.
	self remove: aCar.

	sector _ sectors detect: [ :aSector | aPosition <= (self endOf: aSector) ].
	sector put: aCar at: aPosition - (self startOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
remove: aCar
	
	(self sectorOf: aCar ifNone: [ ^self ]) remove: aCar! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
sectorOf: aCar
	
	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
cars

	^sectors 
		inject: Set new 
		into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
length

	^self lengthOf: sectors! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track methodsFor: 'sectors-private' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector length! !

!Track methodsFor: 'sectors-private' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
lengthOf: someSectors

	^someSectors inject: 0 * kilometer into: [ :totalLength :sector | totalLength + sector length ]! !

!Track methodsFor: 'sectors-private' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
startOf: aSector

	^self lengthOf: (sectors copyFrom: 1 to: (sectors indexOf: aSector) - 1)! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 8:10:08 pm (UTC)'!
withSectors: sectors

	sectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ].
	
	^ self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:02:44 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Turbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
initializeWithBoost: aTurboBoost

	boost _ aTurboBoost! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
applyTo: aSpeed

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
activate

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
assertCanBeActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
deactivate

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
withBoost: aTurboBoost

	^self new initializeWithBoost: aTurboBoost! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
alreadyActivatedErrorDescription
	
	^'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
alreadyDeactivatedErrorDescription
	
	^'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
applyTo: aSpeed

	^boost applyTo: aSpeed! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
activate

	self assertCanBeActivated! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
assertCanBeActivated

	self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
deactivate

	^DeactivatedTurbo withBoost: boost next! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
applyTo: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
activate

	^ActivatedTurbo withBoost: boost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
assertCanBeActivated
! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
deactivate

	self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:02:15 am (UTC)'!
neverUsed

	^self withBoost: TurboBoost initialSequence! !

!TurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
initializeIncreasingBy: aPercentage then: aNextBoost

	percentage _ aPercentage.
	nextBoost _ aNextBoost! !

!TurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
applyTo: aSpeed

	^aSpeed * (100 + percentage) / 100! !

!TurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
next

	^nextBoost! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
increasingBy: aPercentage then: aNextBoost

	^self new initializeIncreasingBy: aPercentage then: aNextBoost! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:02:08 am (UTC)'!
initialSequence

	^self 
		increasingBy: 20 
		then: (self 
			increasingBy: 10 
			then: (self 
				increasingBy: 5 
				then: ExhaustedTurboBoost new))! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 30/Apr/2022, 9:38:56 pm (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer.]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 2/May/2022, 12:16:07 pm (UTC)'!
test03CarCannotActivateTurboInNonTurboSector

	| car sector |

	sector _ Sector withoutTurboOf: 10*kilometer.
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	sector atStartPut: car.
	
	self should: [ car activateTurbo ]
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector turboNotAllowedErrorDescription equals: error messageText.
			self deny: car isTurboActivated]
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	| schumacher hamilton |
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	self turboSectorWith: schumacher at: 12 * kilometer and: hamilton at: 13 * kilometer.
	
	self 
		should: [ hamilton activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Sector cannotActivateTurboWhenNoCarAheadErrorDescription equals: error messageText. 
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self schumacherAt: 12.95 * kilometer behindHamiltonAt: 13 * kilometer runningAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self schumacherAt: 12.9 * kilometer behindHamiltonAt: 13 * kilometer runningAt: 300 * kilometer / hour.
	
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	self assert: 30 * kilometer equals: (Track withSectors: self tenAndTwentyKilometersSectors) length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |
	
	track _ Track withSectors: self tenAndTwentyKilometersSectors.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self 
		should: [ track put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack |
	
	sectors _ self tenAndTwentyKilometersSectors.
	positionInTrack _ sectors first length + (5 * kilometer).
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.
	
	self assert: sectors second equals: (track sectorOf: car).
	self assert: positionInTrack equals: (track positionOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track schumacher verstappen |
	
	sectors _ self tenAndTwentyKilometersSectors.
	track _ Track withSectors: sectors.
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.

	track put: schumacher at: 10 * kilometer.
	track put: verstappen at: 30 * kilometer.
	
	self assert: (track includes: schumacher).
	self assert: (track includes: verstappen).
	self assert: (sectors first includes: schumacher).
	self assert: (sectors second includes: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |
	
	sectors _ self tenAndTwentyKilometersSectors.
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.
	
	self assert: sectors second equals: (track sectorOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix |
	
	track _ Track withSectors: self tenAndTwentyKilometersSectors.
	grandPrix _ GrandPrix on: track running: 100.
	
	self assert: track length * 100 equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	grandPrix _ self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)).
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.	
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:25 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	grandPrix _ self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)).
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	verstappen speed: 0 * kilometer / hour.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |
	
	grandPrix _ self grandPrixOn: self tenAndTwentyKilometersSectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |
	
	sectors _ self tenAndTwentyKilometersSectors.
	grandPrix _ self grandPrixOn: sectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |
	
	sectors _ self tenAndTwentyKilometersSectors.
	grandPrix _ self grandPrixOn: sectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
		
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix verstappen sectorA sectorB |
	
	sectorA _ Sector withTurboOf: 10 * kilometer.
	sectorB _ Sector withTurboOf: 30 * kilometer.
	grandPrix _ self grandPrixOn: (OrderedCollection with: sectorA with: sectorB).
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
		
	grandPrix put: verstappen at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectorA equals: (grandPrix sectorOf: verstappen).
	
	verstappen speed: 15 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 20 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectorB equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self assertSpeedAfterActivatingTurbo: 1 times: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self assertSpeedAfterActivatingTurbo: 2 times: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self assertSpeedAfterActivatingTurbo: 3 times: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	self assertSpeedAfterActivatingTurbo: 4 times: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher _ self schumacherCloseBehindHamilton.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	self 
		should: [ self schumacherCloseBehindHamilton deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
tenAndTwentyKilometersSectors

	^OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
turboSectorWith: aCar at: aPosition and: anotherCar at: anotherPosition

	| sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	sector put: aCar at: aPosition.
	sector put: anotherCar at: anotherPosition! !

!FormulaOneTest methodsFor: 'grand prix' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
grandPrixOn: sectors

	^GrandPrix on: (Track withSectors: sectors) running: 100! !

!FormulaOneTest methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
assertSpeedAfterActivatingTurbo: numberOfActivations times: expectedSpeed

	| schumacher |
	
	schumacher _ self schumacherCloseBehindHamilton.
	
	numberOfActivations - 1 timesRepeat: [ schumacher activateTurbo; deactivateTurbo ].
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated.
	self assert: expectedSpeed equals: schumacher speed! !

!FormulaOneTest methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
schumacherAt: schumacherPosition behindHamiltonAt: hamiltonPosition runningAt: aSpeed

	| schumacher hamilton |
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	schumacher speed: aSpeed.
	hamilton speed: aSpeed.
	
	self turboSectorWith: schumacher at: schumacherPosition and: hamilton at: hamiltonPosition.
	
	^schumacher! !

!FormulaOneTest methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 4:03:16 am (UTC)'!
schumacherCloseBehindHamilton

	^self schumacherAt: 12.99 * kilometer behindHamiltonAt: 13 * kilometer runningAt: 100 * kilometer / hour! !
