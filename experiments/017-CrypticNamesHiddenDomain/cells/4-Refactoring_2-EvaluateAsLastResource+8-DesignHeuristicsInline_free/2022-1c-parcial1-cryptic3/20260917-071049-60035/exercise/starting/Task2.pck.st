'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 12:56:09 am'!
'Description '!
!provides: 'Task2' 1 1!
SystemOrganization addCategory: #Task2!


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
	instanceVariableNames: 'v13 v14'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C4 class' category: #Task2!
C4 class
	instanceVariableNames: ''!

!classDefinition: #C5 category: #Task2!
TestCase subclass: #C5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'C5 class' category: #Task2!
C5 class
	instanceVariableNames: ''!


!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:01 am (UTC)'!
m1

	v4 ifTrue: [ self error: self m13 ].
	
	v6 m27: self.
! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:01 am (UTC)'!
m10: t1

	v3 _ t1! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:01 am (UTC)'!
m11

	^ v5! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:01 am (UTC)'!
m12: t1

	v5 _ t1! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:01 am (UTC)'!
m13
	
	^'S1'! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:01 am (UTC)'!
m14
	
	^'S2'! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:01 am (UTC)'!
m19: t1

	v5 _ v5 + t1! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:01 am (UTC)'!
m2
	
	v4 _ true.
	v7 _ v7 + 1 ! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:01 am (UTC)'!
m4: t1

	v6 _ t1.! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:01 am (UTC)'!
m5
	
	v4 ifFalse: [ self error: self m14 ].
	
	v4 _ false! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:02 am (UTC)'!
m6: t1 

	v2 _ t1.
	v4 _ false.
	v7 _ 0.
	v3 _ 0*kilometer/hour.
	v5 _ 0.
	! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:02 am (UTC)'!
m7
	
	^v4! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:02 am (UTC)'!
m8: t1
	
	v1 _ t1! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:02 am (UTC)'!
m9

	v4 ifTrue: [
		v7 = 1 ifTrue: [ ^ v3 * 12 / 10 ].
		v7 = 2 ifTrue: [ ^ v3 * 11 / 10 ].
		v7 = 3 ifTrue: [ ^ v3 * 105 / 100 ].
	].

	^v3! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:02 am (UTC)'!
m15: t1 

	^self new m6: t1 ! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:02 am (UTC)'!
m16: t1 a16: t2 b16: t3

	v8 _ t1.
	v9 _ t2.
	t3 do: [ :t4 | t4 m8: self ].
! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:02 am (UTC)'!
m18: t1

	^ t1 m11.	! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:02 am (UTC)'!
m19: t1
	
	| t2 t3 |
	
	t3 _ v8 m49 asOrderedCollection.
	t2 _ 1.
	[t2 <= t3 size] whileTrue: [ | t4 |
		t4 _ t3 at: t2.
		self m21: t4 a21: t1.
		t2 _ t2 + 1.
	]
! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:02 am (UTC)'!
m21: t1 a21: t2 

	| t3 t4 |
	
	t3 _ t1 m9 * t2.
	t1 m19: t3.
	
	t4 _ t1 m11 \\ v8 m50.
	v8 m51: t1 a51: t4.! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:03 am (UTC)'!
m48: t1 

	^ v8 m48: t1.! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:03 am (UTC)'!
m50

	^ v8 m50 * v9! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:03 am (UTC)'!
m51: t1 a51: t2

	| t3 |
	
	t1 m12: t2.
	
	t3 _ t2 \\ v8 m50.
	v8 m51: t1 a51: t3.
	! !

!C2 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:03 am (UTC)'!
m23

	^'S3'! !

!C2 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:03 am (UTC)'!
m24: t1 a24: t2 

	^self m25: t1 a25: t2 b25: #()! !

!C2 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:03 am (UTC)'!
m25: t1 a25: t2 b25: t3

	^self new m16: t1 a16: t2 b16: t3! !

!C2 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:03 am (UTC)'!
m26

	^ 'S4'! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:03 am (UTC)'!
includes: t1

	^ v10 includesKey: t1! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:03 am (UTC)'!
m27: t1

	| t2 |

	v12 ifFalse: [	self error: C3 m43].
	
	t2 _ self 
		m37: t1 
		a37: [self error: C3 m40 ].
		
	self 
		m28: t1
		a28: t2.

	t1 m2
! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:03 am (UTC)'!
m28: t1 a28: t2

	| t3 |
	
	t3 _ self m31: t2.
	
	((t2 / t3 m9) -
	((v10 at: t1) / t1 m9)) < (1 * second)
		ifFalse: [self error: C3 m39 ].! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:04 am (UTC)'!
m29: t1

	v11 < t1 ifTrue: [ self error: self class m54 ]! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:04 am (UTC)'!
