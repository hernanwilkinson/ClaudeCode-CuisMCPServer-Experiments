'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 12:55:29 am'!
'Description '!
!provides: 'Task1' 1 1!
SystemOrganization addCategory: #Task1!


!classDefinition: #C1 category: #Task1!
Object subclass: #C1
	instanceVariableNames: 'v1 v2 v3 v4 v5'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C1 class' category: #Task1!
C1 class
	instanceVariableNames: ''!

!classDefinition: #C2 category: #Task1!
Object subclass: #C2
	instanceVariableNames: 'v6 v7 v8 v9'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C2 class' category: #Task1!
C2 class
	instanceVariableNames: ''!

!classDefinition: #C3 category: #Task1!
TestCase subclass: #C3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C3 class' category: #Task1!
C3 class
	instanceVariableNames: ''!


!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:24 am (UTC)'!
m1: t1

	v5 isNil ifTrue: [ v5 := OrderedCollection new ].
	
	(self m13 + t1 m24) > v4 ifTrue: [ self m10 ].
	
	(self m12 + t1 m23) > v3 ifTrue: [ self m11 ].
	
	v5 add: t1.
	! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:25 am (UTC)'!
m10

	self error: self class m17 	! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:25 am (UTC)'!
m11

	self error: self class m19 	! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:25 am (UTC)'!
m12

	| t1 t2 |

	v5 isNil ifTrue: [ v5 := OrderedCollection new ].

	t1 := 0 * kilometer / hour.
	t2 := 1.
	
	[t2 <= v5 size] whileTrue: [ | t3 |
		t3 := (v5 at: t2).
		(t3 m24 > (10 * kilogram)) ifTrue: [ t1 := t1 +  t3 m23 ].
		t2 := t2 + 1.	
	].

	^ t1.! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:25 am (UTC)'!
m13

	| t1 t2 |

	v5 isNil ifTrue: [ v5 := OrderedCollection new ].

	t1 := 0 * kilogram.
	t2 := 1.
	
	[t2 <= v5 size] whileTrue: [ | t3 |
		t3 := (v5 at: t2).
		t1 := t1 + t3 m24.
		t2 := t2 + 1.	
	].

	^ t1.	! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:25 am (UTC)'!
m15

	v5 isNil ifTrue: [ v5 := OrderedCollection new ].

	^ v5 size 	! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:25 am (UTC)'!
m2: t1 a2: t2

	v5 isNil ifTrue: [ v5 := OrderedCollection new ].

	(v5 includes: t2) 
		ifTrue: [ t2 m20: t1 a20: self ]
		ifFalse: [ self m9 ]! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:25 am (UTC)'!
m22

	^ v1	! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:25 am (UTC)'!
m3: t1 
	
	v5 isNil ifTrue: [ v5 := OrderedCollection new ].

	^v5 includes: t1 ! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:25 am (UTC)'!
m4: t1

	v5 isNil ifTrue: [ v5 := OrderedCollection new ].

	^v5 anySatisfy: [ :t2 | t2 m22 = t1 ]! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:25 am (UTC)'!
m5: t1 a5: t2 b5: t3 c5: t4

	v1 := t1.
	v2 := t2.
	v3 := t3.
	v4 := t4.

	! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:25 am (UTC)'!
m6

	^ v2! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m7: t1

	v2 := t1! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m8: t1 
	
	v5 isNil ifTrue: [ v5 := OrderedCollection new ].

	v5 remove: t1 ! !

!C1 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m9
	
	self error: self class m16! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m16
	
	^'S1'! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m17

	^ 'S2'! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m19

	^ 'S3'! !

