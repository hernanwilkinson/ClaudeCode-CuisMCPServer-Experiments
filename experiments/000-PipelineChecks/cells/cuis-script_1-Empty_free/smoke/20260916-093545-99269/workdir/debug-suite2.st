| result classes |
classes := (Smalltalk allClasses select: [ :aClass | (aClass category ifNil: [ '' ]) beginsWith: 'BoundedStack' ]) select: [ :aClass | aClass inheritsFrom: TestCase ].
StdIOWriteStream stdout nextPutAll: 'Found classes: '; nextPutAll: (classes collect: [ :c | c name ]) asArray printString; newLine.
result := TestResult new.

classes do: [ :aClass |
	| suite |
	StdIOWriteStream stdout nextPutAll: 'Building suite for: ', aClass name; newLine.
	suite := aClass buildSuite.
	StdIOWriteStream stdout nextPutAll: 'Suite has tests: ', suite tests size printString; newLine.
	suite run: result
].

'Done'
