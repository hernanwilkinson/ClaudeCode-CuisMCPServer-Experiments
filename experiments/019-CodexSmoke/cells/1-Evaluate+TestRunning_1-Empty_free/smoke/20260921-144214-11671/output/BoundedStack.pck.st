'From Cuis7.9 [latest update: #8185] on 21 September 2026 at 2:43:29 pm'!
'Description '!
!provides: 'BoundedStack' 1 1!
SystemOrganization addCategory: #BoundedStack!
SystemOrganization addCategory: #'BoundedStack-Tests'!


!classDefinition: #BoundedStack category: #BoundedStack!
Object subclass: #BoundedStack
	instanceVariableNames: 'elements capacity'
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


!BoundedStack methodsFor: 'initialization' stamp: 'HAW 21/Sep/2026, 5:42:43 pm (UTC)'!
initializeWithCapacity: aCapacity
	super initialize.
	capacity := aCapacity.
	elements := OrderedCollection new.
	^self! !

!BoundedStack methodsFor: 'operations' stamp: 'HAW 21/Sep/2026, 5:42:43 pm (UTC)'!
pop
	self assertNotEmpty.
	^elements removeLast! !

!BoundedStack methodsFor: 'operations' stamp: 'HAW 21/Sep/2026, 5:42:43 pm (UTC)'!
push: anObject
	elements size = capacity ifTrue: [self error: 'stack is full'].
	elements addLast: anObject.
	^anObject! !

!BoundedStack methodsFor: 'operations' stamp: 'HAW 21/Sep/2026, 5:42:43 pm (UTC)'!
top
	self assertNotEmpty.
	^elements last! !

!BoundedStack methodsFor: 'private' stamp: 'HAW 21/Sep/2026, 5:42:43 pm (UTC)'!
assertNotEmpty
	self isEmpty ifTrue: [self error: 'stack is empty']! !

!BoundedStack methodsFor: 'testing' stamp: 'HAW 21/Sep/2026, 5:42:43 pm (UTC)'!
isEmpty
	^elements isEmpty! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 21/Sep/2026, 5:42:43 pm (UTC)'!
size
	^elements size! !

!BoundedStack class methodsFor: 'instance creation' stamp: 'HAW 21/Sep/2026, 5:42:43 pm (UTC)'!
capacity: aCapacity
	(aCapacity isInteger and: [aCapacity > 0]) ifFalse: [
		self error: 'capacity must be a positive integer'].
	^self basicNew initializeWithCapacity: aCapacity! !

!BoundedStack class methodsFor: 'instance creation' stamp: 'HAW 21/Sep/2026, 5:42:43 pm (UTC)'!
new
	self error: 'capacity must be a positive integer'! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testCapacityIsRequired
	self should: [BoundedStack new] raise: Error withMessageText: 'capacity must be a positive integer'! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testDrainedStackRejectsPopAndTop
	| stack |
	stack := BoundedStack capacity: 1.
	stack push: #item; pop.
	self should: [stack pop] raise: Error withMessageText: 'stack is empty'.
	self should: [stack top] raise: Error withMessageText: 'stack is empty'! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testNegativeIntegerCapacitiesAreRejected
	#(-1 -10) do: [:invalid |
		self should: [BoundedStack capacity: invalid] raise: Error withMessageText: 'capacity must be a positive integer']! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testNewStackIsEmpty
	| stack |
	stack := BoundedStack capacity: 2.
	self assert: stack isEmpty.
	self assert: stack size equals: 0! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testNilCanBeStored
	| stack |
	stack := BoundedStack capacity: 1.
	stack push: nil.
	self deny: stack isEmpty.
	self assert: stack size equals: 1.
	self assert: stack top isNil.
	self assert: stack pop isNil.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testNonIntegerCapacitiesAreRejected
	{1.0. 1.5. (3 / 2). '2'. #two. nil. true. false. Object new} do: [:invalid |
		self should: [BoundedStack capacity: invalid] raise: Error withMessageText: 'capacity must be a positive integer']! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testPopMakesCapacityAvailableAgain
	| stack |
	stack := BoundedStack capacity: 1.
	stack push: #first.
	self should: [stack push: #overflow] raise: Error withMessageText: 'stack is full'.
	self assert: stack pop equals: #first.
	stack push: #second.
	self assert: stack size equals: 1.
	self assert: stack pop equals: #second! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testPopOnEmptyStackFails
	| stack |
	stack := BoundedStack capacity: 1.
	self should: [stack pop] raise: Error withMessageText: 'stack is empty'.
	self assert: stack isEmpty.
	self assert: stack size equals: 0.
	stack push: #afterError.
	self assert: stack pop equals: #afterError! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testPopReturnsAndRemovesObjectsInLastInFirstOutOrder
	| stack first second |
	stack := BoundedStack capacity: 2.
	first := Object new.
	second := Object new.
	stack push: first; push: second.
	self assert: stack pop == second.
	self assert: stack size equals: 1.
	self assert: stack top == first.
	self assert: stack pop == first.
	self assert: stack isEmpty.
	self assert: stack size equals: 0! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testPositiveIntegerCapacitiesAreAccepted
	#(1 2 10) do: [:limit |
		| stack |
		stack := BoundedStack capacity: limit.
		1 to: limit do: [:index | stack push: index].
		self assert: stack size equals: limit.
		self should: [stack push: #overflow] raise: Error withMessageText: 'stack is full']! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testPushAddsObjectOnTop
	| stack first second |
	stack := BoundedStack capacity: 2.
	first := Object new.
	second := Object new.
	stack push: first.
	self deny: stack isEmpty.
	self assert: stack size equals: 1.
	self assert: stack top == first.
	stack push: second.
	self assert: stack size equals: 2.
	self assert: stack top == second! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testPushOnFullStackFailsWithoutChangingContents
	| stack first second |
	stack := BoundedStack capacity: 2.
	first := Object new.
	second := Object new.
	stack push: first; push: second.
	self should: [stack push: Object new] raise: Error withMessageText: 'stack is full'.
	self assert: stack size equals: 2.
	self assert: stack pop == second.
	self assert: stack pop == first! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testStacksHaveIndependentContentsAndCapacities
	| first second |
	first := BoundedStack capacity: 1.
	second := BoundedStack capacity: 2.
	first push: #first.
	self assert: second isEmpty.
	second push: #second; push: #third.
	self assert: first size equals: 1.
	self assert: first top equals: #first.
	self assert: second size equals: 2.
	self assert: second top equals: #third! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testTopDoesNotRemoveObject
	| stack object |
	stack := BoundedStack capacity: 1.
	object := Object new.
	stack push: object.
	self assert: stack top == object.
	self assert: stack top == object.
	self assert: stack size equals: 1.
	self deny: stack isEmpty.
	self assert: stack pop == object! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testTopOnEmptyStackFails
	| stack |
	stack := BoundedStack capacity: 1.
	self should: [stack top] raise: Error withMessageText: 'stack is empty'.
	self assert: stack isEmpty.
	self assert: stack size equals: 0.
	stack push: #afterError.
	self assert: stack top equals: #afterError! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 21/Sep/2026, 5:43:22 pm (UTC)'!
testZeroCapacityIsRejected
	self should: [BoundedStack capacity: 0] raise: Error withMessageText: 'capacity must be a positive integer'! !
