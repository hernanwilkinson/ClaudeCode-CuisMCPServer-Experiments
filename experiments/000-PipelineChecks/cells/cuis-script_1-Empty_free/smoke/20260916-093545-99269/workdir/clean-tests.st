| testClass |
testClass := (Smalltalk allClasses select: [ :c | c name = #BoundedStackTest ]) first.
(testClass methodDictionary keys select: [ :m | m beginsWith: 'test' ]) do: [ :methodName |
	testClass removeSelector: (testClass methodDictionary keyAtValue: (testClass methodDictionary at: methodName) ifAbsent: [ methodName ])
].
'Cleaned up old test methods'
