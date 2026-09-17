'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:37:44 am'!
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
	instanceVariableNames: 'pendingBoosts'
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
	instanceVariableNames: ''
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


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
initializeDrivenBy: aDriver 

	driver _ aDriver.
	turbo _ Turbo unused.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:07 pm (UTC)'!
advance: aDistance

	traveledDistance _ traveledDistance + aDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'FRT 30/Apr/2022, 7:33:07 pm (UTC)'!
atSector: aSector

	currentSector _ aSector.! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
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

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
activateTurbo

	turbo assertCanBeActivated.
	currentSector activateTurboTo: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
deactivateTurbo
	
	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
isTurboActivated
	
	^turbo isActivated! !

!FormulaOneCar methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
activateTurboInSectorWithTurbo
	
	turbo _ turbo activated! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!FormulaOneCar class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:34:46 am (UTC)'!
turboAlreadyActivatedErrorDescription
	
	^'Turbo already activated'! !

!FormulaOneCar class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:34:51 am (UTC)'!
turboAlreadydeActivatedErrorDescription
	
	^'Turbo is already deactivated'! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
initializeWithTrack: aTrack andNumberOfLaps: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 1/May/2022, 1:23:59 am (UTC)'!
locationOf: aCar

	^ aCar traveledDistance.	! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 30/Apr/2022, 6:38:16 pm (UTC)'!
sectorOf: aCar 

	^ track sectorOf: aCar.! !

!GrandPrix methodsFor: 'length' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
advance: aTimeLapse
	
	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
on: aTrack running: aNumberOfLaps 

	^self new initializeWithTrack: aTrack andNumberOfLaps: aNumberOfLaps! !

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

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
positionOf: aCar
 
	^cars at: aCar! !

!Sector methodsFor: 'car position' stamp: 'FRT 1/May/2022, 5:13:55 pm (UTC)'!
put: aCar at: aPosition
 
	self assertValidPosition: aPosition.
	
	cars at: aCar put: aPosition.
	aCar atSector: self.! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
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

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:27 am (UTC)'!
activateTurboTo: aCarToActivateTurboTo

	self subclassResponsibility! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
of: aLength

	self assertIsPositive: aLength.
	
	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
withTurboOf: aLength 

	^TurboEnabledSector of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
withoutTurboOf: aLength 
	
	^TurboDisabledSector of: aLength! !

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

!Sector class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
assertIsPositive: aLength

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!TurboDisabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
activateTurboTo: aCarToActivateTurboTo

	self error: self class turboNotAllowedErrorDescription! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
activateTurboTo: aCarToActivateTurboTo

	| positionOfCarAhead |

	positionOfCarAhead _ self 
		positionOfCarAheadOf: aCarToActivateTurboTo 
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self 
		assertDriverIsOneSecondOrLess: aCarToActivateTurboTo
		ofDriverAt: positionOfCarAhead.

	aCarToActivateTurboTo activateTurboInSectorWithTurbo! !

!TurboEnabledSector methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
assertDriverIsOneSecondOrLess: aCarToActivateTurboTo ofDriverAt: positionOfCarAhead

	(self timeBetween: aCarToActivateTurboTo andCarAt: positionOfCarAhead) < (1 * second)
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!TurboEnabledSector methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 10:36:21 am (UTC)'!
carAtPosition: positionOfDriver

	^cars keyAtValue: positionOfDriver! !

!TurboEnabledSector methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
positionOfCarAheadOf: aCarToActiveTurboTo ifNone: alternativeClosure

	| carToActivateTurboToPosition |
	
	carToActivateTurboToPosition _ self positionOf: aCarToActiveTurboTo.
	 
	^cars asSortedCollection 
		detect: [ :aPosition | aPosition > carToActivateTurboToPosition ]
		ifNone: alternativeClosure! !