!C1 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m25: t1

	t1 = #s1 ifTrue: [ ^ self new 
		m5: t1 
		a5: 100 * year
		b5: 90 * kilometer / hour
		c5: 50 * kilogram ].
	t1 = #s2 ifTrue: [ ^ self new 
		m5: t1 
		a5: 100 * year
		b5: 40 * kilometer / hour
		c5: 200 * kilogram ].

	self error: 'S4'! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m20: t1 a20: t2 	

	v9 := v9 + 1.
	v6 = #s3 ifTrue: [
		t1 m22 = #s1 ifTrue: [
			t1 m7: t1 m6 - (25 * year).
			v9 = 2 ifTrue: [ t2 m8: self ].
		].
	
		t1 m22 = #s2 ifTrue: [
			t1 m7: t1 m6 - (5 * year).
			t2 m8: self.
		].
	
	].

	v6 = #s4 ifTrue: [
		t1 m22 = #s1 ifTrue: [
			t1 m7: t1 m6 - (5 * year).
			v9 = 5 ifTrue: [ 
				t2 m8: self.
				t2 m1: (C2 m25: #s5) ].
		].
	
		t1 m22 = #s2 ifTrue: [
			t1 m7: t1 m6 - (50 * year).
			t1 m6 <= (50 * year) ifTrue: [ t2 m1: (C2 m25: #s3) ].
		].
	].

	v6 = #s5 ifTrue: [
		t1 m22 = #s1 ifTrue: [
			t1 m7: t1 m6 - (100 * year).
			v9 = 10 ifTrue: [ t2 m8: self ]
		].
	
		t1 m22 = #s2 ifTrue: [
			t1 m7: t1 m6 - (100 * year).
			v9 = 5 ifTrue: [ 
				t2 m8: self.
				t2 m1: (C2 m25: #s4) ]
		].
	].! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m21: t1 a21: t2 b21: t3 
	
	v6 := t1.
	v7 := t2.
	v8 := t3.
	v9 := 0.! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m22
	
	^v6! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:27 am (UTC)'!
m23
	
	^ v8! !

!C2 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:27 am (UTC)'!
m24
	
	^ v7! !

!C2 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:27 am (UTC)'!
m25: t1

	t1 = #s3 ifTrue: [ ^self new 
		m21: t1 a21: 10 * kilogram b21: 5 * kilometer / hour ].
	t1 = #s4 ifTrue: [ ^ self new 
		m21: t1 a21: 20 * kilogram b21: 10 * kilometer / hour ].
	t1 = #s5 ifTrue: [^ self new 
		m21: t1 a21: 40 * kilogram b21: 15 * kilometer / hour ].

	self error: 'S5'! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:27 am (UTC)'!
m26

	^ C1 m25: #s1 ! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:27 am (UTC)'!
m27

	^ C2 m25: #s3 ! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:27 am (UTC)'!
m28

	^ C2 m25: #s4 ! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:27 am (UTC)'!
m29

	^ C1 m25: #s2 ! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:27 am (UTC)'!
m30

	^ C2 m25: #s5 ! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:27 am (UTC)'!
test01
	
	| t1 t2 |
	
	t1 := self m26.
	t2 := self m30.
	t1 m1: t2.
	
	self
		should: [ t1 m1: self m30 ]
		raise: Error
		withMessageText: C1 m17.
		
	self assert: 1 equals: t1 m15.
	self assert: (t1 m3: t2)

	

	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:28 am (UTC)'!
test02
	
	| t1 t2 t3 |
	
	t1 := self m29.
	t2 := self m30.
	t1 m1: t2.
	t3 := self m30.
	t1 m1: t3.
		
	self
		should: [ t1 m1: self m30 ]
		raise: Error
		withMessageText: C1 m19 .
		
	self assert: 2 equals: (t1 m15).
	self assert: (t1 m3: t2).
	self assert: (t1 m3: t3)

	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:28 am (UTC)'!
test03
	
	| t1 |
	
	t1 := self m29.

	self assert: 0 * kilogram equals: t1 m13.

	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:28 am (UTC)'!
test04
	
	| t1 t2 |
	
	t1 := self m29.
	t2 := self m30.

	t1 m1: t2.

	self assert: t2 m24 equals: t1 m13.

	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:28 am (UTC)'!
