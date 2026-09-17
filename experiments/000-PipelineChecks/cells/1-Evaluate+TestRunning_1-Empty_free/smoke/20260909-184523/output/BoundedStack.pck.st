'From Cuis7.9 [latest update: #8163] on 9 September 2026 at 6:46:32 pm'!
'Description '!
!provides: 'BoundedStack' 1 1!
SystemOrganization addCategory: #BoundedStack!
SystemOrganization addCategory: #'BoundedStack-Tests'!


!classDefinition: #BoundedStack category: #BoundedStack!
Object subclass: #BoundedStack
	instanceVariableNames: 'elements capacity topIndex'
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


!BoundedStack methodsFor: 'initialization' stamp: 'HAW 9/Sep/2026, 9:45:43 pm (UTC)'!
initialize: anInteger
	capacity := anInteger.
	elements := Array new: anInteger.
	topIndex := 0! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 9:45:49 pm (UTC)'!
pop
	| result |
	topIndex = 0
		ifTrue: [self error: 'stack is empty'].
	result := elements at: topIndex.
	topIndex := topIndex - 1.
	^result! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 9:45:45 pm (UTC)'!
push: anObject
	topIndex >= capacity
		ifTrue: [self error: 'stack is full'].
	topIndex := topIndex + 1.
	elements at: topIndex put: anObject! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 9:45:50 pm (UTC)'!
top
	topIndex = 0
		ifTrue: [self error: 'stack is empty'].
	^elements at: topIndex! !

!BoundedStack methodsFor: 'testing' stamp: 'HAW 9/Sep/2026, 9:45:52 pm (UTC)'!
isEmpty
	^topIndex = 0! !

!BoundedStack methodsFor: 'testing' stamp: 'HAW 9/Sep/2026, 9:45:53 pm (UTC)'!
size
	^topIndex! !

!BoundedStack class methodsFor: 'instance creation' stamp: 'HAW 9/Sep/2026, 9:45:41 pm (UTC)'!
capacity: anInteger
	(anInteger isInteger and: [anInteger > 0])
		ifFalse: [self error: 'capacity must be a positive integer'].
	^self basicNew initialize: anInteger! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 9/Sep/2026, 9:45:59 pm (UTC)'!
testCreateWithInvalidCapacity
	self should: [BoundedStack capacity: 0] raise: Error.
	self should: [BoundedStack capacity: -5] raise: Error.
	self should: [BoundedStack capacity: 1.5] raise: Error! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 9/Sep/2026, 9:45:57 pm (UTC)'!
testCreateWithValidCapacity
	| stack |
	stack := BoundedStack capacity: 5.
	self assert: stack isEmpty.
	self assert: stack size equals: 0! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 9/Sep/2026, 9:46:16 pm (UTC)'!
testErrorMessages
	| stack |
	self should: [BoundedStack capacity: 0] raise: Error.
	self should: [BoundedStack capacity: -5] raise: Error.
	stack := BoundedStack capacity: 1.
	stack push: 'item'.
	self should: [stack push: 'another'] raise: Error.
	stack := BoundedStack capacity: 1.
	self should: [stack pop] raise: Error! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 9/Sep/2026, 9:46:07 pm (UTC)'!
testPopOnEmptyStack
	| stack |
	stack := BoundedStack capacity: 2.
	self should: [stack pop] raise: Error! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 9/Sep/2026, 9:46:02 pm (UTC)'!
testPushAndPop
	| stack |
	stack := BoundedStack capacity: 3.
	stack push: 'a'.
	self assert: stack size equals: 1.
	self deny: stack isEmpty.
	stack push: 'b'.
	self assert: stack size equals: 2.
	self assert: (stack pop) equals: 'b'.
	self assert: stack size equals: 1.
	self assert: (stack pop) equals: 'a'.
	self assert: stack isEmpty! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 9/Sep/2026, 9:46:06 pm (UTC)'!
testPushOnFullStack
	| stack |
	stack := BoundedStack capacity: 2.
	stack push: 1.
	stack push: 2.
	self should: [stack push: 3] raise: Error! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 9/Sep/2026, 9:46:04 pm (UTC)'!
testTop
	| stack |
	stack := BoundedStack capacity: 3.
	stack push: 'x'.
	stack push: 'y'.
	self assert: (stack top) equals: 'y'.
	self assert: stack size equals: 2.
	self assert: (stack top) equals: 'y'.
	stack pop.
	self assert: (stack top) equals: 'x'! !

!BoundedStackTests methodsFor: 'tests' stamp: 'HAW 9/Sep/2026, 9:46:09 pm (UTC)'!
testTopOnEmptyStack
	| stack |
	stack := BoundedStack capacity: 2.
	self should: [stack top] raise: Error! !
