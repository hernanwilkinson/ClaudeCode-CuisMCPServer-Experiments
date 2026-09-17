'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 5:52:45 pm'!
'Description '!
!provides: 'BoundedStack' 1 1!
SystemOrganization addCategory: #BoundedStack!
SystemOrganization addCategory: #'BoundedStack-Tests'!


!classDefinition: #BoundedStack category: #BoundedStack!
Object subclass: #BoundedStack
	instanceVariableNames: 'elements capacity count'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BoundedStack'!
!classDefinition: 'BoundedStack class' category: #BoundedStack!
BoundedStack class
	instanceVariableNames: ''!

!classDefinition: #BoundedStackTest category: #'BoundedStack-Tests'!
TestCase subclass: #BoundedStackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BoundedStack-Tests'!
!classDefinition: 'BoundedStackTest class' category: #'BoundedStack-Tests'!
BoundedStackTest class
	instanceVariableNames: ''!


!BoundedStack methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 8:51:55 pm (UTC)'!
initializeWithCapacity: cap
	capacity := cap.
	count := 0.
	elements := Array new: cap.! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 8:52:01 pm (UTC)'!
isEmpty
	^ count = 0! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 8:51:58 pm (UTC)'!
pop
	| result |
	count = 0 ifTrue: [self error: 'stack is empty'].
	result := elements at: count.
	count := count - 1.
	^ result! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 8:51:57 pm (UTC)'!
push: anObject
	count = capacity ifTrue: [self error: 'stack is full'].
	count := count + 1.
	elements at: count put: anObject.! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 8:52:03 pm (UTC)'!
size
	^ count! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 8:52:00 pm (UTC)'!
top
	count = 0 ifTrue: [self error: 'stack is empty'].
	^ elements at: count! !

!BoundedStack class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 8:51:39 pm (UTC)'!
capacity: cap
	(cap isInteger and: [cap > 0])
		ifTrue: [^ self new initializeWithCapacity: cap]
		ifFalse: [self error: 'capacity must be a positive integer']! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:14 pm (UTC)'!
testCreateWithNegativeCapacityFails
	self should: [BoundedStack capacity: -5] raise: Error.! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:15 pm (UTC)'!
testCreateWithNonIntegerCapacityFails
	self should: [BoundedStack capacity: 5.5] raise: Error.! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:08 pm (UTC)'!
testCreateWithValidCapacity
	| stack |
	stack := BoundedStack capacity: 5.
	self assert: stack isEmpty.
	self assert: stack size = 0.! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:12 pm (UTC)'!
testCreateWithZeroCapacityFails
	self should: [BoundedStack capacity: 0] raise: Error.! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:21 pm (UTC)'!
testMultiplePushesAndPops
	| stack |
	stack := BoundedStack capacity: 5.
	stack push: 1.
	stack push: 2.
	stack push: 3.
	self assert: stack size = 3.
	self assert: stack top = 3.
	self assert: stack pop = 3.
	self assert: stack size = 2.
	self assert: stack pop = 2.
	self assert: stack pop = 1.
	self assert: stack isEmpty.! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:25 pm (UTC)'!
testPopFromEmptyStackFails
	| stack |
	stack := BoundedStack capacity: 5.
	self should: [stack pop] raise: Error.! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:19 pm (UTC)'!
testPushAndPop
	| stack |
	stack := BoundedStack capacity: 5.
	stack push: 42.
	self assert: stack pop = 42.
	self assert: stack isEmpty.! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:17 pm (UTC)'!
testPushAndTop
	| stack |
	stack := BoundedStack capacity: 5.
	stack push: 42.
	self assert: stack size = 1.
	self assert: stack top = 42.! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:23 pm (UTC)'!
testPushToFullStackFails
	| stack |
	stack := BoundedStack capacity: 2.
	stack push: 1.
	stack push: 2.
	self should: [stack push: 3] raise: Error.! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:31 pm (UTC)'!
testSizeTracking
	| stack |
	stack := BoundedStack capacity: 10.
	self assert: stack size = 0.
	stack push: 'a'.
	self assert: stack size = 1.
	stack push: 'b'.
	stack push: 'c'.
	self assert: stack size = 3.
	stack pop.
	self assert: stack size = 2.! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:28 pm (UTC)'!
testTopDoesNotRemoveElement
	| stack |
	stack := BoundedStack capacity: 5.
	stack push: 42.
	self assert: stack top = 42.
	self assert: stack top = 42.
	self assert: stack size = 1.! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:26 pm (UTC)'!
testTopOnEmptyStackFails
	| stack |
	stack := BoundedStack capacity: 5.
	self should: [stack top] raise: Error.! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 8:52:33 pm (UTC)'!
testWithDifferentObjectTypes
	| stack |
	stack := BoundedStack capacity: 5.
	stack push: 42.
	stack push: 'string'.
	stack push: {1. 2. 3}.
	stack push: (Point x: 10 y: 20).
	self assert: stack size = 4.
	self assert: stack pop = (Point x: 10 y: 20).! !
