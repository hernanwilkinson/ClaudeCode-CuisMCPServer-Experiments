'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:38:12 am'!
'Description '!
!provides: 'Task2' 1 2!
SystemOrganization addCategory: #Task2!
SystemOrganization addCategory: #'Task2-Tests'!


!classDefinition: #C1 category: #Task2!
Object subclass: #C1
	instanceVariableNames: 'v2 v3 v4 v5 v6 v7'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C1 class' category: #Task2!
C1 class
	instanceVariableNames: ''!

!classDefinition: #C2 category: #Task2!
Object subclass: #C2
	instanceVariableNames: 'v8 v9'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C2 class' category: #Task2!
C2 class
	instanceVariableNames: ''!

!classDefinition: #C3 category: #Task2!
Object subclass: #C3
	instanceVariableNames: 'v10 v11 v12'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C3 class' category: #Task2!
C3 class
	instanceVariableNames: ''!

!classDefinition: #C4 category: #Task2!
Object subclass: #C4
	instanceVariableNames: 'v13'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C4 class' category: #Task2!
C4 class
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

!classDefinition: #AvailableTurboBoost category: #Task2!
TurboBoost subclass: #AvailableTurboBoost
	instanceVariableNames: 'multiplier next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'AvailableTurboBoost class' category: #Task2!
AvailableTurboBoost class
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

!classDefinition: #TurboState category: #Task2!
Object subclass: #TurboState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboState class' category: #Task2!
TurboState class
	instanceVariableNames: ''!

!classDefinition: #TurboActivated category: #Task2!
TurboState subclass: #TurboActivated
	instanceVariableNames: 'boost'
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


!C1 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m6: t1 

	v2 _ t1.
	v4 _ TurboDeactivated new.
	v7 _ TurboBoost first.
	v3 _ 0 * kilometer / hour.
	v5 _ 0 * kilometer! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
activateTurboInSector

	v6 m27: self! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
deactivateTurbo

	v4 _ TurboDeactivated new! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m1

	v4 activateTurboOf: self! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m2
	
	v4 _ TurboActivated boostedBy: v7.
	v7 _ v7 next! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m5
	
	v4 deactivateTurboOf: self! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m7
	
	^v4 isActivated! !

!C1 methodsFor: 'error signaling' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
signalTurboAlreadyActivated

	self error: self class m13! !

!C1 methodsFor: 'error signaling' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
signalTurboNotActivated

	self error: self class m14! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m9

	^v4 boost: v3! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
timeToReach: aPosition

	^aPosition / self m9! !

!C1 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:00 pm (UTC)'!
m10: t1

	v3 _ t1! !

!C1 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:00 pm (UTC)'!
m11

	^ v5! !

!C1 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:01 pm (UTC)'!
m12: t1

	v5 _ t1! !

!C1 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:01 pm (UTC)'!
m4: t1

	v6 _ t1.! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:36:05 am (UTC)'!
m13
	
	^'S1'! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:36:05 am (UTC)'!
m14
	
	^'S2'! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 11:41:01 pm (UTC)'!
m15: t1 

	^self new m6: t1 ! !

!C2 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
initializeOn: aTrack laps: aNumberOfLaps

	v8 _ aTrack.
	v9 _ aNumberOfLaps! !

!C2 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m19: t1
	
	v8 m49 do: [ :t2 | self m21: t2 a21: t1 ]! !

!C2 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:37:13 am (UTC)'!
m21: t1 a21: t2 

	self m51: t1 a51: t1 m11 + (t1 m9 * t2)! !

!C2 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m18: t1

	^ t1 m11.	! !

!C2 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m48: t1 

	^ v8 m48: t1.! !

!C2 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m50

	^ v8 m50 * v9! !

!C2 methodsFor: 'cars positioning' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m51: t1 a51: t2

	| t3 |
	
	t1 m12: t2.
	
	t3 _ t2 \\ v8 m50.
	v8 m51: t1 a51: t3.
	! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m24: t1 a24: t2 

	^self new initializeOn: t1 laps: t2! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m25: t1 a25: t2 b25: t3

	^self m24: t1 a24: t2! !

!C3 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
initializeLength: aLength turboZone: aTurboZone

	v10 _ Dictionary new.
	v11 _ aLength.
	v12 _ aTurboZone! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
