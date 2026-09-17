'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 7:47:51 am'!
'Description '!
!provides: 'Task2' 1 2!
SystemOrganization addCategory: #Task2!
SystemOrganization addCategory: #'Task2-Tests'!


!classDefinition: #C1 category: #Task2!
Object subclass: #C1
	instanceVariableNames: 'v1 v2 v3 v4 v5 v6 v7'
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

!classDefinition: #SectorTurboPermission category: #Task2!
Object subclass: #SectorTurboPermission
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'SectorTurboPermission class' category: #Task2!
SectorTurboPermission class
	instanceVariableNames: ''!

!classDefinition: #SectorTurboDisabled category: #Task2!
SectorTurboPermission subclass: #SectorTurboDisabled
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'SectorTurboDisabled class' category: #Task2!
SectorTurboDisabled class
	instanceVariableNames: ''!

!classDefinition: #SectorTurboEnabled category: #Task2!
SectorTurboPermission subclass: #SectorTurboEnabled
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'SectorTurboEnabled class' category: #Task2!
SectorTurboEnabled class
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

!classDefinition: #TurboUse category: #Task2!
Object subclass: #TurboUse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboUse class' category: #Task2!
TurboUse class
	instanceVariableNames: ''!

!classDefinition: #TurboExhausted category: #Task2!
TurboUse subclass: #TurboExhausted
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboExhausted class' category: #Task2!
TurboExhausted class
	instanceVariableNames: ''!

!classDefinition: #TurboFirstUse category: #Task2!
TurboUse subclass: #TurboFirstUse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboFirstUse class' category: #Task2!
TurboFirstUse class
	instanceVariableNames: ''!

!classDefinition: #TurboNotUsed category: #Task2!
TurboUse subclass: #TurboNotUsed
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboNotUsed class' category: #Task2!
TurboNotUsed class
	instanceVariableNames: ''!

!classDefinition: #TurboSecondUse category: #Task2!
TurboUse subclass: #TurboSecondUse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboSecondUse class' category: #Task2!
TurboSecondUse class
	instanceVariableNames: ''!

!classDefinition: #TurboThirdUse category: #Task2!
TurboUse subclass: #TurboThirdUse
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboThirdUse class' category: #Task2!
TurboThirdUse class
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


!C1 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m6: t1 

	v2 _ t1.
	v4 _ TurboDeactivated new.
	v7 _ TurboNotUsed new.
	v3 _ 0 * kilometer / hour.
	v5 _ 0 * kilometer! !

!C1 methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 11:41:01 pm (UTC)'!
m8: t1
	
	v1 _ t1! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m1

	v4 assertCanBeActivated.
	v6 m27: self! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m2
	
	v4 _ TurboActivated new.
	v7 _ v7 next! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m5
	
	v4 _ v4 deactivate! !

!C1 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m7
	
	^v4 isActivated! !

!C1 methodsFor: 'speed' stamp: 'HAW 15/Sep/2026, 11:41:00 pm (UTC)'!
m10: t1

	v3 _ t1! !

!C1 methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m9

	^v4 speedFrom: v3 boostedBy: v7! !

!C1 methodsFor: 'positioning' stamp: 'HAW 15/Sep/2026, 11:41:00 pm (UTC)'!
m11

	^ v5! !

!C1 methodsFor: 'positioning' stamp: 'HAW 15/Sep/2026, 11:41:01 pm (UTC)'!
m12: t1

	v5 _ t1! !

!C1 methodsFor: 'positioning' stamp: 'HAW 15/Sep/2026, 11:41:01 pm (UTC)'!
m19: t1

	v5 _ v5 + t1! !

!C1 methodsFor: 'positioning' stamp: 'HAW 15/Sep/2026, 11:41:01 pm (UTC)'!
m4: t1

	v6 _ t1.! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m13
	
	^'S1'! !

!C1 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m14
	
	^'S2'! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m15: t1 

	^self new m6: t1 ! !

