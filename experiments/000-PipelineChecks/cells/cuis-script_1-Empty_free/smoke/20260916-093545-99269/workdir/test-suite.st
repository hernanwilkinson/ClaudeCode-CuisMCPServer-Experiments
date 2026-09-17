| result |
result := TestResult new.
BoundedStackTest buildSuite run: result.
'tests run: ', result runCount printString, ', passed: ', result passedCount printString, ', failed: ', result failureCount printString, ', errors: ', result errorCount printString