activateTurboOf: aCar

	self m28: aCar a28: (self m37: aCar a37: [ self error: self class m40 ]).
	aCar m2! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m27: t1

	v12 activateTurboOf: t1 in: self! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m28: t1 a28: t2

	((self m31: t2) timeToReach: t2) - (t1 timeToReach: (self m52: t1)) < (1 * second)
		ifFalse: [ self error: self class m39 ]! !

!C3 methodsFor: 'error signaling' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
signalTurboNotAllowed

	self error: self class m43! !

!C3 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:03 pm (UTC)'!
m31: t1

	^v10 keyAtValue: t1! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m37: t1 a37: t2

	| t3 t4 |
	
	t4 _ v10 at: t1.
	t3 _ v10 values select: [ :t5 | t5 > t4 ].

	^t3 ifEmpty: t2 ifNotEmpty: [ :t5 | t5 min ]! !

!C3 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:03 pm (UTC)'!
m49
	
	^ v10 keys! !

!C3 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m50

	^v11! !

!C3 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m52: t1
 
	^ v10 at: t1.
! !

!C3 methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 11:41:03 pm (UTC)'!
includes: t1

	^ v10 includesKey: t1! !

!C3 methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 11:41:03 pm (UTC)'!
m29: t1

	v11 < t1 ifTrue: [ self error: self class m54 ]! !

!C3 methodsFor: 'cars positioning' stamp: 'HAW 15/Sep/2026, 11:41:03 pm (UTC)'!
m30: t1
 
	self m51: t1 a51: 0*kilometer! !

!C3 methodsFor: 'cars positioning' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m51: t1 a51: t2
 
	self m29: t2.
	
	v10 at: t1 put: t2.
	t1 m4: self.! !

!C3 methodsFor: 'cars positioning' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
remove: t1
 
	v10 removeKey: t1 ifAbsent: [].
! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
length: aLength turboZone: aTurboZone

	self assertIsValidLength: aLength.

	^self new initializeLength: aLength turboZone: aTurboZone! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m44: t1 

	^self length: t1 turboZone: TurboEnabledZone new! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m45: t1 
	
	^self length: t1 turboZone: TurboDisabledZone new! !

!C3 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
assertIsValidLength: aLength

	aLength strictlyPositive ifFalse: [ self error: self m42 ]! !

!C3 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m39
	
	^ 'S5'! !

!C3 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m40
	
	^ 'S6'! !

!C3 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m42

	^ 'S7'! !

!C3 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m43
	
	^ 'S8'! !

!C3 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m54

	^ 'S9'! !

