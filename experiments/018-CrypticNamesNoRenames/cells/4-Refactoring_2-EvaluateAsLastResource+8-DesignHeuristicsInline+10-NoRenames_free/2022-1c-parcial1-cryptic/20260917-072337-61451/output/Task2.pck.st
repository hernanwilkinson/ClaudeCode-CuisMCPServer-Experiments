'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:28:32 am'!
'Description '!
!provides: 'Task2' 1 2!
SystemOrganization addCategory: #Task2!
SystemOrganization addCategory: #'Task2-Tests'!


!classDefinition: #C1 category: #Task2!
Object subclass: #C1
	instanceVariableNames: 'v2 v3 v4 v5 v6'
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

!classDefinition: #ExhaustedTurboBoost category: #Task2!
Object subclass: #ExhaustedTurboBoost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'ExhaustedTurboBoost class' category: #Task2!
ExhaustedTurboBoost class
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

!classDefinition: #TurboAllowed category: #Task2!
SectorTurboPolicy subclass: #TurboAllowed
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboAllowed class' category: #Task2!
TurboAllowed class
	instanceVariableNames: ''!

!classDefinition: #TurboForbidden category: #Task2!
SectorTurboPolicy subclass: #TurboForbidden
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboForbidden class' category: #Task2!
TurboForbidden class
	instanceVariableNames: ''!

!classDefinition: #TurboBoost category: #Task2!
Object subclass: #TurboBoost
	instanceVariableNames: 'factor next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboBoost class' category: #Task2!
TurboBoost class
	instanceVariableNames: ''!

!classDefinition: #TurboState category: #Task2!
Object subclass: #TurboState
	instanceVariableNames: 'boost'
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

!classDefinition: #C5 category: #'Task2-Tests'!
TestCase subclass: #C5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2-Tests'!
!classDefinition: 'C5 class' category: #'Task2-Tests'!
C5 class
	instanceVariableNames: ''!


!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
m1

	v4 assertCanBeActivated.
	v6 m27: self! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
m2

	v4 _ v4 activated! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
m5

	v4 _ v4 deactivated! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
m7

	^v4 isActivated! !

!C1 methodsFor: 'speed' stamp: 'HAW 15/Sep/2026, 11:41:00 pm (UTC)'!
m10: t1

	v3 _ t1! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
m9

	^v4 speedFrom: v3! !

!C1 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
m6: t1

	v2 _ t1.
	v4 _ TurboDeactivated boost: TurboBoost first.
	v3 _ 0 * kilometer / hour.
	v5 _ 0 * kilometer! !

!C1 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
advanceDuring: aTime

	self m19: self m9 * aTime! !

!C1 methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 11:41:00 pm (UTC)'!
m11

	^ v5! !

!C1 methodsFor: 'moving' stamp: 'HAW 15/Sep/2026, 11:41:01 pm (UTC)'!
m19: t1

	v5 _ v5 + t1! !

!C1 methodsFor: 'positioning' stamp: 'HAW 15/Sep/2026, 11:41:01 pm (UTC)'!
m12: t1

	v5 _ t1! !

!C1 methodsFor: 'positioning' stamp: 'HAW 15/Sep/2026, 11:41:01 pm (UTC)'!
m4: t1

	v6 _ t1.! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:26:50 am (UTC)'!
m13
	
	^'S1'! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:26:51 am (UTC)'!
m14
	
	^'S2'! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 11:41:01 pm (UTC)'!
m15: t1 

	^self new m6: t1 ! !

!C2 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m16: t1 a16: t2

	v8 _ t1.
	v9 _ t2! !

!C2 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m19: t1

	v8 m49 do: [ :car | self m21: car a21: t1 ]! !

!C2 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m21: t1 a21: t2

	t1 advanceDuring: t2.
	self placeOnTrack: t1! !

!C2 methodsFor: 'moving' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m51: t1 a51: t2

	t1 m12: t2.
	self placeOnTrack: t1! !

