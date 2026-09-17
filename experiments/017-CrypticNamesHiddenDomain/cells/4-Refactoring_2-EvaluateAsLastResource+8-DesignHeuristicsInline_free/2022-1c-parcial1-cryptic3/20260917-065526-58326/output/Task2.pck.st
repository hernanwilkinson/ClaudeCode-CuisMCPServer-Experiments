'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:00:14 am'!
'Description '!
!provides: 'Task2' 1 2!
SystemOrganization addCategory: #Task2!
SystemOrganization addCategory: #'Task2-Tests'!


!classDefinition: #C1 category: #Task2!
Object subclass: #C1
	instanceVariableNames: 'name maxSpeed position sector turbo'
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
	instanceVariableNames: 'positions length turboPolicy'
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

!classDefinition: #SectorTurboPolicy category: #Task2!
Object subclass: #SectorTurboPolicy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'SectorTurboPolicy class' category: #Task2!
SectorTurboPolicy class
	instanceVariableNames: ''!

!classDefinition: #TurboDisabled category: #Task2!
SectorTurboPolicy subclass: #TurboDisabled
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboDisabled class' category: #Task2!
TurboDisabled class
	instanceVariableNames: ''!

!classDefinition: #TurboEnabled category: #Task2!
SectorTurboPolicy subclass: #TurboEnabled
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboEnabled class' category: #Task2!
TurboEnabled class
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

!classDefinition: #C5 category: #'Task2-Tests'!
TestCase subclass: #C5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2-Tests'!
!classDefinition: 'C5 class' category: #'Task2-Tests'!
C5 class
	instanceVariableNames: ''!


!C1 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
initializeNamed: aName

	name := aName.
	maxSpeed := 0 * kilometer / hour.
	position := 0 * kilometer.
	turbo := DeactivatedTurbo unused! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m1

	| activatedTurbo |
	
	activatedTurbo := turbo activated.
	sector m27: self.
	turbo := activatedTurbo! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m5

	turbo := turbo deactivated! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m7

	^turbo isActivated! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m10: aMaxSpeed

	maxSpeed := aMaxSpeed! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m9

	^turbo boost: maxSpeed! !

!C1 methodsFor: 'position' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m11

	^position! !

!C1 methodsFor: 'position' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m12: aPosition

	position := aPosition! !

!C1 methodsFor: 'position' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m19: aDistance

	position := position + aDistance! !

!C1 methodsFor: 'position' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m4: aSector

	sector := aSector! !

!C1 methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:58:41 am (UTC)'!
m15: aName

	^self new initializeNamed: aName! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:58:41 am (UTC)'!
m13
	
	^'S1'! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:58:41 am (UTC)'!
m14
	
	^'S2'! !

!C2 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
initializeOn: aCircuit laps: aNumberOfLaps

	circuit := aCircuit.
	laps := aNumberOfLaps! !

!C2 methodsFor: 'advancing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m19: aTime

	circuit m49 do: [ :car | self m21: car a21: aTime ]! !

!C2 methodsFor: 'advancing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m21: aCar a21: aTime

	aCar m19: aCar m9 * aTime.
	self placeOnCircuit: aCar! !

!C2 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m51: aCar a51: aPosition

	aCar m12: aPosition.
	self placeOnCircuit: aCar! !

!C2 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
placeOnCircuit: aCar

	circuit m51: aCar a51: aCar m11 \\ circuit m50! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m18: aCar

	^aCar m11! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m48: aCar

	^circuit m48: aCar! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m50

	^circuit m50 * laps! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m24: aCircuit a24: aNumberOfLaps

	^self new initializeOn: aCircuit laps: aNumberOfLaps! !

!C3 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
initializeOfLength: aLength turboPolicy: aTurboPolicy

	positions := Dictionary new.
	length := aLength.
	turboPolicy := aTurboPolicy! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