m30: t1
 
	self m51: t1 a51: 0*kilometer! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:04 am (UTC)'!
m31: t1

	^v10 keyAtValue: t1! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:04 am (UTC)'!
m33: t1 

	v10 _ Dictionary new.
	v11 _ t1.! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:04 am (UTC)'!
m37: t1 a37: t2

	| t3 t4 |
	
	t4 _ v10 at: t1.
	t3 _ v10 asSortedCollection remove: t4; yourself.
	 
	^ t3 
		detect: [:t5 | t5 > t4 ]
		ifNone: t2 ! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:04 am (UTC)'!
m38: t1
 
	v12 _ t1.
! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:04 am (UTC)'!
m49
	
	^ v10 keys! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:04 am (UTC)'!
m50

	^v11! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:04 am (UTC)'!
m51: t1 a51: t2
 
	self m29: t2.
	
	v10 at: t1 put: t2.
	t1 m4: self.! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:04 am (UTC)'!
m52: t1
 
	^ v10 at: t1.
! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:04 am (UTC)'!
remove: t1
 
	v10 removeKey: t1 ifAbsent: [].
! !

!C3 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m39
	
	^ 'S5'! !

!C3 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m40
	
	^ 'S6'! !

!C3 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m42

	^ 'S7'! !

!C3 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m43
	
	^ 'S8'! !

!C3 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m44: t1 

	t1 strictlyPositive ifFalse: [ self error: self m42 ]	.

	^ self new m33: t1; m38: true; yourself ! !

!C3 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m45: t1 
	
	t1 strictlyPositive ifFalse: [ self error: self m42 ]	.
		
	^ self new m33: t1; m38: false; yourself ! !

!C3 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m54

	^ 'S9'! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
includes: t1

	| t2 t3 t4 |
	t2 _ false.
	t3 _ 1.
	
	(v13 size = 0) ifTrue: [ ^ t2 ].
	
	t4 _ v13 at: t3.
	(t4 includes: t1) 
		ifTrue: [ t2 _ true]
		ifFalse: [
			t3 _ t3 +1.
			[t3 <= v13 size] whileTrue: [ | t5 |
				t5 _ v13 at: t3.
				(t5 includes: t1) ifTrue: [ ^ true ].
				t3 _ t3 + 1
			]	
		]. 
	^ t2
	! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m46

	^ 'S10'! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:05 am (UTC)'!
m47: t1

	v13 _ t1 copy.! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m48: t1
	
	^self m53: t1 a53: [ self error: self m46 ]! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m49
	| t1 t2 |
	
	t1 _ Set new.
	t2 _ 1.
	[t2 <= v13 size] whileTrue: [ | t3 |
		t3 _ v13 at: t2.
		t1 addAll: t3 m49.
		t2 _ t2 + 1.
	].

	^ t1
	! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m50

	| t1 t2 |

	t1 _ 0 * kilometer.
	t2 _ 1.
	
	[t2 <= v13 size] whileTrue: [ | t3 |
		t3 _ v13 at: t2.
		t1 _ t1 + t3 m50.
		t2 _ t2 + 1.		
	].

	^ t1.
! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m51: t1 a51: t2

	| t3 t4 t5 |
	
	t2 > self m50 ifTrue: [ self error: self class m54 ].

	self remove: t1.

	t3 _ 1.
	t4 _ v13 at: t3. 
	t5 _ 0 * kilometer.

	[t2 > (t5 +  t4 m50)] whileTrue: [
		t5 _ t5 + t4 m50.
		t3 _ t3 + 1.
		t4 _ v13 at: t3.
	].

	t4 m51: t1 a51: t2 - t5.! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m52: t1
	| t2 t3 t4 |
	
	t3 _ 1.
	t4 _ (v13 at: t3).
	t2 _ 0 * kilometer.

	[t4 includes: t1] whileFalse: [
		t2 _ t2 + t4 m50.
		t3 _ t3 + 1.
		t4 _ (v13 at: t3).
	].

	^ t2 + (t4 m52: t1).! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m53: t1 a53: t2

	 | t3 |
	
	t3 _ 1.
	[t3 <= v13 size] whileTrue: [ | t4 |
		t4 _	v13 at: t3.
		(t4 includes: t1) ifTrue: [ ^ t4 ].
		t3 _ t3 + 1.
	].

	^ t2 value.! !

!C4 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
remove: t1
	
	| t2 |
	
	t2 _ self m53: t1 a53: [ ^ self ].
	t2 remove: t1.
	! !

!C4 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m54

	^ 'S11'! !

!C4 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m55

	^'S12'! !

!C4 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:06 am (UTC)'!
m56: t1

	t1 isEmpty ifTrue: [ self error: self m55 ].
	
	^ self new m47: t1! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:07 am (UTC)'!
