'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:36:13 am'!
'Description '!
!provides: 'Task1' 1 2!
SystemOrganization addCategory: #Task1!
SystemOrganization addCategory: #'Task1-Tests'!


!classDefinition: #C1 category: #Task1!
Object subclass: #C1
	instanceVariableNames: 'w7 w3s'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C1 class' category: #Task1!
C1 class
	instanceVariableNames: ''!

!classDefinition: #S1W5 category: #Task1!
C1 subclass: #S1W5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'S1W5 class' category: #Task1!
S1W5 class
	instanceVariableNames: ''!

!classDefinition: #S2W5 category: #Task1!
C1 subclass: #S2W5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'S2W5 class' category: #Task1!
S2W5 class
	instanceVariableNames: ''!

!classDefinition: #C2 category: #Task1!
Object subclass: #C2
	instanceVariableNames: 'numberOfW1s'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C2 class' category: #Task1!
C2 class
	instanceVariableNames: ''!

!classDefinition: #S3W3 category: #Task1!
C2 subclass: #S3W3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'S3W3 class' category: #Task1!
S3W3 class
	instanceVariableNames: ''!

!classDefinition: #S4W3 category: #Task1!
C2 subclass: #S4W3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'S4W3 class' category: #Task1!
S4W3 class
	instanceVariableNames: ''!

!classDefinition: #S5W3 category: #Task1!
C2 subclass: #S5W3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'S5W3 class' category: #Task1!
S5W3 class
	instanceVariableNames: ''!

!classDefinition: #C3 category: #'Task1-Tests'!
TestCase subclass: #C3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1-Tests'!
!classDefinition: 'C3 class' category: #'Task1-Tests'!
C3 class
	instanceVariableNames: ''!


!C1 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
initialize

	w7 := 100 * year.
	w3s := OrderedCollection new! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m1: aW3

	self assertCanCarryW4Of: aW3.
	self assertW6AllowsW2Of: aW3.
	
	w3s add: aW3! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m12

	^(w3s select: [ :aW3 | aW3 affectsW6 ]) 
		sum: [ :aW3 | aW3 m23 ] 
		ifEmpty: [ 0 * kilometer / hour ]! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m13

	^w3s sum: [ :aW3 | aW3 m24 ] ifEmpty: [ 0 * kilogram ]! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m15

	^w3s size! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m3: aW3

	^w3s includes: aW3! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m4: aType

	^w3s anySatisfy: [ :aW3 | aW3 m22 = aType ]! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m8: aW3

	w3s remove: aW3! !

!C1 methodsFor: 'w3s - private' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
assertCanCarryW4Of: aW3

	self m13 + aW3 m24 > self maximumW3W4 ifTrue: [ self error: self class m17 ]! !

!C1 methodsFor: 'w3s - private' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
assertW6AllowsW2Of: aW3

	self m12 + aW3 m23 > self w6 ifTrue: [ self error: self class m19 ]! !

!C1 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m2: aTargetW5 a2: aW3

	(self m3: aW3)
		ifTrue: [ aW3 m20: aTargetW5 a20: self ]
		ifFalse: [ self error: self class m16 ]! !

!C1 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
receiveW1Of: aW3 from: anAttackingW5

	self subclassResponsibility! !

!C1 methodsFor: 'w7' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
decreaseW7By: aTime

	w7 := w7 - aTime! !

!C1 methodsFor: 'w7' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
hasW7AtMost: aTime

	^w7 <= aTime! !

!C1 methodsFor: 'w7' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m6

	^w7! !

!C1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m22

	^self class m22! !

!C1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
maximumW3W4

	self subclassResponsibility! !

!C1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
w6

	self subclassResponsibility! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m25: aType

	^(self subclassFor: aType) new! !

!C1 class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
subclassFor: aType

	^self subclasses 
		detect: [ :aW5Class | aW5Class m22 = aType ] 
		ifNone: [ self error: self invalidTypeErrorDescription ]! !

!C1 class methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m22

	self subclassResponsibility! !

!C1 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
invalidTypeErrorDescription

	^'S4'! !

!C1 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m16
	
	^'S1'! !

!C1 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m17

	^ 'S2'! !

!C1 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 3:55:26 am (UTC)'!
m19

	^ 'S3'! !

!S1W5 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
maximumW3W4

	^50 * kilogram! !

!S1W5 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
w6

	^90 * kilometer / hour! !

!S1W5 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
receiveW1Of: aW3 from: anAttackingW5

	aW3 w1S1W5: self from: anAttackingW5! !

!S1W5 class methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m22

	^#s1! !

!S2W5 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
maximumW3W4

	^200 * kilogram! !

!S2W5 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
w6

	^40 * kilometer / hour! !

!S2W5 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
receiveW1Of: aW3 from: anAttackingW5

	aW3 w1S2W5: self from: anAttackingW5! !

!S2W5 class methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m22

	^#s2! !

!C2 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
initialize

	numberOfW1s := 0! !

!C2 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m20: aTargetW5 a20: anAttackingW5

	numberOfW1s := numberOfW1s + 1.
	aTargetW5 receiveW1Of: self from: anAttackingW5! !

!C2 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
w1S1W5: aW5 from: anAttackingW5

	self subclassResponsibility! !

!C2 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
w1S2W5: aW5 from: anAttackingW5

	self subclassResponsibility! !