!C2 methodsFor: 'moving - private' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
placeOnTrack: aCar

	v8 m51: aCar a51: aCar m11 \\ v8 m50! !

!C2 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m18: t1

	^ t1 m11.	! !

!C2 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m48: t1 

	^ v8 m48: t1.! !

!C2 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m50

	^ v8 m50 * v9! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m24: t1 a24: t2

	^self new m16: t1 a16: t2! !

!C3 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m33: t1 turbo: aTurboPolicy

	v10 _ Dictionary new.
	v11 _ t1.
	v12 _ aTurboPolicy! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
activateAllowedTurboFor: t1

	| t2 |

	t2 _ self m37: t1 a37: [ self error: self class m40 ].
	self m28: t1 a28: t2.
	t1 m2! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m27: t1

	v12 activateTurboFor: t1 in: self! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m28: t1 a28: t2

	| t3 |

	t3 _ self m31: t2.
	(self timeToReachPositionOf: t3) - (self timeToReachPositionOf: t1) < (1 * second)
		ifFalse: [ self error: self class m39 ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
timeToReachPositionOf: aCar

	^(self m52: aCar) / aCar m9! !

!C3 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:03 pm (UTC)'!
m31: t1

	^v10 keyAtValue: t1! !

!C3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m37: t1 a37: t2

	| t4 |

	t4 _ v10 at: t1.
	^v10 values asSortedCollection
		detect: [ :t5 | t5 > t4 ]
		ifNone: t2! !

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

!C3 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m29: t1

	v11 < t1 ifTrue: [ self error: self class m54 ]! !

!C3 methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 11:41:03 pm (UTC)'!
includes: t1

	^ v10 includesKey: t1! !

!C3 methodsFor: 'positioning' stamp: 'HAW 15/Sep/2026, 11:41:03 pm (UTC)'!
m30: t1
 
	self m51: t1 a51: 0*kilometer! !

!C3 methodsFor: 'positioning' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
m51: t1 a51: t2
 
	self m29: t2.
	
	v10 at: t1 put: t2.
	t1 m4: self.! !

!C3 methodsFor: 'positioning' stamp: 'HAW 15/Sep/2026, 11:41:04 pm (UTC)'!
remove: t1
 
	v10 removeKey: t1 ifAbsent: [].
! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
length: aLength turbo: aTurboPolicy

	self assertIsValidLength: aLength.

	^self new m33: aLength turbo: aTurboPolicy! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m44: t1

	^self length: t1 turbo: TurboAllowed new! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m45: t1

	^self length: t1 turbo: TurboForbidden new! !

!C3 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
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

!C4 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
includes: t1

	^v13 anySatisfy: [ :sector | sector includes: t1 ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:28:09 am (UTC)'!
m48: t1

	^self m53: t1 a53: [ self error: self class m46 ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m49

	^v13 inject: Set new into: [ :cars :sector | cars addAll: sector m49; yourself ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m50

	^self lengthOf: v13! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m52: t1

	| t4 |

	t4 _ self m48: t1.
	^(self startOf: t4) + (t4 m52: t1)! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m53: t1 a53: t2

	^v13 detect: [ :t4 | t4 includes: t1 ] ifNone: t2! !

!C4 methodsFor: 'accessing - private' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector m50! !

!C4 methodsFor: 'accessing - private' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
lengthOf: aSectors

	^aSectors sum: [ :sector | sector m50 ] ifEmpty: [ 0 * kilometer ]! !

!C4 methodsFor: 'accessing - private' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
sectorAt: aPosition

	^v13 detect: [ :sector | aPosition <= (self endOf: sector) ]! !

!C4 methodsFor: 'accessing - private' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
startOf: aSector

	^self lengthOf: (v13 first: (v13 indexOf: aSector) - 1)! !

!C4 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
assertIsInside: aPosition

	aPosition > self m50 ifTrue: [ self error: self class m54 ]! !

!C4 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m51: t1 a51: t2

	| t4 |

	self assertIsInside: t2.
	self remove: t1.
	t4 _ self sectorAt: t2.
	t4 m51: t1 a51: t2 - (self startOf: t4)! !

!C4 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
remove: t1

	(self m53: t1 a53: [ ^self ]) remove: t1! !

!C4 methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 11:41:05 pm (UTC)'!
m47: t1

	v13 _ t1 copy.! !

!C4 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
m56: t1

	self assertHasSectors: t1.

	^self new m47: t1! !

!C4 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:27:20 am (UTC)'!
assertHasSectors: aSectors

	aSectors ifEmpty: [ self error: self m55 ]! !

!C4 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:28:09 am (UTC)'!
m46

	^ 'S10'! !

!C4 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:05 pm (UTC)'!
m54

	^ 'S11'! !

!C4 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:06 pm (UTC)'!
m55

	^'S12'! !

!ExhaustedTurboBoost methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
applyTo: aSpeed

	^aSpeed! !

!ExhaustedTurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
next

	^self! !

!SectorTurboPolicy methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
activateTurboFor: aCar in: aSector

	self subclassResponsibility! !

!TurboAllowed methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
activateTurboFor: aCar in: aSector

	aSector activateAllowedTurboFor: aCar! !

!TurboForbidden methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
activateTurboFor: aCar in: aSector

	self error: C3 m43! !

!TurboBoost methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
initializeFactor: aFactor next: aNextBoost

	factor _ aFactor.
	next _ aNextBoost! !

!TurboBoost methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
applyTo: aSpeed

	^aSpeed * factor! !

!TurboBoost methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
next

	^next! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
factor: aFactor next: aNextBoost

	^self new initializeFactor: aFactor next: aNextBoost! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
first

	^self
		factor: 12 / 10
		next: (self factor: 11 / 10 next: (self factor: 105 / 100 next: ExhaustedTurboBoost new))! !

!TurboState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
initializeBoost: aBoost

	boost _ aBoost! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
activated

	self subclassResponsibility! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
assertCanBeActivated

	self subclassResponsibility! !

!TurboState methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
deactivated

	self subclassResponsibility! !

!TurboState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
isActivated

	self subclassResponsibility! !

!TurboState methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
speedFrom: aSpeed

	self subclassResponsibility! !

!TurboState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
boost: aBoost

	^self new initializeBoost: aBoost! !

!TurboActivated methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
activated

	self assertCanBeActivated! !

!TurboActivated methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
assertCanBeActivated

	self error: C1 m13! !

!TurboActivated methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
deactivated

	^TurboDeactivated boost: boost next! !

!TurboActivated methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
isActivated

	^true! !

!TurboActivated methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
speedFrom: aSpeed

	^boost applyTo: aSpeed! !

!TurboDeactivated methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
activated

	^TurboActivated boost: boost! !

!TurboDeactivated methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
assertCanBeActivated

	! !

!TurboDeactivated methodsFor: 'activation' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
deactivated

	self error: C1 m14! !

!TurboDeactivated methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
isActivated

	^false! !

!TurboDeactivated methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:27:04 am (UTC)'!
speedFrom: aSpeed

	^aSpeed! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
assertSpeedOf: aCar afterUsingTurbo: aNumberOfTimes isBoostedTo: aSpeed

	aNumberOfTimes timesRepeat: [ aCar m1; m5 ].
	aCar m1.

	self assert: aCar m7.
	self assert: aSpeed equals: aCar m9! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
carAt: aPosition sharingSectorWithCarAt: anotherPosition bothDrivingAt: aSpeed

	| t1 t2 t3 |

	t3 _ C3 m44: 24 * kilometer.
	t1 _ self carDrivenBy: #s1 at: aSpeed.
	t2 _ self carDrivenBy: #s2 at: aSpeed.
	t3 m51: t1 a51: aPosition.
	t3 m51: t2 a51: anotherPosition.
	^t1! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
carDrivenBy: aDriver at: aSpeed

	^(C1 m15: aDriver) m10: aSpeed; yourself! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
carReadyToOvertake

	^self
		carAt: 12.99 * kilometer
		sharingSectorWithCarAt: 13 * kilometer
		bothDrivingAt: 100 * kilometer / hour! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
raceOn: aSectors

	^C2 m24: (C4 m56: aSectors) a24: 100! !

!C5 methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
sectorsWithAndWithoutTurbo

	^OrderedCollection
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer)! !

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

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test04

	| t2 |

	t2 _ self
		carAt: 13 * kilometer
		sharingSectorWithCarAt: 12 * kilometer
		bothDrivingAt: 0 * kilometer / hour.

	self
		should: [ t2 m1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :t4 |
			self assert: C3 m40 equals: t4 messageText.
			self deny: t2 m7 ]! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test05

	| t1 |

	t1 _ self
		carAt: 12.95 * kilometer
		sharingSectorWithCarAt: 13 * kilometer
		bothDrivingAt: 300 * kilometer / hour.

	t1 m1.

	self assert: t1 m7! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test06

	| t1 |

	t1 _ self
		carAt: 12.9 * kilometer
		sharingSectorWithCarAt: 13 * kilometer
		bothDrivingAt: 300 * kilometer / hour.

	self
		should: [ t1 m1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :t4 |
			self assert: C3 m39 equals: t4 messageText.
			self deny: t1 m7 ]! !

!C5 methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 11:41:06 pm (UTC)'!
test07

	self
		should: [ C4 m56: #() ]
		raise: Error
		withMessageText: C4 m55! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test08

	| t2 |

	t2 _ C4 m56: self sectorsWithAndWithoutTurbo.

	self assert: 30 * kilometer equals: t2 m50! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test09

	| t2 t3 t4 |

	t2 _ C4 m56: self sectorsWithAndWithoutTurbo.
	t4 _ t2 m50 + (1 * millimeter).
	t3 _ C1 m15: #s1.

	self
		should: [ t2 m51: t3 a51: t4 ]
		raise: Error
		withExceptionDo: [ :t5 |
			self assert: C4 m54 equals: t5 messageText.
			self deny: (t2 includes: t3) ]! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test10

	| t1 t2 t3 t4 |

	t1 _ self sectorsWithAndWithoutTurbo.
	t4 _ t1 first m50 + (5 * kilometer).
	t2 _ C4 m56: t1.
	t3 _ C1 m15: #s1.

	t2 m51: t3 a51: t4.

	self assert: t1 second equals: (t2 m48: t3).
	self assert: t4 equals: (t2 m52: t3).
	self deny: (t1 first includes: t3).
	self assert: (t1 second includes: t3)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test11

	| t1 t2 t3 t4 |

	t1 _ self sectorsWithAndWithoutTurbo.
	t2 _ C4 m56: t1.
	t3 _ C1 m15: #s1.
	t4 _ C1 m15: #s3.

	t2 m51: t3 a51: 10 * kilometer.
	t2 m51: t4 a51: 30 * kilometer.

	self assert: (t2 includes: t3).
	self assert: (t2 includes: t4).
	self assert: (t1 first includes: t3).
	self assert: (t1 second includes: t4)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test12

	| t1 t2 t3 |

	t1 _ self sectorsWithAndWithoutTurbo.
	t2 _ C4 m56: t1.
	t3 _ C1 m15: #s1.

	t2 m51: t3 a51: 5 * kilometer.
	t2 m51: t3 a51: 15 * kilometer.

	self assert: t1 second equals: (t2 m48: t3).
	self deny: (t1 first includes: t3).
	self assert: (t1 second includes: t3)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test13

	| t1 t2 t3 |

	t1 _ C4 m56: self sectorsWithAndWithoutTurbo.
	t3 _ 100.

	t2 _ C2 m24: t1 a24: t3.

	self assert: t1 m50 * t3 equals: t2 m50! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test14

	| t1 t2 t3 |

	t1 _ self raceOn: (OrderedCollection with: (C3 m44: 10 * kilometer)).
	t3 _ C1 m15: #s3.
	t2 _ C1 m15: #s2.

	t1 m51: t3 a51: 5 * kilometer.
	t1 m51: t2 a51: 5 * kilometer.

	self assert: 5 * kilometer equals: (t1 m18: t3).
	self assert: 5 * kilometer equals: (t1 m18: t2)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test15

	| t1 t2 |

	t2 _ C1 m15: #s3.
	t1 _ self raceOn: (OrderedCollection with: (C3 m44: 10 * kilometer)).

	t1 m51: t2 a51: 5 * kilometer.
	t1 m19: 10 * minute.

	self assert: 5 * kilometer equals: (t1 m18: t2)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test16

	| t1 t2 |

	t2 _ C1 m15: #s3.
	t1 _ self raceOn: self sectorsWithAndWithoutTurbo.

	t1 m51: t2 a51: 0 * kilometer.
	t2 m10: 300 * kilometer / hour.
	t1 m19: 1 * hour.

	self assert: 300 * kilometer equals: (t1 m18: t2)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test17

	| t1 t2 t3 |

	t2 _ C1 m15: #s3.
	t3 _ self sectorsWithAndWithoutTurbo.
	t1 _ self raceOn: t3.

	t1 m51: t2 a51: 5 * kilometer.

	self assert: 5 * kilometer equals: (t1 m18: t2).
	self assert: t3 first equals: (t1 m48: t2)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test18

	| t1 t2 t3 |

	t2 _ C1 m15: #s3.
	t3 _ self sectorsWithAndWithoutTurbo.
	t1 _ self raceOn: t3.

	t1 m51: t2 a51: 0 * kilometer.
	t2 m10: 5 * kilometer / hour.
	t1 m19: 1 * hour.

	self assert: 5 * kilometer equals: (t1 m18: t2).
	self assert: t3 first equals: (t1 m48: t2)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test19

	| t1 t2 t3 t4 |

	t2 _ C1 m15: #s3.
	t3 _ C3 m44: 10 * kilometer.
	t4 _ C3 m44: 30 * kilometer.
	t1 _ self raceOn: (OrderedCollection with: t3 with: t4).

	t1 m51: t2 a51: 5 * kilometer.

	self assert: 5 * kilometer equals: (t1 m18: t2).
	self assert: t3 equals: (t1 m48: t2).

	t2 m10: 15 * kilometer / hour.
	t1 m19: 1 * hour.

	self assert: 20 * kilometer equals: (t1 m18: t2).
	self assert: t4 equals: (t1 m48: t2)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:28:09 am (UTC)'!
test20

	self
		assertSpeedOf: self carReadyToOvertake
		afterUsingTurbo: 0
		isBoostedTo: 120 * kilometer / hour! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:28:09 am (UTC)'!
test21

	self
		assertSpeedOf: self carReadyToOvertake
		afterUsingTurbo: 1
		isBoostedTo: 110 * kilometer / hour! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:28:09 am (UTC)'!
test22

	self
		assertSpeedOf: self carReadyToOvertake
		afterUsingTurbo: 2
		isBoostedTo: 105 * kilometer / hour! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:28:09 am (UTC)'!
test23

	self
		assertSpeedOf: self carReadyToOvertake
		afterUsingTurbo: 3
		isBoostedTo: 100 * kilometer / hour! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test24

	| t1 |

	t1 _ self carReadyToOvertake.
	t1 m1.

	self
		should: [ t1 m1 ]
		raise: Error - MessageNotUnderstood
		withMessageText: C1 m13! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:27:50 am (UTC)'!
test25

	| t1 |

	t1 _ self carReadyToOvertake.

	self
		should: [ t1 m5 ]
		raise: Error - MessageNotUnderstood
		withMessageText: C1 m14! !
