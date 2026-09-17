| test errors |
test := BoundedStackTest new.
errors := OrderedCollection new.

{
	#testCreateStackWithValidCapacity .
	#testCreateStackWithNegativeCapacityFails .
	#testCreateStackWithZeroCapacityFails .
	#testCreateStackWithFloatCapacityFails .
	#testCreateStackWithStringCapacityFails .
	#testPushAndSize .
	#testPushOnFullStackRaisesError .
	#testTop .
	#testTopDoesNotRemove .
	#testTopOnEmptyStackRaisesError .
	#testPop .
	#testPopRemovesElement .
	#testPopOnEmptyStackRaisesError .
	#testIsEmpty .
	#testSizeIncrementsOnPush .
	#testSizeDecrementsOnPop .
	#testLIFOBehavior .
	#testMixedOperations .
	#testDifferentObjectTypes .
	#testStackWithCapacityOne .
	#testLargeCapacity
} do: [ :testName |
	test setUp.
	[ test perform: testName ]
		on: Error
		do: [ :e |
			errors add: (testName, ': ', e messageText)
		]
].

'Tests completed. Errors: ', errors printString
