'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:12:46 am'!
'Description '!
!provides: 'Task2' 1 2!
SystemOrganization addCategory: #Task2!
SystemOrganization addCategory: #'Task2-Tests'!


!classDefinition: #C1 category: #Task2!
Object subclass: #C1
	instanceVariableNames: 'name speed sector turbo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C1 class' category: #Task2!
C1 class
	instanceVariableNames: ''!

!classDefinition: #C2 category: #Task2!
Object subclass: #C2
	instanceVariableNames: 'track laps distances'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C2 class' category: #Task2!
C2 class
	instanceVariableNames: ''!

!classDefinition: #C3 category: #Task2!
Object subclass: #C3
	instanceVariableNames: 'positions length'
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
	instanceVariableNames: 'timesUsed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'Turbo class' category: #Task2!
Turbo class
	instanceVariableNames: ''!

!classDefinition: #ActivatedTurbo category: #Task2!
Turbo subclass: #ActivatedTurbo
	instanceVariableNames: ''
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

!classDefinition: #C5 category: #'Task2-Tests'!
TestCase subclass: #C5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2-Tests'!
!classDefinition: 'C5 class' category: #'Task2-Tests'!
C5 class
	instanceVariableNames: ''!


!C1 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
initializeNamed: aName

	name := aName.
	speed := 0 * kilometer / hour.
	turbo := DeactivatedTurbo unused! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
assertCanUseTurbo

	sector assertTurboCanBeUsedBy: self! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
m1

	turbo := turbo activatedBy: self! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
m5

	turbo := turbo deactivated! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
m7

	^turbo isActivated! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
m10: aSpeed

	speed := aSpeed! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
m9

	^turbo boost: speed! !

!C1 methodsFor: 'placing' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
placedIn: aSector

	sector := aSector! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
m15: aName

	^self new initializeNamed: aName! !

!C2 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
initializeOn: aTrack laps: aNumberOfLaps

	track := aTrack.
	laps := aNumberOfLaps.
	distances := Dictionary new! !

!C2 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m18: aCar

	^distances at: aCar! !

!C2 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m48: aCar

	^track m48: aCar! !

!C2 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m51: aCar a51: aDistance

	distances at: aCar put: aDistance.
	track m51: aCar a51: aDistance \\ track m50! !

!C2 methodsFor: 'advancing' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
advance: aCar during: aTime

	self m51: aCar a51: (self m18: aCar) + (aCar m9 * aTime)! !

!C2 methodsFor: 'advancing' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m19: aTime

	track m49 do: [ :car | self advance: car during: aTime ]! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m50

	^track m50 * laps! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m24: aTrack a24: aNumberOfLaps

	^self new initializeOn: aTrack laps: aNumberOfLaps! !

!C3 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
initializeOfLength: aLength

	positions := Dictionary new.
	length := aLength! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
includes: aCar

	^positions includesKey: aCar! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m30: aCar

	self m51: aCar a51: 0 * kilometer! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
m49

	^positions keys! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
m51: aCar a51: aPosition

	self assertIsInside: aPosition.

	positions at: aCar put: aPosition.
	aCar placedIn: self! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m52: aCar

	^positions at: aCar! !

!C3 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
remove: aCar

	positions removeKey: aCar ifAbsent: []! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m50

	^length! !

