'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:57:14 am'!
'Description '!
!provides: 'Task2' 1 2!
SystemOrganization addCategory: #Task2!
SystemOrganization addCategory: #'Task2-Tests'!


!classDefinition: #C1 category: #Task2!
Object subclass: #C1
	instanceVariableNames: 'driver speed distanceTraveled turbo sector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C1 class' category: #Task2!
C1 class
	instanceVariableNames: ''!

!classDefinition: #C2 category: #Task2!
Object subclass: #C2
	instanceVariableNames: 'track laps'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C2 class' category: #Task2!
C2 class
	instanceVariableNames: ''!

!classDefinition: #C3 category: #Task2!
Object subclass: #C3
	instanceVariableNames: 'length positions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C3 class' category: #Task2!
C3 class
	instanceVariableNames: ''!

!classDefinition: #TurboDisabledSector category: #Task2!
C3 subclass: #TurboDisabledSector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboDisabledSector class' category: #Task2!
TurboDisabledSector class
	instanceVariableNames: ''!

!classDefinition: #TurboEnabledSector category: #Task2!
C3 subclass: #TurboEnabledSector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboEnabledSector class' category: #Task2!
TurboEnabledSector class
	instanceVariableNames: ''!

!classDefinition: #C4 category: #Task2!
Object subclass: #C4
	instanceVariableNames: 'sectors'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C4 class' category: #Task2!
C4 class
	instanceVariableNames: ''!

!classDefinition: #Turbo category: #Task2!
Object subclass: #Turbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'Turbo class' category: #Task2!
Turbo class
	instanceVariableNames: ''!

!classDefinition: #ActivatedTurbo category: #Task2!
Turbo subclass: #ActivatedTurbo
	instanceVariableNames: 'boostFactor nextDeactivation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'ActivatedTurbo class' category: #Task2!
ActivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #DeactivatedTurbo category: #Task2!
Turbo subclass: #DeactivatedTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'DeactivatedTurbo class' category: #Task2!
DeactivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #ChargedTurbo category: #Task2!
DeactivatedTurbo subclass: #ChargedTurbo
	instanceVariableNames: 'nextActivation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'ChargedTurbo class' category: #Task2!
ChargedTurbo class
	instanceVariableNames: ''!

!classDefinition: #ExhaustedTurbo category: #Task2!
DeactivatedTurbo subclass: #ExhaustedTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'ExhaustedTurbo class' category: #Task2!
ExhaustedTurbo class
	instanceVariableNames: ''!

!classDefinition: #C5 category: #'Task2-Tests'!
TestCase subclass: #C5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2-Tests'!
!classDefinition: 'C5 class' category: #'Task2-Tests'!
C5 class
	instanceVariableNames: ''!


!C1 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
initializeDrivenBy: aDriver

	driver _ aDriver.
	speed _ 0 * kilometer / hour.
	distanceTraveled _ 0 * kilometer.
	turbo _ Turbo unused! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
changeSpeedTo: aSpeed

	speed _ aSpeed! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
speed

	^turbo boost: speed! !

!C1 methodsFor: 'position' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
advanceDuring: aTime

	distanceTraveled _ distanceTraveled + (self speed * aTime)! !

!C1 methodsFor: 'position' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
distanceTraveled

	^distanceTraveled! !

!C1 methodsFor: 'position' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
placeAtDistance: aDistance

	distanceTraveled _ aDistance! !

!C1 methodsFor: 'position' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
placeIn: aSector

	sector _ aSector! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
activateTurbo

	turbo _ turbo activatedFor: self! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
assertCanUseTurbo

	sector assertCanUseTurbo: self! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
deactivateTurbo

	turbo _ turbo deactivated! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
drivenBy: aDriver

	^self new initializeDrivenBy: aDriver! !

!C2 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
initializeOn: aTrack laps: aNumberOfLaps

	track _ aTrack.
	laps _ aNumberOfLaps! !

!C2 methodsFor: 'length' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
length

	^track length * laps! !

!C2 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
placeOnTrack: aCar

	track put: aCar at: aCar distanceTraveled \\ track length! !

!C2 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
positionOf: aCar

	^aCar distanceTraveled! !

!C2 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
put: aCar at: aDistance

	aCar placeAtDistance: aDistance.
	self placeOnTrack: aCar! !

!C2 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
sectorOf: aCar

	^track sectorOf: aCar! !

!C2 methodsFor: 'advancing' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
advance: aTime

	track cars do: [ :car |
		car advanceDuring: aTime.
		self placeOnTrack: car ]! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
on: aTrack laps: aNumberOfLaps

	self assertIsValidNumberOfLaps: aNumberOfLaps.

	^self new initializeOn: aTrack laps: aNumberOfLaps! !

!C2 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
assertIsValidNumberOfLaps: aNumberOfLaps

	aNumberOfLaps strictlyPositive ifFalse: [ self error: self invalidNumberOfLapsErrorDescription ]! !

!C2 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
invalidNumberOfLapsErrorDescription

	^'Number of laps must be strictly positive'! !

!C3 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
initializeOfLength: aLength

	length _ aLength.
	positions _ Dictionary new! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
length

	^length! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
cars

	^positions keys! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
includes: aCar

	^positions includesKey: aCar! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
positionOf: aCar

	^positions at: aCar! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
put: aCar at: aPosition

	self assertIsInside: aPosition.

	positions at: aCar put: aPosition.
	aCar placeIn: self! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
remove: aCar

	positions removeKey: aCar ifAbsent: []! !

!C3 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
assertIsInside: aPosition

	aPosition > length ifTrue: [ self error: self class positionOutOfBoundsErrorDescription ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
assertCanUseTurbo: aCar

	self subclassResponsibility! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
ofLength: aLength

	self assertIsValidLength: aLength.

	^self new initializeOfLength: aLength! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
turboDisabledOfLength: aLength

	^TurboDisabledSector ofLength: aLength! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
turboEnabledOfLength: aLength

	^TurboEnabledSector ofLength: aLength! !

!C3 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
assertIsValidLength: aLength

	aLength strictlyPositive ifFalse: [ self error: self invalidLengthErrorDescription ]! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
carTooFarToOvertakeErrorDescription

	^'S5'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
invalidLengthErrorDescription

	^'S7'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
noCarToOvertakeErrorDescription

	^'S6'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
positionOutOfBoundsErrorDescription

	^'S9'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
turboNotEnabledErrorDescription

	^'S8'! !

!TurboDisabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
assertCanUseTurbo: aCar

	self error: self class turboNotEnabledErrorDescription! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
assertCanUseTurbo: aCar

	self
		assertIsCloseEnough: aCar
		toOvertake: (self carAheadOf: aCar ifNone: [ self error: self class noCarToOvertakeErrorDescription ])! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
assertIsCloseEnough: aCar toOvertake: aCarAhead

	(self timeGapBetween: aCar and: aCarAhead) < self maximumTimeGapToOvertake
		ifFalse: [ self error: self class carTooFarToOvertakeErrorDescription ]! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
carAheadOf: aCar ifNone: aNoneBlock

	^self carsSortedByPosition
		detect: [ :car | (self positionOf: car) > (self positionOf: aCar) ]
		ifNone: aNoneBlock! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
carsSortedByPosition

	^self cars asSortedCollection: [ :oneCar :anotherCar | (self positionOf: oneCar) <= (self positionOf: anotherCar) ]! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
maximumTimeGapToOvertake

	^1 * second! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
timeFromStartTo: aCar

	^(self positionOf: aCar) / aCar speed! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
timeGapBetween: aCar and: aCarAhead

	^(self timeFromStartTo: aCarAhead) - (self timeFromStartTo: aCar)! !

!C4 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
initializeWithSectors: aSectors

	sectors _ aSectors copy! !

!C4 methodsFor: 'length' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
length

	^self lengthOf: sectors! !

!C4 methodsFor: 'length' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
lengthOf: someSectors

	^someSectors sum: [ :sector | sector length ] ifEmpty: [ 0 * kilometer ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector length! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self endOf: sector) ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
sectorOf: aCar

	^self sectorOf: aCar ifNone: [ self error: self class carNotInTrackErrorDescription ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
sectorOf: aCar ifNone: aNoneBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aNoneBlock! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
startOf: aSector

	^self lengthOf: (sectors copyUpTo: aSector)! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
cars

	^sectors inject: Set new into: [ :cars :sector | cars addAll: sector cars; yourself ]! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
positionOf: aCar

	| sector |

	sector _ self sectorOf: aCar.
	^(self startOf: sector) + (sector positionOf: aCar)! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
put: aCar at: aPosition

	| sector |

	self assertIsInside: aPosition.
	self remove: aCar.

	sector _ self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self startOf: sector)! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
remove: aCar

	sectors do: [ :sector | sector remove: aCar ]! !

!C4 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class positionOutOfBoundsErrorDescription ]! !

!C4 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
withSectors: aSectors

	self assertHasSectors: aSectors.

	^self new initializeWithSectors: aSectors! !

!C4 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
assertHasSectors: aSectors

	aSectors ifEmpty: [ self error: self noSectorsErrorDescription ]! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
carNotInTrackErrorDescription

	^'S10'! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
noSectorsErrorDescription

	^'S12'! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
positionOutOfBoundsErrorDescription

	^'S11'! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
activatedFor: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
unused

	^self boostFactors reversed
		inject: ExhaustedTurbo new
		into: [ :deactivatedTurbo :boostFactor |
			ChargedTurbo activatingTo: (ActivatedTurbo boosting: boostFactor thenDeactivatingTo: deactivatedTurbo) ]! !

!Turbo class methodsFor: 'boost factors' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
boostFactors

	^Array with: 12 / 10 with: 11 / 10 with: 105 / 100! !

!Turbo class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
alreadyActivatedErrorDescription

	^'S1'! !

!Turbo class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
notActivatedErrorDescription

	^'S2'! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
initializeBoosting: aBoostFactor thenDeactivatingTo: aDeactivatedTurbo

	boostFactor _ aBoostFactor.
	nextDeactivation _ aDeactivatedTurbo! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
activatedFor: aCar

	^self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
deactivated

	^nextDeactivation! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
boost: aSpeed

	^aSpeed * boostFactor! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
boosting: aBoostFactor thenDeactivatingTo: aDeactivatedTurbo

	^self new initializeBoosting: aBoostFactor thenDeactivatingTo: aDeactivatedTurbo! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
activated

	self subclassResponsibility! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
activatedFor: aCar

	aCar assertCanUseTurbo.
	^self activated! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
deactivated

	^self error: self class notActivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!ChargedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
initializeActivatingTo: anActivatedTurbo

	nextActivation _ anActivatedTurbo! !

!ChargedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
activated

	^nextActivation! !

!ChargedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:56:12 am (UTC)'!
activatingTo: anActivatedTurbo

	^self new initializeActivatingTo: anActivatedTurbo! !

!ExhaustedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:56:13 am (UTC)'!
activated

	^ActivatedTurbo boosting: 1 thenDeactivatingTo: self! !

!C5 methodsFor: 'tests - sector' stamp: 'HAW 17/Sep/2026, 9:56:53 am (UTC)'!
test01CanNotCreateSectorWithNonPositiveLength

	self 
		should: [ C3 turboEnabledOfLength: 0 * kilometer ]
		raise: Error
		withMessageText: C3 invalidLengthErrorDescription! !

!C5 methodsFor: 'tests - sector' stamp: 'HAW 17/Sep/2026, 9:56:53 am (UTC)'!
test02CanNotPutCarBeyondSectorEnd

	| sector positionBeyondEnd car |
	
	sector _ C3 turboEnabledOfLength: 10 * kilometer.
	positionBeyondEnd _ sector length + (1 * millimeter).
	car _ C1 drivenBy: #s1.
	
	self 
		should: [ sector put: car at: positionBeyondEnd ] 
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 positionOutOfBoundsErrorDescription.
			self deny: (sector includes: car) ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:56:53 am (UTC)'!
