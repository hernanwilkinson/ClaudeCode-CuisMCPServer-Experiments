'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:41:30 am'!
'Description '!
!provides: 'Task2' 1 2!
SystemOrganization addCategory: #Task2!
SystemOrganization addCategory: #'Task2-Tests'!


!classDefinition: #C1 category: #Task2!
Object subclass: #C1
	instanceVariableNames: 'driver maximumSpeed turbo distanceTraveled sector'
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

!classDefinition: #TurboState category: #Task2!
Object subclass: #TurboState
	instanceVariableNames: 'usage'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboState class' category: #Task2!
TurboState class
	instanceVariableNames: ''!

!classDefinition: #TurboActivated category: #Task2!
TurboState subclass: #TurboActivated
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboActivated class' category: #Task2!
TurboActivated class
	instanceVariableNames: ''!

!classDefinition: #TurboDeactivated category: #Task2!
TurboState subclass: #TurboDeactivated
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboDeactivated class' category: #Task2!
TurboDeactivated class
	instanceVariableNames: ''!

!classDefinition: #TurboUsage category: #Task2!
Object subclass: #TurboUsage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboUsage class' category: #Task2!
TurboUsage class
	instanceVariableNames: ''!

!classDefinition: #TurboExhaustedUsage category: #Task2!
TurboUsage subclass: #TurboExhaustedUsage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboExhaustedUsage class' category: #Task2!
TurboExhaustedUsage class
	instanceVariableNames: ''!

!classDefinition: #TurboFirstUsage category: #Task2!
TurboUsage subclass: #TurboFirstUsage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboFirstUsage class' category: #Task2!
TurboFirstUsage class
	instanceVariableNames: ''!

!classDefinition: #TurboSecondUsage category: #Task2!
TurboUsage subclass: #TurboSecondUsage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboSecondUsage class' category: #Task2!
TurboSecondUsage class
	instanceVariableNames: ''!

!classDefinition: #TurboThirdUsage category: #Task2!
TurboUsage subclass: #TurboThirdUsage
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboThirdUsage class' category: #Task2!
TurboThirdUsage class
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


!C1 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
initializeDriver: aDriver

	driver := aDriver.
	maximumSpeed := 0 * kilometer / hour.
	turbo := TurboDeactivated usage: TurboFirstUsage new.
	distanceTraveled := 0 * kilometer! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m1

	turbo := turbo activatedIn: sector for: self! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m5

	turbo := turbo deactivated! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m7

	^turbo isActivated! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m10: aMaximumSpeed

	maximumSpeed := aMaximumSpeed! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m9

	^turbo boost: maximumSpeed! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
advanceDuring: aTime

	distanceTraveled := distanceTraveled + (self m9 * aTime)! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
distanceTraveled

	^distanceTraveled! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
moveTo: aDistanceTraveled

	distanceTraveled := aDistanceTraveled! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
placedIn: aSector

	sector := aSector! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m15: aDriver

	^self new initializeDriver: aDriver! !

!C2 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
initializeTrack: aTrack laps: aNumberOfLaps

	track := aTrack.
	laps := aNumberOfLaps! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m18: aCar

	^aCar distanceTraveled! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m48: aCar

	^track m48: aCar! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m50

	^track m50 * laps! !

!C2 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m19: aTime

	track m49 do: [ :car | self advance: car during: aTime ]! !

!C2 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m51: aCar a51: aDistance

	aCar moveTo: aDistance.
	self placeOnTrack: aCar! !

!C2 methodsFor: 'moving - private' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
advance: aCar during: aTime

	aCar advanceDuring: aTime.
	self placeOnTrack: aCar! !

!C2 methodsFor: 'moving - private' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
placeOnTrack: aCar

	track m51: aCar a51: aCar distanceTraveled \\ track m50! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m24: aTrack a24: aNumberOfLaps

	^self new initializeTrack: aTrack laps: aNumberOfLaps! !

!C3 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
initializeLength: aLength

	positions := Dictionary new.
	length := aLength! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m49

	^positions keys! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m50

	^length! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m52: aCar

	^positions at: aCar! !

