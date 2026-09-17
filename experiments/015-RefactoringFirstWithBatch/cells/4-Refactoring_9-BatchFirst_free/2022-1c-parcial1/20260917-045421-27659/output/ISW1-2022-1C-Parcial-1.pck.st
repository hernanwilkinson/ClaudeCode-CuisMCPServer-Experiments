'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 4:58:29 am'!
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
	instanceVariableNames: 'positionsByCar length'
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

!classDefinition: #PercentageTurboBoost category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost subclass: #PercentageTurboBoost
	instanceVariableNames: 'percentage next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'PercentageTurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
PercentageTurboBoost class
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


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
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

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:19 pm (UTC)'!
traveledDistance

	^ traveledDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:31 pm (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
activateTurbo

	turbo _ turbo activatedFor: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
deactivateTurbo
	
	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
isTurboActivated
	
	^ turbo isActivated! !

!FormulaOneCar methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
assertCanActivateTurbo
	
	currentSector assertCanActivateTurboTo: self! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
speed

	^ turbo boost: speed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 1/May/2022, 8:34:26 pm (UTC)'!
speed: newSpeed

	speed _ newSpeed! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 1/May/2022, 1:23:59 am (UTC)'!
locationOf: aCar

	^ aCar traveledDistance.	! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 30/Apr/2022, 6:38:16 pm (UTC)'!
sectorOf: aCar 

	^ track sectorOf: aCar.! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
advance: aTimeLapse
	
	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
placeOnTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeOnTrack: aCar! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
on: aTrack running: aNumberOfLaps 

	^ self new initializeOn: aTrack running: aNumberOfLaps! !

!Sector methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
initializeOf: aLength 

	positionsByCar _ Dictionary new.
	length _ aLength! !

!Sector methodsFor: 'car position' stamp: 'HAW 1/May/2022, 7:59:05 pm (UTC)'!
atStartPut: aCar
 
	self put: aCar at: 0*kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
positionOf: aCar
 
	^ positionsByCar at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
put: aCar at: aPosition
 
	self assertValidPosition: aPosition.
	
	positionsByCar at: aCar put: aPosition.
	aCar atSector: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
remove: aCar
 
	positionsByCar removeKey: aCar ifAbsent: []! !

!Sector methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
cars
	
	^ positionsByCar keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 2/May/2022, 5:26:16 pm (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
includes: aCar

	^ positionsByCar includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
assertCanActivateTurboTo: aCar

	self subclassResponsibility! !

!Sector methodsFor: 'private' stamp: 'FRT 1/May/2022, 5:13:55 pm (UTC)'!
assertValidPosition: aPosition

	length < aPosition ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
of: aLength 

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ].

	^ self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
withTurboOf: aLength 

	^ SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
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

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
assertCanActivateTurboTo: aCar

	| carAhead |
	
	carAhead _ self 
		carAheadOf: aCar 
		ifNone: [ ^ self error: Sector cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self assert: aCar isLessThanOneSecondBehind: carAhead! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
assert: aCar isLessThanOneSecondBehind: aCarAhead

	((self timeToReachPositionOf: aCarAhead) - (self timeToReachPositionOf: aCar)) < (1 * second)
		ifFalse: [ self error: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
carAheadOf: aCar ifNone: noneBlock

	| position carsAhead |
	
	position _ self positionOf: aCar.
	carsAhead _ self cars select: [ :car | (self positionOf: car) > position ].
	carsAhead isEmpty ifTrue: [ ^ noneBlock value ].
	
	^ carsAhead detectMin: [ :car | self positionOf: car ]! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
timeToReachPositionOf: aCar

	^ (self positionOf: aCar) / aCar speed! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
assertCanActivateTurboTo: aCar

	self error: Sector turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 30/Apr/2022, 8:06:50 pm (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy.! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.
	
	^ (self startOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ].

	self remove: aCar.

	sector _ sectors detect: [ :aSector | aPosition <= (self endOf: aSector) ].
	sector put: aCar at: aPosition - (self startOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
sectorOf: aCar
	
	^ self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^ sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
cars

	^ sectors 
		inject: Set new 
		into: [ :cars :sector | cars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
length

	^ self lengthOf: sectors! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
includes: aCar

	^ sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
endOf: aSector

	^ (self startOf: aSector) + aSector length! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
lengthOf: someSectors

	^ someSectors 
		inject: 0 * kilometer 
		into: [ :accumulatedLength :sector | accumulatedLength + sector length ]! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
remove: aCar
	
	sectors do: [ :sector | sector remove: aCar ]! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
startOf: aSector

	^ self lengthOf: (sectors copyFrom: 1 to: (sectors indexOf: aSector) - 1)! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 8:10:08 pm (UTC)'!
withSectors: sectors

	sectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ].
	
	^ self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
carNotFoundErrorDescription

	^ 'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
activatedFor: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
unused

	^ DeactivatedTurbo boostingNext: 
		(PercentageTurboBoost of: 20 followedBy: 
			(PercentageTurboBoost of: 10 followedBy: 
				(PercentageTurboBoost of: 5 followedBy: ExhaustedTurboBoost new)))! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
alreadyActivatedErrorDescription

	^ 'Turbo already activated'! !

!Turbo class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
alreadyDeactivatedErrorDescription

	^ 'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
initializeBoosting: aBoost

	boost _ aBoost! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
activatedFor: aCar

	^ self error: Turbo alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
deactivated

	^ DeactivatedTurbo boostingNext: boost next! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
isActivated

	^ true! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
boost: aSpeed

	^ boost boost: aSpeed! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
boosting: aBoost

	^ self new initializeBoosting: aBoost! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
initializeBoostingNext: aBoost

	nextBoost _ aBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
activatedFor: aCar

	aCar assertCanActivateTurbo.
	
	^ ActivatedTurbo boosting: nextBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
deactivated

	^ self error: Turbo alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
isActivated

	^ false! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
boost: aSpeed

	^ aSpeed! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
boostingNext: aBoost

	^ self new initializeBoostingNext: aBoost! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
next

	self subclassResponsibility! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
boost: aSpeed

	^ aSpeed! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
next

	^ self! !

!PercentageTurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
initializeOf: aPercentage followedBy: aBoost

	percentage _ aPercentage.
	next _ aBoost! !

!PercentageTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
boost: aSpeed

	^ aSpeed * (100 + percentage) / 100! !

!PercentageTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
next

	^ next! !

!PercentageTurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:57:24 am (UTC)'!
of: aPercentage followedBy: aBoost

	^ self new initializeOf: aPercentage followedBy: aBoost! !

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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self schumacherInTurboSectorAt: 12.95 * kilometer behindHamiltonWithBothAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self schumacherInTurboSectorAt: 12.9 * kilometer behindHamiltonWithBothAt: 300 * kilometer / hour.
	
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |
	
	track _ Track withSectors: self twoSectors.
	
	self assert: 30 * kilometer equals: track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |
	
	track _ Track withSectors: self twoSectors.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self should: [ track put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack |
	
	sectors _ self twoSectors.
	positionInTrack _ sectors first length + (5 * kilometer).
	
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: positionInTrack.
	
	self assert: sectors second equals: (track sectorOf: car).
	self assert: positionInTrack equals: (track positionOf: car).
	
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track car1 car2 |
	
	sectors _ self twoSectors.
	track _ Track withSectors: sectors.
	car1 _ FormulaOneCar drivenBy: #Schumacher.
	car2 _ FormulaOneCar drivenBy: #Verstappen.

	track put: car1 at: 10 * kilometer.
	track put: car2 at: 30 * kilometer.
	
	self assert: (track includes: car1).
	self assert: (track includes: car2).
		
	self assert: (sectors first includes: car1).
	self assert: (sectors second includes: car2)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |
	
	sectors _ self twoSectors.
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.
	
	self assert: sectors second equals: (track sectorOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |
	
	track _ Track withSectors: self twoSectors.
	numberOfLaps _ 100.
	
	grandPrix _ GrandPrix on: track running: numberOfLaps.
	
	self assert: track length * numberOfLaps equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	grandPrix _ self grandPrixOnOneSector.
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.	
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	grandPrix _ self grandPrixOnOneSector.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |
	
	grandPrix _ self grandPrixOn: self twoSectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |
	
	sectors _ self twoSectors.
	grandPrix _ self grandPrixOn: sectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |
	
	sectors _ self twoSectors.
	grandPrix _ self grandPrixOn: sectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
		
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self assertSpeedAfterActivatingTurbo: 1 timesIs: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self assertSpeedAfterActivatingTurbo: 2 timesIs: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self assertSpeedAfterActivatingTurbo: 3 timesIs: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	self assertSpeedAfterActivatingTurbo: 4 timesIs: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyDeactivatedErrorDescription! !

!FormulaOneTest methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
activateTurboOf: aCar times: aNumberOfActivations

	aCar activateTurbo.
	aNumberOfActivations - 1 timesRepeat: [ aCar deactivateTurbo; activateTurbo ]! !

!FormulaOneTest methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
assertSpeedAfterActivatingTurbo: aNumberOfActivations timesIs: aSpeed

	| schumacher |
	
	schumacher _ self schumacherLessThanASecondBehindHamilton.
	
	self activateTurboOf: schumacher times: aNumberOfActivations.
	
	self assert: schumacher isTurboActivated.
	self assert: aSpeed equals: schumacher speed! !

!FormulaOneTest methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
grandPrixOn: sectors

	^ GrandPrix on: (Track withSectors: sectors) running: 100! !

!FormulaOneTest methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
grandPrixOnOneSector

	^ self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer))! !

!FormulaOneTest methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
schumacherInTurboSectorAt: aPosition behindHamiltonWithBothAt: aSpeed

	| sector schumacher hamilton |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	
	schumacher speed: aSpeed.
	hamilton speed: aSpeed.
	
	sector put: schumacher at: aPosition.
	sector put: hamilton at: 13 * kilometer.
	
	^ schumacher! !

!FormulaOneTest methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
schumacherLessThanASecondBehindHamilton

	^ self schumacherInTurboSectorAt: 12.99 * kilometer behindHamiltonWithBothAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:58:07 am (UTC)'!
twoSectors

	^ OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !
