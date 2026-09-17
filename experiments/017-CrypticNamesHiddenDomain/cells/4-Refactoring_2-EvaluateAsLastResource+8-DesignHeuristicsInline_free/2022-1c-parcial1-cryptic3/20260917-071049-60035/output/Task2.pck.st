'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:16:13 am'!
'Description '!
!provides: 'Task2' 1 2!
SystemOrganization addCategory: #Task2!
SystemOrganization addCategory: #'Task2-Tests'!


!classDefinition: #C1 category: #Task2!
Object subclass: #C1
	instanceVariableNames: 'maximumSpeed turbo traveledDistance sector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C1 class' category: #Task2!
C1 class
	instanceVariableNames: ''!

!classDefinition: #C2 category: #Task2!
Object subclass: #C2
	instanceVariableNames: 'circuit laps'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C2 class' category: #Task2!
C2 class
	instanceVariableNames: ''!

!classDefinition: #C3 category: #Task2!
Object subclass: #C3
	instanceVariableNames: 'positions length turboAvailability'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C3 class' category: #Task2!
C3 class
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

!classDefinition: #NoSector category: #Task2!
Object subclass: #NoSector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'NoSector class' category: #Task2!
NoSector class
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
	instanceVariableNames: 'boost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'ActivatedTurbo class' category: #Task2!
ActivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #DeactivatedTurbo category: #Task2!
Turbo subclass: #DeactivatedTurbo
	instanceVariableNames: 'nextBoost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'DeactivatedTurbo class' category: #Task2!
DeactivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #TurboAvailability category: #Task2!
Object subclass: #TurboAvailability
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboAvailability class' category: #Task2!
TurboAvailability class
	instanceVariableNames: ''!

!classDefinition: #TurboDisabled category: #Task2!
TurboAvailability subclass: #TurboDisabled
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboDisabled class' category: #Task2!
TurboDisabled class
	instanceVariableNames: ''!

!classDefinition: #TurboEnabled category: #Task2!
TurboAvailability subclass: #TurboEnabled
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboEnabled class' category: #Task2!
TurboEnabled class
	instanceVariableNames: ''!

!classDefinition: #TurboBoost category: #Task2!
Object subclass: #TurboBoost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboBoost class' category: #Task2!
TurboBoost class
	instanceVariableNames: ''!

!classDefinition: #ExhaustedTurboBoost category: #Task2!
TurboBoost subclass: #ExhaustedTurboBoost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'ExhaustedTurboBoost class' category: #Task2!
ExhaustedTurboBoost class
	instanceVariableNames: ''!

!classDefinition: #PercentageTurboBoost category: #Task2!
TurboBoost subclass: #PercentageTurboBoost
	instanceVariableNames: 'percentage nextBoost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'PercentageTurboBoost class' category: #Task2!
PercentageTurboBoost class
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


!C1 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
initializeWithMaximumSpeed: aMaximumSpeed

	maximumSpeed := aMaximumSpeed.
	turbo := DeactivatedTurbo unused.
	traveledDistance := 0 * kilometer.
	sector := NoSector new! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
speed

	^turbo boost: maximumSpeed! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
timeToTravel: aDistance

	^aDistance / self speed! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
activateTurbo

	| activatedTurbo |

	activatedTurbo := turbo activated.
	sector assertTurboCanBeActivatedBy: self.
	turbo := activatedTurbo! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
deactivateTurbo

	turbo := turbo deactivated! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
advanceDuring: aTimeLapse

	traveledDistance := traveledDistance + (self speed * aTimeLapse)! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
moveTo: aTraveledDistance

	traveledDistance := aTraveledDistance! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
placeIn: aSector

	sector := aSector! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
traveledDistance

	^traveledDistance! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
withMaximumSpeed: aMaximumSpeed

	self assertIsValidMaximumSpeed: aMaximumSpeed.

	^self new initializeWithMaximumSpeed: aMaximumSpeed! !

