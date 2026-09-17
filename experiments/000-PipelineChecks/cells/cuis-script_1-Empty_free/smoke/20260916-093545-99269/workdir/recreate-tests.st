| oldClass |
"Remove the old test class"
oldClass := Smalltalk at: #BoundedStackTest ifAbsent: [ nil ].
oldClass ifNotNil: [
	Smalltalk removeClassNamed: #BoundedStackTest
].

"Recreate the test class fresh"
TestCase subclass: #BoundedStackTest
	instanceVariableNames: 'stack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'BoundedStack-Tests'.

'Test class recreated'
