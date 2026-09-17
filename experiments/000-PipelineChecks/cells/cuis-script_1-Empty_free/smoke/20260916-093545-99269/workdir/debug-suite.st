| result classes |
classes := (Smalltalk allClasses select: [ :aClass | (aClass category ifNil: [ '' ]) beginsWith: 'BoundedStack' ]) select: [ :aClass | aClass inheritsFrom: TestCase ].
result := TestResult new.
classes do: [ :aClass |
	aClass buildSuite run: result
].
StdIOWriteStream stdout nextPutAll: 'tests run: ', result runCount printString; newLine.
StdIOWriteStream stdout nextPutAll: 'passed: ', result passedCount printString; newLine.
StdIOWriteStream stdout nextPutAll: 'failed: ', result failureCount printString; newLine.
StdIOWriteStream stdout nextPutAll: 'errors: ', result errorCount printString; newLine.
(result failures isEmpty not) ifTrue: [
	StdIOWriteStream stdout nextPutAll: 'Failures:'; newLine.
	result failures do: [ :each |
		StdIOWriteStream stdout nextPutAll: each printString; newLine
	]
].
(result errors isEmpty not) ifTrue: [
	StdIOWriteStream stdout nextPutAll: 'Errors:'; newLine.
	result errors do: [ :each |
		StdIOWriteStream stdout nextPutAll: each printString; newLine
	]
].
'Done'