!C1 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
assertIsValidMaximumSpeed: aMaximumSpeed

	aMaximumSpeed negative ifTrue: [ self error: self negativeMaximumSpeedErrorDescription ]! !

!C1 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
negativeMaximumSpeedErrorDescription

	^'Maximum speed can not be negative'! !

!C2 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
initializeCircuit: aCircuit laps: aNumberOfLaps

	circuit := aCircuit.
	laps := aNumberOfLaps! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
length

	^circuit length * laps! !

!C2 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
positionOf: aCar

	^aCar traveledDistance! !

!C2 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
put: aCar at: aPosition

	aCar moveTo: aPosition.
	self placeOnCircuit: aCar! !

!C2 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
sectorOf: aCar

	^circuit sectorOf: aCar! !

!C2 methodsFor: 'advancing' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
advance: aTimeLapse

	circuit cars do: [ :car | self advance: car during: aTimeLapse ]! !

!C2 methodsFor: 'advancing' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
advance: aCar during: aTimeLapse

	aCar advanceDuring: aTimeLapse.
	self placeOnCircuit: aCar! !

!C2 methodsFor: 'advancing' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
placeOnCircuit: aCar

	circuit put: aCar at: aCar traveledDistance \\ circuit length! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
circuit: aCircuit laps: aNumberOfLaps

	self assertIsValidNumberOfLaps: aNumberOfLaps.

	^self new initializeCircuit: aCircuit laps: aNumberOfLaps! !

!C2 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
assertIsValidNumberOfLaps: aNumberOfLaps

	aNumberOfLaps strictlyPositive ifFalse: [ self error: self invalidNumberOfLapsErrorDescription ]! !

!C2 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
invalidNumberOfLapsErrorDescription

	^'Number of laps must be strictly positive'! !

!C3 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
initializeOfLength: aLength turboAvailability: aTurboAvailability

	positions := Dictionary new.
	length := aLength.
	turboAvailability := aTurboAvailability! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
length

	^length! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
cars

	^positions keys! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
includes: aCar

	^positions includesKey: aCar! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
positionOf: aCar

	^positions at: aCar! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
put: aCar at: aPosition

	self assertIsInside: aPosition.

	positions at: aCar put: aPosition.
	aCar placeIn: self! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
remove: aCar

	positions removeKey: aCar ifAbsent: []! !

