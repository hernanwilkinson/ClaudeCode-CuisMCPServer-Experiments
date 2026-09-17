'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 5:15:13 am'!
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

!classDefinition: #TurboState category: #'ISW1-2022-1C-Parcial-1'!
Object subclass: #TurboState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'TurboState class' category: #'ISW1-2022-1C-Parcial-1'!
TurboState class
	instanceVariableNames: ''!

!classDefinition: #ActivatedTurbo category: #'ISW1-2022-1C-Parcial-1'!
TurboState subclass: #ActivatedTurbo
	instanceVariableNames: 'boost nextDeactivatedTurbo'
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

!classDefinition: #AvailableTurbo category: #'ISW1-2022-1C-Parcial-1'!
DeactivatedTurbo subclass: #AvailableTurbo
	instanceVariableNames: 'nextActivatedTurbo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'AvailableTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
AvailableTurbo class
	instanceVariableNames: ''!

!classDefinition: #ExhaustedTurbo category: #'ISW1-2022-1C-Parcial-1'!
DeactivatedTurbo subclass: #ExhaustedTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2022-1C-Parcial-1'!
!classDefinition: 'ExhaustedTurbo class' category: #'ISW1-2022-1C-Parcial-1'!
ExhaustedTurbo class
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


!FormulaOneCar methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
initializeDrivenBy: aDriver 

	driver _ aDriver.
	turbo _ TurboState initial.
	speed _ 0 * kilometer / hour.
	traveledDistance _ 0 * kilometer! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 30/Apr/2022, 10:15:07 pm (UTC)'!
advance: aDistance

	traveledDistance _ traveledDistance + aDistance! !

!FormulaOneCar methodsFor: 'moving' stamp: 'FRT 30/Apr/2022, 7:33:07 pm (UTC)'!
atSector: aSector

	currentSector _ aSector.! !

!FormulaOneCar methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
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

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
activateTurbo

	| activatedTurbo |
	
	activatedTurbo _ turbo activated.
	currentSector assertTurboCanBeActivatedFor: self.
	
	turbo _ activatedTurbo! !

!FormulaOneCar methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
deactivateTurbo
	
	turbo _ turbo deactivated! !

!FormulaOneCar methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
isTurboActivated
	
	^turbo isActivated! !

!FormulaOneCar class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 9:44:15 pm (UTC)'!
drivenBy: aDriver 

	^self new initializeDrivenBy: aDriver ! !

!GrandPrix methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
initializeOn: aTrack running: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
locationOf: aCar

	^ aCar traveledDistance! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
placeInTrack: aCar

	track put: aCar at: aCar traveledDistance \\ track length! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
put: aCar at: aDistance

	aCar traveledDistance: aDistance.
	self placeInTrack: aCar! !

!GrandPrix methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
sectorOf: aCar 

	^ track sectorOf: aCar! !

!GrandPrix methodsFor: 'length' stamp: 'HAW 30/Apr/2022, 9:43:17 pm (UTC)'!
length

	^ track length * numberOfLaps! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
advance: aTimeLapse
	
	track cars do: [ :car | self relocate: car after: aTimeLapse ]! !

!GrandPrix methodsFor: 'simulation' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
relocate: aCar after: aTimeLapse 

	aCar advance: aCar speed * aTimeLapse.
	self placeInTrack: aCar! !

!GrandPrix class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
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

!Sector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
assertTurboCanBeActivatedFor: aCar

	self subclassResponsibility! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
of: aLength 

	aLength strictlyPositive ifFalse: [ self error: self lengthMustBePositiveErrorDescription ].

	^self new initializeOf: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
withTurboOf: aLength 

	^TurboEnabledSector of: aLength! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
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

!TurboDisabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
assertTurboCanBeActivatedFor: aCar

	self error: Sector turboNotAllowedErrorDescription! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
assert: aCar isLessThanASecondBehind: carAhead

	(self timeToReachPositionOf: carAhead) - (self timeToReachPositionOf: aCar) < (1 * second)
		ifFalse: [ self error: Sector cannotActivateTurboWhenMoreThanASecondBehindAnotherCarErrorDescription ]! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