!C2 methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
m19: t1
	
	v8 m49 do: [ :t4 | self m21: t4 a21: t1 ]! !

!C2 methodsFor: 'running' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
m21: t1 a21: t2 

	t1 m19: t1 m9 * t2.
	self placeOnTrack: t1! !

!C2 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
m51: t1 a51: t2

	t1 m12: t2.
	self placeOnTrack: t1! !

!C2 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 10:46:53 am (UTC)'!
placeOnTrack: aCar

	v8 m51: aCar a51: aCar m11 \\ v8 m50! !

!C2 methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m16: t1 a16: t2 b16: t3

	v8 _ t1.
	v9 _ t2.
	t3 do: [ :t4 | t4 m8: self ].
! !

!C2 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m18: t1

	^ t1 m11.	! !

!C2 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m48: t1 

	^ v8 m48: t1.! !

!C2 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m50

	^ v8 m50 * v9! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m24: t1 a24: t2 

	^self m25: t1 a25: t2 b25: #()! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 11:41:02 pm (UTC)'!
m25: t1 a25: t2 b25: t3

	^self new m16: t1 a16: t2 b16: t3! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m27: t1

	| t2 |

	v12 assertAllowsTurbo.
	t2 _ self m37: t1 a37: [ self error: self class m40 ].
	self m28: t1 a28: t2.
	t1 m2! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m28: t1 a28: t2

	| t3 |
	
	t3 _ self m31: t2.
	(self timeToReachPositionOf: t3) - (self timeToReachPositionOf: t1) < (1 * second)
		ifFalse: [ self error: self class m39 ]! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m37: t1 a37: t2

	| t4 |
	
	t4 _ self m52: t1.
	^v10 asSortedCollection
		detect: [ :t5 | t5 > t4 ]
		ifNone: t2! !

!C3 methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
timeToReachPositionOf: aCar

	^(self m52: aCar) / aCar m9! !

!C3 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m33: t1 turboPermission: aTurboPermission

	v10 _ Dictionary new.
	v11 _ t1.
	v12 _ aTurboPermission! !

!C3 methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 11:41:03 pm (UTC)'!
includes: t1

	^ v10 includesKey: t1! !

!C3 methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 11:41:03 pm (UTC)'!
m29: t1

	v11 < t1 ifTrue: [ self error: self class m54 ]! !

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

!C3 methodsFor: 'accessing' stamp: 'HAW 15/Sep/2026, 11:41:03 pm (UTC)'!
m31: t1

	^v10 keyAtValue: t1! !

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

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
length: aLength turboPermission: aTurboPermission

	self assertIsValidLength: aLength.

	^self new m33: aLength turboPermission: aTurboPermission! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m44: t1 

	^self length: t1 turboPermission: SectorTurboEnabled new! !

!C3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
m45: t1 
	
	^self length: t1 turboPermission: SectorTurboDisabled new! !

!C3 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
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

