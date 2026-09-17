'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:51:45 am'!
'Description '!
!provides: 'Task1' 1 2!
SystemOrganization addCategory: #Task1!
SystemOrganization addCategory: #'Task1-Tests'!


!classDefinition: #C1 category: #Task1!
Object subclass: #C1
	instanceVariableNames: 'v2 v3 v4 v5'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C1 class' category: #Task1!
C1 class
	instanceVariableNames: ''!

!classDefinition: #C1OfTypeS1 category: #Task1!
C1 subclass: #C1OfTypeS1
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C1OfTypeS1 class' category: #Task1!
C1OfTypeS1 class
	instanceVariableNames: ''!

!classDefinition: #C1OfTypeS2 category: #Task1!
C1 subclass: #C1OfTypeS2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C1OfTypeS2 class' category: #Task1!
C1OfTypeS2 class
	instanceVariableNames: ''!

!classDefinition: #C2 category: #Task1!
Object subclass: #C2
	instanceVariableNames: 'v7 v8 v9'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C2 class' category: #Task1!
C2 class
	instanceVariableNames: ''!

!classDefinition: #C2OfTypeS3 category: #Task1!
C2 subclass: #C2OfTypeS3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C2OfTypeS3 class' category: #Task1!
C2OfTypeS3 class
	instanceVariableNames: ''!

!classDefinition: #C2OfTypeS4 category: #Task1!
C2 subclass: #C2OfTypeS4
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C2OfTypeS4 class' category: #Task1!
C2OfTypeS4 class
	instanceVariableNames: ''!

!classDefinition: #C2OfTypeS5 category: #Task1!
C2 subclass: #C2OfTypeS5
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task1'!
!classDefinition: 'C2OfTypeS5 class' category: #Task1!
C2OfTypeS5 class
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


!C1 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
initializeW7Time: aW7Time w6: aW6 maxW3W4: aMaxW3W4

	v2 := aW7Time.
	v3 := aW6.
	v4 := aMaxW3W4.
	v5 := OrderedCollection new! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m1: aW3

	self m13 + aW3 m24 > v4 ifTrue: [ self m10 ].
	self m12 + aW3 m23 > v3 ifTrue: [ self m11 ].

	v5 add: aW3! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m12

	^ (v5 select: [ :aW3 | aW3 m24 > (10 * kilogram) ])
		inject: 0 * kilometer / hour
		into: [ :totalW2 :aW3 | totalW2 + aW3 m23 ]! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m13

	^ v5 inject: 0 * kilogram into: [ :totalW4 :aW3 | totalW4 + aW3 m24 ]! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m15

	^ v5 size! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m3: aW3

	^ v5 includes: aW3! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m4: aType

	^ v5 anySatisfy: [ :aW3 | aW3 m22 = aType ]! !

!C1 methodsFor: 'w3s' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m8: aW3

	v5 remove: aW3! !

!C1 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m2: aTarget a2: aW3

	(self m3: aW3)
		ifTrue: [ aW3 m20: aTarget a20: self ]
		ifFalse: [ self m9 ]! !

!C1 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w1edWith: aW3 by: anAttacker

	self subclassResponsibility! !

!C1 methodsFor: 'w7 time' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
isW7TimeAtMost: aW7Time

	^ v2 <= aW7Time! !

!C1 methodsFor: 'w7 time' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m6

	^ v2! !

!C1 methodsFor: 'w7 time' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w2W7TimeBy: aW7Time

	v2 := v2 - aW7Time! !

!C1 methodsFor: 'error signaling' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m10

	self error: self class m17! !

!C1 methodsFor: 'error signaling' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m11

	self error: self class m19! !

!C1 methodsFor: 'error signaling' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m9

	self error: self class m16! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m25: aType

	^ (self subclassOfType: aType) withDefaultCharacteristics! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
subclassOfType: aType

	^ self subclasses
		detect: [ :aSubclass | aSubclass m22 = aType ]
		ifNone: [ self error: self invalidTypeErrorDescription ]! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w7Time: aW7Time w6: aW6 maxW3W4: aMaxW3W4

	^ self new initializeW7Time: aW7Time w6: aW6 maxW3W4: aMaxW3W4! !

