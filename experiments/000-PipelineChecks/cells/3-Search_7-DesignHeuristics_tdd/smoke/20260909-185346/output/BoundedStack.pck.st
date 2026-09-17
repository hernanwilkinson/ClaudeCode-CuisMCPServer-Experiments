'From Cuis7.9 [latest update: #8163] on 9 September 2026 at 6:55:30 pm'!
'Description '!
!provides: 'BoundedStack' 1 1!
SystemOrganization addCategory: #'BoundedStack-Tests'!
SystemOrganization addCategory: #BoundedStack!


!classDefinition: #BoundedStack category: #BoundedStack!
Object subclass: #BoundedStack
	instanceVariableNames: 'items capacity'
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


!BoundedStack methodsFor: 'initialization' stamp: 'HAW 9/Sep/2026, 9:54:15 pm (UTC)'!
initializeCapacity: aCapacity

	capacity := aCapacity.
	items := OrderedCollection new! !

!BoundedStack methodsFor: 'testing' stamp: 'HAW 9/Sep/2026, 9:54:27 pm (UTC)'!
isEmpty

	^items isEmpty! !

!BoundedStack methodsFor: 'testing' stamp: 'HAW 9/Sep/2026, 9:54:33 pm (UTC)'!
size

	^items size! !

!BoundedStack methodsFor: 'adding' stamp: 'HAW 9/Sep/2026, 9:54:44 pm (UTC)'!
push: anObject

	items size >= capacity
		ifTrue: [ self error: self class stackIsFullMessage ].

	items add: anObject! !

!BoundedStack methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 9:54:52 pm (UTC)'!
top

	items isEmpty
		ifTrue: [ self error: self class stackIsEmptyMessage ].

	^items last! !

!BoundedStack methodsFor: 'removing' stamp: 'HAW 9/Sep/2026, 9:55:02 pm (UTC)'!
pop

	items isEmpty
		ifTrue: [ self error: self class stackIsEmptyMessage ].

	^items removeLast! !

!BoundedStack class methodsFor: 'error messages' stamp: 'HAW 9/Sep/2026, 9:54:08 pm (UTC)'!
capacityMustBePositiveIntegerMessage

	^'capacity must be a positive integer'! !

!BoundedStack class methodsFor: 'error messages' stamp: 'HAW 9/Sep/2026, 9:54:50 pm (UTC)'!
stackIsEmptyMessage

	^'stack is empty'! !

!BoundedStack class methodsFor: 'error messages' stamp: 'HAW 9/Sep/2026, 9:54:39 pm (UTC)'!
stackIsFullMessage

	^'stack is full'! !

!BoundedStack class methodsFor: 'instance creation - preconditions' stamp: 'HAW 9/Sep/2026, 9:54:11 pm (UTC)'!
assertIsValidCapacity: aCapacity

	(aCapacity isInteger and: [ aCapacity > 0 ])
		ifFalse: [ self error: self capacityMustBePositiveIntegerMessage ]! !

!BoundedStack class methodsFor: 'instance creation' stamp: 'HAW 9/Sep/2026, 9:54:13 pm (UTC)'!
capacity: aCapacity

	self assertIsValidCapacity: aCapacity.

	^self new initializeCapacity: aCapacity! !

!BoundedStackTest methodsFor: 'tests - creation' stamp: 'HAW 9/Sep/2026, 9:54:02 pm (UTC)'!
test01CreateWithZeroCapacityFails

	self
		should: [ BoundedStack capacity: 0 ]
		raise: Error
		withMessageText: BoundedStack capacityMustBePositiveIntegerMessage! !

!BoundedStackTest methodsFor: 'tests - creation' stamp: 'HAW 9/Sep/2026, 9:54:20 pm (UTC)'!
test02CreateWithNegativeCapacityFails

	self
		should: [ BoundedStack capacity: -5 ]
		raise: Error
		withMessageText: BoundedStack capacityMustBePositiveIntegerMessage! !

