'From Cuis7.9 [latest update: #8163] on 11 September 2026 at 10:33:39 am'!
'Description '!
!provides: 'BoundedStack' 1 1!
SystemOrganization addCategory: #BoundedStack!
SystemOrganization addCategory: #'BoundedStack-Tests'!


!classDefinition: #BoundedStack category: #BoundedStack!
Object subclass: #BoundedStack
	instanceVariableNames: 'capacity items top'
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


!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:32:51 pm (UTC)'!
initializeWithCapacity: aCapacity
	capacity := aCapacity.
	items := Array new: aCapacity.
	top := 0! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:32:59 pm (UTC)'!
isEmpty
	^ top = 0! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:32:57 pm (UTC)'!
pop
	| value |
	top <= 0 ifTrue: [self error: 'stack is empty'].
	value := items at: top.
	top := top - 1.
	^ value! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:32:53 pm (UTC)'!
push: anObject
	top >= capacity ifTrue: [self error: 'stack is full'].
	top := top + 1.
	items at: top put: anObject! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:00 pm (UTC)'!
size
	^ top! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:32:58 pm (UTC)'!
top
	top <= 0 ifTrue: [self error: 'stack is empty'].
	^ items at: top! !

!BoundedStack class methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:32:49 pm (UTC)'!
newWithCapacity: aCapacity
	| stack |
	aCapacity isInteger ifFalse: [self error: 'capacity must be a positive integer'].
	aCapacity > 0 ifFalse: [self error: 'capacity must be a positive integer'].
	stack := self new.
	stack initializeWithCapacity: aCapacity.
	^ stack! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:06 pm (UTC)'!
testCreateStackWithNegativeCapacityFails
	self should: [BoundedStack newWithCapacity: -1]
		raise: Error
		withExceptionDo: [:ex | self assert: ex messageText = 'capacity must be a positive integer']! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:09 pm (UTC)'!
testCreateStackWithNonIntegerCapacityFails
	self should: [BoundedStack newWithCapacity: 3.5]
		raise: Error
		withExceptionDo: [:ex | self assert: ex messageText = 'capacity must be a positive integer']! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:04 pm (UTC)'!
testCreateStackWithValidCapacity
	| stack |
	stack := BoundedStack newWithCapacity: 5.
	self assert: stack isEmpty.
	self assert: stack size = 0! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:08 pm (UTC)'!
testCreateStackWithZeroCapacityFails
	self should: [BoundedStack newWithCapacity: 0]
		raise: Error
		withExceptionDo: [:ex | self assert: ex messageText = 'capacity must be a positive integer']! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:20 pm (UTC)'!
testLIFOBehavior
	| stack |
	stack := BoundedStack newWithCapacity: 5.
	stack push: 'first'.
	stack push: 'second'.
	stack push: 'third'.
	self assert: (stack pop) = 'third'.
	self assert: (stack pop) = 'second'.
	self assert: (stack pop) = 'first'.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:16 pm (UTC)'!
testPopOnEmptyStackFails
	| stack |
	stack := BoundedStack newWithCapacity: 3.
	self should: [stack pop]
		raise: Error
		withExceptionDo: [:ex | self assert: ex messageText = 'stack is empty']! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:11 pm (UTC)'!
testPushAndPop
	| stack |
	stack := BoundedStack newWithCapacity: 3.
	stack push: 1.
	self assert: stack size = 1.
	self assert: (stack pop) = 1.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:15 pm (UTC)'!
testPushOnFullStackFails
	| stack |
	stack := BoundedStack newWithCapacity: 2.
	stack push: 1.
	stack push: 2.
	self should: [stack push: 3]
		raise: Error
		withExceptionDo: [:ex | self assert: ex messageText = 'stack is full']! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:22 pm (UTC)'!
testPushPopCycle
	| stack |
	stack := BoundedStack newWithCapacity: 2.
	stack push: 1.
	stack push: 2.
	self assert: stack size = 2.
	stack pop.
	stack push: 3.
	self assert: stack size = 2.
	self assert: (stack top) = 3! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:25 pm (UTC)'!
testStoreDifferentTypes
	| stack |
	stack := BoundedStack newWithCapacity: 5.
	stack push: 42.
	stack push: 'hello'.
	stack push: #symbol.
	stack push: (Array with: 1 with: 2).
	self assert: (stack pop) = (Array with: 1 with: 2).
	self assert: (stack pop) = #symbol.
	self assert: (stack pop) = 'hello'.
	self assert: (stack pop) = 42! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:18 pm (UTC)'!
testTopOnEmptyStackFails
	| stack |
	stack := BoundedStack newWithCapacity: 3.
	self should: [stack top]
		raise: Error
		withExceptionDo: [:ex | self assert: ex messageText = 'stack is empty']! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 11/Sep/2026, 1:33:13 pm (UTC)'!
testTopWithoutRemoving
	| stack |
	stack := BoundedStack newWithCapacity: 3.
	stack push: 1.
	stack push: 2.
	self assert: (stack top) = 2.
	self assert: stack size = 2.
	self assert: (stack top) = 2! !