!C3 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
includes: aCar

	^positions includesKey: aCar! !

!C3 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m30: aCar

	self m51: aCar a51: 0 * kilometer! !

!C3 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m51: aCar a51: aPosition

	self assertIsWithinSector: aPosition.

	positions at: aCar put: aPosition.
	aCar placedIn: self! !

!C3 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
remove: aCar

	positions removeKey: aCar ifAbsent: []! !

!C3 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
assertIsWithinSector: aPosition

	aPosition > length ifTrue: [ self error: self class m54 ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self subclassResponsibility! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
length: aLength

	self assertIsValidLength: aLength.

	^self new initializeLength: aLength! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m44: aLength

	^TurboEnabledSector length: aLength! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m45: aLength

	^TurboDisabledSector length: aLength! !

!C3 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
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

!TurboDisabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self error: self class m43! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
assertTurboCanBeActivatedBy: aCar

	self
		assert: aCar
		isLessThanOneSecondBehind: (self carAheadOf: aCar ifNone: [ self error: self class m40 ])! !

!TurboEnabledSector methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
assert: aCar isLessThanOneSecondBehind: aCarAhead

	(self timeToReachPositionOf: aCarAhead) - (self timeToReachPositionOf: aCar) < (1 * second)
		ifFalse: [ self error: self class m39 ]! !

!TurboEnabledSector methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
carAheadOf: aCar ifNone: aBlock

	^(self carsAheadOf: aCar)
		ifEmpty: aBlock
		ifNotEmpty: [ :carsAhead | carsAhead detectMin: [ :carAhead | self m52: carAhead ] ]! !

!TurboEnabledSector methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
carsAheadOf: aCar

	^self m49 select: [ :car | (self m52: car) > (self m52: aCar) ]! !

!TurboEnabledSector methodsFor: 'turbo - private' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
timeToReachPositionOf: aCar

	^(self m52: aCar) / aCar m9! !

!C4 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
initializeSectors: someSectors

	sectors := someSectors copy! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m48: aCar

	^self m53: aCar a53: [ self error: self class m46 ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m49

	^sectors inject: Set new into: [ :cars :sector | cars addAll: sector m49; yourself ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m50

	^self lengthOf: sectors! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m52: aCar

	| sector |

	sector := self m48: aCar.
	^(self startOf: sector) + (sector m52: aCar)! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m53: aCar a53: aBlock

	^sectors detect: [ :sector | sector includes: aCar ] ifNone: aBlock! !

!C4 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :sector | sector includes: aCar ]! !

!C4 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m51: aCar a51: aPosition

	| sector |

	self assertIsWithinTrack: aPosition.
	self remove: aCar.

	sector := self sectorAt: aPosition.
	sector m51: aCar a51: aPosition - (self startOf: sector)! !

!C4 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
remove: aCar

	sectors do: [ :sector | sector remove: aCar ]! !

!C4 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
assertIsWithinTrack: aPosition

	aPosition > self m50 ifTrue: [ self error: self class m54 ]! !

!C4 methodsFor: 'sectors - private' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector m50! !

!C4 methodsFor: 'sectors - private' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
lengthOf: someSectors

	^someSectors sum: [ :sector | sector m50 ] ifEmpty: [ 0 * kilometer ]! !

!C4 methodsFor: 'sectors - private' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :sector | aPosition <= (self endOf: sector) ]! !

!C4 methodsFor: 'sectors - private' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
startOf: aSector

	^self lengthOf: (sectors copyUpTo: aSector)! !

!C4 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m56: someSectors

	self assertIsNotEmpty: someSectors.

	^self new initializeSectors: someSectors! !

!C4 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
assertIsNotEmpty: someSectors

	someSectors ifEmpty: [ self error: self m55 ]! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
m46

	^'S10'! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:41:05 pm (UTC)'!
m54

	^ 'S11'! !

!C4 class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 11:41:06 pm (UTC)'!
m55

	^'S12'! !

!TurboState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:40:26 am (UTC)'!
initializeUsage: aUsage

	usage := aUsage! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:40:26 am (UTC)'!
activatedIn: aSector for: aCar

	self subclassResponsibility! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:40:26 am (UTC)'!
deactivated

	self subclassResponsibility! !

!TurboState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:40:26 am (UTC)'!
isActivated

	self subclassResponsibility! !

!TurboState methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!TurboState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:40:26 am (UTC)'!
usage: aUsage

	^self new initializeUsage: aUsage! !

!TurboState class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:40:26 am (UTC)'!
alreadyActivatedErrorDescription

	^'S1'! !

!TurboState class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:40:26 am (UTC)'!
notActivatedErrorDescription

	^'S2'! !

!TurboActivated methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
activatedIn: aSector for: aCar

	^self error: self class alreadyActivatedErrorDescription! !

!TurboActivated methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
deactivated

	^TurboDeactivated usage: usage next! !

!TurboActivated methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
isActivated

	^true! !

!TurboActivated methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
boost: aSpeed

	^usage boost: aSpeed! !

!TurboDeactivated methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
activatedIn: aSector for: aCar

	aSector assertTurboCanBeActivatedBy: aCar.
	^TurboActivated usage: usage! !

!TurboDeactivated methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
deactivated

	^self error: self class notActivatedErrorDescription! !

!TurboDeactivated methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
isActivated

	^false! !

!TurboDeactivated methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!TurboUsage methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!TurboUsage methodsFor: 'usage' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
next

	self subclassResponsibility! !

!TurboExhaustedUsage methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!TurboExhaustedUsage methodsFor: 'usage' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
next

	^self! !

!TurboFirstUsage methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
boost: aSpeed

	^aSpeed * 12 / 10! !

!TurboFirstUsage methodsFor: 'usage' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
next

	^TurboSecondUsage new! !

!TurboSecondUsage methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
boost: aSpeed

	^aSpeed * 11 / 10! !

!TurboSecondUsage methodsFor: 'usage' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
next

	^TurboThirdUsage new! !

!TurboThirdUsage methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
boost: aSpeed

	^aSpeed * 105 / 100! !

!TurboThirdUsage methodsFor: 'usage' stamp: 'HAW 17/Sep/2026, 9:40:27 am (UTC)'!
next

	^TurboExhaustedUsage new! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
assertSpeedAfterActivatingTurbo: aNumberOfTimes equals: aSpeed

	| car |

	car := self carAbleToActivateTurbo.
	aNumberOfTimes - 1 timesRepeat: [ car m1; m5 ].
	car m1.

	self assert: car m7.
	self assert: car m9 equals: aSpeed! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
carAbleToActivateTurbo

	^self
		carAt: 12.99 * kilometer
		runningAt: 100 * kilometer / hour
		behindCarAt: 13 * kilometer! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
carAt: aPosition runningAt: aSpeed behindCarAt: aPositionAhead

	| sector carAhead car |

	sector := C3 m44: 24 * kilometer.
	carAhead := self placeCarDrivenBy: #s2 at: aPositionAhead in: sector.
	car := self placeCarDrivenBy: #s1 at: aPosition in: sector.
	carAhead m10: aSpeed.
	car m10: aSpeed.
	^car! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
placeCarDrivenBy: aDriver at: aPosition in: aPlace

	| car |

	car := C1 m15: aDriver.
	aPlace m51: car a51: aPosition.
	^car! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
raceOfOneHundredLapsOn: someSectors

	^C2 m24: (C4 m56: someSectors) a24: 100! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
tenKilometersTurboEnabledSectorAndTwentyKilometersTurboDisabledSector

	^OrderedCollection
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer)! !

!C5 methodsFor: 'tests - sector' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test01SectorCanNotBeCreatedWithoutLength

	self
		should: [ C3 m44: 0 * kilometer ]
		raise: Error
		withMessageText: C3 m42! !

!C5 methodsFor: 'tests - sector' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test02CarCanNotBePlacedBeyondSectorLength

	| sector car |

	sector := C3 m44: 10 * kilometer.
	car := C1 m15: #s1.

	self
		should: [ sector m51: car a51: sector m50 + (1 * millimeter) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m54.
			self deny: (sector includes: car) ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test03TurboCanNotBeActivatedInTurboDisabledSector

	| car |

	car := self placeCarDrivenBy: #s1 at: 0 * kilometer in: (C3 m45: 10 * kilometer).

	self
		should: [ car m1 ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m43.
			self deny: car m7 ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test04TurboCanNotBeActivatedWithoutCarAhead

	| sector carAhead |

	sector := C3 m44: 20 * kilometer.
	self placeCarDrivenBy: #s1 at: 12 * kilometer in: sector.
	carAhead := self placeCarDrivenBy: #s2 at: 13 * kilometer in: sector.

	self
		should: [ carAhead m1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m40.
			self deny: carAhead m7 ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test05TurboCanBeActivatedWhenCarAheadIsLessThanOneSecondAway

	| car |

	car := self
		carAt: 12.95 * kilometer
		runningAt: 300 * kilometer / hour
		behindCarAt: 13 * kilometer.

	car m1.

	self assert: car m7! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test06TurboCanNotBeActivatedWhenCarAheadIsOneSecondAwayOrMore

	| car |

	car := self
		carAt: 12.9 * kilometer
		runningAt: 300 * kilometer / hour
		behindCarAt: 13 * kilometer.

	self
		should: [ car m1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C3 m39.
			self deny: car m7 ]! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test20TurboFirstActivationIncreasesSpeedTwentyPercent

	self assertSpeedAfterActivatingTurbo: 1 equals: 120 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test21TurboSecondActivationIncreasesSpeedTenPercent

	self assertSpeedAfterActivatingTurbo: 2 equals: 110 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test22TurboThirdActivationIncreasesSpeedFivePercent

	self assertSpeedAfterActivatingTurbo: 3 equals: 105 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test23TurboFourthActivationDoesNotIncreaseSpeed

	self assertSpeedAfterActivatingTurbo: 4 equals: 100 * kilometer / hour! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test24ActivatedTurboCanNotBeActivatedAgain

	| car |

	car := self carAbleToActivateTurbo.
	car m1.

	self
		should: [ car m1 ]
		raise: Error - MessageNotUnderstood
		withMessageText: TurboState alreadyActivatedErrorDescription! !

!C5 methodsFor: 'tests - turbo' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test25NotActivatedTurboCanNotBeDeactivated

	| car |

	car := self carAbleToActivateTurbo.

	self
		should: [ car m5 ]
		raise: Error - MessageNotUnderstood
		withMessageText: TurboState notActivatedErrorDescription! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test07TrackCanNotBeCreatedWithoutSectors

	self
		should: [ C4 m56: #() ]
		raise: Error
		withMessageText: C4 m55! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test08TrackLengthIsTheSumOfItsSectorsLength

	| track |

	track := C4 m56: self tenKilometersTurboEnabledSectorAndTwentyKilometersTurboDisabledSector.

	self assert: track m50 equals: 30 * kilometer! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test09CarCanNotBePlacedBeyondTrackLength

	| track car |

	track := C4 m56: self tenKilometersTurboEnabledSectorAndTwentyKilometersTurboDisabledSector.
	car := C1 m15: #s1.

	self
		should: [ track m51: car a51: track m50 + (1 * millimeter) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C4 m54.
			self deny: (track includes: car) ]! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test10CarPlacedOnTrackIsPlacedInTheSectorOfItsPosition

	| sectors track car position |

	sectors := self tenKilometersTurboEnabledSectorAndTwentyKilometersTurboDisabledSector.
	position := sectors first m50 + (5 * kilometer).
	track := C4 m56: sectors.

	car := self placeCarDrivenBy: #s1 at: position in: track.

	self assert: (track m48: car) equals: sectors second.
	self assert: (track m52: car) equals: position.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test11CarsPlacedAtTheEndOfSectorsArePlacedInThoseSectors

	| sectors track firstCar secondCar |

	sectors := self tenKilometersTurboEnabledSectorAndTwentyKilometersTurboDisabledSector.
	track := C4 m56: sectors.

	firstCar := self placeCarDrivenBy: #s1 at: 10 * kilometer in: track.
	secondCar := self placeCarDrivenBy: #s3 at: 30 * kilometer in: track.

	self assert: (track includes: firstCar).
	self assert: (track includes: secondCar).
	self assert: (sectors first includes: firstCar).
	self assert: (sectors second includes: secondCar)! !

!C5 methodsFor: 'tests - track' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test12CarPlacedAgainOnTrackIsOnlyInTheSectorOfItsLastPosition

	| sectors track car |

	sectors := self tenKilometersTurboEnabledSectorAndTwentyKilometersTurboDisabledSector.
	track := C4 m56: sectors.

	car := self placeCarDrivenBy: #s1 at: 5 * kilometer in: track.
	track m51: car a51: 15 * kilometer.

	self assert: (track m48: car) equals: sectors second.
	self deny: (sectors first includes: car).
	self assert: (sectors second includes: car)! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test13RaceDistanceIsTrackLengthTimesLaps

	| track race |

	track := C4 m56: self tenKilometersTurboEnabledSectorAndTwentyKilometersTurboDisabledSector.

	race := C2 m24: track a24: 100.

	self assert: race m50 equals: track m50 * 100! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test14CarsPlacedAtTheSamePositionHaveTheSameDistanceTraveled

	| race firstCar secondCar |

	race := self raceOfOneHundredLapsOn: (OrderedCollection with: (C3 m44: 10 * kilometer)).

	firstCar := self placeCarDrivenBy: #s3 at: 5 * kilometer in: race.
	secondCar := self placeCarDrivenBy: #s2 at: 5 * kilometer in: race.

	self assert: (race m18: firstCar) equals: 5 * kilometer.
	self assert: (race m18: secondCar) equals: 5 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test15StoppedCarDoesNotAdvance

	| race car |

	race := self raceOfOneHundredLapsOn: (OrderedCollection with: (C3 m44: 10 * kilometer)).
	car := self placeCarDrivenBy: #s3 at: 5 * kilometer in: race.

	race m19: 10 * minute.

	self assert: (race m18: car) equals: 5 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test16CarAdvancesItsSpeedTimesTheTimeElapsedAlongLaps

	| race car |

	race := self raceOfOneHundredLapsOn: self tenKilometersTurboEnabledSectorAndTwentyKilometersTurboDisabledSector.
	car := self placeCarDrivenBy: #s3 at: 0 * kilometer in: race.
	car m10: 300 * kilometer / hour.

	race m19: 1 * hour.

	self assert: (race m18: car) equals: 300 * kilometer! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test17CarPlacedInRaceIsInTheSectorOfItsPosition

	| sectors race car |

	sectors := self tenKilometersTurboEnabledSectorAndTwentyKilometersTurboDisabledSector.
	race := self raceOfOneHundredLapsOn: sectors.

	car := self placeCarDrivenBy: #s3 at: 5 * kilometer in: race.

	self assert: (race m18: car) equals: 5 * kilometer.
	self assert: (race m48: car) equals: sectors first! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test18CarAdvancingWithinSectorRemainsInIt

	| sectors race car |

	sectors := self tenKilometersTurboEnabledSectorAndTwentyKilometersTurboDisabledSector.
	race := self raceOfOneHundredLapsOn: sectors.
	car := self placeCarDrivenBy: #s3 at: 0 * kilometer in: race.
	car m10: 5 * kilometer / hour.

	race m19: 1 * hour.

	self assert: (race m18: car) equals: 5 * kilometer.
	self assert: (race m48: car) equals: sectors first! !

!C5 methodsFor: 'tests - race' stamp: 'HAW 17/Sep/2026, 9:41:08 am (UTC)'!
test19CarAdvancingBeyondSectorMovesToTheNextOne

	| firstSector secondSector race car |

	firstSector := C3 m44: 10 * kilometer.
	secondSector := C3 m44: 30 * kilometer.
	race := self raceOfOneHundredLapsOn: (OrderedCollection with: firstSector with: secondSector).
	car := self placeCarDrivenBy: #s3 at: 5 * kilometer in: race.
	car m10: 15 * kilometer / hour.

	race m19: 1 * hour.

	self assert: (race m18: car) equals: 20 * kilometer.
	self assert: (race m48: car) equals: secondSector! !