test03CanNotActivateTurboInSectorWithTurboDisabled

	| sector car |

	sector _ C3 turboDisabledOfLength: 10 * kilometer.
	car _ C1 drivenBy: #s1.
	sector put: car at: 0 * kilometer.
	
	self 
		should: [ car activateTurbo ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 turboNotEnabledErrorDescription.
			self deny: car isTurboActivated ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:56:53 am (UTC)'!
test04CanNotActivateTurboWithoutCarAhead

	| sector carBehind leadingCar |
	
	sector _ C3 turboEnabledOfLength: 20 * kilometer.
	carBehind _ C1 drivenBy: #s1.
	leadingCar _ C1 drivenBy: #s2.
	sector put: carBehind at: 12 * kilometer.
	sector put: leadingCar at: 13 * kilometer.
	
	self 
		should: [ leadingCar activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 noCarToOvertakeErrorDescription. 
			self deny: leadingCar isTurboActivated ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:56:53 am (UTC)'!
test05CanActivateTurboWhenCarAheadIsLessThanOneSecondAway

	| overtakingCar |
	
	overtakingCar _ self overtakingCarAt: 12.95 * kilometer drivingAt: 300 * kilometer / hour.
	
	overtakingCar activateTurbo.
	
	self assert: overtakingCar isTurboActivated! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test06CanNotActivateTurboWhenCarAheadIsOneSecondOrMoreAway

	| overtakingCar |
	
	overtakingCar _ self overtakingCarAt: 12.9 * kilometer drivingAt: 300 * kilometer / hour.
	
	self 
		should: [ overtakingCar activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 carTooFarToOvertakeErrorDescription.
			self deny: overtakingCar isTurboActivated ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test20FirstTurboActivationIncreasesSpeedTwentyPercent

	self assertSpeedAfterActivatingTurbo: 1 timesIs: 120 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test21SecondTurboActivationIncreasesSpeedTenPercent

	self assertSpeedAfterActivatingTurbo: 2 timesIs: 110 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test22ThirdTurboActivationIncreasesSpeedFivePercent

	self assertSpeedAfterActivatingTurbo: 3 timesIs: 105 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test23FourthTurboActivationDoesNotIncreaseSpeed

	self assertSpeedAfterActivatingTurbo: 4 timesIs: 100 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test24CanNotActivateAnActivatedTurbo

	| overtakingCar |
	
	overtakingCar _ self overtakingCarAt: 12.99 * kilometer drivingAt: 100 * kilometer / hour.
	overtakingCar activateTurbo.
	
	self 
		should: [ overtakingCar activateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo alreadyActivatedErrorDescription! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test25CanNotDeactivateADeactivatedTurbo

	| overtakingCar |
	
	overtakingCar _ self overtakingCarAt: 12.99 * kilometer drivingAt: 100 * kilometer / hour.
	
	self 
		should: [ overtakingCar deactivateTurbo ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Turbo notActivatedErrorDescription! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test07CanNotCreateTrackWithoutSectors

	self
		should: [ C4 withSectors: #() ]
		raise: Error
		withMessageText: C4 noSectorsErrorDescription! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test08TrackLengthIsTheSumOfItsSectorsLength

	| track |
	
	track _ C4 withSectors: self tenAndTwentyKilometersSectors.
	
	self assert: track length equals: 30 * kilometer! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test09CanNotPutCarBeyondTrackEnd

	| track positionBeyondEnd car |
	
	track _ C4 withSectors: self tenAndTwentyKilometersSectors.
	positionBeyondEnd _ track length + (1 * millimeter).
	car _ C1 drivenBy: #s1.
	
	self 
		should: [ track put: car at: positionBeyondEnd ] 
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C4 positionOutOfBoundsErrorDescription.
			self deny: (track includes: car) ]! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test10CarPutInTrackIsInTheSectorThatIncludesItsPosition

	| sectors track car |
	
	sectors _ self tenAndTwentyKilometersSectors.
	track _ C4 withSectors: sectors.
	car _ C1 drivenBy: #s1.

	track put: car at: 15 * kilometer.
	
	self assert: (track sectorOf: car) equals: sectors second.
	self assert: (track positionOf: car) equals: 15 * kilometer.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test11CarsPutAtTheEndOfSectorsAreIncludedInThem

	| sectors track firstCar secondCar |
	
	sectors _ self tenAndTwentyKilometersSectors.
	track _ C4 withSectors: sectors.
	firstCar _ C1 drivenBy: #s1.
	secondCar _ C1 drivenBy: #s3.

	track put: firstCar at: 10 * kilometer.
	track put: secondCar at: 30 * kilometer.
	
	self assert: (track includes: firstCar).
	self assert: (track includes: secondCar).
	self assert: (sectors first includes: firstCar).
	self assert: (sectors second includes: secondCar)! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test12PuttingCarAgainMovesItToTheSectorOfItsNewPosition

	| sectors track car |
	
	sectors _ self tenAndTwentyKilometersSectors.
	track _ C4 withSectors: sectors.
	car _ C1 drivenBy: #s1.

	track put: car at: 5 * kilometer.
	track put: car at: 15 * kilometer.
	
	self assert: (track sectorOf: car) equals: sectors second.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test13RaceLengthIsTrackLengthTimesLaps

	| track race |
	
	track _ C4 withSectors: self tenAndTwentyKilometersSectors.
	
	race _ C2 on: track laps: 100.
	
	self assert: race length equals: track length * 100! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test14CarsCanBePutInRaceAtTheSamePosition

	| race firstCar secondCar |
	
	race _ self raceOn: (OrderedCollection with: (C3 turboEnabledOfLength: 10 * kilometer)).
	firstCar _ C1 drivenBy: #s3.
	secondCar _ C1 drivenBy: #s2.
	
	race put: firstCar at: 5 * kilometer.
	race put: secondCar at: 5 * kilometer.
	
	self assert: (race positionOf: firstCar) equals: 5 * kilometer.
	self assert: (race positionOf: secondCar) equals: 5 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test15CarWithoutSpeedDoesNotAdvance

	| race car |
	
	race _ self raceOn: (OrderedCollection with: (C3 turboEnabledOfLength: 10 * kilometer)).
	car _ C1 drivenBy: #s3.
	race put: car at: 5 * kilometer.
	
	race advance: 10 * minute.
	
	self assert: (race positionOf: car) equals: 5 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test16CarAdvancesItsSpeedTimesTheElapsedTimeBeyondTheTrackLength

	| race car |
	
	race _ self raceOn: self tenAndTwentyKilometersSectors.
	car _ self carDrivenBy: #s3 drivingAt: 300 * kilometer / hour.
	race put: car at: 0 * kilometer.
	
	race advance: 1 * hour.
	
	self assert: (race positionOf: car) equals: 300 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test17CarPutInRaceIsInTheSectorOfItsPosition

	| sectors race car |
	
	sectors _ self tenAndTwentyKilometersSectors.
	race _ self raceOn: sectors.
	car _ C1 drivenBy: #s3.
	
	race put: car at: 5 * kilometer.
	
	self assert: (race positionOf: car) equals: 5 * kilometer.
	self assert: (race sectorOf: car) equals: sectors first! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test18CarAdvancingWithoutReachingTheSectorEndStaysInIt

	| sectors race car |
	
	sectors _ self tenAndTwentyKilometersSectors.
	race _ self raceOn: sectors.
	car _ self carDrivenBy: #s3 drivingAt: 5 * kilometer / hour.
	race put: car at: 0 * kilometer.
	
	race advance: 1 * hour.
	
	self assert: (race positionOf: car) equals: 5 * kilometer.
	self assert: (race sectorOf: car) equals: sectors first! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test19CarAdvancingBeyondTheSectorEndMovesToTheNextSector

	| sectors race car |
	
	sectors _ OrderedCollection 
		with: (C3 turboEnabledOfLength: 10 * kilometer)
		with: (C3 turboEnabledOfLength: 30 * kilometer).
	race _ self raceOn: sectors.
	car _ self carDrivenBy: #s3 drivingAt: 15 * kilometer / hour.
	race put: car at: 5 * kilometer.
	
	race advance: 1 * hour.
	
	self assert: (race positionOf: car) equals: 20 * kilometer.
	self assert: (race sectorOf: car) equals: sectors second! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
test26CanNotCreateRaceWithNonPositiveLaps

	| track |
	
	track _ C4 withSectors: self tenAndTwentyKilometersSectors.
	
	self 
		should: [ C2 on: track laps: 0 ]
		raise: Error
		withMessageText: C2 invalidNumberOfLapsErrorDescription! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
activateTurboOf: aCar times: aNumberOfActivations

	aNumberOfActivations - 1 timesRepeat: [ aCar activateTurbo; deactivateTurbo ].
	aCar activateTurbo! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
assertSpeedAfterActivatingTurbo: aNumberOfActivations timesIs: anExpectedSpeed

	| overtakingCar |
	
	overtakingCar _ self overtakingCarAt: 12.99 * kilometer drivingAt: 100 * kilometer / hour.
	
	self activateTurboOf: overtakingCar times: aNumberOfActivations.
	
	self assert: overtakingCar isTurboActivated.
	self assert: overtakingCar speed equals: anExpectedSpeed! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
carDrivenBy: aDriver drivingAt: aSpeed

	^(C1 drivenBy: aDriver) changeSpeedTo: aSpeed; yourself! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
overtakingCarAt: aPosition drivingAt: aSpeed

	| sector overtakingCar |
	
	sector _ C3 turboEnabledOfLength: 24 * kilometer.
	overtakingCar _ self carDrivenBy: #s1 drivingAt: aSpeed.
	
	sector put: overtakingCar at: aPosition.
	sector put: (self carDrivenBy: #s2 drivingAt: aSpeed) at: 13 * kilometer.
	
	^overtakingCar! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
raceOn: aSectors

	^C2 on: (C4 withSectors: aSectors) laps: 100! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:56:54 am (UTC)'!
tenAndTwentyKilometersSectors

	^OrderedCollection 
		with: (C3 turboEnabledOfLength: 10 * kilometer)
		with: (C3 turboDisabledOfLength: 20 * kilometer)! !
