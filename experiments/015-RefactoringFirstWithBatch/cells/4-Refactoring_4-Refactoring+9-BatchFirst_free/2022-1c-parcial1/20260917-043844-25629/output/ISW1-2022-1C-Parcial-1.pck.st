'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 4:42:46 am'!
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
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1-Tests'!
!classDefinition: 'FormulaOneTest class' category: #'ISW1-2022-1C-Parcial-1-Tests'!
FormulaOneTest class
	instanceVariableNames: ''!


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:41:55 am (UTC)'!
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

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:41:55 am (UTC)'!
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

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:41:55 am (UTC)'!
activateTurbo

	turbo activateFor: self! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:41:55 am (UTC)'!
deactivateTurbo
	
	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:41:55 am (UTC)'!
isTurboActivated
	
	^ turbo isActivated! !

!FormulaOneCar methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 7:41:55 am (UTC)'!
activateTurboGrantedBySector
	
	turbo _ turbo activated! !

!FormulaOneCar methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 7:41:55 am (UTC)'!
activateTurboInCurrentSector
	
	currentSector activateTurboTo: self! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:40:44 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 1/May/2022, 1:23:59 am (UTC)'!
locationOf: aCar

	^ aCar traveledDistance.	! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:40:30 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:40:30 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'FRT 30/Apr/2022, 6:38:16 pm (UTC)'!
sectorOf: aCar 

	^ track sectorOf: aCar.! !

!GrandPrix methodsFor: 'length' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 7:40:30 am (UTC)'!
advance: aTimeLapse

	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 7:40:30 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:40:44 am (UTC)'!
on: aTrack running: aNumberOfLaps

	^self new initializeOn: aTrack running: aNumberOfLaps! !

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

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:41:08 am (UTC)'!
activateTurboTo: aCarToActivateTurboTo

	self subclassResponsibility! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:41:08 am (UTC)'!
of: aLength 

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ].

	^ self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:41:08 am (UTC)'!
withTurboOf: aLength 

	^ SectorWithTurbo of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:41:08 am (UTC)'!
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

!SectorWithTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:41:55 am (UTC)'!
activateTurboTo: aCarToActivateTurboTo

	| positionOfCarAhead |

	positionOfCarAhead _ self 
		positionOfCarAheadOf: aCarToActivateTurboTo 
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self 
		assertDriverIsOneSecondOrLess: aCarToActivateTurboTo
		ofDriverAt: positionOfCarAhead.

	aCarToActivateTurboTo activateTurboGrantedBySector! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 7:41:08 am (UTC)'!
assertDriverIsOneSecondOrLess: aCarToActivateTurboTo ofDriverAt: positionOfCarAhead

	| carAhead |
	
	carAhead _ self carAtPosition: positionOfCarAhead.
	
	((positionOfCarAhead / carAhead speed) -
	((self positionOf: aCarToActivateTurboTo) / aCarToActivateTurboTo speed)) < (1 * second)
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 7:41:08 am (UTC)'!
carAtPosition: positionOfDriver

	^cars keyAtValue: positionOfDriver! !

!SectorWithTurbo methodsFor: 'turbo-private' stamp: 'HAW 17/Sep/2026, 7:41:08 am (UTC)'!
positionOfCarAheadOf: aCarToActivateTurboTo ifNone: alternativeClosure

	| carToActivateTurboToPosition |
	
	carToActivateTurboToPosition _ self positionOf: aCarToActivateTurboTo.
	 
	^ cars asSortedCollection 
		detect: [ :aPosition | aPosition > carToActivateTurboToPosition ]
		ifNone: alternativeClosure! !

!SectorWithoutTurbo methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:41:08 am (UTC)'!
activateTurboTo: aCar

	self error: self class turboNotAllowedErrorDescription! !

