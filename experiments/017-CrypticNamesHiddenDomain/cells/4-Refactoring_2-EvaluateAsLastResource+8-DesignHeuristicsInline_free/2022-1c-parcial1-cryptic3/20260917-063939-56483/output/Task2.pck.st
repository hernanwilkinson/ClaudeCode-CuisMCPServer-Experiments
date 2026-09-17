'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:44:40 am'!
'Description '!
!provides: 'Task2' 1 2!
SystemOrganization addCategory: #Task2!
SystemOrganization addCategory: #'Task2-Tests'!


!classDefinition: #C1 category: #Task2!
Object subclass: #C1
	instanceVariableNames: 'name maxSpeed turbo traveledDistance sector'
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
	instanceVariableNames: 'positionsByCar length turboZone'
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

!classDefinition: #OffCircuitSector category: #Task2!
Object subclass: #OffCircuitSector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'OffCircuitSector class' category: #Task2!
OffCircuitSector class
	instanceVariableNames: ''!

!classDefinition: #TurboState category: #Task2!
Object subclass: #TurboState
	instanceVariableNames: 'timesUsed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboState class' category: #Task2!
TurboState class
	instanceVariableNames: ''!

!classDefinition: #ActivatedTurbo category: #Task2!
TurboState subclass: #ActivatedTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'ActivatedTurbo class' category: #Task2!
ActivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #DeactivatedTurbo category: #Task2!
TurboState subclass: #DeactivatedTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'DeactivatedTurbo class' category: #Task2!
DeactivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #TurboZone category: #Task2!
Object subclass: #TurboZone
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboZone class' category: #Task2!
TurboZone class
	instanceVariableNames: ''!

!classDefinition: #TurboDisabledZone category: #Task2!
TurboZone subclass: #TurboDisabledZone
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboDisabledZone class' category: #Task2!
TurboDisabledZone class
	instanceVariableNames: ''!

!classDefinition: #TurboEnabledZone category: #Task2!
TurboZone subclass: #TurboEnabledZone
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboEnabledZone class' category: #Task2!
TurboEnabledZone class
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


!C1 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
initializeNamed: aName

	name := aName.
	maxSpeed := 0 * kilometer / hour.
	traveledDistance := 0 * kilometer.
	turbo := DeactivatedTurbo unused.
	sector := OffCircuitSector new! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m1

	turbo assertCanBeActivated.
	sector m27: self! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m2

	turbo := turbo activate! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m5

	turbo := turbo deactivate! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m7

	^turbo isActivated! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m10: aMaxSpeed

	maxSpeed := aMaxSpeed! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m9

	^turbo speedFor: maxSpeed! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m11

	^traveledDistance! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m12: aTraveledDistance

	traveledDistance := aTraveledDistance! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m19: aDistance

	traveledDistance := traveledDistance + aDistance! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m4: aSector

	sector := aSector! !

!C1 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m13

	^'S1'! !

!C1 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m14

	^'S2'! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m15: aName

	^self new initializeNamed: aName! !

!C2 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:42:59 am (UTC)'!
initializeOn: aCircuit laps: aNumberOfLaps

	circuit := aCircuit.
	laps := aNumberOfLaps! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:42:59 am (UTC)'!
m18: aCar

	^aCar m11! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:42:59 am (UTC)'!
m48: aCar

	^circuit m48: aCar! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:42:59 am (UTC)'!
m50

	^circuit m50 * laps! !

!C2 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m19: aTime

	circuit m49 do: [ :car | self m21: car a21: aTime ]! !

!C2 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m21: aCar a21: aTime

	aCar m19: aCar m9 * aTime.
	self placeOnCircuit: aCar! !

!C2 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m51: aCar a51: aTraveledDistance

	aCar m12: aTraveledDistance.
	self placeOnCircuit: aCar! !

!C2 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
placeOnCircuit: aCar

	circuit m51: aCar a51: aCar m11 \\ circuit m50! !

!C2 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:42:59 am (UTC)'!
m23

	^'S3'! !