assertTurboCanBeActivatedFor: aCar

	| carAhead |

	carAhead _ self 
		carAheadOf: aCar 
		ifNone: [ self error: Sector cannotActivateTurboWhenNoCarAheadErrorDescription ].
		
	self assert: aCar isLessThanASecondBehind: carAhead! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
carAheadOf: aCar ifNone: noneBlock

	| position carsByPosition |
	
	position _ self positionOf: aCar.
	carsByPosition _ self cars asSortedCollection: [ :aCarBehind :aCarAhead | 
		(self positionOf: aCarBehind) <= (self positionOf: aCarAhead) ].
	
	^carsByPosition 
		detect: [ :anotherCar | (self positionOf: anotherCar) > position ]
		ifNone: noneBlock! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:13:53 am (UTC)'!
timeToReachPositionOf: aCar

	^(self positionOf: aCar) / aCar speed! !

!Track methodsFor: 'initialization' stamp: 'HAW 30/Apr/2022, 8:06:50 pm (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy.! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
positionOf: aCar

	| sector |
	
	sector _ self sectorOf: aCar.
	
	^(self startPositionOf: sector) + (sector positionOf: aCar)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
put: aCar at: aPosition

	| sector |
	
	aPosition > self length ifTrue: [ self error: self class cannotPlacedCarErrorDescription ].

	self remove: aCar.
	
	sector _ sectors detect: [ :aSector | aPosition <= (self endPositionOf: aSector) ].
	sector put: aCar at: aPosition - (self startPositionOf: sector)! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
remove: aCar
	
	| sector |
	
	sector _ self sectorOf: aCar ifNone: [ ^ self ].
	sector remove: aCar! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
sectorOf: aCar
	
	^self sectorOf: aCar ifNone: [ self error: self class carNotFoundErrorDescription ]! !

!Track methodsFor: 'car position' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
sectorOf: aCar ifNone: noneBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: noneBlock! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
cars

	^sectors 
		inject: Set new 
		into: [ :allCars :sector | allCars addAll: sector cars; yourself ]! !

!Track methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
length

	^self lengthOf: sectors! !

!Track methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!Track methodsFor: 'accessing - private' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
endPositionOf: aSector

	^(self startPositionOf: aSector) + aSector length! !

!Track methodsFor: 'accessing - private' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
lengthOf: someSectors

	^someSectors inject: 0 * kilometer into: [ :length :sector | length + sector length ]! !

!Track methodsFor: 'accessing - private' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
startPositionOf: aSector

	^self lengthOf: (sectors copyUpTo: aSector)! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 30/Apr/2022, 8:10:08 pm (UTC)'!
withSectors: sectors

	sectors isEmpty ifTrue: [ self error: self mustHaveSectorsErrorDescription ].
	
	^ self new initializeWithSectors: sectors! !

!Track class methodsFor: 'error messages' stamp: 'FRT 29/Apr/2022, 9:22:32 pm (UTC)'!
cannotPlacedCarErrorDescription

	^ 'Car cannot be placed in track'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 8:14:06 am (UTC)'!
carNotFoundErrorDescription

	^ 'Car not found'! !

!Track class methodsFor: 'error messages' stamp: 'HAW 30/Apr/2022, 8:09:27 pm (UTC)'!
mustHaveSectorsErrorDescription

	^'Track must have sectors'! !

!TurboState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 8:13:38 am (UTC)'!
activated

	self subclassResponsibility! !

!TurboState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
deactivated

	self subclassResponsibility! !

!TurboState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
isActivated

	self subclassResponsibility! !

!TurboState methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!TurboState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:13:38 am (UTC)'!
initial

	| third second first |
	
	third _ ActivatedTurbo boosting: 105/100 deactivatingTo: ExhaustedTurbo new.
	second _ ActivatedTurbo boosting: 11/10 deactivatingTo: (AvailableTurbo activatingTo: third).
	first _ ActivatedTurbo boosting: 12/10 deactivatingTo: (AvailableTurbo activatingTo: second).
	
	^AvailableTurbo activatingTo: first! !

!TurboState class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 8:13:38 am (UTC)'!
turboAlreadyActivatedErrorDescription
	
	^'Turbo already activated'! !

!TurboState class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 8:13:38 am (UTC)'!
turboAlreadyDeactivatedErrorDescription
	
	^'Turbo is already deactivated'! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