!BoundedStackTest methodsFor: 'tests - creation' stamp: 'HAW 9/Sep/2026, 9:54:22 pm (UTC)'!
test03CreateWithNonIntegerCapacityFails

	self
		should: [ BoundedStack capacity: 3.5 ]
		raise: Error
		withMessageText: BoundedStack capacityMustBePositiveIntegerMessage! !

!BoundedStackTest methodsFor: 'tests - creation' stamp: 'HAW 9/Sep/2026, 9:54:25 pm (UTC)'!
test04CreateWithValidCapacity

	| stack |
	stack := BoundedStack capacity: 5.

	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'tests - size' stamp: 'HAW 9/Sep/2026, 9:54:31 pm (UTC)'!
test05NewStackHasSizeZero

	| stack |
	stack := BoundedStack capacity: 5.

	self assert: stack size equals: 0! !

!BoundedStackTest methodsFor: 'tests - push' stamp: 'HAW 9/Sep/2026, 9:54:35 pm (UTC)'!
test06PushIncreasesSizeByOne

	| stack |
	stack := BoundedStack capacity: 5.
	stack push: 42.

	self assert: stack size equals: 1! !

!BoundedStackTest methodsFor: 'tests - push' stamp: 'HAW 9/Sep/2026, 9:54:42 pm (UTC)'!
test07PushOnFullStackFails

	| stack |
	stack := BoundedStack capacity: 2.
	stack push: 1.
	stack push: 2.

	self
		should: [ stack push: 3 ]
		raise: Error
		withMessageText: BoundedStack stackIsFullMessage! !

!BoundedStackTest methodsFor: 'tests - top' stamp: 'HAW 9/Sep/2026, 9:54:48 pm (UTC)'!
test08TopAnswersTopElementWithoutRemoving

	| stack |
	stack := BoundedStack capacity: 5.
	stack push: 1.
	stack push: 2.

	self assert: stack top equals: 2.
	self assert: stack size equals: 2! !

!BoundedStackTest methodsFor: 'tests - top' stamp: 'HAW 9/Sep/2026, 9:54:55 pm (UTC)'!
test09TopOnEmptyStackFails

	| stack |
	stack := BoundedStack capacity: 5.

	self
		should: [ stack top ]
		raise: Error
		withMessageText: BoundedStack stackIsEmptyMessage! !

!BoundedStackTest methodsFor: 'tests - pop' stamp: 'HAW 9/Sep/2026, 9:55:00 pm (UTC)'!
test10PopRemovesAndAnswersTopElement

	| stack result |
	stack := BoundedStack capacity: 5.
	stack push: 1.
	stack push: 2.
	result := stack pop.

	self assert: result equals: 2.
	self assert: stack size equals: 1! !

!BoundedStackTest methodsFor: 'tests - pop' stamp: 'HAW 9/Sep/2026, 9:55:04 pm (UTC)'!
test11PopOnEmptyStackFails

	| stack |
	stack := BoundedStack capacity: 5.

	self
		should: [ stack pop ]
		raise: Error
		withMessageText: BoundedStack stackIsEmptyMessage! !

!BoundedStackTest methodsFor: 'tests - comprehensive' stamp: 'HAW 9/Sep/2026, 9:55:09 pm (UTC)'!
test12MultipleOperationsFollowLIFO

	| stack |
	stack := BoundedStack capacity: 3.
	stack push: 'a'.
	stack push: 'b'.
	stack push: 'c'.

	self assert: stack pop equals: 'c'.
	self assert: stack pop equals: 'b'.
	self assert: stack pop equals: 'a'.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'tests - comprehensive' stamp: 'HAW 9/Sep/2026, 9:55:12 pm (UTC)'!
test13CanPushAgainAfterPopping

	| stack |
	stack := BoundedStack capacity: 2.
	stack push: 1.
	stack push: 2.

	self
		should: [ stack push: 3 ]
		raise: Error
		withMessageText: BoundedStack stackIsFullMessage.

	stack pop.

	stack push: 3.

	self assert: stack size equals: 2.
	self assert: stack top equals: 3! !
