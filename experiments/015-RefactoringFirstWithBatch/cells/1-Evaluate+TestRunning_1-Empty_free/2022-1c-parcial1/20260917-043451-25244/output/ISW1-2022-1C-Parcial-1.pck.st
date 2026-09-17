'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 4:38:29 am'!
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

!classDefinition: #TurboBoost category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #TurboBoost
	instanceVariableNames: 'increment nextBoost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboBoost class' category: #'ISW1-2022-1C-Parcial-1'!
TurboBoost class
	instanceVariableNames: ''!

!classDefinition: #TurboState category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #TurboState
	instanceVariableNames: 'boost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboState class' category: #'ISW1-2022-1C-Parcial-1'!
TurboState class
	instanceVariableNames: ''!

!classDefinition: #ActivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
TurboState subclass: #ActivatedTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ActivatedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
ActivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #DeactivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
TurboState subclass: #DeactivatedTurbo
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


!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
next

	^self! !

!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
initializeDrivenBy: aDriver 

	driver _ aDriver.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer.
	turbo _ DeactivatedTurbo forNewCar! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
advance: aDistance

	traveledDistance _ traveledDistance + aDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
atSector: aSector

	currentSector _ aSector! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
traveledDistance: aDistance

	traveledDistance _ aDistance! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
activateTurbo

	turbo assertCanBeActivated.
	currentSector assertTurboCanBeActivatedBy: self.
	
	turbo _ turbo activate! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
deactivateTurbo

	turbo _ turbo deactivate! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
speed

	^turbo speedFor: speed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
speed: aSpeed

	speed _ aSpeed! !

!FormulaOneCar methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
traveledDistance

	^traveledDistance! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
locationOf: aCar

	^aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
sectorOf: aCar 

	^track sectorOf: aCar! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
advance: aTimeLapse
	
	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
length

	^track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation - private' stamp: 'HAW 17/Sep/2026, 7:37:13 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
on: aTrack running: aNumberOfLaps 

	self assertIsValidNumberOfLaps: aNumberOfLaps.
	
	^self new initializeOn: aTrack running: aNumberOfLaps! !

!GrandPrix class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
assertIsValidNumberOfLaps: aNumberOfLaps

	(aNumberOfLaps isInteger and: [ aNumberOfLaps strictlyPositive ]) 
		ifFalse: [ self error: self numberOfLapsMustBePositiveIntegerErrorDescription ]! !

!GrandPrix class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
numberOfLapsMustBePositiveIntegerErrorDescription

	^'Number of laps must be a positive integer'! !

!Sector methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
initializeOf: aLength 

	carPositions _ Dictionary new.
	length _ aLength! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
assertIsWithinSector: aPosition

	length < aPosition ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
atStartPut: aCar
 
	self put: aCar at: 0 * kilometer! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
positionOf: aCar
 
	^carPositions at: aCar! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
put: aCar at: aPosition
 
	self assertIsWithinSector: aPosition.
	
	carPositions at: aCar put: aPosition.
	aCar atSector: self! !

!Sector methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
remove: aCar
 
	carPositions removeKey: aCar! !

!Sector methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
cars
	
	^carPositions keys! !

!Sector methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
length

	^length! !

!Sector methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
includes: aCar

	^carPositions includesKey: aCar! !

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
of: aLength 

	self assertIsPositive: aLength.

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
withTurboOf: aLength 

	^TurboEnabledSector of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
withoutTurboOf: aLength 

	^TurboDisabledSector of: aLength! !

!Sector class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
assertIsPositive: aLength 

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ]! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription
	
	^'Cannot activate Turbo when opponent is more than 1 second ahead'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
cannotActivateTurboWhenNoCarAheadErrorDescription
	
	^'Cannot activate Turbo without opponent ahead'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
cannotPlacedCarErrorDescription

	^'Driver can not be placed outside section'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
lengthMustBePositiveErrorDescription

	^'Length must be positive'! !

!Sector class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
turboNotAllowedErrorDescription
	
	^'Turbo not allowed in this Sector'! !

!TurboDisabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class turboNotAllowedErrorDescription! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	| carAhead |
	
	carAhead _ self 
		carAheadOf: aCar 
		ifNone: [ self error: self class cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self assert: aCar isLessThanASecondBehind: carAhead! !

!TurboEnabledSector methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
assert: aCar isLessThanASecondBehind: carAhead

	((self timeToReachPositionOf: carAhead) - (self timeToReachPositionOf: aCar)) < (1 * second)
		ifFalse: [ self error: self class cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!TurboEnabledSector methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
carAheadOf: aCar ifNone: aBlock

	| position |
	
	position _ self positionOf: aCar.
	
	^self carsSortedByPosition
		detect: [ :car | (self positionOf: car) > position ]
		ifNone: aBlock! !

!TurboEnabledSector methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
carsSortedByPosition

	^self cars asSortedCollection: [ :aCar :anotherCar | (self positionOf: aCar) <= (self positionOf: anotherCar) ]! !

!TurboEnabledSector methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!Track methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.
	
	^(self lengthBefore: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	self assertIsWithinTrack: aPosition.
	
	self remove: aCar.
	sector _ self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self lengthBefore: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
remove: aCar
	
	(self sectorOf: aCar ifNone: [ ^self ]) remove: aCar! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
sectorOf: aCar
	
	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
cars

	^sectors 
		inject: Set new 
		into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
length

	^sectors sum: [ :sector | sector length ]! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
assertIsWithinTrack: aPosition

	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
lengthBefore: aSector

	^(sectors copyFrom: 1 to: (sectors indexOf: aSector) - 1) 
		sum: [ :sector | sector length ]
		ifEmpty: [ 0 * kilometer ]! !

!Track methodsFor: 'car position - private' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= ((self lengthBefore: sector) + sector length) ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
withSectors: aSectors

	self assertHasSectors: aSectors.
	
	^self new initializeWithSectors: aSectors! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
cannotPlacedCarErrorDescription

	^'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
carNotFoundErrorDescription

	^'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!Track class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
assertHasSectors: aSectors

	aSectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ]! !

!TurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
initializeIncrementing: anIncrement followedBy: aNextBoost

	increment _ anIncrement.
	nextBoost _ aNextBoost! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
boost: aSpeed

	^aSpeed * (1 + increment)! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
next

	^nextBoost! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
forNewCar

	^self 
		incrementing: 20/100 
		followedBy: (self 
			incrementing: 10/100 
			followedBy: (self 
				incrementing: 5/100 
				followedBy: ExhaustedTurboBoost new))! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
incrementing: anIncrement followedBy: aNextBoost

	^self new initializeIncrementing: anIncrement followedBy: aNextBoost! !

!TurboState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
initializeWith: aBoost

	boost _ aBoost! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
activate

	self subclassResponsibility! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
assertCanBeActivated

	self subclassResponsibility! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
deactivate

	self subclassResponsibility! !

!TurboState methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
speedFor: aSpeed

	self subclassResponsibility! !

!TurboState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
isActivated

	self subclassResponsibility! !

!TurboState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
with: aBoost

	^self new initializeWith: aBoost! !

!TurboState class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
alreadyActivatedErrorDescription

	^'Turbo already activated'! !

!TurboState class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
alreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:37:55 am (UTC)'!
activate

	self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
assertCanBeActivated

	self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
deactivate

	^DeactivatedTurbo with: boost next! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
speedFor: aSpeed

	^boost boost: aSpeed! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
isActivated

	^true! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
activate

	^ActivatedTurbo with: boost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
assertCanBeActivated
! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
deactivate

	self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
speedFor: aSpeed

	^aSpeed! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:37:12 am (UTC)'!
forNewCar

	^self with: TurboBoost forNewCar! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test01SectorLengthMustBePositive

	self 
		should: [ Sector withTurboOf: 0 * kilometer ]
		raise: Error
		withMessageText: Sector lengthMustBePositiveErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:38:03 am (UTC)'!
test04CarCannotActivateTurboWhenNoCarAhead

	| sector schumacher hamilton |
	
	sector _ Sector withTurboOf: 20 * kilometer.
	schumacher _ FormulaOneCar drivenBy: #Schumacher.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.
	
	sector put: schumacher at: 12 * kilometer.
	sector put: hamilton at: 13 * kilometer.
	
	self 
		should: [ hamilton activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Sector cannotActivateTurboWhenNoCarAheadErrorDescription equals: error messageText. 
			self deny: hamilton isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self carAt: 12.95 * kilometer behindCarAt: 13 * kilometer bothRunningAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self carAt: 12.9 * kilometer behindCarAt: 13 * kilometer bothRunningAt: 300 * kilometer / hour.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self 
				assert: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription 
				equals: error messageText.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test07TrackMustHaveSectors

	self
		should: [ Track withSectors: #() ]
		raise: Error
		withMessageText: Track mustHaveSectorsErrorDescription! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |
	
	track _ Track withSectors: self tenAndTwentyKilometersSectors.
	
	self assert: 30 * kilometer equals: track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix |
	
	track _ Track withSectors: self tenAndTwentyKilometersSectors.
	
	grandPrix _ GrandPrix on: track running: 100.
	
	self assert: track length * 100 equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	grandPrix _ self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)).
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.	
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	grandPrix _ self grandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)).
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |
	
	grandPrix _ self grandPrixOn: self tenAndTwentyKilometersSectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |
	
	sectors _ self tenAndTwentyKilometersSectors.
	grandPrix _ self grandPrixOn: sectors.
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self assertActivatingTurbo: 1 timesLeavesSpeedAt: 120 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self assertActivatingTurbo: 2 timesLeavesSpeedAt: 110 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self assertActivatingTurbo: 3 timesLeavesSpeedAt: 105 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	self assertActivatingTurbo: 4 timesLeavesSpeedAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher _ self carCloselyBehindAnotherCar.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: TurboState alreadyActivatedErrorDescription equals: error messageText.
			self assert: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |
	
	schumacher _ self carCloselyBehindAnotherCar.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: TurboState alreadyDeactivatedErrorDescription equals: error messageText.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 7:38:08 am (UTC)'!