initializeBoosting: aFactor deactivatingTo: aDeactivatedTurbo

	boost _ aFactor.
	nextDeactivatedTurbo _ aDeactivatedTurbo! !

!ActivatedTurbo methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
activated

	^self error: TurboState turboAlreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
deactivated

	^nextDeactivatedTurbo! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
boost: aSpeed

	^aSpeed * boost! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
boosting: aFactor deactivatingTo: aDeactivatedTurbo

	^self new initializeBoosting: aFactor deactivatingTo: aDeactivatedTurbo! !

!DeactivatedTurbo methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
deactivated

	^self error: TurboState turboAlreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!AvailableTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
initializeActivatingTo: anActivatedTurbo

	nextActivatedTurbo _ anActivatedTurbo! !

!AvailableTurbo methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
activated

	^nextActivatedTurbo! !

!AvailableTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
activatingTo: anActivatedTurbo

	^self new initializeActivatingTo: anActivatedTurbo! !

!ExhaustedTurbo methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 8:13:39 am (UTC)'!
activated

	^ActivatedTurbo boosting: 1 deactivatingTo: self! !

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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test05CarCanActivateTurboWhenLessThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self carAt: 12.95 * kilometer behindCarAt: 13 * kilometer bothRunningAt: 300 * kilometer / hour.
	
	schumacher activateTurbo.
	
	self assert: schumacher isTurboActivated! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test06CarCannotActivateTurboWhenMoreThanASecondBehindAnotherCar

	| schumacher |
	
	schumacher _ self carAt: 12.9 * kilometer behindCarAt: 13 * kilometer bothRunningAt: 300 * kilometer / hour.
	
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

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test08TheLengthOfATrackShouldBeTheSumOfItsSectors

	| track |
	
	track _ Track withSectors: self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	
	self assert: 30 * kilometer equals: track length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test09ACarCanNotBePlacedInAKilometerGreaterThanTrackLength

	| track car outside |
	
	track _ Track withSectors: self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	outside _ track length + (1 * millimeter).
	car _ FormulaOneCar drivenBy: #Schumacher.
	
	self should: [ track put: car at: outside ] 
		raise: Error
		withExceptionDo: [ :error |
			self assert: Track cannotPlacedCarErrorDescription equals: error messageText.
			self deny: (track includes: car) ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
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
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
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
	self assert: (sectors second includes: car2)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test12CarCannotBeInMoreThanOneSectorAtATime

	| sectors track car |
	
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	track _ Track withSectors: sectors.
	car _ FormulaOneCar drivenBy: #Schumacher.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.
	
	self assert: sectors second equals: (track sectorOf: car).
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test13GrandPrixLengthShouldBeTrackLengthTimesNumberOfLaps

	| track grandPrix numberOfLaps |
	
	track _ Track withSectors: self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	numberOfLaps _ 100.
	
	grandPrix _ GrandPrix on: track running: numberOfLaps.
	
	self assert: track length * numberOfLaps equals: grandPrix length! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test14TwoCarsCanBeAtTheSameDistanceFromStart

	| grandPrix hamilton verstappen |
	
	grandPrix _ self hundredLapsGrandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)).
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	hamilton _ FormulaOneCar drivenBy: #Hamilton.	
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix put: hamilton at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: 5 * kilometer equals: (grandPrix locationOf: hamilton)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test15ACarStoppedShouldNotMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	verstappen speed: 0 * kilometer / hour.
	
	grandPrix _ self hundredLapsGrandPrixOn: (OrderedCollection with: (Sector withTurboOf: 10 * kilometer)).
	
	grandPrix put: verstappen at: 5 * kilometer.
	grandPrix advance: 10 * minute.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test16ACarSpeedingShouldMoveAfterSomeTime

	| grandPrix verstappen |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	grandPrix _ self hundredLapsGrandPrixOn: self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	
	grandPrix put: verstappen at: 0 * kilometer.
	verstappen speed: 300 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 300 * kilometer equals: (grandPrix locationOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test17GrandPrixKnowsSectorOfCar

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	grandPrix _ self hundredLapsGrandPrixOn: sectors.
		
	grandPrix put: verstappen at: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test18GrandPrixKnowsSectorOfCarAfterSomeTime

	| grandPrix verstappen sectors |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectors _ self sectorsOfTenKilometersWithTurboAndTwentyWithout.
	grandPrix _ self hundredLapsGrandPrixOn: sectors.
		
	grandPrix put: verstappen at: 0 * kilometer.
	
	verstappen speed: 5 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectors first equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test19GrandPrixMovesCarsBetweenSectors

	| grandPrix verstappen sectorA sectorB |
	
	verstappen _ FormulaOneCar drivenBy: #Verstappen.
	sectorA _ Sector withTurboOf: 10 * kilometer.
	sectorB _ Sector withTurboOf: 30 * kilometer.
	
	grandPrix _ self hundredLapsGrandPrixOn: (OrderedCollection with: sectorA with: sectorB).
		
	grandPrix put: verstappen at: 5 * kilometer.

	self assert: 5 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectorA equals: (grandPrix sectorOf: verstappen).
	
	verstappen speed: 15 * kilometer / hour.
	grandPrix advance: 1 * hour.
	
	self assert: 20 * kilometer equals: (grandPrix locationOf: verstappen). 
	self assert: sectorB equals: (grandPrix sectorOf: verstappen)! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test20FirstTurboIncrementsSpeedByTwentyPercent

	self assertSpeedIsBoostedTo: 120 * kilometer / hour afterActivatingTurbo: 1! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test21SecondTurboSpeedsByTenPercent

	self assertSpeedIsBoostedTo: 110 * kilometer / hour afterActivatingTurbo: 2! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test22ThirdTurboSpeedsByFivePercent

	self assertSpeedIsBoostedTo: 105 * kilometer / hour afterActivatingTurbo: 3! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test23AfterThridTurbo_TurboIsExhausted

	self assertSpeedIsBoostedTo: 100 * kilometer / hour afterActivatingTurbo: 4! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test24CanNotActivateTurboWhenTurboIsActivated

	| schumacher |
	
	schumacher _ self carAbleToActivateTurboAt: 100 * kilometer / hour.
	schumacher activateTurbo.
	
	self 
		should: [ schumacher activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: TurboState turboAlreadyActivatedErrorDescription equals: error messageText.
			self assert: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
test25CanNotDeactivateTurboWhenIsDeactivated

	| schumacher |
	
	schumacher _ self carAbleToActivateTurboAt: 100 * kilometer / hour.
	
	self 
		should: [ schumacher deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: TurboState turboAlreadyDeactivatedErrorDescription equals: error messageText.
			self deny: schumacher isTurboActivated ]! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
carAbleToActivateTurboAt: aSpeed

	^self carAt: 12.99 * kilometer behindCarAt: 13 * kilometer bothRunningAt: aSpeed! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
carAt: aPosition behindCarAt: aheadPosition bothRunningAt: aSpeed

	| sector carBehind carAhead |
	
	sector _ Sector withTurboOf: 24 * kilometer.
	
	carBehind _ FormulaOneCar drivenBy: #Schumacher.
	carAhead _ FormulaOneCar drivenBy: #Hamilton.
	
	carBehind speed: aSpeed.
	carAhead speed: aSpeed.
	
	sector put: carBehind at: aPosition.
	sector put: carAhead at: aheadPosition.
	
	^carBehind! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
hundredLapsGrandPrixOn: sectors

	^GrandPrix on: (Track withSectors: sectors) running: 100! !

!FormulaOneTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
sectorsOfTenKilometersWithTurboAndTwentyWithout

	^OrderedCollection 
		with: (Sector withTurboOf: 10 * kilometer)
		with: (Sector withoutTurboOf: 20 * kilometer)! !

!FormulaOneTest methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
activateTurboOf: aCar times: aNumberOfActivations

	aNumberOfActivations - 1 timesRepeat: [ aCar activateTurbo; deactivateTurbo ].
	aCar activateTurbo! !

!FormulaOneTest methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 8:14:41 am (UTC)'!
assertSpeedIsBoostedTo: aBoostedSpeed afterActivatingTurbo: aNumberOfActivations

	| car |
	
	car _ self carAbleToActivateTurboAt: 100 * kilometer / hour.
	
	self activateTurboOf: car times: aNumberOfActivations.
	
	self assert: car isTurboActivated.
	self assert: aBoostedSpeed equals: car speed! !