test01

	self 
		should: [ C3 m44: 0 * kilometer.]
		raise: Error
		withMessageText: C3 m42! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:07 am (UTC)'!
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

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:07 am (UTC)'!
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

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:07 am (UTC)'!
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

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:07 am (UTC)'!
test05

	| t1 t2 t3 |
	
	t3 _ C3 m44: 24 * kilometer.
	
	t1 _ C1 m15: #s1.
	t2 _ C1 m15: #s2.
	
	t1 m10: 300 * kilometer / hour.
	t2 m10: 300 * kilometer / hour.
	
	t3 m51: t1 a51: 12.95 * kilometer.
	t3 m51: t2 a51: 13 * kilometer.
	
	t1 m1.
	
	self assert: t1 m7
	! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:07 am (UTC)'!
test06

	| t1 t2 t3 |
	
	t3 _ C3 m44: 24 * kilometer.
	
	t1 _ C1 m15: #s1.
	t2 _ C1 m15: #s2.
	
	t1 m10: 300 * kilometer / hour.
	t2 m10: 300 * kilometer / hour.
	
	t3 m51: t1 a51: 12.9 * kilometer.
	t3 m51: t2 a51: 13 * kilometer.
	
	self should: [t1 m1]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :t4 |
			self 
				assert: C3 m39 
				equals: t4 messageText.
			self deny: t1 m7]
			! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:07 am (UTC)'!
test07

	self
		should: [ C4 m56: #() ]
		raise: Error
		withMessageText: C4 m55! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:07 am (UTC)'!
test08

	| t1 t2 |
	
	t1 _ OrderedCollection 
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer).
	t2 _ C4 m56: t1.
	
	self assert: 30 * kilometer equals: 	t2 m50! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:07 am (UTC)'!
test09

	| t1 t2 t3 t4 |
	
	t1 _ OrderedCollection 
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer).
	
	t2 _ C4 m56: t1.
	t4 _ t2 m50 + (1 * millimeter).
	t3 _ C1 m15: #s1.
	
	self should: [ t2 m51: t3 a51: t4 ] 
		raise: Error
		withExceptionDo: [ :t5 |
			self assert: C4 m54 equals: t5 messageText.
			self deny: (t2 includes: t3) ]	
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:07 am (UTC)'!
test10

	| t1 t2 t3 t4 t5 |
	
	t1 _ OrderedCollection 
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer).
		
	t5 _ 5 * kilometer.
	t4 _ t1 first m50 + t5.
	
	t2 _ C4 m56: t1.
	t3 _ C1 m15: #s1.

	t2 m51: t3 a51: t4.
	
	self assert: t1 second equals: (t2 m48: t3).
	self assert: t4 equals: (t2 m52: t3).
	
	self deny: (t1 first includes: t3).
	self assert: (t1 second includes: t3).

! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:07 am (UTC)'!
test11

	| t1 t2 t3 t4 |
	
	t1 _ OrderedCollection 
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer).
		
	t2 _ C4 m56: t1.
	t3 _ C1 m15: #s1.
	t4 _ C1 m15: #s3.

	t2 m51: t3 a51: 10 * kilometer.
	t2 m51: t4 a51: 30 * kilometer.
	
	self assert: (t2 includes: t3).
	self assert: (t2 includes: t4).
		
	self assert: (t1 first includes: t3).
	self assert: (t1 second includes: t4).

! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:07 am (UTC)'!
test12

	| t1 t2 t3 |
	
	t1 _ OrderedCollection 
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer).
	
	t2 _ C4 m56: t1.
	t3 _ C1 m15: #s1.

	t2 m51: t3 a51: 5 * kilometer.
	t2 m51: t3 a51: 15 * kilometer.
	
	self assert: t1 second equals: (t2 m48: t3).
	self deny: (t1 first includes: t3).
	self assert: (t1 second includes: t3)
! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:08 am (UTC)'!
test13

	| t1 t2 t3 |
	
	t1 _ C4 m56: (OrderedCollection 
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer)).
	t3 _ 100.
	
	t2 _ C2 m24: t1 a24: t3.
	
	self assert: t1 m50 * t3	 equals: t2 m50
	! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:08 am (UTC)'!
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

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:08 am (UTC)'!
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

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:08 am (UTC)'!
test16

	| t1 t2 t3 |
	
	t2 _ C1 m15: #s3.
	t2 m10: 0* kilometer / hour.
	
	t3 _ OrderedCollection 
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer).
	
	t1 _ C2 
		m25: (C4 m56: t3)
		a25: 100
		b25: (Set with: t2).
	
	t1 m51: t2 a51: 0 * kilometer.
	t2 m10: 300 * kilometer / hour.
	t1 m19: 1 * hour.
	
	self assert: 300 * kilometer equals: (t1 m18: t2). 
	
	! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:08 am (UTC)'!