!C4 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
includes: t1

	^v13 anySatisfy: [ :t2 | t2 includes: t1 ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m48: t1
	
	^self m53: t1 a53: [ self error: self class m46 ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m49

	^v13 inject: Set new into: [ :t1 :t2 | t1 addAll: t2 m49; yourself ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m50

	^v13 sum: [ :t1 | t1 m50 ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m52: t1

	| t4 |
	
	t4 _ self m48: t1.

	^(self startOf: t4) + (t4 m52: t1)! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m53: t1 a53: t2

	^v13 detect: [ :t3 | t3 includes: t1 ] ifNone: t2! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
sectorAt: aPosition

	^v13 detect: [ :aSector | aPosition <= ((self startOf: aSector) + aSector m50) ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
startOf: aSector

	^(v13 first: (v13 indexOf: aSector) - 1)
		sum: [ :aPreviousSector | aPreviousSector m50 ]
		ifEmpty: [ 0 * kilometer ]! !

!C4 methodsFor: 'cars positioning' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m51: t1 a51: t2

	| t4 |
	
	self assertIsInside: t2.
	self remove: t1.
	t4 _ self sectorAt: t2.

	t4 m51: t1 a51: t2 - (self startOf: t4)! !

!C4 methodsFor: 'cars positioning' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
remove: t1
	
	v13 do: [ :t2 | t2 remove: t1 ]! !

!C4 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
assertIsInside: aPosition

	aPosition > self m50 ifTrue: [ self error: self class m54 ]! !

!C4 methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 11:41:05 pm (UTC)'!
m47: t1

	v13 _ t1 copy.! !

!C4 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
m56: t1

	self assertHasSectors: t1.

	^self new m47: t1! !

!C4 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
assertHasSectors: someSectors

	someSectors ifEmpty: [ self error: self m55 ]! !

!C4 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:36:05 am (UTC)'!
m46

	^ 'S10'! !

!C4 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:05 pm (UTC)'!
m54

	^ 'S11'! !

!C4 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:06 pm (UTC)'!
m55

	^'S12'! !

!TurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!TurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
next

	self subclassResponsibility! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
first

	^AvailableTurboBoost
		multiplier: 12 / 10
		next: (AvailableTurboBoost
			multiplier: 11 / 10
			next: (AvailableTurboBoost multiplier: 105 / 100 next: ExhaustedTurboBoost new))! !

!AvailableTurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
initializeMultiplier: aMultiplier next: aNextBoost

	multiplier _ aMultiplier.
	next _ aNextBoost! !

!AvailableTurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
boost: aSpeed

	^aSpeed * multiplier! !

!AvailableTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
next

	^next! !

!AvailableTurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
multiplier: aMultiplier next: aNextBoost

	^self new initializeMultiplier: aMultiplier next: aNextBoost! !

!ExhaustedTurboBoost methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
next

	^self! !

!TurboState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
isActivated

	self subclassResponsibility! !

!TurboState methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
boost: aSpeed

	self subclassResponsibility! !

!TurboState methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
activateTurboOf: aCar

	self subclassResponsibility! !

!TurboState methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
deactivateTurboOf: aCar

	self subclassResponsibility! !

!TurboActivated methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
initializeBoostedBy: aBoost

	boost _ aBoost! !

!TurboActivated methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
isActivated

	^true! !

!TurboActivated methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
boost: aSpeed

	^boost boost: aSpeed! !

!TurboActivated methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
activateTurboOf: aCar

	aCar signalTurboAlreadyActivated! !

!TurboActivated methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
deactivateTurboOf: aCar

	aCar deactivateTurbo! !

!TurboActivated class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
boostedBy: aBoost

	^self new initializeBoostedBy: aBoost! !

!TurboDeactivated methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
isActivated

	^false! !

!TurboDeactivated methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
boost: aSpeed

	^aSpeed! !

!TurboDeactivated methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
activateTurboOf: aCar

	aCar activateTurboInSector! !

!TurboDeactivated methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
deactivateTurboOf: aCar

	aCar signalTurboNotActivated! !

!TurboZone methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
activateTurboOf: aCar in: aSector

	self subclassResponsibility! !

!TurboDisabledZone methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
activateTurboOf: aCar in: aSector

	aSector signalTurboNotAllowed! !

!TurboEnabledZone methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:37:12 am (UTC)'!
activateTurboOf: aCar in: aSector

	aSector activateTurboOf: aCar! !

!C5 methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
carAt: aBehindPosition behindCarAt: anAheadPosition runningAt: aSpeed

	| sector carBehind |
	
	sector _ C3 m44: 24 * kilometer.
	carBehind _ self carNamed: #s1 runningAt: aSpeed.
	
	sector m51: carBehind a51: aBehindPosition.
	sector m51: (self carNamed: #s2 runningAt: aSpeed) a51: anAheadPosition.

	^carBehind! !

!C5 methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
carCloseBehindAnotherCar

	^self
		carAt: 12.99 * kilometer
		behindCarAt: 13 * kilometer
		runningAt: 100 * kilometer / hour! !

!C5 methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
carCloseBehindAnotherCarWithTurboActivated: aNumberOfTimes

	| car |
	
	car _ self carCloseBehindAnotherCar.
	car m1.
	aNumberOfTimes - 1 timesRepeat: [ car m5; m1 ].

	^car! !

!C5 methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
carNamed: aName runningAt: aSpeed

	| car |
	
	car _ C1 m15: aName.
	car m10: aSpeed.

	^car! !

!C5 methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
turboAndNoTurboSectors

	^OrderedCollection
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer)! !

!C5 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
assertTurboActivated: aNumberOfTimes boostsSpeedTo: aSpeed

	| car |
	
	car _ self carCloseBehindAnotherCarWithTurboActivated: aNumberOfTimes.
	
	self assert: car m7.
	self assert: car m9 equals: aSpeed! !

!C5 methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 11:41:06 pm (UTC)'!
test01

	self 
		should: [ C3 m44: 0 * kilometer.]
		raise: Error
		withMessageText: C3 m42! !

!C5 methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 11:41:06 pm (UTC)'!
test02

	| t1  t2 t3 |
	
	t1 _ C3 m44: 10 * kilometer.
	t2 _ t1 m50 + (1 * millimeter).
	t3 _ C1 m15: #s1.
	
	self 
		should: [ t1 m51: t3 a51: t2 ] 
		raise: Error
		withExceptionDo: [ :t4 |
			self assert: C3 m54 equals: t4 messageText.
			self deny: (t1 includes: t3) ]	
! !

!C5 methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 11:41:06 pm (UTC)'!
test03

	| t1 t2 |

	t2 _ C3 m45: 10*kilometer.
	t1 _ C1 m15: #s1.
	
	t2 m30: t1.
	
	self should: [ t1 m1 ]
		raise: Error
		withExceptionDo: [ :t3 |
			self assert: C3 m43 equals: t3 messageText.
			self deny: t1 m7]
	! !

!C5 methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 11:41:06 pm (UTC)'!
test04

	| t1 t2 t3 |
	
	t3 _ C3 m44: 20 * kilometer.
	
	t1 _ C1 m15: #s1.
	t2 _ C1 m15: #s2.
	
	t3 m51: t1 a51: 12 * kilometer.
	t3 m51: t2 a51: 13 * kilometer.
	
	self 
		should: [ t2 m1]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [:t4 |
			self assert: C3 m40 equals: t4 messageText. 
			self deny: t2 m7 ]! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test05

	| t1 |
	
	t1 _ self
		carAt: 12.95 * kilometer
		behindCarAt: 13 * kilometer
		runningAt: 300 * kilometer / hour.
	
	t1 m1.
	
	self assert: t1 m7! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test06

	| t1 |
	
	t1 _ self
		carAt: 12.9 * kilometer
		behindCarAt: 13 * kilometer
		runningAt: 300 * kilometer / hour.
	
	self 
		should: [ t1 m1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :t4 |
			self assert: t4 messageText equals: C3 m39.
			self deny: t1 m7 ]! !

!C5 methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 11:41:06 pm (UTC)'!
test07

	self
		should: [ C4 m56: #() ]
		raise: Error
		withMessageText: C4 m55! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test08

	| t2 |
	
	t2 _ C4 m56: self turboAndNoTurboSectors.
	
	self assert: t2 m50 equals: 30 * kilometer! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test09

	| t2 t3 t4 |
	
	t2 _ C4 m56: self turboAndNoTurboSectors.
	t4 _ t2 m50 + (1 * millimeter).
	t3 _ C1 m15: #s1.
	
	self should: [ t2 m51: t3 a51: t4 ] 
		raise: Error
		withExceptionDo: [ :t5 |
			self assert: t5 messageText equals: C4 m54.
			self deny: (t2 includes: t3) ]! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test10

	| t1 t2 t3 t4 |
	
	t1 _ self turboAndNoTurboSectors.
	t4 _ t1 first m50 + (5 * kilometer).
	t2 _ C4 m56: t1.
	t3 _ C1 m15: #s1.

	t2 m51: t3 a51: t4.
	
	self assert: (t2 m48: t3) equals: t1 second.
	self assert: (t2 m52: t3) equals: t4.
	self deny: (t1 first includes: t3).
	self assert: (t1 second includes: t3)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test11

	| t1 t2 t3 t4 |
	
	t1 _ self turboAndNoTurboSectors.
	t2 _ C4 m56: t1.
	t3 _ C1 m15: #s1.
	t4 _ C1 m15: #s3.

	t2 m51: t3 a51: 10 * kilometer.
	t2 m51: t4 a51: 30 * kilometer.
	
	self assert: (t2 includes: t3).
	self assert: (t2 includes: t4).
	self assert: (t1 first includes: t3).
	self assert: (t1 second includes: t4)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test12

	| t1 t2 t3 |
	
	t1 _ self turboAndNoTurboSectors.
	t2 _ C4 m56: t1.
	t3 _ C1 m15: #s1.

	t2 m51: t3 a51: 5 * kilometer.
	t2 m51: t3 a51: 15 * kilometer.
	
	self assert: (t2 m48: t3) equals: t1 second.
	self deny: (t1 first includes: t3).
	self assert: (t1 second includes: t3)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test13

	| t1 t2 t3 |
	
	t1 _ C4 m56: self turboAndNoTurboSectors.
	t3 _ 100.
	
	t2 _ C2 m24: t1 a24: t3.
	
	self assert: t2 m50 equals: t1 m50 * t3! !

!C5 methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 11:41:07 pm (UTC)'!
test14

	| t1 t2 t3 |
	
	t1 _ C2 
		m24: (C4 m56: (OrderedCollection with: (C3 m44: 10 * kilometer)))
		a24: 100.
	
	t3 _ C1 m15: #s3.
	t2 _ C1 m15: #s2.	
	
	t1 m51: t3 a51: 5 * kilometer.
	t1 m51: t2 a51: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (t1 m18: t3). 
	self assert:  5 * kilometer equals: (t1 m18: t2). 
	! !

!C5 methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 11:41:07 pm (UTC)'!
test15

	| t1 t2 |
	
	t2 _ C1 m15: #s3.
	t2 m10: 0 * kilometer / hour.
	
	t1 _ C2 
		m25: (C4 m56: (OrderedCollection with: (C3 m44: 10 * kilometer)))
		a25: 100
		b25: (Set with: t2).
	
	t1 m51: t2 a51: 5 * kilometer.
	t1 m19: 10 * minute.
	
	self assert: 5 * kilometer equals: (t1 m18: t2) 
	
	! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test16

	| t1 t2 |
	
	t2 _ self carNamed: #s3 runningAt: 0 * kilometer / hour.
	t1 _ C2 
		m25: (C4 m56: self turboAndNoTurboSectors)
		a25: 100
		b25: (Set with: t2).
	
	t1 m51: t2 a51: 0 * kilometer.
	t2 m10: 300 * kilometer / hour.
	t1 m19: 1 * hour.
	
	self assert: (t1 m18: t2) equals: 300 * kilometer! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test17

	| t1 t2 t3 |
	
	t2 _ C1 m15: #s3.
	t3 _ self turboAndNoTurboSectors.
	t1 _ C2 
		m25: (C4 m56: t3)
		a25: 100
		b25: (Set with: t2).
		
	t1 m51: t2 a51: 5 * kilometer.
	
	self assert: (t1 m18: t2) equals: 5 * kilometer.
	self assert: (t1 m48: t2) equals: t3 first! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test18

	| t1 t2 t3 |
	
	t2 _ C1 m15: #s3.
	t3 _ self turboAndNoTurboSectors.
	t1 _ C2 
		m25: (C4 m56: t3)
		a25: 100
		b25: (Set with: t2).
		
	t1 m51: t2 a51: 0 * kilometer.
	t2 m10: 5 * kilometer / hour. 
	t1 m19: 1 * hour.
	
	self assert: (t1 m18: t2) equals: 5 * kilometer.
	self assert: (t1 m48: t2) equals: t3 first! !

!C5 methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 11:41:07 pm (UTC)'!
test19

	| t1 t2 t3 t4 |
	
	t2 _ C1 m15: #s3.
	t3 _ C3 m44: 10 * kilometer.
	t4 _ C3 m44: 30 * kilometer.
	
	t1 _ C2 
		m25: (C4 m56: (OrderedCollection with: t3 with: t4))
		a25: 100
		b25: (Set new add: t2; yourself).
		
	t1 m51: t2 a51: 5 * kilometer.

	self assert: 5 * kilometer equals: (t1 m18: t2). 
	self assert: t3 equals: (t1 m48: t2).
	
	t2 m10: 15 * kilometer / hour.
	t1 m19: 1 * hour.
	
	self assert: 20 * kilometer equals: (t1 m18: t2). 
	self assert: t4 equals: (t1 m48: t2).
	! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test20

	self assertTurboActivated: 1 boostsSpeedTo: 120 * kilometer / hour! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test21

	self assertTurboActivated: 2 boostsSpeedTo: 110 * kilometer / hour! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test22

	self assertTurboActivated: 3 boostsSpeedTo: 105 * kilometer / hour! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test23

	self assertTurboActivated: 4 boostsSpeedTo: 100 * kilometer / hour! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test24

	| t1 |
	
	t1 _ self carCloseBehindAnotherCarWithTurboActivated: 1.
	
	self 
		should: [ t1 m1 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: C1 m13! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:37:42 am (UTC)'!
test25

	| t1 |
	
	t1 _ self carCloseBehindAnotherCar.
	
	self 
		should: [ t1 m5 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: C1 m14! !
