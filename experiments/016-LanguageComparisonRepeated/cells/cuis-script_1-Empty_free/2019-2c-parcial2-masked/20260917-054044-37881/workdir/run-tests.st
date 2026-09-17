| result classes |
classes := (Smalltalk allClasses select: [ :aClass | (aClass category ifNil: [ '' ]) beginsWith: 'SurveyCrawler' ]) select: [ :aClass | aClass inheritsFrom: TestCase ].
result := TestResult new.
classes do: [ :aClass | aClass buildSuite run: result ].
'tests run: ', result runCount printString, ', passed: ', result passedCount printString, ', failed: ', result failureCount printString, ', errors: ', result errorCount printString,
	(result failures isEmpty ifTrue: [ '' ] ifFalse: [ '. Failed: ', (result failures collect: [ :each | each printString ]) asArray printString ]),
	(result errors isEmpty ifTrue: [ '' ] ifFalse: [ '. Errors: ', (result errors collect: [ :each | each printString ]) asArray printString ])
