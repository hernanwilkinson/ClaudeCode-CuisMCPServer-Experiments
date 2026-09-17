'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 7:20:23 pm'!
'Description '!
!provides: 'BoundedStack' 1 1!
SystemOrganization addCategory: #BoundedStack!
SystemOrganization addCategory: #'BoundedStack-Tests'!


!classDefinition: #BoundedStack category: #BoundedStack!
Object subclass: #BoundedStack
	instanceVariableNames: 'capacity elements top'
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


!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:16 pm (UTC)'!
initializeWithCapacity: aCapacity
	(aCapacity isInteger and: [ aCapacity > 0 ])
		ifFalse: [ self error: 'capacity must be a positive integer' ].
	capacity := aCapacity.
	elements := Array new: aCapacity.
	top := 0.! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:26 pm (UTC)'!
isEmpty
	^ top = 0! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:23 pm (UTC)'!
pop
	| result |
	top = 0 ifTrue: [ self error: 'stack is empty' ].
	result := elements at: top.
	top := top - 1.
	^ result! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:17 pm (UTC)'!
push: anObject
	top >= capacity ifTrue: [ self error: 'stack is full' ].
	top := top + 1.
	elements at: top put: anObject.! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:27 pm (UTC)'!
size
	^ top! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:24 pm (UTC)'!
top
	top = 0 ifTrue: [ self error: 'stack is empty' ].
	^ elements at: top! !

!BoundedStack class methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:29 pm (UTC)'!
new: aCapacity
	^ super new initializeWithCapacity: aCapacity! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:37 pm (UTC)'!
testCreateStackWithNegativeCapacity
	| error |
	error := nil.
	[ BoundedStack new: -5 ] on: Error do: [ :e | error := e ].
	self assert: error notNil.
	self assert: (error messageText = 'capacity must be a positive integer')! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:39 pm (UTC)'!
testCreateStackWithNonIntegerCapacity
	| error |
	error := nil.
	[ BoundedStack new: 3.5 ] on: Error do: [ :e | error := e ].
	self assert: error notNil.
	self assert: (error messageText = 'capacity must be a positive integer')! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:33 pm (UTC)'!
testCreateStackWithValidCapacity
	| stack |
	stack := BoundedStack new: 5.
	self assert: stack isEmpty.
	self assert: stack size = 0! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:20:09 pm (UTC)'!
testCreateStackWithZeroCapacity
	| error |
	error := nil.
	[ BoundedStack new: 0 ] on: Error do: [ :e | error := e ].
	self assert: error notNil.
	self assert: (error messageText = 'capacity must be a positive integer')! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:59 pm (UTC)'!
testFillStackToCapacity
	| stack |
	stack := BoundedStack new: 3.
	stack push: 1.
	stack push: 2.
	stack push: 3.
	self assert: stack size = 3.
	self assert: (stack top) = 3! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:45 pm (UTC)'!
testMultiplePushPop
	| stack |
	stack := BoundedStack new: 5.
	stack push: 1.
	stack push: 2.
	stack push: 3.
	self assert: stack size = 3.
	self assert: (stack pop) = 3.
	self assert: (stack pop) = 2.
	self assert: (stack pop) = 1.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:49 pm (UTC)'!
testPopOnEmptyStack
	| stack error |
	stack := BoundedStack new: 5.
	error := nil.
	[ stack pop ] on: Error do: [ :e | error := e ].
	self assert: error notNil.
	self assert: (error messageText = 'stack is empty')! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:41 pm (UTC)'!
testPushAndPop
	| stack |
	stack := BoundedStack new: 5.
	stack push: 10.
	self assert: stack size = 1.
	self assert: (stack pop) = 10.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:47 pm (UTC)'!
testPushOnFullStack
	| stack error |
	stack := BoundedStack new: 2.
	stack push: 1.
	stack push: 2.
	error := nil.
	[ stack push: 3 ] on: Error do: [ :e | error := e ].
	self assert: error notNil.
	self assert: (error messageText = 'stack is full').
	self assert: stack size = 2! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:57 pm (UTC)'!
testSizeTracking
	| stack |
	stack := BoundedStack new: 5.
	self assert: stack size = 0.
	stack push: 1.
	self assert: stack size = 1.
	stack push: 2.
	self assert: stack size = 2.
	stack push: 3.
	self assert: stack size = 3.
	stack pop.
	self assert: stack size = 2.
	stack pop.
	self assert: stack size = 1.
	stack pop.
	self assert: stack size = 0! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:53 pm (UTC)'!
testStackReuse
	| stack |
	stack := BoundedStack new: 3.
	stack push: 1.
	stack push: 2.
	stack pop.
	stack pop.
	self assert: stack isEmpty.
	stack push: 99.
	self assert: (stack top) = 99! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:55 pm (UTC)'!
testStackWithDifferentObjectTypes
	| stack |
	stack := BoundedStack new: 5.
	stack push: 42.
	stack push: 'hello'.
	stack push: #symbol.
	stack push: (Array with: 1 with: 2).
	self assert: (stack pop) = (Array with: 1 with: 2).
	self assert: (stack pop) = #symbol.
	self assert: (stack pop) = 'hello'.
	self assert: (stack pop) = 42! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:43 pm (UTC)'!
testTop
	| stack |
	stack := BoundedStack new: 5.
	stack push: 20.
	self assert: (stack top) = 20.
	self assert: stack size = 1.
	self assert: (stack top) = 20! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 10:19:51 pm (UTC)'!
testTopOnEmptyStack
	| stack error |
	stack := BoundedStack new: 5.
	error := nil.
	[ stack top ] on: Error do: [ :e | error := e ].
	self assert: error notNil.
	self assert: (error messageText = 'stack is empty')! !