!Track methodsFor: 'initialization' stamp: 'HAW 30/Apr/2022, 8:06:50 pm (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy.! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:40:30 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.
	
	^ (self lengthBefore: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:40:30 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsInside: aPosition.
	self remove: aCar.

	sector _ sectors detect: [ :aSector | aPosition <= ((self lengthBefore: aSector) + aSector length) ].
	sector put: aCar at: aPosition - (self lengthBefore: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:40:54 am (UTC)'!
sectorOf: aCar
	
	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:40:30 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^ sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:40:30 am (UTC)'!
cars

	^ sectors inject: Set new into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:40:30 am (UTC)'!
length

	^ sectors sum: [ :sector | sector length ]! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:40:30 am (UTC)'!
includes: aCar

	^ sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:40:30 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 7:40:30 am (UTC)'!
lengthBefore: aSector

	^ (sectors copyFrom: 1 to: (sectors indexOf: aSector) - 1) 
		sum: [ :sector | sector length ]
		ifEmpty: [ 0 * kilometer ]! !

!Track methodsFor: 'private' stamp: 'FRT 30/Apr/2022, 6:15:27 pm (UTC)'!
remove: aCar
	
	| currentSector |
	
	currentSector _ self sectorOf: aCar ifNone: [ ^ self ].
	currentSector remove: aCar.
	! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 8:10:08 pm (UTC)'!
withSectors: sectors

	sectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ].
	
	^ self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:40:44 am (UTC)'!
carNotFoundErrorDescription

	^ 'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
activateFor: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
unused

	^ DeactivatedTurbo nextBoosting: 
		(AvailableTurboBoost increasingSpeedBy: 20 then:
			(AvailableTurboBoost increasingSpeedBy: 10 then:
				(AvailableTurboBoost increasingSpeedBy: 5 then: ExhaustedTurboBoost new)))! !

!Turbo class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
turboAlreadyActivatedErrorDescription
	
	^ 'Turbo already activated'! !

!Turbo class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
turboAlreadyDeactivatedErrorDescription
	
	^ 'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
initializeBoosting: aTurboBoost

	boost _ aTurboBoost! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
activateFor: aCar

	self error: self class turboAlreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
deactivated

	^ DeactivatedTurbo nextBoosting: boost next! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
boost: aSpeed

	^ boost applyTo: aSpeed! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
isActivated

	^ true! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
boosting: aTurboBoost

	^ self new initializeBoosting: aTurboBoost! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
initializeNextBoosting: aTurboBoost

	nextBoost _ aTurboBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
activateFor: aCar

	aCar activateTurboInCurrentSector! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
activated

	^ ActivatedTurbo boosting: nextBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
deactivated

	self error: self class turboAlreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
boost: aSpeed

	^ aSpeed! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
isActivated

	^ false! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
nextBoosting: aTurboBoost

	^ self new initializeNextBoosting: aTurboBoost! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
applyTo: aSpeed

	self subclassResponsibility! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
next

	self subclassResponsibility! !

!AvailableTurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
initializeIncreasingSpeedBy: aPercentage then: aTurboBoost

	percentage _ aPercentage.
	next _ aTurboBoost! !

!AvailableTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
applyTo: aSpeed

	^ aSpeed * (100 + percentage) / 100! !

!AvailableTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
next

	^ next! !

!AvailableTurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
increasingSpeedBy: aPercentage then: aTurboBoost

	^ self new initializeIncreasingSpeedBy: aPercentage then: aTurboBoost! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
applyTo: aSpeed

	^ aSpeed! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:41:41 am (UTC)'!
next

	^ self! !

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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 2/May/2022, 12:16:26 pm (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher hamilton sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	
	schumacher speed: 300 * kilometer / hour.
	hamilton speed: 300 * kilometer / hour.
	
	sector put: schumacher at: 12.95 * kilometer.
	sector put: hamilton at: 13 * kilometer.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 2/May/2022, 12:16:35 pm (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher hamilton sector |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	
	schumacher speed: 300 * kilometer / hour.
	hamilton speed: 300 * kilometer / hour.
	
	sector put: schumacher at: 12.9 * kilometer.
	sector put: hamilton at: 13 * kilometer.
	
	self should: [schumacher activateTurbo]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self 
				assert: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription 
				equals: error messageText.
			self deny: schumacher isTurboActivated]
			! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 2/May/2022, 12:16:40 pm (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:13 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| sectors track |
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
	track _ Track withSectors: sectors.
	
	self assert: 30 * kilometer equals: 	track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:13 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| sectors track car outside |
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
	
	track _ Track withSectors: sectors.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self should: [ track put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (track includes: car) ]	
! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:13 am (UTC)'!
test10TrackShouldPlaceCarInKilometerWithinSector

	| sectors track car positionInTrack positionInSector2 |
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
		
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:13 am (UTC)'!
test11TrackShouldKnowCarsInRunning

	| sectors track car1 car2 |
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
		
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:13 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
	
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.
	
	self assert: sectors second equals: (track sectorOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)
! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:13 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |
	
	track _ Track withSectors: self sectorsOfTenAndTwentyKilometers.
	numberOfLaps _ 100.
	
	grandPrix _ GrandPrix on: track running: numberOfLaps.
	
	self assert: track length * numberOfLaps	 equals: grandPrix length
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:40:44 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	grandPrix _ GrandPrix on: (Track withSectors: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer))) running: 100.
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.	
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert:  5 * kilometer equals: (grandPrix locationOf: hamilton). 
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:40:44 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	verstappen speed: 0 * kilometer / hour.
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)))
		running: 100.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen) 
	
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:13 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	verstappen speed: 0* kilometer / hour.
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: sectors)
		running: 100.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen). 
	
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:13 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: sectors)
		running: 100.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen).
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:13 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	
	sectors _ self sectorsOfTenAndTwentyKilometers.
	
	grandPrix _ GrandPrix 
		on: (Track withSectors: sectors)
		running: 100.
		
	grandPrix put: verstappen at: 0 * kilometer.
	
	verstappen speed: 5 * kilometer / hour. ":)"
	grandPrix advance: 1 * hour.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen).
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:40:44 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:02 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	| schumacher |
	
	schumacher := self schumacherLessThanOneSecondBehindHamiltonInSectorWithTurbo.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated.
	self assert: 120 * kilometer / hour equals: schumacher speed.! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:02 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	| schumacher |
	
	schumacher := self schumacherLessThanOneSecondBehindHamiltonInSectorWithTurbo.
	
	schumacher activateTurbo; deactivateTurbo; activateTurbo.
	
	self assert: schumacher isTurboActivated.
	self assert: 110 * kilometer / hour equals: schumacher speed.! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:02 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	| schumacher |
	
	schumacher := self schumacherLessThanOneSecondBehindHamiltonInSectorWithTurbo.
	
	schumacher activateTurbo; deactivateTurbo; activateTurbo; deactivateTurbo; activateTurbo.
	
	self assert: schumacher isTurboActivated.
	self assert: 105 * kilometer / hour equals: schumacher speed.! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:02 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	| schumacher |
	
	schumacher := self schumacherLessThanOneSecondBehindHamiltonInSectorWithTurbo.
	
	schumacher activateTurbo; deactivateTurbo; activateTurbo; deactivateTurbo; activateTurbo; deactivateTurbo; activateTurbo.	
	
	self assert: schumacher isTurboActivated.
	self assert: 100 * kilometer / hour equals: schumacher speed.! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:02 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher := self schumacherLessThanOneSecondBehindHamiltonInSectorWithTurbo.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo turboAlreadyActivatedErrorDescription
	
	! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:42:02 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |
	
	schumacher := self schumacherLessThanOneSecondBehindHamiltonInSectorWithTurbo.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo turboAlreadyDeactivatedErrorDescription
	
	! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:42:02 am (UTC)'!
schumacherLessThanOneSecondBehindHamiltonInSectorWithTurbo

	| schumacher hamilton sector |
	sector _ Sector withTurboOf: 24 * kilometer.
	
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	
	schumacher speed: 100 * kilometer / hour.
	hamilton speed: 100 * kilometer / hour.
	
	sector put: schumacher at: 12.99 * kilometer.
	sector put: hamilton at: 13 * kilometer.
	^ schumacher! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:42:13 am (UTC)'!
sectorsOfTenAndTwentyKilometers

	^ OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !
