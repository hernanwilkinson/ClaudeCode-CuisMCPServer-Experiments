'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 3:57:29 pm'!
'Description '!
!provides: 'BoundedStack' 1 1!
SystemOrganization addCategory: #BoundedStack!
SystemOrganization addCategory: #'BoundedStack-Tests'!


!classDefinition: #BoundedStack category: #BoundedStack!
Object subclass: #BoundedStack
	instanceVariableNames: 'contents topIndex capacity'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BoundedStack'!
!classDefinition: 'BoundedStack class' category: #BoundedStack!
BoundedStack class
	instanceVariableNames: ''!

!classDefinition: #BoundedStackTest category: #'BoundedStack-Tests'!
TestCase subclass: #BoundedStackTest
	instanceVariableNames: 'stack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BoundedStack-Tests'!
!classDefinition: 'BoundedStackTest class' category: #'BoundedStack-Tests'!
BoundedStackTest class
	instanceVariableNames: ''!


!BoundedStack methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 6:56:19 pm (UTC)'!
initializeWithCapacity: anInteger
	(anInteger isInteger and: [anInteger > 0])
		ifFalse: [self error: 'capacity must be a positive integer'].
	capacity := anInteger.
	contents := Array new: anInteger.
	topIndex := 0! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 6:56:26 pm (UTC)'!
pop
	| result |
	topIndex = 0 ifTrue: [self error: 'stack is empty'].
	result := contents at: topIndex.
	topIndex := topIndex - 1.
	^result! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 6:56:23 pm (UTC)'!
push: anObject
	topIndex >= capacity ifTrue: [self error: 'stack is full'].
	topIndex := topIndex + 1.
	contents at: topIndex put: anObject! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 6:56:31 pm (UTC)'!
size
	^topIndex! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 6:56:28 pm (UTC)'!
top
	topIndex = 0 ifTrue: [self error: 'stack is empty'].
	^contents at: topIndex! !

!BoundedStack methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 6:56:29 pm (UTC)'!
isEmpty
	^topIndex = 0! !

!BoundedStack class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 6:56:21 pm (UTC)'!
withCapacity: anInteger
	^self new initializeWithCapacity: anInteger! !

!BoundedStackTest methodsFor: 'setup' stamp: 'HAW 10/Sep/2026, 6:56:35 pm (UTC)'!
setUp
	stack := BoundedStack withCapacity: 3! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:56:41 pm (UTC)'!
testCapacityMustBeInteger
	self should: [BoundedStack withCapacity: 3.5] raise: Error.
	self should: [BoundedStack withCapacity: 'three'] raise: Error! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:56:39 pm (UTC)'!
testCapacityMustBePositive
	self should: [BoundedStack withCapacity: 0] raise: Error.
	self should: [BoundedStack withCapacity: -1] raise: Error! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:56:38 pm (UTC)'!
testCreationWithPositiveCapacity
	stack := BoundedStack withCapacity: 5.
	self assert: stack isEmpty.
	self assert: stack size = 0! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:57:12 pm (UTC)'!
testErrorMessageForEmptyStackPop
	[stack pop] on: Error do: [:ex | self assert: ex messageText = 'stack is empty']! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:57:14 pm (UTC)'!
testErrorMessageForEmptyStackTop
	[stack top] on: Error do: [:ex | self assert: ex messageText = 'stack is empty']! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:57:10 pm (UTC)'!
testErrorMessageForFullStack
	stack push: 1.
	stack push: 2.
	stack push: 3.
	[stack push: 4] on: Error do: [:ex | self assert: ex messageText = 'stack is full']! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:57:16 pm (UTC)'!
testErrorMessageForInvalidCapacity
	[BoundedStack withCapacity: 0] on: Error do: [:ex | self assert: ex messageText = 'capacity must be a positive integer'].
	[BoundedStack withCapacity: -5] on: Error do: [:ex | self assert: ex messageText = 'capacity must be a positive integer'].
	[BoundedStack withCapacity: 3.5] on: Error do: [:ex | self assert: ex messageText = 'capacity must be a positive integer']! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:57:03 pm (UTC)'!
testMultiplePushesAndPops
	stack push: 'a'.
	stack push: 'b'.
	stack push: 'c'.
	self assert: stack size = 3.
	self assert: (stack pop) = 'c'.
	self assert: (stack pop) = 'b'.
	self assert: stack size = 1.
	stack push: 'd'.
	self assert: stack size = 2.
	self assert: (stack top) = 'd'! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:56:47 pm (UTC)'!
testPop
	stack push: 1.
	stack push: 2.
	self assert: (stack pop) = 2.
	self assert: stack size = 1.
	self assert: (stack pop) = 1.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:56:50 pm (UTC)'!
testPopOnEmptyStackFails
	self should: [stack pop] raise: Error! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:56:43 pm (UTC)'!
testPush
	stack push: 1.
	self deny: stack isEmpty.
	self assert: stack size = 1! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:56:48 pm (UTC)'!
testPushOnFullStackFails
	stack push: 1.
	stack push: 2.
	stack push: 3.
	self should: [stack push: 4] raise: Error! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:56:52 pm (UTC)'!
testTopOnEmptyStackFails
	self should: [stack top] raise: Error! !

!BoundedStackTest methodsFor: 'tests' stamp: 'HAW 10/Sep/2026, 6:56:45 pm (UTC)'!
testTopWithoutRemoving
	stack push: 42.
	self assert: stack top = 42.
	self assert: stack size = 1.
	self assert: stack top = 42! !
