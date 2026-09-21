'From Cuis7.9 [latest update: #8185] on 21 September 2026 at 2:45:40 pm'!
'Description '!
!provides: 'BoundedStack' 1 1!
SystemOrganization addCategory: #BoundedStack!
SystemOrganization addCategory: #'BoundedStack-Tests'!


!classDefinition: #BoundedStack category: #BoundedStack!
Object subclass: #BoundedStack
	instanceVariableNames: 'items top capacity'
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


!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:31 pm (UTC)'!
initialize: aCapacity
	capacity := aCapacity.
	items := Array new: aCapacity.
	top := 0.! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:39 pm (UTC)'!
isEmpty
	^ top <= 0! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:37 pm (UTC)'!
pop
	| result |
	top <= 0 ifTrue: [self error: 'stack is empty'].
	result := items at: top.
	top := top - 1.
	^ result! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:33 pm (UTC)'!
push: anObject
	top >= capacity ifTrue: [self error: 'stack is full'].
	top := top + 1.
	items at: top put: anObject.! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:40 pm (UTC)'!
size
	^ top! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:38 pm (UTC)'!
top
	top <= 0 ifTrue: [self error: 'stack is empty'].
	^ items at: top! !

!BoundedStack class methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:30 pm (UTC)'!
new: aCapacity
	(aCapacity isInteger and: [aCapacity > 0])
		ifFalse: [self error: 'capacity must be a positive integer'].
	^ super new initialize: aCapacity! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:45:09 pm (UTC)'!
testAlternatingPushPop
	| stack |
	stack := BoundedStack new: 3.
	stack push: 1.
	self assert: (stack pop) equals: 1.
	self assert: stack isEmpty.
	stack push: 2.
	stack push: 3.
	self assert: (stack pop) equals: 3.
	stack push: 4.
	self assert: stack size equals: 2.
	self assert: (stack pop) equals: 4.
	self assert: (stack pop) equals: 2.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:45:12 pm (UTC)'!
testCapacityOne
	| stack |
	stack := BoundedStack new: 1.
	self assert: stack isEmpty.
	self assert: stack size equals: 0.
	stack push: 'only'.
	self deny: stack isEmpty.
	self assert: stack size equals: 1.
	self assert: (stack top) equals: 'only'.
	self should: [stack push: 'second'] raise: Error.
	self assert: (stack pop) equals: 'only'.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:45:20 pm (UTC)'!
testCreationErrorMessage
	[BoundedStack new: 0]
		on: Error
		do: [:ex | self assert: ex messageText equals: 'capacity must be a positive integer'].
	[BoundedStack new: -5]
		on: Error
		do: [:ex | self assert: ex messageText equals: 'capacity must be a positive integer'].
	[BoundedStack new: 2.5]
		on: Error
		do: [:ex | self assert: ex messageText equals: 'capacity must be a positive integer']! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:48 pm (UTC)'!
testCreationWithNonIntegerCapacity
	self should: [BoundedStack new: 3.5] raise: Error.
	self should: [BoundedStack new: 'five'] raise: Error! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:47 pm (UTC)'!
testCreationWithNonPositiveCapacity
	self should: [BoundedStack new: 0] raise: Error.
	self should: [BoundedStack new: -1] raise: Error! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:45 pm (UTC)'!
testCreationWithValidCapacity
	| stack |
	stack := BoundedStack new: 5.
	self assert: stack isEmpty.
	self assert: stack size equals: 0! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:45:14 pm (UTC)'!
testDifferentObjectTypes
	| stack |
	stack := BoundedStack new: 5.
	stack push: 42.
	stack push: 'string'.
	stack push: #symbol.
	stack push: (Array with: 1 with: 2).
	stack push: nil.
	self assert: (stack pop) equals: nil.
	self assert: (stack pop) equals: (Array with: 1 with: 2).
	self assert: (stack pop) equals: #symbol.
	self assert: (stack pop) equals: 'string'.
	self assert: (stack pop) equals: 42! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:45:02 pm (UTC)'!
testPopOnEmptyStack
	| stack |
	stack := BoundedStack new: 3.
	self should: [stack pop] raise: Error! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:45:24 pm (UTC)'!
testPopOnEmptyStackErrorMessage
	| stack |
	stack := BoundedStack new: 2.
	[stack pop]
		on: Error
		do: [:ex | self assert: ex messageText equals: 'stack is empty']! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:53 pm (UTC)'!
testPushAndPop
	| stack |
	stack := BoundedStack new: 3.
	stack push: 'a'.
	self deny: stack isEmpty.
	self assert: stack size equals: 1.
	stack push: 'b'.
	self assert: stack size equals: 2.
	stack push: 'c'.
	self assert: stack size equals: 3.
	self assert: (stack pop) equals: 'c'.
	self assert: stack size equals: 2.
	self assert: (stack pop) equals: 'b'.
	self assert: stack size equals: 1.
	self assert: (stack pop) equals: 'a'.
	self assert: stack size equals: 0.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:59 pm (UTC)'!
testPushOnFullStack
	| stack |
	stack := BoundedStack new: 2.
	stack push: 1.
	stack push: 2.
	self should: [stack push: 3] raise: Error! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:45:22 pm (UTC)'!
testPushOnFullStackErrorMessage
	| stack |
	stack := BoundedStack new: 1.
	stack push: 'a'.
	[stack push: 'b']
		on: Error
		do: [:ex | self assert: ex messageText equals: 'stack is full']! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:55 pm (UTC)'!
testTop
	| stack |
	stack := BoundedStack new: 3.
	stack push: 10.
	self assert: (stack top) equals: 10.
	self assert: stack size equals: 1.
	stack push: 20.
	self assert: (stack top) equals: 20.
	self assert: stack size equals: 2.
	stack push: 30.
	self assert: (stack top) equals: 30.
	self assert: stack size equals: 3! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:44:57 pm (UTC)'!
testTopDoesNotRemove
	| stack |
	stack := BoundedStack new: 2.
	stack push: 'x'.
	stack push: 'y'.
	self assert: (stack top) equals: 'y'.
	self assert: (stack top) equals: 'y'.
	self assert: (stack top) equals: 'y'.
	self assert: stack size equals: 2! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:45:05 pm (UTC)'!
testTopOnEmptyStack
	| stack |
	stack := BoundedStack new: 3.
	self should: [stack top] raise: Error! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 21/Sep/2026, 5:45:26 pm (UTC)'!
testTopOnEmptyStackErrorMessage
	| stack |
	stack := BoundedStack new: 2.
	[stack top]
		on: Error
		do: [:ex | self assert: ex messageText equals: 'stack is empty']! !
