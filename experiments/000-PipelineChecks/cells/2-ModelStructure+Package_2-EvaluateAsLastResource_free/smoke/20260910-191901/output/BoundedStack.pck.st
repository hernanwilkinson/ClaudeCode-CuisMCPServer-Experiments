'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 7:20:13 pm'!
'Description '!
!provides: 'BoundedStack' 1 1!
SystemOrganization addCategory: #BoundedStack!
SystemOrganization addCategory: #'BoundedStack-Tests'!


!classDefinition: #BoundedStack category: #BoundedStack!
Object subclass: #BoundedStack
	instanceVariableNames: 'items capacity currentSize'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BoundedStack'!
!classDefinition: 'BoundedStack class' category: #BoundedStack!
BoundedStack class
	instanceVariableNames: ''!

!classDefinition: #BoundedStackTests category: #'BoundedStack-Tests'!
TestCase subclass: #BoundedStackTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BoundedStack-Tests'!
!classDefinition: 'BoundedStackTests class' category: #'BoundedStack-Tests'!
BoundedStackTests class
	instanceVariableNames: ''!


!BoundedStack methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 10:19:18 pm (UTC)'!
initializeCapacity: aCapacity
	capacity := aCapacity.
	items := Array new: capacity.
	currentSize := 0! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:19:22 pm (UTC)'!
isEmpty
	^currentSize = 0! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:19:26 pm (UTC)'!
pop
	| result |
	currentSize = 0
		ifTrue: [self error: 'stack is empty'].
	result := items at: currentSize.
	currentSize := currentSize - 1.
	^result! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:19:20 pm (UTC)'!
push: anObject
	currentSize >= capacity
		ifTrue: [self error: 'stack is full'].
	currentSize := currentSize + 1.
	items at: currentSize put: anObject! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:19:23 pm (UTC)'!
size
	^currentSize! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:19:22 pm (UTC)'!
top
	currentSize = 0
		ifTrue: [self error: 'stack is empty'].
	^items at: currentSize! !

!BoundedStack class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 10:19:17 pm (UTC)'!
capacity: aCapacity
	(aCapacity isInteger and: [aCapacity > 0])
		ifFalse: [self error: 'capacity must be a positive integer'].
	^self new initializeCapacity: aCapacity! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:32 pm (UTC)'!
testCapacityMustBePositiveInteger
	self should: [BoundedStack capacity: 0] raise: Error.
	self should: [BoundedStack capacity: -1] raise: Error.
	self should: [BoundedStack capacity: 1.5] raise: Error! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:34 pm (UTC)'!
testCreateStackWithValidCapacity
	| stack |
	stack := BoundedStack capacity: 5.
	self assert: stack isEmpty.
	self assert: stack size = 0! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:58 pm (UTC)'!
testErrorMessageForFullStack
	| stack |
	stack := BoundedStack capacity: 1.
	stack push: 'only'.
	self should: [stack push: 'overflow'] raise: Error withExceptionDo: [:e |
		self assert: e messageText = 'stack is full']! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:57 pm (UTC)'!
testErrorMessageForInvalidCapacity
	self should: [BoundedStack capacity: 0] raise: Error withExceptionDo: [:e | 
		self assert: e messageText = 'capacity must be a positive integer']! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:59 pm (UTC)'!
testErrorMessageForPopOnEmpty
	| stack |
	stack := BoundedStack capacity: 3.
	self should: [stack pop] raise: Error withExceptionDo: [:e |
		self assert: e messageText = 'stack is empty']! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:20:00 pm (UTC)'!
testErrorMessageForTopOnEmpty
	| stack |
	stack := BoundedStack capacity: 3.
	self should: [stack top] raise: Error withExceptionDo: [:e |
		self assert: e messageText = 'stack is empty']! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:37 pm (UTC)'!
testIsEmpty
	| stack |
	stack := BoundedStack capacity: 2.
	self assert: stack isEmpty.
	stack push: 'item'.
	self deny: stack isEmpty.
	stack pop.
	self assert: stack isEmpty! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:45 pm (UTC)'!
testLIFOBehavior
	| stack |
	stack := BoundedStack capacity: 4.
	stack push: 'a'.
	stack push: 'b'.
	stack push: 'c'.
	self assert: stack pop = 'c'.
	self assert: stack pop = 'b'.
	self assert: stack pop = 'a'! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:46 pm (UTC)'!
testMultiplePushPopCycles
	| stack |
	stack := BoundedStack capacity: 2.
	stack push: 1.
	stack push: 2.
	self assert: stack pop = 2.
	stack push: 3.
	self assert: stack pop = 3.
	self assert: stack pop = 1.
	self assert: stack isEmpty! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:41 pm (UTC)'!
testPopOnEmptyStackFails
	| stack |
	stack := BoundedStack capacity: 3.
	self should: [stack pop] raise: Error! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:35 pm (UTC)'!
testPushAndPop
	| stack result |
	stack := BoundedStack capacity: 3.
	stack push: 'first'.
	stack push: 'second'.
	stack push: 'third'.
	result := stack pop.
	self assert: result = 'third'.
	self assert: stack size = 2! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:39 pm (UTC)'!
testPushOnFullStackFails
	| stack |
	stack := BoundedStack capacity: 2.
	stack push: 'first'.
	stack push: 'second'.
	self should: [stack push: 'third'] raise: Error! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:38 pm (UTC)'!
testSize
	| stack |
	stack := BoundedStack capacity: 5.
	self assert: stack size = 0.
	stack push: 1.
	self assert: stack size = 1.
	stack push: 2.
	self assert: stack size = 2.
	stack pop.
	self assert: stack size = 1.
	stack pop.
	self assert: stack size = 0! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:43 pm (UTC)'!
testTopOnEmptyStackFails
	| stack |
	stack := BoundedStack capacity: 3.
	self should: [stack top] raise: Error! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 10:19:36 pm (UTC)'!
testTopWithoutRemoving
	| stack result1 result2 |
	stack := BoundedStack capacity: 3.
	stack push: 42.
	result1 := stack top.
	result2 := stack top.
	self assert: result1 = 42.
	self assert: result2 = 42.
	self assert: stack size = 1! !