!C3 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
assertIsInside: aPosition

	aPosition > length ifTrue: [ self error: self class positionOutOfSectorErrorDescription ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
assertCarAheadOfIsLessThanOneSecondAway: aCar

	(self timeGapBetween: (self carAheadOf: aCar) and: aCar) < (1 * second)
		ifFalse: [ self error: self class carAheadTooFarErrorDescription ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	turboAvailability assertAllowsActivation.
	self assertCarAheadOfIsLessThanOneSecondAway: aCar! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
carAheadOf: aCar

	^positions keyAtValue: (self positionAheadOf: aCar)! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
positionAheadOf: aCar

	| carPosition |

	carPosition := self positionOf: aCar.

	^positions values asSortedCollection
		detect: [ :position | position > carPosition ]
		ifNone: [ self error: self class noCarAheadErrorDescription ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
timeGapBetween: aCarAhead and: aCarBehind

	^(self timeToReachPositionOf: aCarAhead) - (self timeToReachPositionOf: aCarBehind)! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
timeToReachPositionOf: aCar

	^aCar timeToTravel: (self positionOf: aCar)! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
ofLength: aLength turboAvailability: aTurboAvailability

	self assertIsValidLength: aLength.

	^self new initializeOfLength: aLength turboAvailability: aTurboAvailability! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
withTurboOfLength: aLength

	^self ofLength: aLength turboAvailability: TurboEnabled new! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
withoutTurboOfLength: aLength

	^self ofLength: aLength turboAvailability: TurboDisabled new! !

!C3 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
assertIsValidLength: aLength

	aLength strictlyPositive ifFalse: [ self error: self invalidLengthErrorDescription ]! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
carAheadTooFarErrorDescription

	^'Car ahead is not less than one second away'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
invalidLengthErrorDescription

	^'Sector length must be strictly positive'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
noCarAheadErrorDescription

	^'There is no car ahead to overtake'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
positionOutOfSectorErrorDescription

	^'Position is out of the sector'! !

!C4 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
initializeWithSectors: aSequenceOfSectors

	sectors := aSequenceOfSectors copy! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
length

	^sectors sum: [ :sector | sector length ]! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
cars

	^sectors inject: Set new into: [ :cars :sector | cars addAll: sector cars; yourself ]! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
positionOf: aCar

	| sector |

	sector := self sectorOf: aCar.

	^(self startOf: sector) + (sector positionOf: aCar)! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
put: aCar at: aPosition

	| sector |

	self assertIsInside: aPosition.
	self remove: aCar.

	sector := self sectorAt: aPosition.
	sector put: aCar at: aPosition - (self startOf: sector)! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
remove: aCar

	sectors do: [ :sector | sector remove: aCar ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector length! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self endOf: sector) ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
sectorOf: aCar

	^self sectorOf: aCar ifNone: [ self error: self class carNotInCircuitErrorDescription ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
sectorOf: aCar ifNone: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
startOf: aSector

	^(sectors copyFrom: 1 to: (sectors indexOf: aSector) - 1)
		inject: 0 * kilometer
		into: [ :start :previousSector | start + previousSector length ]! !

!C4 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class positionOutOfCircuitErrorDescription ]! !

!C4 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
withSectors: aSequenceOfSectors

	self assertHasSectors: aSequenceOfSectors.

	^self new initializeWithSectors: aSequenceOfSectors! !

!C4 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
assertHasSectors: aSequenceOfSectors

	aSequenceOfSectors ifEmpty: [ self error: self noSectorsErrorDescription ]! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
carNotInCircuitErrorDescription

	^'Car is not in the circuit'! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
noSectorsErrorDescription

	^'Circuit must have at least one sector'! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
positionOutOfCircuitErrorDescription

	^'Position is out of the circuit'! !

!NoSector methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class carNotInSectorErrorDescription! !

!NoSector class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
carNotInSectorErrorDescription

	^'Car is not in a sector'! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
activated

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!ActivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
initializeBoost: aTurboBoost

	boost := aTurboBoost! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
activated

	^self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
deactivated

	^DeactivatedTurbo nextBoost: boost next! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
boost: aSpeed

	^boost applyTo: aSpeed! !

!ActivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
boost: aTurboBoost

	^self new initializeBoost: aTurboBoost! !

!ActivatedTurbo class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
alreadyActivatedErrorDescription

	^'Turbo is already activated'! !

!DeactivatedTurbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
initializeNextBoost: aTurboBoost

	nextBoost := aTurboBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
activated

	^ActivatedTurbo boost: nextBoost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
deactivated

	^self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
nextBoost: aTurboBoost

	^self new initializeNextBoost: aTurboBoost! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
unused

	^self nextBoost: (PercentageTurboBoost 
		of: 20 
		followedBy: (PercentageTurboBoost 
			of: 10 
			followedBy: (PercentageTurboBoost of: 5 followedBy: ExhaustedTurboBoost new)))! !

!DeactivatedTurbo class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
alreadyDeactivatedErrorDescription

	^'Turbo is already deactivated'! !

!TurboAvailability methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
assertAllowsActivation

	self subclassResponsibility! !

!TurboDisabled methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
assertAllowsActivation

	self error: self class turboDisabledErrorDescription! !

!TurboDisabled class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
turboDisabledErrorDescription

	^'Turbo can not be activated in this sector'! !

!TurboEnabled methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
assertAllowsActivation

	! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
applyTo: aSpeed

	self subclassResponsibility! !

!TurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
next

	self subclassResponsibility! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
applyTo: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
next

	^self! !

!PercentageTurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
initializeOf: aPercentage followedBy: aNextBoost

	percentage := aPercentage.
	nextBoost := aNextBoost! !

!PercentageTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
applyTo: aSpeed

	^aSpeed * (100 + percentage) / 100! !

!PercentageTurboBoost methodsFor: 'boosting' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
next

	^nextBoost! !

!PercentageTurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:15:06 am (UTC)'!
of: aPercentage followedBy: aNextBoost

	^self new initializeOf: aPercentage followedBy: aNextBoost! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
assertActivatingTurbo: aNumberOfActivations timesBoostsSpeedTo: aSpeed

	| car |

	car := self carLessThanOneSecondBehindAnother.
	aNumberOfActivations - 1 timesRepeat: [ car activateTurbo; deactivateTurbo ].

	car activateTurbo.

	self assert: car isTurboActivated.
	self assert: car speed equals: aSpeed! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
carAt: aPosition behindCarAt: aCarAheadPosition bothRunningAt: aMaximumSpeed

	| sector carBehind |

	sector := C3 withTurboOfLength: 24 * kilometer.
	carBehind := C1 withMaximumSpeed: aMaximumSpeed.

	sector put: carBehind at: aPosition.
	sector put: (C1 withMaximumSpeed: aMaximumSpeed) at: aCarAheadPosition.

	^carBehind! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
carLessThanOneSecondBehindAnother

	^self 
		carAt: 12.99 * kilometer 
		behindCarAt: 13 * kilometer 
		bothRunningAt: 100 * kilometer / hour! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
raceOnCircuitWithSectors: aSequenceOfSectors

	^C2 circuit: (C4 withSectors: aSequenceOfSectors) laps: 100! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
sectorsOfTenAndTwentyKilometers

	^OrderedCollection 
		with: (C3 withTurboOfLength: 10 * kilometer)
		with: (C3 withoutTurboOfLength: 20 * kilometer)! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
stoppedCar

	^C1 withMaximumSpeed: 0 * kilometer / hour! !

!C5 methodsFor: 'tests - sector' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test01CanNotCreateSectorWithNonPositiveLength

	self 
		should: [ C3 withTurboOfLength: 0 * kilometer ]
		raise: Error
		withMessageText: C3 invalidLengthErrorDescription! !

!C5 methodsFor: 'tests - sector' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test02CanNotPutCarBeyondSectorLength

	| sector positionBeyondSector car |

	sector := C3 withTurboOfLength: 10 * kilometer.
	positionBeyondSector := sector length + (1 * millimeter).
	car := self stoppedCar.

	self 
		should: [ sector put: car at: positionBeyondSector ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 positionOutOfSectorErrorDescription.
			self deny: (sector includes: car) ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test03CanNotActivateTurboInSectorWithoutTurbo

	| sector car |

	sector := C3 withoutTurboOfLength: 10 * kilometer.
	car := self stoppedCar.
	sector put: car at: 0 * kilometer.

	self 
		should: [ car activateTurbo ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: TurboDisabled turboDisabledErrorDescription.
			self deny: car isTurboActivated ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test04CanNotActivateTurboWithoutCarAhead

	| sector leadingCar |

	sector := C3 withTurboOfLength: 20 * kilometer.
	leadingCar := self stoppedCar.
	sector put: self stoppedCar at: 12 * kilometer.
	sector put: leadingCar at: 13 * kilometer.

	self 
		should: [ leadingCar activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 noCarAheadErrorDescription.
			self deny: leadingCar isTurboActivated ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test05CanActivateTurboWhenCarAheadIsLessThanOneSecondAway

	| car |

	car := self 
		carAt: 12.95 * kilometer 
		behindCarAt: 13 * kilometer 
		bothRunningAt: 300 * kilometer / hour.

	car activateTurbo.

	self assert: car isTurboActivated! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test06CanNotActivateTurboWhenCarAheadIsOneSecondOrMoreAway

	| car |

	car := self 
		carAt: 12.9 * kilometer 
		behindCarAt: 13 * kilometer 
		bothRunningAt: 300 * kilometer / hour.

	self 
		should: [ car activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 carAheadTooFarErrorDescription.
			self deny: car isTurboActivated ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test20FirstTurboActivationBoostsSpeedTwentyPercent

	self assertActivatingTurbo: 1 timesBoostsSpeedTo: 120 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test21SecondTurboActivationBoostsSpeedTenPercent

	self assertActivatingTurbo: 2 timesBoostsSpeedTo: 110 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test22ThirdTurboActivationBoostsSpeedFivePercent

	self assertActivatingTurbo: 3 timesBoostsSpeedTo: 105 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test23FourthTurboActivationDoesNotBoostSpeed

	self assertActivatingTurbo: 4 timesBoostsSpeedTo: 100 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test24CanNotActivateAnActivatedTurbo

	| car |

	car := self carLessThanOneSecondBehindAnother.
	car activateTurbo.

	self 
		should: [ car activateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: ActivatedTurbo alreadyActivatedErrorDescription! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test25CanNotDeactivateADeactivatedTurbo

	| car |

	car := self carLessThanOneSecondBehindAnother.

	self 
		should: [ car deactivateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: DeactivatedTurbo alreadyDeactivatedErrorDescription! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test28CanNotActivateTurboOfCarNotInASector

	| car |

	car := self stoppedCar.

	self 
		should: [ car activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: NoSector carNotInSectorErrorDescription.
			self deny: car isTurboActivated ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test29DeactivatedTurboDoesNotBoostSpeed

	| car |

	car := self carLessThanOneSecondBehindAnother.
	car activateTurbo.

	car deactivateTurbo.

	self assert: car speed equals: 100 * kilometer / hour! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test07CanNotCreateCircuitWithoutSectors

	self
		should: [ C4 withSectors: #() ]
		raise: Error
		withMessageText: C4 noSectorsErrorDescription! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test08CircuitLengthIsTheSumOfItsSectorsLength

	| circuit |

	circuit := C4 withSectors: self sectorsOfTenAndTwentyKilometers.

	self assert: circuit length equals: 30 * kilometer! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test09CanNotPutCarBeyondCircuitLength

	| circuit positionBeyondCircuit car |

	circuit := C4 withSectors: self sectorsOfTenAndTwentyKilometers.
	positionBeyondCircuit := circuit length + (1 * millimeter).
	car := self stoppedCar.

	self 
		should: [ circuit put: car at: positionBeyondCircuit ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C4 positionOutOfCircuitErrorDescription.
			self deny: (circuit includes: car) ]! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test10CarIsPutInTheSectorItsPositionFallsIn

	| sectors circuit car |

	sectors := self sectorsOfTenAndTwentyKilometers.
	circuit := C4 withSectors: sectors.
	car := self stoppedCar.

	circuit put: car at: 15 * kilometer.

	self assert: (circuit sectorOf: car) equals: sectors second.
	self assert: (circuit positionOf: car) equals: 15 * kilometer.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test11CarAtTheEndOfASectorIsPutInThatSector

	| sectors circuit firstCar secondCar |

	sectors := self sectorsOfTenAndTwentyKilometers.
	circuit := C4 withSectors: sectors.
	firstCar := self stoppedCar.
	secondCar := self stoppedCar.

	circuit put: firstCar at: 10 * kilometer.
	circuit put: secondCar at: 30 * kilometer.

	self assert: (circuit includes: firstCar).
	self assert: (circuit includes: secondCar).
	self assert: (sectors first includes: firstCar).
	self assert: (sectors second includes: secondCar)! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test12PuttingACarAgainMovesItToTheSectorOfItsNewPosition

	| sectors circuit car |

	sectors := self sectorsOfTenAndTwentyKilometers.
	circuit := C4 withSectors: sectors.
	car := self stoppedCar.
	circuit put: car at: 5 * kilometer.

	circuit put: car at: 15 * kilometer.

	self assert: (circuit sectorOf: car) equals: sectors second.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test13RaceLengthIsTheCircuitLengthTimesItsLaps

	| circuit race |

	circuit := C4 withSectors: self sectorsOfTenAndTwentyKilometers.

	race := C2 circuit: circuit laps: 100.

	self assert: race length equals: circuit length * 100! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test14CarsCanBePutAtTheSamePositionOfARace

	| race firstCar secondCar |

	race := self raceOnCircuitWithSectors: (OrderedCollection with: (C3 withTurboOfLength: 10 * kilometer)).
	firstCar := self stoppedCar.
	secondCar := self stoppedCar.

	race put: firstCar at: 5 * kilometer.
	race put: secondCar at: 5 * kilometer.

	self assert: (race positionOf: firstCar) equals: 5 * kilometer.
	self assert: (race positionOf: secondCar) equals: 5 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test15StoppedCarDoesNotAdvance

	| race car |

	race := self raceOnCircuitWithSectors: (OrderedCollection with: (C3 withTurboOfLength: 10 * kilometer)).
	car := self stoppedCar.
	race put: car at: 5 * kilometer.

	race advance: 10 * minute.

	self assert: (race positionOf: car) equals: 5 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test16CarAdvancesItsSpeedTimesTheElapsedTimeAlongLaps

	| race car |

	race := self raceOnCircuitWithSectors: self sectorsOfTenAndTwentyKilometers.
	car := C1 withMaximumSpeed: 300 * kilometer / hour.
	race put: car at: 0 * kilometer.

	race advance: 1 * hour.

	self assert: (race positionOf: car) equals: 300 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test17CarPutInARaceIsInTheSectorOfItsPosition

	| sectors race car |

	sectors := self sectorsOfTenAndTwentyKilometers.
	race := self raceOnCircuitWithSectors: sectors.
	car := self stoppedCar.

	race put: car at: 5 * kilometer.

	self assert: (race positionOf: car) equals: 5 * kilometer.
	self assert: (race sectorOf: car) equals: sectors first! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test18CarAdvancingWithinASectorStaysInIt

	| sectors race car |

	sectors := self sectorsOfTenAndTwentyKilometers.
	race := self raceOnCircuitWithSectors: sectors.
	car := C1 withMaximumSpeed: 5 * kilometer / hour.
	race put: car at: 0 * kilometer.

	race advance: 1 * hour.

	self assert: (race positionOf: car) equals: 5 * kilometer.
	self assert: (race sectorOf: car) equals: sectors first! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test19CarAdvancingBeyondItsSectorMovesToTheNextOne

	| sectors race car |

	sectors := OrderedCollection 
		with: (C3 withTurboOfLength: 10 * kilometer)
		with: (C3 withTurboOfLength: 30 * kilometer).
	race := self raceOnCircuitWithSectors: sectors.
	car := C1 withMaximumSpeed: 15 * kilometer / hour.
	race put: car at: 5 * kilometer.

	race advance: 1 * hour.

	self assert: (race positionOf: car) equals: 20 * kilometer.
	self assert: (race sectorOf: car) equals: sectors second! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test27CanNotCreateRaceWithoutLaps

	| circuit |

	circuit := C4 withSectors: self sectorsOfTenAndTwentyKilometers.

	self 
		should: [ C2 circuit: circuit laps: 0 ]
		raise: Error
		withMessageText: C2 invalidNumberOfLapsErrorDescription! !

!C5 methodsFor: 'tests - car' stamp: 'HAW 17/Sep/2026, 10:15:50 am (UTC)'!
test26CanNotCreateCarWithNegativeMaximumSpeed

	self 
		should: [ C1 withMaximumSpeed: -1 * kilometer / hour ]
		raise: Error
		withMessageText: C1 negativeMaximumSpeedErrorDescription! !