test05
	
	| t1 |
	
	t1 := self m29.

	self assert: 0 * kilometer / hour equals: t1 m12.

	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:28 am (UTC)'!
test06

	| t1 t2 t3 |
	
	t1 := self m29.
	t2 := self m30.
	t3 := self m27.

	t1 m1: t2.
	t1 m1: t3.

	self assert: t2 m24 + t3 m24 equals: t1 m13.

	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:28 am (UTC)'!
test07

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m26.
	t3 := self m27.
	t1 m1: t3.
	
	t1 m2: t2 a2: t3.
	
	self assert: (100 * year) - (25 * year) equals: t2 m6
	
	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:28 am (UTC)'!
test08

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m29.
	t3 := self m27.
	t1 m1: t3.
	
	t1 m2: t2 a2: t3.
	
	self assert: (100 * year) - (5 * year) equals: t2 m6
	
	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:28 am (UTC)'!
test09

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m26.
	t3 := self m28.
	t1 m1: t3.
	
	t1 m2: t2 a2: t3.
	
	self assert: (100 * year) - (5 * year) equals: t2 m6
	
	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:28 am (UTC)'!
test10

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m29.
	t3 := self m28.
	t1 m1: t3.
	
	t1 m2: t2 a2: t3.
	
	self assert: (100 * year) - (50 * year) equals: t2 m6
	
	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:28 am (UTC)'!
test11

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m26.
	t3 := self m30.
	t1 m1: t3.
	
	t1 m2: t2 a2: t3.
	
	self assert: (100 * year) - (100 * year) equals: t2 m6
	
	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:28 am (UTC)'!
test12

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m29.
	t3 := self m30.
	t1 m1: t3.
	
	t1 m2: t2 a2: t3.
	
	self assert: (100 * year) - (100 * year) equals: t2 m6
	
	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:28 am (UTC)'!
test13

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m26.
	t3 := self m27.
	t1 m1: t3.
	
	2 timesRepeat: [ t1 m2: t2 a2: t3 ].
	
	self 
		should: [ t1 m2: t2 a2: t3 ]
		raise: Error
		withMessageText: C1 m16 
	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:29 am (UTC)'!
test14

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m29.
	t3 := self m27.
	t1 m1: t3.
	
	t1 m2: t2 a2: t3.
	
	self 
		should: [ t1 m2: t2 a2: t3 ]
		raise: Error
		withMessageText: C1 m16 
	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:29 am (UTC)'!
test15
	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m26.
	t3 := self m28.
	t1 m1: t3.
	
	5 timesRepeat: [ t1 m2: t2 a2: t3 ].
	
	self assert: 1 equals: t1 m15.
	self assert: (t1 m4: #s5).
	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:29 am (UTC)'!
test16
	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m29.
	t3 := self m28 .
	t1 m1: t3.
	
	t1 m2: t2 a2: t3.
	
	self assert: 2 equals: t1 m15.
	self assert: (t1 m3: t3).
	self assert: (t1 m4: #s3).
	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:29 am (UTC)'!
test17

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m26.
	t3 := self m30.
	t1 m1: t3.
	
	10 timesRepeat: [ t1 m2: t2 a2: t3 ].
	
	self assert: 0 equals: t1 m15.
	! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:29 am (UTC)'!
test18

	| t1 t2 t3 |
	
	t1 := self m26.
	t2 := self m29.
	t3 := self m30 .
	t1 m1: t3.
	
	5 timesRepeat: [ t1 m2: t2 a2: t3 ].
	
	self assert: 1 equals: t1 m15.
	self assert: (t1 m4: #s4)
	! !

!C3 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:29 am (UTC)'!
initialize

	| t1 |
	gram := BaseUnit named: 'S6' sign: 'S7'.
	t1 := ProportionalDerivedUnit baseUnit: gram conversionFactor: 1000  named: 'S8' sign: 'S9'.
	
	Smalltalk at: #s6 put: t1
	! !
C3 initialize!