!TurboEnabledSector methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
timeBetween: aCar andCarAt: aPosition

	^(self timeFromStartOf: (self carAtPosition: aPosition)) - (self timeFromStartOf: aCar)! !

!TurboEnabledSector methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
timeFromStartOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!Track methodsFor: 'initialization' stamp: 'HAW 30/Apr/2022, 8:06:50 pm (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy.! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.
	^(self startOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsInside: aPosition.
	self remove: aCar.
	
	sector _ self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self startOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
remove: aCar
	
	sectors do: [ :sector | sector remove: aCar ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
sectorOf: aCar
	
	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
cars

	^sectors inject: Set new into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
length

	^self lengthOf: sectors! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector length! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
lengthOf: someSectors

	^someSectors inject: 0 * kilometer into: [ :accumulatedLength :sector | accumulatedLength + sector length ]! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self endOf: sector) ]! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
sectorsBefore: aSector

	^sectors copyFrom: 1 to: (sectors indexOf: aSector) - 1! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
startOf: aSector

	^self lengthOf: (self sectorsBefore: aSector)! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
withSectors: sectors

	self assertHasSectors: sectors.
	
	^self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:34:51 am (UTC)'!
carNotFoundErrorDescription

	^ 'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Track class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:35:37 am (UTC)'!
assertHasSectors: aCollectionOfSectors

	aCollectionOfSectors ifEmpty: [ self error: self mustHaveSectorsErrorDescription ]! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
assertCanBeActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
unused

	^DeactivatedTurbo withPendingBoosts: (Array with: 12 / 10 with: 11 / 10 with: 105 / 100)! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
initializeBoosting: aBoost withPendingBoosts: aCollectionOfBoosts

	boost _ aBoost.
	pendingBoosts _ aCollectionOfBoosts! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
boost: aSpeed

	^aSpeed * boost! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
assertCanBeActivated

	self error: FormulaOneCar turboAlreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
deactivated

	^DeactivatedTurbo withPendingBoosts: pendingBoosts! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
boosting: aBoost withPendingBoosts: aCollectionOfBoosts

	^self new initializeBoosting: aBoost withPendingBoosts: aCollectionOfBoosts! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
initializeWithPendingBoosts: aCollectionOfBoosts

	pendingBoosts _ aCollectionOfBoosts! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
nextBoost

	^pendingBoosts at: 1 ifAbsent: [ 1 ]! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
activated

	^ActivatedTurbo boosting: self nextBoost withPendingBoosts: pendingBoosts allButFirst! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
assertCanBeActivated! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
deactivated

	self error: FormulaOneCar turboAlreadydeActivatedErrorDescription! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:35:03 am (UTC)'!
