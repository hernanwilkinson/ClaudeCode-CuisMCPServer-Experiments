'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 5:20:23 am'!
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
	instanceVariableNames: 'positionsOfCars length'
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

!classDefinition: #ExhaustedTurboBoost category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost subclass: #ExhaustedTurboBoost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ExhaustedTurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
ExhaustedTurboBoost class
	instanceVariableNames: ''!

!classDefinition: #IncreasingTurboBoost category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost subclass: #IncreasingTurboBoost
	instanceVariableNames: 'percentage next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'IncreasingTurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
IncreasingTurboBoost class
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


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
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

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
speed

	^ turbo speedUp: speed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 1/May/2022, 8:34:26 pm (UTC)'!
speed: newSpeed

	speed _ newSpeed! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:19 pm (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:31 pm (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
activateTurbo

	turbo _ turbo activatedIn: currentSector for: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
deactivateTurbo
	
	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
isTurboActivated
	
	^ turbo isActivated! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:17:18 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps.! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
locationOf: aCar

	^ aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
sectorOf: aCar 

	^ track sectorOf: aCar! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
advance: aTimeLapse
	
	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'simulation - private' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:17:18 am (UTC)'!
on: aTrack running: aNumberOfLaps

	^self new initializeOn: aTrack running: aNumberOfLaps! !

!Sector methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:18:00 am (UTC)'!
initializeOf: aLength 

	positionsOfCars _ Dictionary new.
	length _ aLength.! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
atStartPut: aCar
 
	self put: aCar at: 0 * kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
positionOf: aCar
 
	^ positionsOfCars at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
put: aCar at: aPosition
 
	self assertValidPosition: aPosition.
	
	positionsOfCars at: aCar put: aPosition.
	aCar atSector: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
remove: aCar
 
	positionsOfCars removeKey: aCar ifAbsent: []! !

!Sector methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:18:00 am (UTC)'!
cars
	
	^ positionsOfCars keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 2/May/2022, 5:26:16 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:18:00 am (UTC)'!
includes: aCar

	^ positionsOfCars includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector methodsFor: 'car position - private' stamp: 'FRT 1/May/2022, 5:13:55 pm (UTC)'!
assertValidPosition: aPosition

	length < aPosition ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
withTurboOf: aLength 

	^ SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
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

!Sector class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
of: aLength 
	
	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ].
		
	^ self new initializeOf: aLength! !

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| positionOfCarAhead |
	
	positionOfCarAhead _ self 
		positionOfCarAheadOf: aCar 
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self assert: aCar isLessThanASecondBehindCarAt: positionOfCarAhead! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
assert: aCar isLessThanASecondBehindCarAt: positionOfCarAhead

	| carAhead timeBehind |
	
	carAhead _ self carAtPosition: positionOfCarAhead.
	timeBehind _ (positionOfCarAhead / carAhead speed) - ((self positionOf: aCar) / aCar speed).
	
	timeBehind < (1 * second) ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
carAtPosition: aPosition

	^ positionsOfCars keyAtValue: aPosition! !

!SectorWithTurbo methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
positionOfCarAheadOf: aCar ifNone: aBlock

	| carPosition |
	
	carPosition _ self positionOf: aCar.
	 
	^ positionsOfCars asSortedCollection 
		detect: [ :aPosition | aPosition > carPosition ]
		ifNone: aBlock! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 30/Apr/2022, 8:06:50 pm (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy.! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.
	
	^ (self lengthBefore: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsInside: aPosition.
	self remove: aCar.

	sector _ sectors detect: [ :aSector | aPosition <= (self lengthUpTo: aSector) ].
	sector put: aCar at: aPosition - (self lengthBefore: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
remove: aCar
	
	sectors do: [ :sector | sector remove: aCar ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:18:00 am (UTC)'!
sectorOf: aCar
	
	^ self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^ sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
cars
	
	^ sectors 
		inject: Set new 
		into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
length

	^ sectors sum: [ :sector | sector length ]! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
includes: aCar

	^ sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
lengthBefore: aSector

	^ (sectors copyFrom: 1 to: (sectors indexOf: aSector) - 1) 
		inject: 0 * kilometer 
		into: [ :length :sector | length + sector length ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
lengthUpTo: aSector

	^ (self lengthBefore: aSector) + aSector length! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 8:10:08 pm (UTC)'!
withSectors: sectors

	sectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ].
	
	^ self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 8:17:31 am (UTC)'!
carNotFoundErrorDescription

	^ 'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'state transition' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
activatedIn: aSector for: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'state transition' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
speedUp: aSpeed

	self subclassResponsibility! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
turboAlreadyActivatedErrorDescription
	
	^ 'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
turboAlreadyDeactivatedErrorDescription
	
	^ 'Turbo is already deactivated'! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
unused

	^ DeactivatedTurbo nextBoost: TurboBoost firstActivation! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
initializeBoost: aTurboBoost

	boost _ aTurboBoost! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
isActivated

	^ true! !

!ActivatedTurbo methodsFor: 'state transition' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
activatedIn: aSector for: aCar

	^ self error: self class turboAlreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'state transition' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
deactivated

	^ DeactivatedTurbo nextBoost: boost next! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
speedUp: aSpeed

	^ boost applyTo: aSpeed! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
boost: aTurboBoost

	^ self new initializeBoost: aTurboBoost! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
initializeNextBoost: aTurboBoost

	nextBoost _ aTurboBoost! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
isActivated

	^ false! !

!DeactivatedTurbo methodsFor: 'state transition' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
activatedIn: aSector for: aCar

	aSector assertTurboCanBeActivatedBy: aCar.
	
	^ ActivatedTurbo boost: nextBoost! !

!DeactivatedTurbo methodsFor: 'state transition' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
deactivated

	^ self error: self class turboAlreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
speedUp: aSpeed

	^ aSpeed! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
nextBoost: aTurboBoost

	^ self new initializeNextBoost: aTurboBoost! !

!TurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
applyTo: aSpeed

	self subclassResponsibility! !

!TurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
next

	self subclassResponsibility! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
firstActivation

	^ IncreasingTurboBoost 
		of: 20 
		then: (IncreasingTurboBoost 
			of: 10 
			then: (IncreasingTurboBoost 
				of: 5 
				then: ExhaustedTurboBoost new))! !

!ExhaustedTurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
applyTo: aSpeed

	^ aSpeed! !

!ExhaustedTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
next

	^ self! !

!IncreasingTurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
initializeOf: aPercentage then: aNextBoost

	percentage _ aPercentage.
	next _ aNextBoost! !

!IncreasingTurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
applyTo: aSpeed

	^ aSpeed * (100 + percentage) / 100! !

!IncreasingTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
next

	^ next! !

!IncreasingTurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:18:45 am (UTC)'!
of: aPercentage then: aNextBoost

	^ self new initializeOf: aPercentage then: aNextBoost! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 30/Apr/2022, 9:38:56 pm (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer.]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 2/May/2022, 12:16:07 pm (UTC)'!
test02ACarCanNotBePlacedInAKilometerGreaterThanSectorLength

	| sector  outside car |
	
	sector _ Sector withTurboOf: 10 * kilometer.
	outside _ sector length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self 
		should: [ sector put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Sector cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (sector includes: car) ]	
! !

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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 2/May/2022, 12:16:20 pm (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	| schumacher hamilton sector |
	
	sector _ Sector withTurboOf: 20 * kilometer.
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	
	sector put: schumacher at: 12 * kilometer.
	sector put: hamilton at: 13 * kilometer.
	
	self 
		should: [ hamilton activateTurbo]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [:exception |
			self assert: Sector cannotActivateTurboWhenNoCarAheadErrorDescription equals: exception messageText. 
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:54 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self schumacherAt: 12.95 * kilometer behindHamiltonInTurboSectorBothAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:54 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self schumacherAt: 12.9 * kilometer behindHamiltonInTurboSectorBothAt: 300 * kilometer / hour.
	
	self should: [ schumacher activateTurbo ]
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| sectors track |
	
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	track _ Track withSectors: sectors.
	
	self assert: 30 * kilometer equals: 	track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| sectors track car outside |
	
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	
	track _ Track withSectors: sectors.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self should: [ track put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (track includes: car) ]	
! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack positionInSector2 |
	
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
		
	positionInSector2 _ 5 * kilometer.
	positionInTrack _ sectors first length + positionInSector2.
	
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.
	
	self assert: sectors second equals: (track sectorOf: car).
	self assert: positionInTrack equals: (track positionOf: car).
	
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car).

! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track car1 car2 |
	
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
		
	track _ Track withSectors: sectors.
	car1 _ FormulaOneCar drivenBy: #Schumacher.
	car2 _ FormulaOneCar drivenBy: #Verstappen.

	track put: car1 at: 10 * kilometer.
	track put: car2 at: 30 * kilometer.
	
	self assert: (track includes: car1).
	self assert: (track includes: car2).
		
	self assert: (sectors first includes: car1).
	self assert: (sectors second includes: car2).

! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |
	
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.
	
	self assert: sectors second equals: (track sectorOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)
! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |
	
	track _ Track withSectors: self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	numberOfLaps _ 100.
	
	grandPrix _ GrandPrix on: track running: numberOfLaps.
	
	self assert: track length * numberOfLaps	 equals: grandPrix length
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	grandPrix _ GrandPrix on: self trackOfOneSectorOfTenKilometers running: 100.
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.	
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert:  5 * kilometer equals: (grandPrix locationOf: hamilton). 
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	verstappen speed: 0 * kilometer / hour.
	
	grandPrix _ GrandPrix 
		on: self trackOfOneSectorOfTenKilometers
		running: 100.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen) 
	
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	verstappen speed: 0* kilometer / hour.
	
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: sectors)
		running: 100.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen). 
	
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: sectors)
		running: 100.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen).
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: sectors)
		running: 100.
		
	grandPrix put: verstappen at: 0 * kilometer.
	
	verstappen speed: 5 * kilometer / hour. ":)"
	grandPrix advance: 1 * hour.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen).
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:17:17 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix verstappen sectorA sectorB |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectorA _ Sector withTurboOf: 10 * kilometer.
	sectorB _ Sector withTurboOf: 30 * kilometer.
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: (OrderedCollection with: sectorA with: sectorB))
		running: 100.
		
	grandPrix put: verstappen at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectorA equals: (grandPrix sectorOf: verstappen).
	
	verstappen speed: 15 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 20 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectorB equals: (grandPrix sectorOf: verstappen).
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:20:02 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	| schumacher |
	
	schumacher := self schumacherCloseBehindHamiltonInTurboSector.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated.
	self assert: 120 * kilometer / hour equals: schumacher speed.! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:20:02 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	| schumacher |
	
	schumacher := self schumacherCloseBehindHamiltonInTurboSector.
	
	schumacher activateTurbo; deactivateTurbo; activateTurbo.
	
	self assert: schumacher isTurboActivated.
	self assert: 110 * kilometer / hour equals: schumacher speed.! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:20:02 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	| schumacher |
	
	schumacher := self schumacherCloseBehindHamiltonInTurboSector.
	
	schumacher activateTurbo; deactivateTurbo; activateTurbo; deactivateTurbo; activateTurbo.
	
	self assert: schumacher isTurboActivated.
	self assert: 105 * kilometer / hour equals: schumacher speed.! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:20:02 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	| schumacher |
	
	schumacher := self schumacherCloseBehindHamiltonInTurboSector.
	
	schumacher activateTurbo; deactivateTurbo; activateTurbo; deactivateTurbo; activateTurbo; deactivateTurbo; activateTurbo.	
	
	self assert: schumacher isTurboActivated.
	self assert: 100 * kilometer / hour equals: schumacher speed.! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:20:02 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher := self schumacherCloseBehindHamiltonInTurboSector.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo turboAlreadyActivatedErrorDescription
	
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:20:02 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |
	
	schumacher := self schumacherCloseBehindHamiltonInTurboSector.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo turboAlreadyDeactivatedErrorDescription
	
	! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:19:54 am (UTC)'!
schumacherAt: schumacherPosition behindHamiltonInTurboSectorBothAt: aSpeed 

	| schumacher hamilton sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	
	schumacher speed: aSpeed.
	hamilton speed: aSpeed.
	
	sector put: schumacher at: schumacherPosition.
	sector put: hamilton at: 13 * kilometer.
	
	^ schumacher! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:20:02 am (UTC)'!
schumacherCloseBehindHamiltonInTurboSector

	^ self schumacherAt: 12.99 * kilometer behindHamiltonInTurboSectorBothAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
sectorsOfTenKilometersWithTurboAndTwentyWithout

	^ OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:19:03 am (UTC)'!
trackOfOneSectorOfTenKilometers

	^ Track withSectors: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer))! !