!C1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
withDefaultCharacteristics

	self subclassResponsibility! !

!C1 class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m22

	self subclassResponsibility! !

!C1 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
invalidTypeErrorDescription

	^ 'S4'! !

!C1 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m16

	^ 'S1'! !

!C1 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m17

	^ 'S2'! !

!C1 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m19

	^ 'S3'! !

!C1OfTypeS1 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w1edWith: aW3 by: anAttacker

	aW3 w1C1OfTypeS1: self by: anAttacker! !

!C1OfTypeS1 class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m22

	^ #s1! !

!C1OfTypeS1 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
withDefaultCharacteristics

	^ self
		w7Time: 100 * year
		w6: 90 * kilometer / hour
		maxW3W4: 50 * kilogram! !

!C1OfTypeS2 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w1edWith: aW3 by: anAttacker

	aW3 w1C1OfTypeS2: self by: anAttacker! !

!C1OfTypeS2 class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m22

	^ #s2! !

!C1OfTypeS2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
withDefaultCharacteristics

	^ self
		w7Time: 100 * year
		w6: 40 * kilometer / hour
		maxW3W4: 200 * kilogram! !

!C2 methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
initializeW4: aW4 w2OnW6: aW2OnW6

	v7 := aW4.
	v8 := aW2OnW6.
	v9 := 0! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m22

	^ self class m22! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m23

	^ v8! !

!C2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m24

	^ v7! !

!C2 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m20: aTarget a20: anAttacker

	v9 := v9 + 1.
	aTarget w1edWith: self by: anAttacker! !

!C2 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
removeFrom: anAttacker whenW1edTimes: aNumberOfW1s

	v9 = aNumberOfW1s ifTrue: [ anAttacker m8: self ]! !

!C2 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
replaceIn: anAttacker with: aReplacement whenW1edTimes: aNumberOfW1s

	v9 = aNumberOfW1s ifTrue: [
		anAttacker m8: self.
		anAttacker m1: aReplacement ]! !

!C2 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w1C1OfTypeS1: aTarget by: anAttacker

	self subclassResponsibility! !

!C2 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w1C1OfTypeS2: aTarget by: anAttacker

	self subclassResponsibility! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m25: aType

	^ (self subclassOfType: aType) withDefaultCharacteristics! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
subclassOfType: aType

	^ self subclasses
		detect: [ :aSubclass | aSubclass m22 = aType ]
		ifNone: [ self error: self invalidTypeErrorDescription ]! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w4: aW4 w2OnW6: aW2OnW6

	^ self new initializeW4: aW4 w2OnW6: aW2OnW6! !

!C2 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
withDefaultCharacteristics

	self subclassResponsibility! !

!C2 class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m22

	self subclassResponsibility! !

!C2 class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
invalidTypeErrorDescription

	^ 'S5'! !

!C2OfTypeS3 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w1C1OfTypeS1: aTarget by: anAttacker

	aTarget w2W7TimeBy: 25 * year.
	self removeFrom: anAttacker whenW1edTimes: 2! !

!C2OfTypeS3 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w1C1OfTypeS2: aTarget by: anAttacker

	aTarget w2W7TimeBy: 5 * year.
	anAttacker m8: self! !

!C2OfTypeS3 class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m22

	^ #s3! !

!C2OfTypeS3 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
withDefaultCharacteristics

	^ self w4: 10 * kilogram w2OnW6: 5 * kilometer / hour! !

!C2OfTypeS4 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w1C1OfTypeS1: aTarget by: anAttacker

	aTarget w2W7TimeBy: 5 * year.
	self
		replaceIn: anAttacker
		with: C2OfTypeS5 withDefaultCharacteristics
		whenW1edTimes: 5! !

!C2OfTypeS4 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w1C1OfTypeS2: aTarget by: anAttacker

	aTarget w2W7TimeBy: 50 * year.
	(aTarget isW7TimeAtMost: 50 * year) ifTrue: [ anAttacker m1: C2OfTypeS3 withDefaultCharacteristics ]! !

!C2OfTypeS4 class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m22

	^ #s4! !

!C2OfTypeS4 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
withDefaultCharacteristics

	^ self w4: 20 * kilogram w2OnW6: 10 * kilometer / hour! !

!C2OfTypeS5 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w1C1OfTypeS1: aTarget by: anAttacker

	aTarget w2W7TimeBy: 100 * year.
	self removeFrom: anAttacker whenW1edTimes: 10! !

!C2OfTypeS5 methodsFor: 'w1ing' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
w1C1OfTypeS2: aTarget by: anAttacker

	aTarget w2W7TimeBy: 100 * year.
	self
		replaceIn: anAttacker
		with: C2OfTypeS4 withDefaultCharacteristics
		whenW1edTimes: 5! !

!C2OfTypeS5 class methodsFor: 'type' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
m22

	^ #s5! !

!C2OfTypeS5 class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:51:07 am (UTC)'!
withDefaultCharacteristics

	^ self w4: 40 * kilogram w2OnW6: 15 * kilometer / hour! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
attackerW1ing: aTarget with: aW3 times: aNumberOfW1s

	| attacker |

	attacker := self m26.
	attacker m1: aW3.
	aNumberOfW1s timesRepeat: [ attacker m2: aTarget a2: aW3 ].

	^ attacker! !

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

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
test07

	self assert: (self w7TimeOf: self m26 afterBeingW1edWith: self m27) equals: 100 * year - (25 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
test08

	self assert: (self w7TimeOf: self m29 afterBeingW1edWith: self m27) equals: 100 * year - (5 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
test09

	self assert: (self w7TimeOf: self m26 afterBeingW1edWith: self m28) equals: 100 * year - (5 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
test10

	self assert: (self w7TimeOf: self m29 afterBeingW1edWith: self m28) equals: 100 * year - (50 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
test11

	self assert: (self w7TimeOf: self m26 afterBeingW1edWith: self m30) equals: 100 * year - (100 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
test12

	self assert: (self w7TimeOf: self m29 afterBeingW1edWith: self m30) equals: 100 * year - (100 * year)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
test13

	| target w3 attacker |

	target := self m26.
	w3 := self m27.
	attacker := self attackerW1ing: target with: w3 times: 2.

	self
		should: [ attacker m2: target a2: w3 ]
		raise: Error
		withMessageText: C1 m16! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
test14

	| target w3 attacker |

	target := self m29.
	w3 := self m27.
	attacker := self attackerW1ing: target with: w3 times: 1.

	self
		should: [ attacker m2: target a2: w3 ]
		raise: Error
		withMessageText: C1 m16! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
test15

	| attacker |

	attacker := self attackerW1ing: self m26 with: self m28 times: 5.

	self assert: attacker m15 equals: 1.
	self assert: (attacker m4: #s5)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
test16

	| w3 attacker |

	w3 := self m28.
	attacker := self attackerW1ing: self m29 with: w3 times: 1.

	self assert: attacker m15 equals: 2.
	self assert: (attacker m3: w3).
	self assert: (attacker m4: #s3)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
test17

	| attacker |

	attacker := self attackerW1ing: self m26 with: self m30 times: 10.

	self assert: attacker m15 equals: 0! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
test18

	| attacker |

	attacker := self attackerW1ing: self m29 with: self m30 times: 5.

	self assert: attacker m15 equals: 1.
	self assert: (attacker m4: #s4)! !

!C3 methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 9:51:28 am (UTC)'!
w7TimeOf: aTarget afterBeingW1edWith: aW3

	self attackerW1ing: aTarget with: aW3 times: 1.

	^ aTarget m6! !

!C3 class methodsFor: 'x' stamp: 'HAW 17/Sep/2026, 3:55:29 am (UTC)'!
initialize

	| t1 |
	gram := BaseUnit named: 'S6' sign: 'S7'.
	t1 := ProportionalDerivedUnit baseUnit: gram conversionFactor: 1000  named: 'S8' sign: 'S9'.
	
	Smalltalk at: #s6 put: t1
	! !
C3 initialize!