test26GrandPrixMustHaveAPositiveIntegerNumberOfLaps

	| track |
	
	track _ Track withSectors: self tenAndTwentyKilometersSectors.
	
	{ 0. -1. 3/2 } do: [ :invalidNumberOfLaps |
		self
			should: [ GrandPrix on: track running: invalidNumberOfLaps ]
			raise: Error - MessageNotUnderstood
			withMessageText: GrandPrix numberOfLapsMustBePositiveIntegerErrorDescription ]! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
carAt: aPositionBehind behindCarAt: aPositionAhead bothRunningAt: aSpeed

	| sector carBehind carAhead |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	carBehind _ self carDrivenBy: #Schumacher runningAt: aSpeed.
	carAhead _ self carDrivenBy: #Hamilton runningAt: aSpeed.
	
	sector put: carBehind at: aPositionBehind.
	sector put: carAhead at: aPositionAhead.
	
	^carBehind! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
carCloselyBehindAnotherCar

	^self carAt: 12.99 * kilometer behindCarAt: 13 * kilometer bothRunningAt: 100 * kilometer / hour! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
carDrivenBy: aDriver runningAt: aSpeed

	^(FormulaOneCar drivenBy: aDriver) speed: aSpeed; yourself! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
grandPrixOn: sectors

	^GrandPrix on: (Track withSectors: sectors) running: 100! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
tenAndTwentyKilometersSectors

	^OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
activateTurboOf: aCar times: numberOfActivations

	aCar activateTurbo.
	numberOfActivations - 1 timesRepeat: [ aCar deactivateTurbo; activateTurbo ]! !

!FormulaOneTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:37:56 am (UTC)'!
assertActivatingTurbo: numberOfActivations timesLeavesSpeedAt: expectedSpeed

	| car |
	
	car _ self carCloselyBehindAnotherCar.
	
	self activateTurboOf: car times: numberOfActivations.
	
	self assert: car isTurboActivated.
	self assert: expectedSpeed equals: car speed! !
