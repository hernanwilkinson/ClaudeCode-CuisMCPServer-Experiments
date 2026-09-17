'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 9:39:54 am'!
'Description '!
!provides: 'BoundedStack' 1 1!
SystemOrganization addCategory: #BoundedStack!
SystemOrganization addCategory: #'BoundedStack-Tests'!


!classDefinition: #BoundedStack category: #BoundedStack!
Object subclass: #BoundedStack
	instanceVariableNames: 'items capacity top'
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


!BoundedStack methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:36:14 pm (UTC)'!
initialize: aCapacity
	(aCapacity isInteger and: [ aCapacity > 0 ])
		ifFalse: [ self error: 'capacity must be a positive integer' ].
	capacity := aCapacity.
	items := Array new: aCapacity.
	top := 0! !

!BoundedStack methodsFor: 'stack operations' stamp: 'HAW 16/Sep/2026, 12:36:14 pm (UTC)'!
pop
	| result |
	top = 0
		ifTrue: [ self error: 'stack is empty' ].
	result := items at: top.
	top := top - 1.
	^ result! !

!BoundedStack methodsFor: 'stack operations' stamp: 'HAW 16/Sep/2026, 12:36:14 pm (UTC)'!
push: anObject
	top >= capacity
		ifTrue: [ self error: 'stack is full' ].
	top := top + 1.
	items at: top put: anObject! !

!BoundedStack methodsFor: 'stack operations' stamp: 'HAW 16/Sep/2026, 12:36:14 pm (UTC)'!
top
	top = 0
		ifTrue: [ self error: 'stack is empty' ].
	^ items at: top! !

!BoundedStack methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:36:14 pm (UTC)'!
isEmpty
	^ top = 0! !

!BoundedStack methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:36:14 pm (UTC)'!
size
	^ top! !

!BoundedStack class methodsFor: 'creation' stamp: 'HAW 16/Sep/2026, 12:36:14 pm (UTC)'!
new: aCapacity
	| instance |
	instance := self new.
	instance initialize: aCapacity.
	^ instance! !

!BoundedStackTest methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
setUp
	stack := BoundedStack new: 3! !

!BoundedStackTest methodsFor: 'creation' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testCreateStackWithFloatCapacityFails
	| errorRaised |
	errorRaised := false.
	[ BoundedStack new: 3.5 ] on: Error do: [ :e | errorRaised := true ].
	self assert: errorRaised! !

!BoundedStackTest methodsFor: 'creation' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testCreateStackWithNegativeCapacityFails
	| errorRaised errorMessage |
	errorRaised := false.
	errorMessage := ''.
	[ BoundedStack new: -1 ] on: Error do: [ :e |
		errorRaised := true.
		errorMessage := e messageText ].
	self assert: errorRaised.
	self assert: errorMessage = 'capacity must be a positive integer'! !

!BoundedStackTest methodsFor: 'creation' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testCreateStackWithStringCapacityFails
	| errorRaised |
	errorRaised := false.
	[ BoundedStack new: 'five' ] on: Error do: [ :e | errorRaised := true ].
	self assert: errorRaised! !

!BoundedStackTest methodsFor: 'creation' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testCreateStackWithValidCapacity
	| s |
	s := BoundedStack new: 5.
	self assert: s isEmpty.
	self assert: s size = 0! !

!BoundedStackTest methodsFor: 'creation' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testCreateStackWithZeroCapacityFails
	| errorRaised errorMessage |
	errorRaised := false.
	errorMessage := ''.
	[ BoundedStack new: 0 ] on: Error do: [ :e |
		errorRaised := true.
		errorMessage := e messageText ].
	self assert: errorRaised.
	self assert: errorMessage = 'capacity must be a positive integer'! !

!BoundedStackTest methodsFor: 'push operations' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testPushAndSize
	self assert: stack size = 0.
	stack push: 'a'.
	self assert: stack size = 1.
	stack push: 'b'.
	self assert: stack size = 2.
	stack push: 'c'.
	self assert: stack size = 3! !

!BoundedStackTest methodsFor: 'push operations' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testPushOnFullStackRaisesError
	| errorRaised errorMessage |
	stack push: 'a'.
	stack push: 'b'.
	stack push: 'c'.
	errorRaised := false.
	errorMessage := ''.
	[ stack push: 'd' ] on: Error do: [ :e |
		errorRaised := true.
		errorMessage := e messageText ].
	self assert: errorRaised.
	self assert: errorMessage = 'stack is full'! !

