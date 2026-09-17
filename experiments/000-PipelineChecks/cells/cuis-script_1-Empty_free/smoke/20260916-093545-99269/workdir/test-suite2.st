| suite result |
suite := BoundedStackTest buildSuite.
result := TestResult new.

StdIOWriteStream stdout nextPutAll: 'About to run suite with ', suite tests size printString, ' tests'; newLine.

suite tests do: [ :test |
	| testName |
	testName := test selector.
	StdIOWriteStream stdout nextPutAll: 'Running: ', testName; newLine.
	[ test run: result ]
		on: Error
		do: [ :e |
			StdIOWriteStream stdout nextPutAll: 'ERROR in ', testName, ': ', e messageText; newLine.
			result addError: test
		]
].

StdIOWriteStream stdout nextPutAll: 'tests run: ', result runCount printString; newLine.
StdIOWriteStream stdout nextPutAll: 'passed: ', result passedCount printString; newLine.
StdIOWriteStream stdout nextPutAll: 'failed: ', result failureCount printString; newLine.
StdIOWriteStream stdout nextPutAll: 'errors: ', result errorCount printString; newLine.

'Done'