test17

	| t1 t2 t3 |
	
	t2 _ C1 m15: #s3.
	
	t3 _ OrderedCollection 
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer).
	
	t1 _ C2 
		m25: (C4 m56: t3)
		a25: 100
		b25: (Set with: t2).
		
	t1 m51: t2 a51: 5 * kilometer.
	
	self assert: 5 * kilometer equals: (t1 m18: t2). 
	self assert: t3 first equals: (t1 m48: t2).
	! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:08 am (UTC)'!
test18

	| t1 t2 t3 |
	
	t2 _ C1 m15: #s3.
	
	t3 _ OrderedCollection 
		with: (C3 m44: 10 * kilometer)
		with: (C3 m45: 20 * kilometer).
	
	t1 _ C2 
		m25: (C4 m56: t3)
		a25: 100
		b25: (Set with: t2).
		
	t1 m51: t2 a51: 0 * kilometer.
	
	t2 m10: 5 * kilometer / hour. 
	t1 m19: 1 * hour.
	
	self assert: 5 * kilometer equals: (t1 m18: t2). 
	self assert: t3 first equals: (t1 m48: t2).
	! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:08 am (UTC)'!
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

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:08 am (UTC)'!
test20

	| t1 t2 t3 |
	
	t3 _ C3 m44: 24 * kilometer.
	
	t1 _ C1 m15: #s1.
	t2 _ C1 m15: #s2.
	
	t1 m10: 100 * kilometer / hour.
	t2 m10: 100 * kilometer / hour.
	
	t3 m51: t1 a51: 12.99 * kilometer.
	t3 m51: t2 a51: 13 * kilometer.
	
	t1 m1.
	
	self assert: t1 m7.
	self assert: 120 * kilometer / hour equals: t1 m9.! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:08 am (UTC)'!
test21

	| t1 t2 t3 |
	
	t3 _ C3 m44: 24 * kilometer.
	
	t1 _ C1 m15: #s1.
	t2 _ C1 m15: #s2.
	
	t1 m10: 100 * kilometer / hour.
	t2 m10: 100 * kilometer / hour.
	
	t3 m51: t1 a51: 12.99 * kilometer.
	t3 m51: t2 a51: 13 * kilometer.
	
	t1 m1; m5; m1.
	
	self assert: t1 m7.
	self assert: 110 * kilometer / hour equals: t1 m9.! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:08 am (UTC)'!
test22

	| t1 t2 t3 |
	
	t3 _ C3 m44: 24 * kilometer.
	
	t1 _ C1 m15: #s1.
	t2 _ C1 m15: #s2.
	
	t1 m10: 100 * kilometer / hour.
	t2 m10: 100 * kilometer / hour.
	
	t3 m51: t1 a51: 12.99 * kilometer.
	t3 m51: t2 a51: 13 * kilometer.
	
	t1 m1; m5; m1; m5; m1.
	
	self assert: t1 m7.
	self assert: 105 * kilometer / hour equals: t1 m9.! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:08 am (UTC)'!
test23

	| t1 t2 t3 |
	
	t3 _ C3 m44: 24 * kilometer.
	
	t1 _ C1 m15: #s1.
	t2 _ C1 m15: #s2.
	
	t1 m10: 100 * kilometer / hour.
	t2 m10: 100 * kilometer / hour.
	
	t3 m51: t1 a51: 12.99 * kilometer.
	t3 m51: t2 a51: 13 * kilometer.
	
	t1 m1; m5; m1; m5; m1; m5; m1.	
	
	self assert: t1 m7.
	self assert: 100 * kilometer / hour equals: t1 m9.! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:09 am (UTC)'!
test24

	| t1 t2 t3 |
	
	t3 _ C3 m44: 24 * kilometer.
	
	t1 _ C1 m15: #s1.
	t2 _ C1 m15: #s2.
	
	t1 m10: 100 * kilometer / hour.
	t2 m10: 100 * kilometer / hour.
	
	t3 m51: t1 a51: 12.99 * kilometer.
	t3 m51: t2 a51: 13 * kilometer.
	t1 m1.
	
	self 
		should: [ t1 m1 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: t1 m13
	
	! !

!C5 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:56:09 am (UTC)'!
test25

	| t1 t2 t3 |
	
	t3 _ C3 m44: 24 * kilometer.
	
	t1 _ C1 m15: #s1.
	t2 _ C1 m15: #s2.
	
	t1 m10: 100 * kilometer / hour.
	t2 m10: 100 * kilometer / hour.
	
	t3 m51: t1 a51: 12.99 * kilometer.
	t3 m51: t2 a51: 13 * kilometer.
	
	self 
		should: [ t1 m5 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: t1 m14
	
	! !
