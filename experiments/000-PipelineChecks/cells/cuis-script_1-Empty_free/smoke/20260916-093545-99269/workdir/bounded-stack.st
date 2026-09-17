Object subclass: #BoundedStack
	instanceVariableNames: 'items capacity top'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BoundedStack'.

BoundedStack compile: 'initialize: aCapacity
	(aCapacity isInteger and: [ aCapacity > 0 ])
		ifFalse: [ self error: ''capacity must be a positive integer'' ].
	capacity := aCapacity.
	items := Array new: aCapacity.
	top := 0'
	classified: 'initialization'.

BoundedStack compile: 'push: anObject
	top >= capacity
		ifTrue: [ self error: ''stack is full'' ].
	top := top + 1.
	items at: top put: anObject'
	classified: 'stack operations'.

BoundedStack compile: 'pop
	| result |
	top = 0
		ifTrue: [ self error: ''stack is empty'' ].
	result := items at: top.
	top := top - 1.
	^ result'
	classified: 'stack operations'.

BoundedStack compile: 'top
	top = 0
		ifTrue: [ self error: ''stack is empty'' ].
	^ items at: top'
	classified: 'stack operations'.

BoundedStack compile: 'isEmpty
	^ top = 0'
	classified: 'testing'.

BoundedStack compile: 'size
	^ top'
	classified: 'testing'.

BoundedStack class compile: 'new: aCapacity
	| instance |
	instance := self new.
	instance initialize: aCapacity.
	^ instance'
	classified: 'creation'.