!C3 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
assertIsInside: aPosition

	aPosition > length ifTrue: [ self error: self class m54 ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
assertTurboCanBeUsedBy: aCar

	self subclassResponsibility! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
m44: aLength

	^TurboEnabledSector ofLength: aLength! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
m45: aLength

	^TurboDisabledSector ofLength: aLength! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
ofLength: aLength

	self assertIsValidLength: aLength.

	^self new initializeOfLength: aLength! !

!C3 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
assertIsValidLength: aLength

	aLength strictlyPositive ifFalse: [ self error: self m42 ]! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m39
	
	^ 'S5'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m40
	
	^ 'S6'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m42

	^ 'S7'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m43
	
	^ 'S8'! !

!C3 class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m54

	^ 'S9'! !

!TurboDisabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
assertTurboCanBeUsedBy: aCar

	self error: self class m43! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
assert: aCar isLessThanOneSecondBehind: aCarAhead

	(self timeToReachPositionOf: aCarAhead) - (self timeToReachPositionOf: aCar) >= (1 * second)
		ifTrue: [ self error: self class m39 ]! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
assertTurboCanBeUsedBy: aCar

	self assert: aCar isLessThanOneSecondBehind: (self carAheadOf: aCar)! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
carAheadOf: aCar

	^(self carsAheadOf: aCar)
		ifEmpty: [ self error: self class m40 ]
		ifNotEmpty: [ :carsAhead | carsAhead detectMin: [ :carAhead | self m52: carAhead ] ]! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
carsAheadOf: aCar

	^positions keys select: [ :car | (self m52: car) > (self m52: aCar) ]! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
timeToReachPositionOf: aCar

	^(self m52: aCar) / aCar m9! !

!C4 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
initializeWith: someSectors

	sectors := someSectors copy! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m49

	^sectors inject: Set new into: [ :cars :sector | cars addAll: sector m49; yourself ]! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m51: aCar a51: aPosition

	| sector |

	self assertIsInside: aPosition.
	self remove: aCar.

	sector := self sectorAt: aPosition.
	sector m51: aCar a51: aPosition - (self startOf: sector)! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m52: aCar

	| sector |

	sector := self m48: aCar.
	^(self startOf: sector) + (sector m52: aCar)! !

!C4 methodsFor: 'cars' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
remove: aCar

	sectors do: [ :sector | sector remove: aCar ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector m50! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m48: aCar

	^self m53: aCar a53: [ self error: self class m46 ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m53: aCar a53: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self endOf: sector) ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
startOf: aSector

	^(sectors copyFrom: 1 to: (sectors indexOf: aSector) - 1)
		sum: [ :sector | sector m50 ]
		ifEmpty: [ 0 * kilometer ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m50

	^sectors sum: [ :sector | sector m50 ]! !

!C4 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
assertIsInside: aPosition

	aPosition > self m50 ifTrue: [ self error: self class m54 ]! !

!C4 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
m56: someSectors

	self assertHasSectors: someSectors.

	^self new initializeWith: someSectors! !

!C4 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:11:36 am (UTC)'!
assertHasSectors: someSectors

	someSectors ifEmpty: [ self error: self m55 ]! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:11:45 am (UTC)'!
m46

	^ 'S10'! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:41:05 pm (UTC)'!
m54

	^ 'S11'! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:41:06 pm (UTC)'!
m55

	^'S12'! !

!Turbo methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
initializeTimesUsed: aNumberOfTimes

	timesUsed := aNumberOfTimes! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
activatedBy: aCar

	self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
deactivated

	self subclassResponsibility! !

!Turbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
isActivated

	self subclassResponsibility! !

!Turbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
timesUsed: aNumberOfTimes

	^self new initializeTimesUsed: aNumberOfTimes! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
activatedBy: aCar

	^self error: self class alreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
deactivated

	^DeactivatedTurbo timesUsed: timesUsed! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
boost: aSpeed

	^aSpeed * self boostFactor! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
boostFactor

	^self class boostFactors at: timesUsed ifAbsent: [ 1 ]! !

!ActivatedTurbo class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
alreadyActivatedErrorDescription

	^'S1'! !

!ActivatedTurbo class methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
boostFactors

	^{ 120/100. 110/100. 105/100 }! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
activatedBy: aCar

	aCar assertCanUseTurbo.
	^ActivatedTurbo timesUsed: timesUsed + 1! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
deactivated

	^self error: self class alreadyDeactivatedErrorDescription! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!DeactivatedTurbo class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
alreadyDeactivatedErrorDescription

	^'S2'! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:11:35 am (UTC)'!
unused

	^self timesUsed: 0! !

!C5 methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
carAt: aPosition behindCarAt: aPositionAhead bothDrivingAt: aSpeed

	| sector overtakingCar carAhead |

	sector := C3 m44: 24 * kilometer.
	overtakingCar := self carNamed: #s1 drivingAt: aSpeed.
	carAhead := self carNamed: #s2 drivingAt: aSpeed.

	sector m51: overtakingCar a51: aPosition.
	sector m51: carAhead a51: aPositionAhead.
	^overtakingCar! !

!C5 methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
carCloseBehindAnother

	^self
		carAt: 12.99 * kilometer
		behindCarAt: 13 * kilometer
		bothDrivingAt: 100 * kilometer / hour! !

!C5 methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
carNamed: aName drivingAt: aSpeed

	| car |

	car := C1 m15: aName.
	car m10: aSpeed.
	^car! !

!C5 methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
enabledAndDisabledSectors

	^OrderedCollection
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer)! !

!C5 methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
raceOn: someSectors

	^C2 m24: (C4 m56: someSectors) a24: 100! !

!C5 methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
raceOnOneSector

	^self raceOn: (OrderedCollection with: (C3 m44: 10 * kilometer))! !

!C5 methodsFor: 'tests - sector' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test01CreatingSectorWithNonPositiveLengthFails

	self
		should: [ C3 m44: 0 * kilometer ]
		raise: Error
		withMessageText: C3 m42! !

!C5 methodsFor: 'tests - sector' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test02PlacingCarBeyondSectorEndFailsWithoutPlacingIt

	| sector positionBeyondEnd car |

	sector := C3 m44: 10 * kilometer.
	positionBeyondEnd := sector m50 + (1 * millimeter).
	car := C1 m15: #s1.

	self
		should: [ sector m51: car a51: positionBeyondEnd ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m54.
			self deny: (sector includes: car) ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test03ActivatingTurboInTurboDisabledSectorFailsWithoutActivatingIt

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

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test04ActivatingTurboWithoutCarAheadFailsWithoutActivatingIt

	| sector car |

	sector := C3 m44: 20 * kilometer.
	car := C1 m15: #s1.
	sector m51: car a51: 13 * kilometer.

	self
		should: [ car m1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m40.
			self deny: car m7 ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test05ActivatingTurboLessThanOneSecondBehindCarAheadActivatesIt

	| car |

	car := self
		carAt: 12.95 * kilometer
		behindCarAt: 13 * kilometer
		bothDrivingAt: 300 * kilometer / hour.

	car m1.

	self assert: car m7! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test06ActivatingTurboOneSecondOrMoreBehindCarAheadFailsWithoutActivatingIt

	| car |

	car := self
		carAt: 12.9 * kilometer
		behindCarAt: 13 * kilometer
		bothDrivingAt: 300 * kilometer / hour.

	self
		should: [ car m1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m39.
			self deny: car m7 ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test20ActivatingTurboForTheFirstTimeIncreasesSpeedTwentyPercent

	| car |

	car := self carCloseBehindAnother.

	car m1.

	self assert: car m7.
	self assert: car m9 equals: 120 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test21ActivatingTurboForTheSecondTimeIncreasesSpeedTenPercent

	| car |

	car := self carCloseBehindAnother.

	car m1; m5; m1.

	self assert: car m7.
	self assert: car m9 equals: 110 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test22ActivatingTurboForTheThirdTimeIncreasesSpeedFivePercent

	| car |

	car := self carCloseBehindAnother.

	car m1; m5; m1; m5; m1.

	self assert: car m7.
	self assert: car m9 equals: 105 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test23ActivatingExhaustedTurboDoesNotIncreaseSpeed

	| car |

	car := self carCloseBehindAnother.

	car m1; m5; m1; m5; m1; m5; m1.

	self assert: car m7.
	self assert: car m9 equals: 100 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test24ActivatingAlreadyActivatedTurboFails

	| car |

	car := self carCloseBehindAnother.
	car m1.

	self
		should: [ car m1 ]
		raise: Error - MessageNotUnderstood
		withMessageText: ActivatedTurbo alreadyActivatedErrorDescription! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test25DeactivatingNotActivatedTurboFails

	| car |

	car := self carCloseBehindAnother.

	self
		should: [ car m5 ]
		raise: Error - MessageNotUnderstood
		withMessageText: DeactivatedTurbo alreadyDeactivatedErrorDescription! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test07CreatingTrackWithoutSectorsFails

	self
		should: [ C4 m56: #() ]
		raise: Error
		withMessageText: C4 m55! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test08TrackLengthIsTheSumOfItsSectorsLength

	| track |

	track := C4 m56: self enabledAndDisabledSectors.

	self assert: track m50 equals: 30 * kilometer! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test09PlacingCarBeyondTrackEndFailsWithoutPlacingIt

	| track positionBeyondEnd car |

	track := C4 m56: self enabledAndDisabledSectors.
	positionBeyondEnd := track m50 + (1 * millimeter).
	car := C1 m15: #s1.

	self
		should: [ track m51: car a51: positionBeyondEnd ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C4 m54.
			self deny: (track includes: car) ]! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test10PlacingCarOnTrackPlacesItInTheSectorOfThatPosition

	| sectors track car position |

	sectors := self enabledAndDisabledSectors.
	track := C4 m56: sectors.
	car := C1 m15: #s1.
	position := sectors first m50 + (5 * kilometer).

	track m51: car a51: position.

	self assert: (track m48: car) equals: sectors second.
	self assert: (track m52: car) equals: position.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test11PlacingCarAtSectorEndPlacesItInThatSector

	| sectors track carAtFirstSectorEnd carAtSecondSectorEnd |

	sectors := self enabledAndDisabledSectors.
	track := C4 m56: sectors.
	carAtFirstSectorEnd := C1 m15: #s1.
	carAtSecondSectorEnd := C1 m15: #s3.

	track m51: carAtFirstSectorEnd a51: 10 * kilometer.
	track m51: carAtSecondSectorEnd a51: 30 * kilometer.

	self assert: (track includes: carAtFirstSectorEnd).
	self assert: (track includes: carAtSecondSectorEnd).
	self assert: (sectors first includes: carAtFirstSectorEnd).
	self assert: (sectors second includes: carAtSecondSectorEnd)! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test12PlacingCarAgainMovesItToTheSectorOfItsNewPosition

	| sectors track car |

	sectors := self enabledAndDisabledSectors.
	track := C4 m56: sectors.
	car := C1 m15: #s1.
	track m51: car a51: 5 * kilometer.

	track m51: car a51: 15 * kilometer.

	self assert: (track m48: car) equals: sectors second.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test13RaceDistanceIsTrackLengthTimesLaps

	| track laps race |

	track := C4 m56: self enabledAndDisabledSectors.
	laps := 100.

	race := C2 m24: track a24: laps.

	self assert: race m50 equals: track m50 * laps! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test14PlacingCarsInRacePutsThemAtTheirDistance

	| race firstCar secondCar |

	race := self raceOnOneSector.
	firstCar := C1 m15: #s3.
	secondCar := C1 m15: #s2.

	race m51: firstCar a51: 5 * kilometer.
	race m51: secondCar a51: 5 * kilometer.

	self assert: (race m18: firstCar) equals: 5 * kilometer.
	self assert: (race m18: secondCar) equals: 5 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test15AdvancingRaceDoesNotMoveStoppedCar

	| race car |

	race := self raceOnOneSector.
	car := self carNamed: #s3 drivingAt: 0 * kilometer / hour.
	race m51: car a51: 5 * kilometer.

	race m19: 10 * minute.

	self assert: (race m18: car) equals: 5 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test16AdvancingRaceMovesCarItsSpeedTimesTheElapsedTime

	| race car |

	race := self raceOn: self enabledAndDisabledSectors.
	car := self carNamed: #s3 drivingAt: 300 * kilometer / hour.
	race m51: car a51: 0 * kilometer.

	race m19: 1 * hour.

	self assert: (race m18: car) equals: 300 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test17PlacingCarInRacePutsItInTheSectorOfItsDistance

	| sectors race car |

	sectors := self enabledAndDisabledSectors.
	race := self raceOn: sectors.
	car := C1 m15: #s3.

	race m51: car a51: 5 * kilometer.

	self assert: (race m18: car) equals: 5 * kilometer.
	self assert: (race m48: car) equals: sectors first! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test18AdvancingRaceWithinSectorKeepsCarInThatSector

	| sectors race car |

	sectors := self enabledAndDisabledSectors.
	race := self raceOn: sectors.
	car := self carNamed: #s3 drivingAt: 5 * kilometer / hour.
	race m51: car a51: 0 * kilometer.

	race m19: 1 * hour.

	self assert: (race m18: car) equals: 5 * kilometer.
	self assert: (race m48: car) equals: sectors first! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 10:12:23 am (UTC)'!
test19AdvancingRaceBeyondSectorEndMovesCarToTheNextSector

	| firstSector secondSector race car |

	firstSector := C3 m44: 10 * kilometer.
	secondSector := C3 m44: 30 * kilometer.
	race := self raceOn: (OrderedCollection with: firstSector with: secondSector).
	car := self carNamed: #s3 drivingAt: 15 * kilometer / hour.
	race m51: car a51: 5 * kilometer.

	race m19: 1 * hour.

	self assert: (race m18: car) equals: 20 * kilometer.
	self assert: (race m48: car) equals: secondSector! !