withPendingBoosts: aCollectionOfBoosts

	^self new initializeWithPendingBoosts: aCollectionOfBoosts! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 30/Apr/2022, 9:38:56 pm (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer.]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	| schumacher hamilton |
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	self 
		putInSectorWithTurbo: schumacher
		at: 12 * kilometer
		and: hamilton
		at: 13 * kilometer
		bothRunningAt: 0 * kilometer / hour.
	
	self 
		should: [ hamilton activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :exception |
			self assert: exception messageText equals: Sector cannotActivateTurboWhenNoCarAheadErrorDescription. 
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	self 
		putInSectorWithTurbo: schumacher
		at: 12.95 * kilometer
		and: (FormulaOneCar drivenBy: #Hamilton)
		at: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	self 
		putInSectorWithTurbo: schumacher
		at: 12.9 * kilometer
		and: (FormulaOneCar drivenBy: #Hamilton)
		at: 13 * kilometer
		bothRunningAt: 300 * kilometer / hour.
	
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |
	
	track _ Track withSectors: self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	
	self assert: track length equals: 30 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |
	
	track _ Track withSectors: self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self 
		should: [ track put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: error messageText equals: Track cannotPlacedCarErrorDescription.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack positionInSector2 |
	
	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	positionInSector2 _ 5 * kilometer.
	positionInTrack _ sectors first length + positionInSector2.
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.
	
	self assert: (track sectorOf: car) equals: sectors second.
	self assert: (track positionOf: car) equals: positionInTrack.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track car1 car2 |
	
	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	track _ Track withSectors: sectors.
	car1 _ FormulaOneCar drivenBy: #Schumacher.
	car2 _ FormulaOneCar drivenBy: #Verstappen.

	track put: car1 at: 10 * kilometer.
	track put: car2 at: 30 * kilometer.
	
	self assert: (track includes: car1).
	self assert: (track includes: car2).
	self assert: (sectors first includes: car1).
	self assert: (sectors second includes: car2)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |
	
	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.
	
	self assert: (track sectorOf: car) equals: sectors second.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |
	
	track _ Track withSectors: self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	numberOfLaps _ 100.
	
	grandPrix _ GrandPrix on: track running: numberOfLaps.
	
	self assert: grandPrix length equals: track length * numberOfLaps! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	grandPrix _ self grandPrixOn: self oneSectorOfTenKilometers.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix locationOf: hamilton) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:22 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	verstappen speed: 0 * kilometer / hour.
	grandPrix _ self grandPrixOn: self oneSectorOfTenKilometers.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	grandPrix _ self grandPrixOn: self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: (grandPrix locationOf: verstappen) equals: 300 * kilometer! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	grandPrix _ self grandPrixOn: sectors.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ self tenKilometersWithTurboAndTwentyWithoutTurboSectors.
	grandPrix _ self grandPrixOn: sectors.
		
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectors first! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix verstappen sectorA sectorB |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectorA _ Sector withTurboOf: 10 * kilometer.
	sectorB _ Sector withTurboOf: 30 * kilometer.
	grandPrix _ self grandPrixOn: (OrderedCollection with: sectorA with: sectorB).
		
	grandPrix put: verstappen at: 5 * kilometer.

	self assert: (grandPrix locationOf: verstappen) equals: 5 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectorA.
	
	verstappen speed: 15 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: (grandPrix locationOf: verstappen) equals: 20 * kilometer.
	self assert: (grandPrix sectorOf: verstappen) equals: sectorB! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated.
	self assert: schumacher speed equals: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	
	self useTurboOf: schumacher times: 1.
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated.
	self assert: schumacher speed equals: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	
	self useTurboOf: schumacher times: 2.
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated.
	self assert: schumacher speed equals: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	
	self useTurboOf: schumacher times: 3.
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated.
	self assert: schumacher speed equals: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: FormulaOneCar turboAlreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: FormulaOneCar turboAlreadydeActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
grandPrixOn: aCollectionOfSectors

	^GrandPrix on: (Track withSectors: aCollectionOfSectors) running: 100! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
oneSectorOfTenKilometers

	^OrderedCollection with: (Sector withTurboOf: 10 * kilometer)! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
putInSectorWithTurbo: aCarBehind at: aBehindPosition and: aCarAhead at: anAheadPosition bothRunningAt: aSpeed

	| sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	
	aCarBehind speed: aSpeed.
	aCarAhead speed: aSpeed.
	
	sector put: aCarBehind at: aBehindPosition.
	sector put: aCarAhead at: anAheadPosition! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
schumacherLessThanASecondBehindHamilton

	| schumacher |
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	self 
		putInSectorWithTurbo: schumacher
		at: 12.99 * kilometer
		and: (FormulaOneCar drivenBy: #Hamilton)
		at: 13 * kilometer
		bothRunningAt: 100 * kilometer / hour.
	
	^schumacher! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
tenKilometersWithTurboAndTwentyWithoutTurboSectors

	^OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:37:15 am (UTC)'!
useTurboOf: aCar times: aNumberOfUses

	aNumberOfUses timesRepeat: [ aCar activateTurbo; deactivateTurbo ]! !
