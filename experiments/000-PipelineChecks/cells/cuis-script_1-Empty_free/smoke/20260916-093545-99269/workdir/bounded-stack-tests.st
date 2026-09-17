TestCase subclass: #BoundedStackTest
	instanceVariableNames: 'stack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BoundedStack-Tests'.

BoundedStackTest compile: 'setUp
	stack := BoundedStack new: 3'
	classified: 'initialization'.

BoundedStackTest compile: 'testCreateStackWithValidCapacity
	| s |
	s := BoundedStack new: 5.
	self assert: s isEmpty.
	self assert: s size = 0'
	classified: 'creation'.

BoundedStackTest compile: 'testCreateStackWithNegativeCapacityFails
	| errorRaised errorMessage |
	errorRaised := false.
	errorMessage := ''''.
	[ BoundedStack new: -1 ] on: Error do: [ :e |
		errorRaised := true.
		errorMessage := e messageText ].
	self assert: errorRaised.
	self assert: errorMessage = ''capacity must be a positive integer'''
	classified: 'creation'.

BoundedStackTest compile: 'testCreateStackWithZeroCapacityFails
	| errorRaised errorMessage |
	errorRaised := false.
	errorMessage := ''''.
	[ BoundedStack new: 0 ] on: Error do: [ :e |
		errorRaised := true.
		errorMessage := e messageText ].
	self assert: errorRaised.
	self assert: errorMessage = ''capacity must be a positive integer'''
	classified: 'creation'.

BoundedStackTest compile: 'testCreateStackWithFloatCapacityFails
	| errorRaised |
	errorRaised := false.
	[ BoundedStack new: 3.5 ] on: Error do: [ :e | errorRaised := true ].
	self assert: errorRaised'
	classified: 'creation'.

BoundedStackTest compile: 'testCreateStackWithStringCapacityFails
	| errorRaised |
	errorRaised := false.
	[ BoundedStack new: ''five'' ] on: Error do: [ :e | errorRaised := true ].
	self assert: errorRaised'
	classified: 'creation'.

BoundedStackTest compile: 'testPushAndSize
	self assert: stack size = 0.
	stack push: ''a''.
	self assert: stack size = 1.
	stack push: ''b''.
	self assert: stack size = 2.
	stack push: ''c''.
	self assert: stack size = 3'
	classified: 'push operations'.

BoundedStackTest compile: 'testPushOnFullStackRaisesError
	| errorRaised errorMessage |
	stack push: ''a''.
	stack push: ''b''.
	stack push: ''c''.
	errorRaised := false.
	errorMessage := ''''.
	[ stack push: ''d'' ] on: Error do: [ :e |
		errorRaised := true.
		errorMessage := e messageText ].
	self assert: errorRaised.
	self assert: errorMessage = ''stack is full'''
	classified: 'push operations'.

BoundedStackTest compile: 'testTop
	stack push: ''a''.
	stack push: ''b''.
	self assert: stack top = ''b''.
	self assert: stack size = 2'
	classified: 'top operations'.

BoundedStackTest compile: 'testTopDoesNotRemove
	stack push: ''x''.
	stack push: ''y''.
	self assert: stack top = ''y''.
	self assert: stack top = ''y''.
	self assert: stack size = 2'
	classified: 'top operations'.

BoundedStackTest compile: 'testTopOnEmptyStackRaisesError
	| errorRaised errorMessage |
	errorRaised := false.
	errorMessage := ''''.
	[ stack top ] on: Error do: [ :e |
		errorRaised := true.
		errorMessage := e messageText ].
	self assert: errorRaised.
	self assert: errorMessage = ''stack is empty'''
	classified: 'top operations'.

BoundedStackTest compile: 'testPop
	stack push: ''a''.
	stack push: ''b''.
	stack push: ''c''.
	self assert: stack pop = ''c''.
	self assert: stack size = 2.
	self assert: stack pop = ''b''.
	self assert: stack size = 1.
	self assert: stack pop = ''a''.
	self assert: stack size = 0'
	classified: 'pop operations'.

BoundedStackTest compile: 'testPopRemovesElement
	stack push: ''first''.
	stack push: ''second''.
	stack pop.
	self assert: stack top = ''first'''
	classified: 'pop operations'.

BoundedStackTest compile: 'testPopOnEmptyStackRaisesError
	| errorRaised errorMessage |
	errorRaised := false.
	errorMessage := ''''.
	[ stack pop ] on: Error do: [ :e |
		errorRaised := true.
		errorMessage := e messageText ].
	self assert: errorRaised.
	self assert: errorMessage = ''stack is empty'''
	classified: 'pop operations'.

BoundedStackTest compile: 'testIsEmpty
	self assert: stack isEmpty.
	stack push: ''something''.
	self assert: stack isEmpty not.
	stack pop.
	self assert: stack isEmpty'
	classified: 'state testing'.

BoundedStackTest compile: 'testSizeIncrementsOnPush
	self assert: stack size = 0.
	stack push: 1.
	self assert: stack size = 1.
	stack push: 2.
	self assert: stack size = 2.
	stack push: 3.
	self assert: stack size = 3'
	classified: 'state testing'.

BoundedStackTest compile: 'testSizeDecrementsOnPop
	stack push: 1.
	stack push: 2.
	stack push: 3.
	stack pop.
	self assert: stack size = 2.
	stack pop.
	self assert: stack size = 1.
	stack pop.
	self assert: stack size = 0'
	classified: 'state testing'.

BoundedStackTest compile: 'testLIFOBehavior
	stack push: ''first''.
	stack push: ''second''.
	stack push: ''third''.
	self assert: stack pop = ''third''.
	self assert: stack pop = ''second''.
	self assert: stack pop = ''first'''
	classified: 'behavior'.

BoundedStackTest compile: 'testMixedOperations
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
	self assert: stack isEmpty'
	classified: 'behavior'.

BoundedStackTest compile: 'testDifferentObjectTypes
	stack := BoundedStack new: 5.
	stack push: 42.
	stack push: ''string''.
	stack push: #symbol.
	stack push: (Array with: 1 with: 2).
	self assert: stack pop = (Array with: 1 with: 2).
	self assert: stack pop = #symbol.
	self assert: stack pop = ''string''.
	self assert: stack pop = 42'
	classified: 'behavior'.

BoundedStackTest compile: 'testStackWithCapacityOne
	| s errorRaised |
	s := BoundedStack new: 1.
	self assert: s isEmpty.
	s push: ''only''.
	self assert: s size = 1.
	self assert: s top = ''only''.
	errorRaised := false.
	[ s push: ''another'' ] on: Error do: [ :e | errorRaised := true ].
	self assert: errorRaised.
	self assert: s pop = ''only''.
	self assert: s isEmpty'
	classified: 'edge cases'.

BoundedStackTest compile: 'testLargeCapacity
	| s errorRaised |
	s := BoundedStack new: 100.
	1 to: 100 do: [ :i | s push: i ].
	self assert: s size = 100.
	self assert: s top = 100.
	errorRaised := false.
	[ s push: 101 ] on: Error do: [ :e | errorRaised := true ].
	self assert: errorRaised'
	classified: 'edge cases'.