!C4 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
includes: t1

	^v13 anySatisfy: [ :t4 | t4 includes: t1 ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
m48: t1
	
	^self m53: t1 a53: [ self error: self class m46 ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
m49

	^v13 inject: Set new into: [ :t1 :t3 | t1 addAll: t3 m49; yourself ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
m50

	^v13 sum: [ :t3 | t3 m50 ]! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
m52: t1

	| t4 |
	
	t4 _ self m48: t1.
	^(self startOf: t4) + (t4 m52: t1)! !

!C4 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
m53: t1 a53: t2

	^v13 detect: [ :t4 | t4 includes: t1 ] ifNone: t2! !

!C4 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
m51: t1 a51: t2

	| t4 |
	
	self assertIsOnTrack: t2.
	self remove: t1.
	t4 _ self sectorAt: t2.
	t4 m51: t1 a51: t2 - (self startOf: t4)! !

!C4 methodsFor: 'positioning' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
remove: t1
	
	(self m53: t1 a53: [ ^self ]) remove: t1! !

!C4 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
assertIsOnTrack: aPosition

	aPosition > self m50 ifTrue: [ self error: self class m54 ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
endOf: aSector

	^(self startOf: aSector) + aSector m50! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
sectorAt: aPosition

	^v13 detect: [ :sector | aPosition <= (self endOf: sector) ]! !

!C4 methodsFor: 'sectors' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
startOf: aSector

	^(v13 copyFrom: 1 to: (v13 indexOf: aSector) - 1)
		sum: [ :sector | sector m50 ]
		ifEmpty: [ 0 * kilometer ]! !

!C4 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
m47: t1

	v13 _ t1 copy! !

!C4 class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
m46

	^ 'S10'! !

!C4 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:05 pm (UTC)'!
m54

	^ 'S11'! !

!C4 class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 11:41:06 pm (UTC)'!
m55

	^'S12'! !

!C4 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
m56: t1

	self assertHasSectors: t1.
	
	^self new m47: t1! !

!C4 class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
assertHasSectors: aSectors

	aSectors ifEmpty: [ self error: self m55 ]! !

!SectorTurboPermission methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
assertAllowsTurbo

	self subclassResponsibility! !

!SectorTurboDisabled methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
assertAllowsTurbo

	self error: C3 m43! !

!SectorTurboEnabled methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
assertAllowsTurbo

	! !

!TurboState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
isActivated

	self subclassResponsibility! !

!TurboState methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
assertCanBeActivated

	self subclassResponsibility! !

!TurboState methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
deactivate

	self subclassResponsibility! !

!TurboState methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
speedFrom: aSpeed boostedBy: aTurboUse

	self subclassResponsibility! !

!TurboActivated methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
isActivated

	^true! !

!TurboActivated methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
assertCanBeActivated

	self error: C1 m13! !

!TurboActivated methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
deactivate

	^TurboDeactivated new! !

!TurboActivated methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
speedFrom: aSpeed boostedBy: aTurboUse

	^aTurboUse boost: aSpeed! !

!TurboDeactivated methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
isActivated

	^false! !

!TurboDeactivated methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
assertCanBeActivated

	! !

!TurboDeactivated methodsFor: 'turbo' stamp: 'HAW 17/Sep/2026, 10:46:52 am (UTC)'!
deactivate

	self error: C1 m14! !

!TurboDeactivated methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
speedFrom: aSpeed boostedBy: aTurboUse

	^aSpeed! !

!TurboUse methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
boost: aSpeed

	^aSpeed * self factor! !

!TurboUse methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
factor

	self subclassResponsibility! !

!TurboUse methodsFor: 'using' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
next

	self subclassResponsibility! !

!TurboExhausted methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
factor

	^1! !

!TurboExhausted methodsFor: 'using' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
next

	^self! !

!TurboFirstUse methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
factor

	^12 / 10! !

!TurboFirstUse methodsFor: 'using' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
next

	^TurboSecondUse new! !

!TurboNotUsed methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
factor

	^1! !

!TurboNotUsed methodsFor: 'using' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
next

	^TurboFirstUse new! !

!TurboSecondUse methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
factor

	^11 / 10! !

!TurboSecondUse methodsFor: 'using' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
next

	^TurboThirdUse new! !

!TurboThirdUse methodsFor: 'speed' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
factor

	^105 / 100! !

!TurboThirdUse methodsFor: 'using' stamp: 'HAW 17/Sep/2026, 10:46:41 am (UTC)'!
next

	^TurboExhausted new! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
assertSpeedOfCarUsingTurbo: aNumberOfUses timesIs: aSpeed

	| car |
	
	car _ self carReadyToUseTurbo.
	self useTurboOf: car times: aNumberOfUses.
	
	self assert: car m7.
	self assert: aSpeed equals: car m9! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
carAt: aPosition withAnotherCarAt: anotherPosition bothDrivingAt: aSpeed

	| sector car anotherCar |
	
	sector _ C3 m44: 24 * kilometer.
	
	car _ C1 m15: #s1.
	anotherCar _ C1 m15: #s2.
	
	car m10: aSpeed.
	anotherCar m10: aSpeed.
	
	sector m51: car a51: aPosition.
	sector m51: anotherCar a51: anotherPosition.
	
	^car! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
carReadyToUseTurbo

	^self 
		carAt: 12.99 * kilometer
		withAnotherCarAt: 13 * kilometer
		bothDrivingAt: 100 * kilometer / hour! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
raceOn: aSectors with: aCar

	^C2 
		m25: (C4 m56: aSectors)
		a25: 100
		b25: (Set with: aCar)! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
sectorsOfTenAndTwentyKilometers

	^OrderedCollection 
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer)! !

!C5 methodsFor: 'helpers' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
useTurboOf: aCar times: aNumberOfUses

	aNumberOfUses - 1 timesRepeat: [ aCar m1; m5 ].
	aCar m1! !

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

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
test04

	| t2 |
	
	t2 _ self 
		carAt: 13 * kilometer
		withAnotherCarAt: 12 * kilometer
		bothDrivingAt: 0 * kilometer / hour.
	
	self 
		should: [ t2 m1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :t4 |
			self assert: C3 m40 equals: t4 messageText. 
			self deny: t2 m7 ]! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
test05

	| t1 |
	
	t1 _ self 
		carAt: 12.95 * kilometer
		withAnotherCarAt: 13 * kilometer
		bothDrivingAt: 300 * kilometer / hour.
	
	t1 m1.
	
	self assert: t1 m7! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
test06

	| t1 |
	
	t1 _ self 
		carAt: 12.9 * kilometer
		withAnotherCarAt: 13 * kilometer
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

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
test08

	| t2 |
	
	t2 _ C4 m56: self sectorsOfTenAndTwentyKilometers.
	
	self assert: 30 * kilometer equals: t2 m50! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
test09

	| t2 t3 t4 |
	
	t2 _ C4 m56: self sectorsOfTenAndTwentyKilometers.
	t4 _ t2 m50 + (1 * millimeter).
	t3 _ C1 m15: #s1.
	
	self 
		should: [ t2 m51: t3 a51: t4 ] 
		raise: Error
		withExceptionDo: [ :t5 |
			self assert: C4 m54 equals: t5 messageText.
			self deny: (t2 includes: t3) ]! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
test10

	| t1 t2 t3 t4 |
	
	t1 _ self sectorsOfTenAndTwentyKilometers.
	t4 _ t1 first m50 + (5 * kilometer).
	t2 _ C4 m56: t1.
	t3 _ C1 m15: #s1.

	t2 m51: t3 a51: t4.
	
	self assert: t1 second equals: (t2 m48: t3).
	self assert: t4 equals: (t2 m52: t3).
	self deny: (t1 first includes: t3).
	self assert: (t1 second includes: t3)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
test11

	| t1 t2 t3 t4 |
	
	t1 _ self sectorsOfTenAndTwentyKilometers.
	t2 _ C4 m56: t1.
	t3 _ C1 m15: #s1.
	t4 _ C1 m15: #s3.

	t2 m51: t3 a51: 10 * kilometer.
	t2 m51: t4 a51: 30 * kilometer.
	
	self assert: (t2 includes: t3).
	self assert: (t2 includes: t4).
	self assert: (t1 first includes: t3).
	self assert: (t1 second includes: t4)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
test12

	| t1 t2 t3 |
	
	t1 _ self sectorsOfTenAndTwentyKilometers.
	t2 _ C4 m56: t1.
	t3 _ C1 m15: #s1.

	t2 m51: t3 a51: 5 * kilometer.
	t2 m51: t3 a51: 15 * kilometer.
	
	self assert: t1 second equals: (t2 m48: t3).
	self deny: (t1 first includes: t3).
	self assert: (t1 second includes: t3)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
test13

	| t1 t2 t3 |
	
	t1 _ C4 m56: self sectorsOfTenAndTwentyKilometers.
	t3 _ 100.
	
	t2 _ C2 m24: t1 a24: t3.
	
	self assert: t1 m50 * t3 equals: t2 m50! !

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

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:20 am (UTC)'!
test15

	| t1 t2 |
	
	t2 _ C1 m15: #s3.
	t1 _ self raceOn: (OrderedCollection with: (C3 m44: 10 * kilometer)) with: t2.
	
	t1 m51: t2 a51: 5 * kilometer.
	t1 m19: 10 * minute.
	
	self assert: 5 * kilometer equals: (t1 m18: t2)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:21 am (UTC)'!
test16

	| t1 t2 |
	
	t2 _ C1 m15: #s3.
	t1 _ self raceOn: self sectorsOfTenAndTwentyKilometers with: t2.
	
	t1 m51: t2 a51: 0 * kilometer.
	t2 m10: 300 * kilometer / hour.
	t1 m19: 1 * hour.
	
	self assert: 300 * kilometer equals: (t1 m18: t2)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:21 am (UTC)'!
test17

	| t1 t2 t3 |
	
	t2 _ C1 m15: #s3.
	t3 _ self sectorsOfTenAndTwentyKilometers.
	t1 _ self raceOn: t3 with: t2.
		
	t1 m51: t2 a51: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (t1 m18: t2). 
	self assert: t3 first equals: (t1 m48: t2)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:21 am (UTC)'!
test18

	| t1 t2 t3 |
	
	t2 _ C1 m15: #s3.
	t3 _ self sectorsOfTenAndTwentyKilometers.
	t1 _ self raceOn: t3 with: t2.
		
	t1 m51: t2 a51: 0 * kilometer.
	t2 m10: 5 * kilometer / hour. 
	t1 m19: 1 * hour.
	
	self assert: 5 * kilometer equals: (t1 m18: t2). 
	self assert: t3 first equals: (t1 m48: t2)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:21 am (UTC)'!
test19

	| t1 t2 t3 t4 |
	
	t2 _ C1 m15: #s3.
	t3 _ C3 m44: 10 * kilometer.
	t4 _ C3 m44: 30 * kilometer.
	t1 _ self raceOn: (OrderedCollection with: t3 with: t4) with: t2.
		
	t1 m51: t2 a51: 5 * kilometer.

	self assert: 5 * kilometer equals: (t1 m18: t2). 
	self assert: t3 equals: (t1 m48: t2).
	
	t2 m10: 15 * kilometer / hour.
	t1 m19: 1 * hour.
	
	self assert: 20 * kilometer equals: (t1 m18: t2). 
	self assert: t4 equals: (t1 m48: t2)! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:21 am (UTC)'!
test20

	self assertSpeedOfCarUsingTurbo: 1 timesIs: 120 * kilometer / hour! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:21 am (UTC)'!
test21

	self assertSpeedOfCarUsingTurbo: 2 timesIs: 110 * kilometer / hour! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:21 am (UTC)'!
test22

	self assertSpeedOfCarUsingTurbo: 3 timesIs: 105 * kilometer / hour! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:21 am (UTC)'!
test23

	self assertSpeedOfCarUsingTurbo: 4 timesIs: 100 * kilometer / hour! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:21 am (UTC)'!
test24

	| t1 |
	
	t1 _ self carReadyToUseTurbo.
	t1 m1.
	
	self 
		should: [ t1 m1 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: C1 m13! !

!C5 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 10:47:21 am (UTC)'!
test25

	| t1 |
	
	t1 _ self carReadyToUseTurbo.
	
	self 
		should: [ t1 m5 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: C1 m14! !