!BoundedStackTest methodsFor: 'top operations' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testTop
	stack push: 'a'.
	stack push: 'b'.
	self assert: stack top = 'b'.
	self assert: stack size = 2! !

!BoundedStackTest methodsFor: 'top operations' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testTopDoesNotRemove
	stack push: 'x'.
	stack push: 'y'.
	self assert: stack top = 'y'.
	self assert: stack top = 'y'.
	self assert: stack size = 2! !

!BoundedStackTest methodsFor: 'top operations' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testTopOnEmptyStackRaisesError
	| errorRaised errorMessage |
	errorRaised := false.
	errorMessage := ''.
	[ stack top ] on: Error do: [ :e |
		errorRaised := true.
		errorMessage := e messageText ].
	self assert: errorRaised.
	self assert: errorMessage = 'stack is empty'! !

!BoundedStackTest methodsFor: 'pop operations' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testPop
	stack push: 'a'.
	stack push: 'b'.
	stack push: 'c'.
	self assert: stack pop = 'c'.
	self assert: stack size = 2.
	self assert: stack pop = 'b'.
	self assert: stack size = 1.
	self assert: stack pop = 'a'.
	self assert: stack size = 0! !

!BoundedStackTest methodsFor: 'pop operations' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testPopOnEmptyStackRaisesError
	| errorRaised errorMessage |
	errorRaised := false.
	errorMessage := ''.
	[ stack pop ] on: Error do: [ :e |
		errorRaised := true.
		errorMessage := e messageText ].
	self assert: errorRaised.
	self assert: errorMessage = 'stack is empty'! !

!BoundedStackTest methodsFor: 'pop operations' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testPopRemovesElement
	stack push: 'first'.
	stack push: 'second'.
	stack pop.
	self assert: stack top = 'first'! !

!BoundedStackTest methodsFor: 'state testing' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testIsEmpty
	self assert: stack isEmpty.
	stack push: 'something'.
	self assert: stack isEmpty not.
	stack pop.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'state testing' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testSizeDecrementsOnPop
	stack push: 1.
	stack push: 2.
	stack push: 3.
	stack pop.
	self assert: stack size = 2.
	stack pop.
	self assert: stack size = 1.
	stack pop.
	self assert: stack size = 0! !

!BoundedStackTest methodsFor: 'state testing' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testSizeIncrementsOnPush
	self assert: stack size = 0.
	stack push: 1.
	self assert: stack size = 1.
	stack push: 2.
	self assert: stack size = 2.
	stack push: 3.
	self assert: stack size = 3! !

!BoundedStackTest methodsFor: 'behavior' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testDifferentObjectTypes
	stack := BoundedStack new: 5.
	stack push: 42.
	stack push: 'string'.
	stack push: #symbol.
	stack push: (Array with: 1 with: 2).
	self assert: stack pop = (Array with: 1 with: 2).
	self assert: stack pop = #symbol.
	self assert: stack pop = 'string'.
	self assert: stack pop = 42! !

!BoundedStackTest methodsFor: 'behavior' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testLIFOBehavior
	stack push: 'first'.
	stack push: 'second'.
	stack push: 'third'.
	self assert: stack pop = 'third'.
	self assert: stack pop = 'second'.
	self assert: stack pop = 'first'! !

!BoundedStackTest methodsFor: 'behavior' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testMixedOperations
	stack push: 10.
	self assert: stack top = 10.
	stack push: 20.
	self assert: stack size = 2.
	self assert: stack pop = 20.
	self assert: stack top = 10.
	self assert: stack size = 1.
	stack push: 30.
	stack push: 40.
	self assert: stack size = 3.
	self assert: stack pop = 40.
	self assert: stack pop = 30.
	self assert: stack pop = 10.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'edge cases' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testLargeCapacity
	| s errorRaised |
	s := BoundedStack new: 100.
	1 to: 100 do: [ :i | s push: i ].
	self assert: s size = 100.
	self assert: s top = 100.
	errorRaised := false.
	[ s push: 101 ] on: Error do: [ :e | errorRaised := true ].
	self assert: errorRaised! !

!BoundedStackTest methodsFor: 'edge cases' stamp: 'HAW 16/Sep/2026, 12:38:59 pm (UTC)'!
testStackWithCapacityOne
	| s errorRaised |
	s := BoundedStack new: 1.
	self assert: s isEmpty.
	s push: 'only'.
	self assert: s size = 1.
	self assert: s top = 'only'.
	errorRaised := false.
	[ s push: 'another' ] on: Error do: [ :e | errorRaised := true ].
	self assert: errorRaised.
	self assert: s pop = 'only'.
	self assert: s isEmpty! !