assert: aCar isLessThanOneSecondBehind: aCarAhead

	(self timeToReach: aCarAhead) - (self timeToReach: aCar) < (1 * second)
		ifFalse: [ self error: self class m39 ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
assertCanOvertakeWithTurbo: aCar

	self
		assert: aCar
		isLessThanOneSecondBehind: (self carAheadOf: aCar ifNone: [ self error: self class m40 ])! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
carAheadOf: aCar ifNone: aBlock

	| carsAhead |
	
	carsAhead := self m49 select: [ :car | (self m52: car) > (self m52: aCar) ].
	
	^carsAhead 
		ifEmpty: aBlock 
		ifNotEmpty: [ carsAhead detectMin: [ :carAhead | self m52: carAhead ] ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m27: aCar

	turboPolicy assertTurboCanBeActivatedBy: aCar in: self! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
timeToReach: aCar

	^(self m52: aCar) / aCar m9! !

!C3 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m29: aPosition

	length < aPosition ifTrue: [ self error: self class m54 ]! !

!C3 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m30: aCar

	self m51: aCar a51: 0 * kilometer! !

!C3 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m51: aCar a51: aPosition

	self m29: aPosition.
	
	positions at: aCar put: aPosition.
	aCar m4: self! !

!C3 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
remove: aCar

	positions removeKey: aCar ifAbsent: []! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
includes: aCar

	^positions includesKey: aCar! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m49

	^positions keys! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m50

	^length! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m52: aCar

	^positions at: aCar! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m44: aLength

	^self ofLength: aLength turboPolicy: TurboEnabled new! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m45: aLength

	^self ofLength: aLength turboPolicy: TurboDisabled new! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
ofLength: aLength turboPolicy: aTurboPolicy

	self assertIsValidLength: aLength.

	^self new initializeOfLength: aLength turboPolicy: aTurboPolicy! !

!C3 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
assertIsValidLength: aLength

	aLength strictlyPositive ifFalse: [ self error: self m42 ]! !

!C3 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m39
	
	^ 'S5'! !

!C3 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m40
	
	^ 'S6'! !

!C3 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m42

	^ 'S7'! !

!C3 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m43
	
	^ 'S8'! !

!C3 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m54

	^ 'S9'! !

!C4 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
initializeWith: someSectors

	sectors := someSectors copy! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m48: aCar

	^self m53: aCar a53: [ self error: self class m46 ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m49

	^sectors inject: Set new into: [ :cars :sector | cars addAll: sector m49; yourself ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m50

	^self lengthOf: sectors! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m52: aCar

	| sector |
	
	sector := self m48: aCar.
	^(self startOf: sector) + (sector m52: aCar)! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m53: aCar a53: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!C4 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
assertIsValidPosition: aPosition

	aPosition > self m50 ifTrue: [ self error: self class m54 ]! !

!C4 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m51: aCar a51: aPosition

	| sector |
	
	self assertIsValidPosition: aPosition.
	self remove: aCar.
	
	sector := self sectorAt: aPosition.
	sector m51: aCar a51: aPosition - (self startOf: sector)! !

!C4 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
remove: aCar

	sectors do: [ :sector | sector remove: aCar ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector m50! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
lengthOf: someSectors

	^someSectors sum: [ :sector | sector m50 ] ifEmpty: [ 0 * kilometer ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self endOf: sector) ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
startOf: aSector

	^self lengthOf: (sectors copyFrom: 1 to: (sectors indexOf: aSector) - 1)! !

!C4 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m56: someSectors

	self assertHasSectors: someSectors.

	^self new initializeWith: someSectors! !

!C4 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
assertHasSectors: someSectors

	someSectors ifEmpty: [ self error: self m55 ]! !

!C4 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 9:58:42 am (UTC)'!
m46

	^'S10'! !

!C4 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m54

	^ 'S11'! !

!C4 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m55

	^'S12'! !

!SectorTurboPolicy methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
assertTurboCanBeActivatedBy: aCar in: aSector

	self subclassResponsibility! !

!TurboDisabled methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
assertTurboCanBeActivatedBy: aCar in: aSector

	self error: C3 m43! !

!TurboEnabled methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
assertTurboCanBeActivatedBy: aCar in: aSector

	aSector assertCanOvertakeWithTurbo: aCar! !

!TurboState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
initializeUsedTimes: aNumberOfUses

	timesUsed := aNumberOfUses! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
activated

	self subclassResponsibility! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
deactivated

	self subclassResponsibility! !

!TurboState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
isActivated

	self subclassResponsibility! !

!TurboState methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
boost: aMaxSpeed

	self subclassResponsibility! !

!TurboState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
usedTimes: aNumberOfUses

	^self new initializeUsedTimes: aNumberOfUses! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
activated

	^self error: C1 m13! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
deactivated

	^DeactivatedTurbo usedTimes: timesUsed! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
boost: aMaxSpeed

	^aMaxSpeed * self boostFactor! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
boostFactor

	^self class boostFactors at: timesUsed ifAbsent: [ 1 ]! !

!ActivatedTurbo class methodsFor: 'boost factors' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
boostFactors

	^Array with: 12/10 with: 11/10 with: 105/100! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
activated

	^ActivatedTurbo usedTimes: timesUsed + 1! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
deactivated

	^self error: C1 m14! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
boost: aMaxSpeed

	^aMaxSpeed! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:58:15 am (UTC)'!
unused

	^self usedTimes: 0! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
activateTurboOf: aCar afterUsingIt: aNumberOfPreviousUses

	aNumberOfPreviousUses timesRepeat: [ aCar m1; m5 ].
	aCar m1! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
assertTurboActivatedAfter: aNumberOfPreviousUses previousUsesBoostsMaxSpeedTo: aBoostedMaxSpeed

	| overtakingCar |
	
	overtakingCar := self carReadyToOvertake.
	
	self activateTurboOf: overtakingCar afterUsingIt: aNumberOfPreviousUses.
	
	self assert: overtakingCar m7.
	self assert: overtakingCar m9 equals: aBoostedMaxSpeed! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
carAt: aPosition withMaxSpeed: aMaxSpeed inTurboSectorWithAnotherCarAt: anotherPosition

	| sector car anotherCar |
	
	sector := C3 m44: 24 * kilometer.
	car := self carNamed: #s1 withMaxSpeed: aMaxSpeed.
	anotherCar := self carNamed: #s2 withMaxSpeed: aMaxSpeed.
	
	sector m51: car a51: aPosition.
	sector m51: anotherCar a51: anotherPosition.
	^car! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
carNamed: aName withMaxSpeed: aMaxSpeed

	| car |
	
	car := C1 m15: aName.
	car m10: aMaxSpeed.
	^car! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
carReadyToOvertake

	^self
		carAt: 12.99 * kilometer
		withMaxSpeed: 100 * kilometer / hour
		inTurboSectorWithAnotherCarAt: 13 * kilometer! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
raceOn: someSectors

	^C2 m24: (C4 m56: someSectors) a24: 100! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
raceOnOneSector

	^self raceOn: (OrderedCollection with: (C3 m44: 10 * kilometer))! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
sectorsWithAndWithoutTurbo

	^OrderedCollection 
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer)! !

!C5 methodsFor: 'tests - sector' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test01CanNotCreateSectorWithNonPositiveLength

	self 
		should: [ C3 m44: 0 * kilometer ]
		raise: Error
		withMessageText: C3 m42! !

!C5 methodsFor: 'tests - sector' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test02CanNotPlaceCarBeyondSectorLength

	| sector positionBeyondSector car |
	
	sector := C3 m44: 10 * kilometer.
	positionBeyondSector := sector m50 + (1 * millimeter).
	car := C1 m15: #s1.
	
	self 
		should: [ sector m51: car a51: positionBeyondSector ] 
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m54.
			self deny: (sector includes: car) ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test03CanNotActivateTurboInSectorWithTurboDisabled

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

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test04CanNotActivateTurboWithoutCarAhead

	| carInFront |
	
	carInFront := self
		carAt: 13 * kilometer
		withMaxSpeed: 300 * kilometer / hour
		inTurboSectorWithAnotherCarAt: 12 * kilometer.
	
	self 
		should: [ carInFront m1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m40. 
			self deny: carInFront m7 ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test05CanActivateTurboWhenCarAheadIsLessThanOneSecondAway

	| overtakingCar |
	
	overtakingCar := self
		carAt: 12.95 * kilometer
		withMaxSpeed: 300 * kilometer / hour
		inTurboSectorWithAnotherCarAt: 13 * kilometer.
	
	overtakingCar m1.
	
	self assert: overtakingCar m7! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test06CanNotActivateTurboWhenCarAheadIsOneSecondAwayOrMore

	| overtakingCar |
	
	overtakingCar := self
		carAt: 12.9 * kilometer
		withMaxSpeed: 300 * kilometer / hour
		inTurboSectorWithAnotherCarAt: 13 * kilometer.
	
	self 
		should: [ overtakingCar m1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m39.
			self deny: overtakingCar m7 ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test20FirstTurboUseBoostsMaxSpeedByTwentyPercent

	self
		assertTurboActivatedAfter: 0
		previousUsesBoostsMaxSpeedTo: 120 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test21SecondTurboUseBoostsMaxSpeedByTenPercent

	self
		assertTurboActivatedAfter: 1
		previousUsesBoostsMaxSpeedTo: 110 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test22ThirdTurboUseBoostsMaxSpeedByFivePercent

	self
		assertTurboActivatedAfter: 2
		previousUsesBoostsMaxSpeedTo: 105 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test23FourthTurboUseDoesNotBoostMaxSpeed

	self
		assertTurboActivatedAfter: 3
		previousUsesBoostsMaxSpeedTo: 100 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test24CanNotActivateTurboAlreadyActivated

	| overtakingCar |
	
	overtakingCar := self carReadyToOvertake.
	overtakingCar m1.
	
	self 
		should: [ overtakingCar m1 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: C1 m13! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test25CanNotDeactivateTurboNotActivated

	| overtakingCar |
	
	overtakingCar := self carReadyToOvertake.
	
	self 
		should: [ overtakingCar m5 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: C1 m14! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test07CanNotCreateCircuitWithoutSectors

	self
		should: [ C4 m56: #() ]
		raise: Error
		withMessageText: C4 m55! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test08CircuitLengthIsTheSumOfItsSectorsLengths

	| circuit |
	
	circuit := C4 m56: self sectorsWithAndWithoutTurbo.
	
	self assert: circuit m50 equals: 30 * kilometer! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test09CanNotPlaceCarBeyondCircuitLength

	| circuit positionBeyondCircuit car |
	
	circuit := C4 m56: self sectorsWithAndWithoutTurbo.
	positionBeyondCircuit := circuit m50 + (1 * millimeter).
	car := C1 m15: #s1.
	
	self 
		should: [ circuit m51: car a51: positionBeyondCircuit ] 
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C4 m54.
			self deny: (circuit includes: car) ]! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test10CarIsPlacedInTheSectorItsCircuitPositionBelongsTo

	| sectors circuit car position |
	
	sectors := self sectorsWithAndWithoutTurbo.
	position := sectors first m50 + (5 * kilometer).
	circuit := C4 m56: sectors.
	car := C1 m15: #s1.

	circuit m51: car a51: position.
	
	self assert: (circuit m48: car) equals: sectors second.
	self assert: (circuit m52: car) equals: position.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test11CarAtTheEndOfASectorBelongsToThatSector

	| sectors circuit firstCar secondCar |
	
	sectors := self sectorsWithAndWithoutTurbo.
	circuit := C4 m56: sectors.
	firstCar := C1 m15: #s1.
	secondCar := C1 m15: #s3.

	circuit m51: firstCar a51: 10 * kilometer.
	circuit m51: secondCar a51: 30 * kilometer.
	
	self assert: (circuit includes: firstCar).
	self assert: (circuit includes: secondCar).
	self assert: (sectors first includes: firstCar).
	self assert: (sectors second includes: secondCar)! !

!C5 methodsFor: 'tests - circuit' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test12PlacingCarAgainMovesItToTheSectorOfItsNewPosition

	| sectors circuit car |
	
	sectors := self sectorsWithAndWithoutTurbo.
	circuit := C4 m56: sectors.
	car := C1 m15: #s1.
	circuit m51: car a51: 5 * kilometer.

	circuit m51: car a51: 15 * kilometer.
	
	self assert: (circuit m48: car) equals: sectors second.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test13RaceLengthIsCircuitLengthTimesLaps

	| circuit race laps |
	
	circuit := C4 m56: self sectorsWithAndWithoutTurbo.
	laps := 100.
	
	race := C2 m24: circuit a24: laps.
	
	self assert: race m50 equals: circuit m50 * laps! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test14CarsCanBePlacedAtTheSamePositionInARace

	| race firstCar secondCar |
	
	race := self raceOnOneSector.
	firstCar := C1 m15: #s3.
	secondCar := C1 m15: #s2.
	
	race m51: firstCar a51: 5 * kilometer.
	race m51: secondCar a51: 5 * kilometer.
	
	self assert: (race m18: firstCar) equals: 5 * kilometer.
	self assert: (race m18: secondCar) equals: 5 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test15CarWithoutSpeedDoesNotAdvance

	| race car |
	
	race := self raceOnOneSector.
	car := C1 m15: #s3.
	race m51: car a51: 5 * kilometer.
	
	race m19: 10 * minute.
	
	self assert: (race m18: car) equals: 5 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test16CarPositionInRaceKeepsCountingAfterCompletingLaps

	| race car |
	
	race := self raceOn: self sectorsWithAndWithoutTurbo.
	car := self carNamed: #s3 withMaxSpeed: 300 * kilometer / hour.
	race m51: car a51: 0 * kilometer.
	
	race m19: 1 * hour.
	
	self assert: (race m18: car) equals: 300 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test17CarPlacedInRaceBelongsToTheSectorOfItsPosition

	| sectors race car |
	
	sectors := self sectorsWithAndWithoutTurbo.
	race := self raceOn: sectors.
	car := C1 m15: #s3.
	
	race m51: car a51: 5 * kilometer.
	
	self assert: (race m18: car) equals: 5 * kilometer.
	self assert: (race m48: car) equals: sectors first! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test18CarAdvancesItsMaxSpeedTimesTheElapsedTime

	| sectors race car |
	
	sectors := self sectorsWithAndWithoutTurbo.
	race := self raceOn: sectors.
	car := self carNamed: #s3 withMaxSpeed: 5 * kilometer / hour.
	race m51: car a51: 0 * kilometer.
	
	race m19: 1 * hour.
	
	self assert: (race m18: car) equals: 5 * kilometer.
	self assert: (race m48: car) equals: sectors first! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:59:43 am (UTC)'!
test19AdvancingCarMovesItToTheSectorOfItsNewPosition

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