!C2 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:42:59 am (UTC)'!
assertIsValidLaps: aNumberOfLaps

	aNumberOfLaps strictlyPositive ifFalse: [ self error: self m23 ]! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:42:59 am (UTC)'!
m24: aCircuit a24: aNumberOfLaps

	self assertIsValidLaps: aNumberOfLaps.

	^self new initializeOn: aCircuit laps: aNumberOfLaps! !

!C3 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
initializeLength: aLength turboZone: aTurboZone

	positionsByCar := Dictionary new.
	length := aLength.
	turboZone := aTurboZone! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m49

	^positionsByCar keys! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m50

	^length! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m52: aCar

	^positionsByCar at: aCar! !

!C3 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
includes: aCar

	^positionsByCar includesKey: aCar! !

!C3 methodsFor: 'placing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m30: aCar

	self m51: aCar a51: 0 * kilometer! !

!C3 methodsFor: 'placing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m51: aCar a51: aPosition

	self assertIsInside: aPosition.

	positionsByCar at: aCar put: aPosition.
	aCar m4: self! !

!C3 methodsFor: 'placing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
remove: aCar

	positionsByCar removeKey: aCar ifAbsent: []! !

!C3 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
assertIsInside: aPosition

	length < aPosition ifTrue: [ self error: self class m54 ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
assertIsCloseEnoughToCarAheadOf: aCar

	| carAhead |

	carAhead := self carAheadOf: aCar ifNone: [ self error: self class m40 ].

	(self timeToReach: carAhead) - (self timeToReach: aCar) < (1 * second)
		ifFalse: [ self error: self class m39 ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
carAheadOf: aCar ifNone: aBlock

	| carsAhead |

	carsAhead := self carsAheadOf: aCar.

	^carsAhead
		ifEmpty: aBlock
		ifNotEmpty: [ carsAhead detectMin: [ :carAhead | self m52: carAhead ] ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
carsAheadOf: aCar

	^self m49 select: [ :otherCar | (self m52: otherCar) > (self m52: aCar) ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m27: aCar

	turboZone assertAllowsTurbo.
	self assertIsCloseEnoughToCarAheadOf: aCar.

	aCar m2! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
timeToReach: aCar

	^(self m52: aCar) / aCar m9! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
length: aLength turboZone: aTurboZone

	self assertIsValidLength: aLength.

	^self new initializeLength: aLength turboZone: aTurboZone! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m44: aLength

	^self length: aLength turboZone: TurboEnabledZone new! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m45: aLength

	^self length: aLength turboZone: TurboDisabledZone new! !

!C3 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
assertIsValidLength: aLength

	aLength strictlyPositive ifFalse: [ self error: self m42 ]! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m39
	
	^ 'S5'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m40
	
	^ 'S6'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m42

	^ 'S7'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m43
	
	^ 'S8'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m54

	^ 'S9'! !

!C4 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
initializeWith: someSectors

	sectors := someSectors copy! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m48: aCar

	^self m53: aCar a53: [ self error: self class m46 ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m49

	^sectors inject: Set new into: [ :cars :sector | cars addAll: sector m49; yourself ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m50

	^sectors sum: [ :sector | sector m50 ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m52: aCar

	| sector |

	sector := self m48: aCar.

	^(self lengthBefore: sector) + (sector m52: aCar)! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m53: aCar a53: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!C4 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!C4 methodsFor: 'placing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m51: aCar a51: aPosition

	| sector |

	self assertIsInside: aPosition.
	self remove: aCar.

	sector := self sectorAt: aPosition.
	sector m51: aCar a51: aPosition - (self lengthBefore: sector)! !

!C4 methodsFor: 'placing' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
remove: aCar

	(self m53: aCar a53: [ ^self ]) remove: aCar! !

!C4 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
assertIsInside: aPosition

	aPosition > self m50 ifTrue: [ self error: self class m54 ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
lengthBefore: aSector

	^(self lengthUpToEndOf: aSector) - aSector m50! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
lengthUpToEndOf: aSector

	^(sectors copyFrom: 1 to: (sectors indexOf: aSector)) sum: [ :sector | sector m50 ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self lengthUpToEndOf: sector) ]! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m46

	^'S10'! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m54

	^ 'S11'! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m55

	^'S12'! !

!C4 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
assertHasSectors: someSectors

	someSectors ifEmpty: [ self error: self m55 ]! !

!C4 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:43:00 am (UTC)'!
m56: someSectors

	self assertHasSectors: someSectors.

	^self new initializeWith: someSectors! !

!OffCircuitSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
m27: aCar

	self error: self class carIsNotOnCircuitErrorDescription! !

!OffCircuitSector class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
carIsNotOnCircuitErrorDescription

	^'The car is not on the circuit'! !

!TurboState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
initializeTimesUsed: aNumberOfTimes

	timesUsed := aNumberOfTimes! !

!TurboState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
isActivated

	self subclassResponsibility! !

!TurboState methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
speedFor: aMaxSpeed

	self subclassResponsibility! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
activate

	self subclassResponsibility! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
assertCanBeActivated

	self subclassResponsibility! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
deactivate

	self subclassResponsibility! !

!TurboState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
timesUsed: aNumberOfTimes

	^self new initializeTimesUsed: aNumberOfTimes! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
boost

	^self class boosts at: timesUsed ifAbsent: [ 1 ]! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
speedFor: aMaxSpeed

	^aMaxSpeed * self boost! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
activate

	^self error: C1 m13! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
assertCanBeActivated

	self error: C1 m13! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
deactivate

	^DeactivatedTurbo timesUsed: timesUsed! !

!ActivatedTurbo class methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
boosts

	^{ 12/10. 11/10. 105/100 }! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
speedFor: aMaxSpeed

	^aMaxSpeed! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
activate

	^ActivatedTurbo timesUsed: timesUsed + 1! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
assertCanBeActivated

	! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
deactivate

	^self error: C1 m14! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
unused

	^self timesUsed: 0! !

!TurboZone methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
assertAllowsTurbo

	self subclassResponsibility! !

!TurboDisabledZone methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
assertAllowsTurbo

	self error: C3 m43! !

!TurboEnabledZone methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:42:20 am (UTC)'!
assertAllowsTurbo

	! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
activateTurboOf: aCar times: aNumberOfTimes

	aNumberOfTimes - 1 timesRepeat: [ aCar m1; m5 ].
	aCar m1! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
assertActivatingTurboTimes: aNumberOfTimes leavesMaxSpeedIn: anExpectedSpeed

	| car |

	car := self carCloseToCarAhead.

	self activateTurboOf: car times: aNumberOfTimes.

	self assert: car m7.
	self assert: car m9 equals: anExpectedSpeed! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
carCloseToCarAhead

	^self overtakingCarAt: 12.99 * kilometer withMaxSpeed: 100 * kilometer / hour! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
carNamed: aName withMaxSpeed: aMaxSpeed

	| car |

	car := C1 m15: aName.
	car m10: aMaxSpeed.

	^car! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
overtakingCarAt: aPosition withMaxSpeed: aMaxSpeed

	| sector overtakingCar |

	sector := C3 m44: 24 * kilometer.
	overtakingCar := self carNamed: #s1 withMaxSpeed: aMaxSpeed.

	sector m51: overtakingCar a51: aPosition.
	sector m51: (self carNamed: #s2 withMaxSpeed: aMaxSpeed) a51: 13 * kilometer.

	^overtakingCar! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
raceOn: someSectors

	^C2 m24: (C4 m56: someSectors) a24: 100! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
twoSectors

	^OrderedCollection
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer)! !

!C5 methodsFor: 'tests - sector' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test01CannotCreateSectorWithNonPositiveLength

	self
		should: [ C3 m44: 0 * kilometer ]
		raise: Error
		withMessageText: C3 m42! !

!C5 methodsFor: 'tests - sector' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test02CannotPlaceCarBeyondSectorLength

	| sector car positionBeyondEnd |

	sector := C3 m44: 10 * kilometer.
	positionBeyondEnd := sector m50 + (1 * millimeter).
	car := C1 m15: #s1.

	self
		should: [ sector m51: car a51: positionBeyondEnd ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m54.
			self deny: (sector includes: car) ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test03CannotActivateTurboInSectorWithoutTurbo

	| sector car |

	sector := C3 m45: 10 * kilometer.
	car := C1 m15: #s1.
	sector m30: car.

	self
		should: [ car m1 ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m43.
			self deny: car m7 ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test04CannotActivateTurboWithoutCarAhead

	| sector carAhead |

	sector := C3 m44: 20 * kilometer.
	carAhead := C1 m15: #s2.

	sector m51: (C1 m15: #s1) a51: 12 * kilometer.
	sector m51: carAhead a51: 13 * kilometer.

	self
		should: [ carAhead m1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m40.
			self deny: carAhead m7 ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test05TurboIsActivatedWhenCarAheadIsLessThanOneSecondAway

	| car |

	car := self overtakingCarAt: 12.95 * kilometer withMaxSpeed: 300 * kilometer / hour.

	car m1.

	self assert: car m7! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test06CannotActivateTurboWhenCarAheadIsOneSecondOrMoreAway

	| car |

	car := self overtakingCarAt: 12.9 * kilometer withMaxSpeed: 300 * kilometer / hour.

	self
		should: [ car m1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m39.
			self deny: car m7 ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test20TurboActivatedForTheFirstTimeIncreasesMaxSpeedTwentyPercent

	self assertActivatingTurboTimes: 1 leavesMaxSpeedIn: 120 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test21TurboActivatedForTheSecondTimeIncreasesMaxSpeedTenPercent

	self assertActivatingTurboTimes: 2 leavesMaxSpeedIn: 110 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test22TurboActivatedForTheThirdTimeIncreasesMaxSpeedFivePercent

	self assertActivatingTurboTimes: 3 leavesMaxSpeedIn: 105 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test23TurboActivatedForTheFourthTimeDoesNotIncreaseMaxSpeed

	self assertActivatingTurboTimes: 4 leavesMaxSpeedIn: 100 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test24CannotActivateAnAlreadyActivatedTurbo

	| car |

	car := self carCloseToCarAhead.
	car m1.

	self
		should: [ car m1 ]
		raise: Error - MessageNotUnderstood
		withMessageText: C1 m13! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test25CannotDeactivateANotActivatedTurbo

	| car |

	car := self carCloseToCarAhead.

	self
		should: [ car m5 ]
		raise: Error - MessageNotUnderstood
		withMessageText: C1 m14! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test26CannotActivateTurboOfCarNotOnCircuit

	| car |

	car := C1 m15: #s1.

	self
		should: [ car m1 ]
		raise: Error - MessageNotUnderstood
		withMessageText: OffCircuitSector carIsNotOnCircuitErrorDescription! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test07CannotCreateCircuitWithoutSectors

	self
		should: [ C4 m56: #() ]
		raise: Error
		withMessageText: C4 m55! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test08CircuitLengthIsTheSumOfItsSectorsLengths

	self assert: (C4 m56: self twoSectors) m50 equals: 30 * kilometer! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test09CannotPlaceCarBeyondCircuitLength

	| circuit car positionBeyondEnd |

	circuit := C4 m56: self twoSectors.
	positionBeyondEnd := circuit m50 + (1 * millimeter).
	car := C1 m15: #s1.

	self
		should: [ circuit m51: car a51: positionBeyondEnd ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C4 m54.
			self deny: (circuit includes: car) ]! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test10CarPlacedOnCircuitIsOnlyInTheSectorOfItsPosition

	| sectors circuit car position |

	sectors := self twoSectors.
	position := sectors first m50 + (5 * kilometer).
	circuit := C4 m56: sectors.
	car := C1 m15: #s1.

	circuit m51: car a51: position.

	self assert: (circuit m48: car) equals: sectors second.
	self assert: (circuit m52: car) equals: position.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test11CarsPlacedAtTheEndOfSectorsAreInThoseSectors

	| sectors circuit firstCar secondCar |

	sectors := self twoSectors.
	circuit := C4 m56: sectors.
	firstCar := C1 m15: #s1.
	secondCar := C1 m15: #s3.

	circuit m51: firstCar a51: 10 * kilometer.
	circuit m51: secondCar a51: 30 * kilometer.

	self assert: (circuit includes: firstCar).
	self assert: (circuit includes: secondCar).
	self assert: (sectors first includes: firstCar).
	self assert: (sectors second includes: secondCar)! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test12CarPlacedAgainOnCircuitIsRemovedFromItsPreviousSector

	| sectors circuit car |

	sectors := self twoSectors.
	circuit := C4 m56: sectors.
	car := C1 m15: #s1.

	circuit m51: car a51: 5 * kilometer.
	circuit m51: car a51: 15 * kilometer.

	self assert: (circuit m48: car) equals: sectors second.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test13RaceLengthIsCircuitLengthTimesLaps

	| circuit race laps |

	circuit := C4 m56: self twoSectors.
	laps := 100.

	race := C2 m24: circuit a24: laps.

	self assert: race m50 equals: circuit m50 * laps! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test14CarsPlacedAtTheSamePositionOfRaceHaveTraveledThatDistance

	| race firstCar secondCar |

	race := self raceOn: (OrderedCollection with: (C3 m44: 10 * kilometer)).
	firstCar := C1 m15: #s3.
	secondCar := C1 m15: #s2.

	race m51: firstCar a51: 5 * kilometer.
	race m51: secondCar a51: 5 * kilometer.

	self assert: (race m18: firstCar) equals: 5 * kilometer.
	self assert: (race m18: secondCar) equals: 5 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test15StoppedCarDoesNotMoveWhenRaceAdvances

	| race car |

	race := self raceOn: (OrderedCollection with: (C3 m44: 10 * kilometer)).
	car := self carNamed: #s3 withMaxSpeed: 0 * kilometer / hour.
	race m51: car a51: 5 * kilometer.

	race m19: 10 * minute.

	self assert: (race m18: car) equals: 5 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test16CarTravelsItsSpeedTimesTheTimeRaceAdvances

	| race car |

	race := self raceOn: self twoSectors.
	car := self carNamed: #s3 withMaxSpeed: 300 * kilometer / hour.
	race m51: car a51: 0 * kilometer.

	race m19: 1 * hour.

	self assert: (race m18: car) equals: 300 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test17CarPlacedInRaceIsInTheSectorOfItsPosition

	| sectors race car |

	sectors := self twoSectors.
	race := self raceOn: sectors.
	car := C1 m15: #s3.

	race m51: car a51: 5 * kilometer.

	self assert: (race m18: car) equals: 5 * kilometer.
	self assert: (race m48: car) equals: sectors first! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test18CarAdvancingInsideItsSectorStaysInIt

	| sectors race car |

	sectors := self twoSectors.
	race := self raceOn: sectors.
	car := self carNamed: #s3 withMaxSpeed: 5 * kilometer / hour.
	race m51: car a51: 0 * kilometer.

	race m19: 1 * hour.

	self assert: (race m18: car) equals: 5 * kilometer.
	self assert: (race m48: car) equals: sectors first! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test19CarAdvancingPastTheEndOfItsSectorChangesToTheNextOne

	| sectors race car |

	sectors := OrderedCollection
		with: (C3 m44: 10 * kilometer)
		with: (C3 m44: 30 * kilometer).
	race := self raceOn: sectors.
	car := self carNamed: #s3 withMaxSpeed: 15 * kilometer / hour.
	race m51: car a51: 5 * kilometer.

	race m19: 1 * hour.

	self assert: (race m18: car) equals: 20 * kilometer.
	self assert: (race m48: car) equals: sectors second! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:44:11 am (UTC)'!
test27CannotCreateRaceWithoutLaps

	| circuit |

	circuit := C4 m56: self twoSectors.

	self
		should: [ C2 m24: circuit a24: 0 ]
		raise: Error
		withMessageText: C2 m23! !
