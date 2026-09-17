'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 5:21:10 pm'!
'Description '!
!provides: 'BoundedStack' 1 1!
SystemOrganization addCategory: #BoundedStack!
SystemOrganization addCategory: #'BoundedStack-Tests'!


!classDefinition: #BoundedStack category: #BoundedStack!
Object subclass: #BoundedStack
	instanceVariableNames: 'collection capacity'
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


!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:06 pm (UTC)'!
initializeCapacity: aCapacity
	capacity := aCapacity.
	collection := OrderedCollection new! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:12 pm (UTC)'!
isEmpty
	^collection isEmpty! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:09 pm (UTC)'!
pop
	collection isEmpty ifTrue: [
		self error: self class errorStackIsEmpty ].
	^collection removeLast! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:07 pm (UTC)'!
push: anObject
	(collection size >= capacity) ifTrue: [
		self error: self class errorStackIsFull ].
	collection add: anObject! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:13 pm (UTC)'!
size
	^collection size! !

!BoundedStack methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:10 pm (UTC)'!
top
	collection isEmpty ifTrue: [
		self error: self class errorStackIsEmpty ].
	^collection last! !

!BoundedStack class methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:02 pm (UTC)'!
assertIsValidCapacity: aCapacity
	(aCapacity isInteger and: [aCapacity > 0]) ifFalse: [
		self error: self errorCapacityMustBePositiveInteger ]! !

!BoundedStack class methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:04 pm (UTC)'!
capacity: aCapacity
	self assertIsValidCapacity: aCapacity.
	^self new initializeCapacity: aCapacity! !

!BoundedStack class methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:19:57 pm (UTC)'!
errorCapacityMustBePositiveInteger
	^'capacity must be a positive integer'! !

!BoundedStack class methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:00 pm (UTC)'!
errorStackIsEmpty
	^'stack is empty'! !

!BoundedStack class methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:19:59 pm (UTC)'!
errorStackIsFull
	^'stack is full'! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:18 pm (UTC)'!
setUp
	stack := BoundedStack capacity: 3! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:20 pm (UTC)'!
test01CreatingStackWithPositiveCapacitySucceeds
	| newStack |
	newStack := BoundedStack capacity: 5.
	self assert: newStack size equals: 0.
	self assert: newStack isEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:22 pm (UTC)'!
test02CreatingStackWithZeroCapacityFails
	self
		should: [ BoundedStack capacity: 0 ]
		raise: Error
		withMessageText: BoundedStack errorCapacityMustBePositiveInteger! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:24 pm (UTC)'!
test03CreatingStackWithNegativeCapacityFails
	self
		should: [ BoundedStack capacity: -5 ]
		raise: Error
		withMessageText: BoundedStack errorCapacityMustBePositiveInteger! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:26 pm (UTC)'!
test04CreatingStackWithNonIntegerCapacityFails
	self
		should: [ BoundedStack capacity: 3.5 ]
		raise: Error
		withMessageText: BoundedStack errorCapacityMustBePositiveInteger! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:51 pm (UTC)'!
test05PushingObjectOnEmptyStackIncreasesSize
	stack push: 42.
	self assert: stack size equals: 1.
	self deny: stack isEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:32 pm (UTC)'!
test06PoppingObjectRemovesIt
	| popped |
	stack push: 42.
	popped := stack pop.
	self assert: popped equals: 42.
	self assert: stack size equals: 0.
	self assert: stack isEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:33 pm (UTC)'!
test07TopDoesNotRemoveObject
	| top |
	stack push: 42.
	top := stack top.
	self assert: top equals: 42.
	self assert: stack size equals: 1.
	self deny: stack isEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:36 pm (UTC)'!
test08MultipleObjectsFollowLIFOOrder
	| firstPopped secondPopped |
	stack push: 10.
	stack push: 20.
	stack push: 30.
	self assert: stack size equals: 3.
	firstPopped := stack pop.
	secondPopped := stack pop.
	self assert: firstPopped equals: 30.
	self assert: secondPopped equals: 20.
	self assert: stack size equals: 1! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:38 pm (UTC)'!
test09PushingOnFullStackFails
	stack push: 1.
	stack push: 2.
	stack push: 3.
	self
		should: [ stack push: 4 ]
		raise: Error
		withMessageText: BoundedStack errorStackIsFull! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:40 pm (UTC)'!
test10PoppingFromEmptyStackFails
	self
		should: [ stack pop ]
		raise: Error
		withMessageText: BoundedStack errorStackIsEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:41 pm (UTC)'!
test11TopOfEmptyStackFails
	self
		should: [ stack top ]
		raise: Error
		withMessageText: BoundedStack errorStackIsEmpty! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:44 pm (UTC)'!
test12PopAfterFailedPushSucceeds
	| popped |
	stack push: 1.
	stack push: 2.
	stack push: 3.
	[ stack push: 4 ] on: Error do: [ :anException | "expected" ].
	popped := stack pop.
	self assert: popped equals: 3.
	self assert: stack size equals: 2! !

!BoundedStackTest methodsFor: 'as yet unclassified' stamp: 'HAW 10/Sep/2026, 8:20:46 pm (UTC)'!
test13TopReturnsSameObjectConsistently
	| firstTop secondTop |
	stack push: 42.
	firstTop := stack top.
	secondTop := stack top.
	self assert: firstTop equals: secondTop.
	self assert: firstTop equals: 42.
	self assert: stack size equals: 1! !