!C2 methodsFor: 'w1 - private' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
removeFrom: anAttackingW5 afterW1s: aNumberOfW1s

	numberOfW1s = aNumberOfW1s ifTrue: [ anAttackingW5 m8: self ]! !

!C2 methodsFor: 'w1 - private' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
replaceIn: anAttackingW5 by: aW3 afterW1s: aNumberOfW1s

	numberOfW1s = aNumberOfW1s ifTrue: [
		anAttackingW5 m8: self.
		anAttackingW5 m1: aW3 ]! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m22

	^self class m22! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m23

	self subclassResponsibility! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m24

	self subclassResponsibility! !

!C2 methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
affectsW6

	^self m24 > (10 * kilogram)! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m25: aType

	^(self subclassFor: aType) new! !

!C2 class methodsFor: 'instance creation - private' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
subclassFor: aType

	^self subclasses 
		detect: [ :aW3Class | aW3Class m22 = aType ] 
		ifNone: [ self error: self invalidTypeErrorDescription ]! !

!C2 class methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m22

	self subclassResponsibility! !

!C2 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
invalidTypeErrorDescription

	^'S5'! !

!S3W3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m23

	^5 * kilometer / hour! !

!S3W3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m24

	^10 * kilogram! !

!S3W3 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
w1S1W5: aW5 from: anAttackingW5

	aW5 decreaseW7By: 25 * year.
	self removeFrom: anAttackingW5 afterW1s: 2! !

!S3W3 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
w1S2W5: aW5 from: anAttackingW5

	aW5 decreaseW7By: 5 * year.
	anAttackingW5 m8: self! !

!S3W3 class methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m22

	^#s3! !

!S4W3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m23

	^10 * kilometer / hour! !

!S4W3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m24

	^20 * kilogram! !

!S4W3 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
w1S1W5: aW5 from: anAttackingW5

	aW5 decreaseW7By: 5 * year.
	self replaceIn: anAttackingW5 by: S5W3 new afterW1s: 5! !

!S4W3 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
w1S2W5: aW5 from: anAttackingW5

	aW5 decreaseW7By: 50 * year.
	(aW5 hasW7AtMost: 50 * year) ifTrue: [ anAttackingW5 m1: S3W3 new ]! !

!S4W3 class methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m22

	^#s4! !

!S5W3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m23

	^15 * kilometer / hour! !

!S5W3 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m24

	^40 * kilogram! !

!S5W3 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
w1S1W5: aW5 from: anAttackingW5

	aW5 decreaseW7By: 100 * year.
	self removeFrom: anAttackingW5 afterW1s: 10! !

!S5W3 methodsFor: 'w1' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
w1S2W5: aW5 from: anAttackingW5

	aW5 decreaseW7By: 100 * year.
	self replaceIn: anAttackingW5 by: S4W3 new afterW1s: 5! !

!S5W3 class methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:35:36 am (UTC)'!
m22

	^#s5! !

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

!C3 methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:35:50 am (UTC)'!
assertW1ing: aTargetW5 with: aW3 leavesItsW7At: anExpectedW7

	| attackingW5 |
	
	attackingW5 := self m26.
	attackingW5 m1: aW3.
	
	attackingW5 m2: aTargetW5 a2: aW3.
	
	self assert: aTargetW5 m6 equals: anExpectedW7! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:35:58 am (UTC)'!
test01
	
	| w5 w3 |
	
	w5 := self m26.
	w3 := self m30.
	w5 m1: w3.
	
	self
		should: [ w5 m1: self m30 ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C1 m17.
			self assert: w5 m15 equals: 1.
			self assert: (w5 m3: w3) ]! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:35:58 am (UTC)'!
test02
	
	| w5 firstW3 secondW3 |
	
	w5 := self m29.
	firstW3 := self m30.
	w5 m1: firstW3.
	secondW3 := self m30.
	w5 m1: secondW3.
		
	self
		should: [ w5 m1: self m30 ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: C1 m19.
			self assert: w5 m15 equals: 2.
			self assert: (w5 m3: firstW3).
			self assert: (w5 m3: secondW3) ]! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:35:50 am (UTC)'!
test07

	self assertW1ing: self m26 with: self m27 leavesItsW7At: 100 * year - (25 * year)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:35:50 am (UTC)'!
test08

	self assertW1ing: self m29 with: self m27 leavesItsW7At: 100 * year - (5 * year)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:35:50 am (UTC)'!
test09

	self assertW1ing: self m26 with: self m28 leavesItsW7At: 100 * year - (5 * year)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:35:50 am (UTC)'!
test10

	self assertW1ing: self m29 with: self m28 leavesItsW7At: 100 * year - (50 * year)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:35:50 am (UTC)'!
test11

	self assertW1ing: self m26 with: self m30 leavesItsW7At: 100 * year - (100 * year)! !

!C3 methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:35:50 am (UTC)'!
test12

	self assertW1ing: self m29 with: self m30 leavesItsW7At: 100 * year - (100 * year)! !

!C3 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:29 am (UTC)'!
initialize

	| t1 |
	gram := BaseUnit named: 'S6' sign: 'S7'.
	t1 := ProportionalDerivedUnit baseUnit: gram conversionFactor: 1000  named: 'S8' sign: 'S9'.
	
	Smalltalk at: #s6 put: t1
	! !
C3 initialize!
