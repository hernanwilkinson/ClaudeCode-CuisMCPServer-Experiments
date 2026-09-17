| stack popped errorRaised s |
"Create a bounded stack with capacity 5"
stack := BoundedStack new: 5.

"Verify isEmpty and size work"
(stack isEmpty and: [ stack size = 0 ]) ifFalse: [ self error: 'isEmpty/size failed' ].

"Test push operations"
stack push: 'first'.
stack push: 'second'.
stack push: 'third'.
(stack size = 3) ifFalse: [ self error: 'push/size failed' ].

"Test top"
(stack top = 'third' and: [ stack size = 3 ]) ifFalse: [ self error: 'top failed' ].

"Test pop - should remove element"
popped := stack pop.
(popped = 'third' and: [ stack size = 2 and: [ stack top = 'second' ] ])
	ifFalse: [ self error: 'pop failed' ].

"Test full stack error"
stack push: 'a'.
stack push: 'b'.
stack push: 'c'.
errorRaised := false.
[ stack push: 'overflow' ] on: Error do: [ :e |
	(e messageText = 'stack is full') ifTrue: [ errorRaised := true ]
].
errorRaised ifFalse: [ self error: 'full stack error not raised correctly' ].

"Test empty stack errors - use fresh stack"
s := BoundedStack new: 3.
errorRaised := false.
[ s pop ] on: Error do: [ :e |
	(e messageText = 'stack is empty') ifTrue: [ errorRaised := true ]
].
errorRaised ifFalse: [ self error: 'empty stack pop error not raised correctly' ].

errorRaised := false.
[ s top ] on: Error do: [ :e |
	(e messageText = 'stack is empty') ifTrue: [ errorRaised := true ]
].
errorRaised ifFalse: [ self error: 'empty stack top error not raised correctly' ].

"Test invalid capacity"
errorRaised := false.
[ BoundedStack new: -5 ] on: Error do: [ :e |
	(e messageText = 'capacity must be a positive integer') ifTrue: [ errorRaised := true ]
].
errorRaised ifFalse: [ self error: 'negative capacity error not raised correctly' ].

'All implementation requirements verified!'
