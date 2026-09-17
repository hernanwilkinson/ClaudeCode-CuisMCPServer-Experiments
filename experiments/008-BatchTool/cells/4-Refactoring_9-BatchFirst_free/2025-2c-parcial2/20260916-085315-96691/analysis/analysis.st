"Analyze the package a run produced, from inside the run image. Evaluated through the
smalltalk_evaluate tool by 3-analyzeRun.sh, which first replaces the placeholders:
  2025-2C-2doParcial                 the package (system category prefix) the agent worked in
  #()  a Smalltalk array literal of test class names to run as acceptance
  0        how many methods SmalltalkMentor's LLM review may look at, 0 for none
  /Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/experiments/008-BatchTool/cells/4-Refactoring_9-BatchFirst_free/2025-2c-parcial2/20260916-085315-96691/analysis/in-image.json             absolute path the JSON report is written to
Writes a JSON document (the tool's answer is capped, a file is not) and answers OK. It holds: tests, coverage, test smells and one record per method with the counts
the parse tree gives (message sends, conditionals, nil and type checks, assertion idioms). The
Python side adds what regular expressions on the sources can tell, including the nil
references, which the parse tree cannot give: the parser adds a nil branch to every one-armed
ifTrue: and ifFalse:."

| packageName package classes modelClasses testClasses acceptanceClasses agentTestClasses classNamesOf testsNamed selectorOf isSendOf resultReportOf runTestsOf methodsOf countingIn methodRecordOf classRecordOf coverageReportOf testSmellsOf mentorFindingsOf llmReviewOf report |

packageName := '2025-2C-2doParcial'.
package := CodePackage named: packageName createIfAbsent: true registerIfNew: true.
classes := OrderedCollection new.
package classesDo: [ :eachClass | classes add: eachClass ].
testClasses := classes select: [ :eachClass | eachClass inheritsFrom: TestCase ].
modelClasses := classes reject: [ :eachClass | eachClass inheritsFrom: TestCase ].
acceptanceClasses := #()
	collect: [ :aName | Smalltalk at: aName asSymbol ifAbsent: [ nil ] ]
	thenSelect: [ :aClass | aClass notNil ].
agentTestClasses := testClasses reject: [ :eachClass | acceptanceClasses includes: eachClass ].

classNamesOf := [ :someClasses | (someClasses collect: [ :eachClass | eachClass name asString ]) asArray ].
testsNamed := [ :someTestCases | (someTestCases collect: [ :eachTest | eachTest class name asString, '>>', eachTest selector asString ]) asSortedCollection asArray ].

resultReportOf := [ :aResult |
	OrderedDictionary new
		at: 'run' put: aResult runCount;
		at: 'passed' put: aResult passedCount;
		at: 'failed' put: aResult failureCount;
		at: 'errors' put: aResult errorCount;
		at: 'failures' put: (testsNamed value: aResult failures);
		at: 'errorTests' put: (testsNamed value: aResult errors);
		yourself ].

runTestsOf := [ :someClasses | | result |
	result := TestResult new.
	someClasses do: [ :eachClass | eachClass buildSuite run: result ].
	result ].

methodsOf := [ :someClasses | | methods |
	methods := OrderedCollection new.
	someClasses do: [ :eachClass |
		methods addAll: eachClass methodDict values.
		methods addAll: eachClass class methodDict values ].
	methods ].

selectorOf := [ :aMessageNode | aMessageNode selector key ].
isSendOf := [ :aNode :someSelectors | (aNode isKindOf: MessageNode) and: [ someSelectors includes: (selectorOf value: aNode) ] ].

"Counts a compiled method's parse tree. Everything is guarded because a method that cannot be
parsed again (a primitive, a broken source pointer) must not stop the whole analysis."
countingIn := [ :aCompiledMethod | | counts node argumentIsBlock |
	counts := OrderedDictionary new
		at: 'sends' put: 0;
		at: 'ifs' put: 0;
		at: 'nilChecks' put: 0;
		at: 'typeChecks' put: 0;
		at: 'identityComparisons' put: 0;
		at: 'sizeEqualsZero' put: 0;
		at: 'isEmptyIfTrue' put: 0;
		at: 'andOrWithoutBlock' put: 0;
		at: 'assertEquals' put: 0;
		at: 'assertOnEquality' put: 0;
		at: 'assertNot' put: 0;
		at: 'deny' put: 0;
		at: 'shouldRaise' put: 0;
		at: 'errorWithLiteralString' put: 0;
		at: 'hasComment' put: false;
		at: 'parsed' put: true;
		yourself.
	argumentIsBlock := [ :aMessageNode | aMessageNode arguments allSatisfy: [ :eachArgument | eachArgument isKindOf: BlockNode ] ].
	[
		node := aCompiledMethod methodNode.
		counts at: 'hasComment' put: (node comment notNil and: [ node comment notEmpty ]).
		node nodesDo: [ :each |
			(each isKindOf: MessageNode) ifTrue: [ | selector |
				selector := selectorOf value: each.
				counts at: 'sends' put: (counts at: 'sends') + 1.
				(#(ifTrue: ifFalse: ifTrue:ifFalse: ifFalse:ifTrue: caseOf: caseOf:otherwise:) includes: selector)
					ifTrue: [ counts at: 'ifs' put: (counts at: 'ifs') + 1 ].
				(#(isNil notNil ifNil: ifNotNil: ifNil:ifNotNil: ifNotNil:ifNil:) includes: selector)
					ifTrue: [ counts at: 'nilChecks' put: (counts at: 'nilChecks') + 1 ].
				((#(= == ~= ~~) includes: selector) and: [ each arguments anySatisfy: [ :anArgument | (anArgument isKindOf: VariableNode) and: [ anArgument isNilPseudoVariable ] ] ])
					ifTrue: [ counts at: 'nilChecks' put: (counts at: 'nilChecks') + 1 ].
				(#(isKindOf: isMemberOf: respondsTo: isString isNumber isInteger isSymbol isCollection isBlock) includes: selector)
					ifTrue: [ counts at: 'typeChecks' put: (counts at: 'typeChecks') + 1 ].
				(#(== ~~) includes: selector)
					ifTrue: [ counts at: 'identityComparisons' put: (counts at: 'identityComparisons') + 1 ].
				(selector = #= and: [ (isSendOf value: each receiver value: #(size)) and: [ each arguments first isKindOf: LiteralNode ] and: [ each arguments first literalValue = 0 ] ])
					ifTrue: [ counts at: 'sizeEqualsZero' put: (counts at: 'sizeEqualsZero') + 1 ].
				((#(ifTrue: ifFalse: ifTrue:ifFalse: ifFalse:ifTrue:) includes: selector) and: [ isSendOf value: each receiver value: #(isEmpty notEmpty isEmptyOrNil) ])
					ifTrue: [ counts at: 'isEmptyIfTrue' put: (counts at: 'isEmptyIfTrue') + 1 ].
				((#(and: or:) includes: selector) and: [ (argumentIsBlock value: each) not ])
					ifTrue: [ counts at: 'andOrWithoutBlock' put: (counts at: 'andOrWithoutBlock') + 1 ].
				(selector = #assert:equals:)
					ifTrue: [ counts at: 'assertEquals' put: (counts at: 'assertEquals') + 1 ].
				(selector = #assert: and: [ isSendOf value: each arguments first value: #(= ==) ])
					ifTrue: [ counts at: 'assertOnEquality' put: (counts at: 'assertOnEquality') + 1 ].
				(selector = #assert: and: [ isSendOf value: each arguments first value: #(not) ])
					ifTrue: [ counts at: 'assertNot' put: (counts at: 'assertNot') + 1 ].
				(selector = #deny:)
					ifTrue: [ counts at: 'deny' put: (counts at: 'deny') + 1 ].
				(#(should:raise:withMessageText: should:raise:withExceptionDo: should:raise:) includes: selector)
					ifTrue: [ counts at: 'shouldRaise' put: (counts at: 'shouldRaise') + 1 ].
				((#(error: signal: signal:with:) includes: selector) and: [ each arguments notEmpty and: [ (each arguments first isKindOf: LiteralNode) and: [ each arguments first literalValue isString ] ] ])
					ifTrue: [ counts at: 'errorWithLiteralString' put: (counts at: 'errorWithLiteralString') + 1 ] ].
			] ]
		on: Error, AssertionFailure
		do: [ :anError | counts at: 'parsed' put: false. counts at: 'parseError' put: anError description ].
	counts ].

methodRecordOf := [ :aCompiledMethod |
	OrderedDictionary new
		at: 'class' put: aCompiledMethod methodClass theNonMetaClass name asString;
		at: 'classSide' put: aCompiledMethod methodClass isMeta;
		at: 'selector' put: aCompiledMethod selector asString;
		at: 'category' put: aCompiledMethod category asString;
		at: 'linesOfCode' put: aCompiledMethod linesOfCode;
		at: 'source' put: aCompiledMethod sourceCode asString;
		at: 'counts' put: (countingIn value: aCompiledMethod);
		yourself ].

classRecordOf := [ :aClass | | depth ancestor |
	depth := 0. ancestor := aClass.
	[ ancestor superclass notNil ] whileTrue: [ depth := depth + 1. ancestor := ancestor superclass ].
	OrderedDictionary new
		at: 'name' put: aClass name asString;
		at: 'superclass' put: aClass superclass name asString;
		at: 'category' put: aClass category asString;
		at: 'isTest' put: (aClass inheritsFrom: TestCase);
		at: 'depth' put: depth;
		at: 'instanceVariables' put: aClass instVarNames asArray;
		at: 'classInstanceVariables' put: aClass class instVarNames asArray;
		at: 'instanceMethods' put: aClass methodDict size;
		at: 'classMethods' put: aClass class methodDict size;
		at: 'hasComment' put: aClass comment notEmpty;
		yourself ].

coverageReportOf := [ :someTestClasses :someModelClasses | | methods coverage perClass |
	methods := methodsOf value: someModelClasses.
	methods isEmpty
		ifTrue: [ 'no model methods' ]
		ifFalse: [
			[
				coverage := CodeCoverageAnalyzer value: [ runTestsOf value: someTestClasses ] analyzingAll: methods.
				perClass := OrderedDictionary new.
				someModelClasses do: [ :eachClass |
					perClass at: eachClass name asString put: ((coverage wasClassAnalyzed: eachClass)
						ifTrue: [ [ (coverage reportForClass: eachClass) coverageRatio asFloat ] on: Error, AssertionFailure do: [ :anError | anError description ] ]
						ifFalse: [ 'not analyzed' ]) ].
				OrderedDictionary new
					at: 'percentCovered' put: coverage percentCovered asFloat;
					at: 'perClass' put: perClass;
					yourself ]
				on: Error, AssertionFailure
				do: [ :anError | 'ERROR: ', anError description ] ] ].

testSmellsOf := [ :someTestClasses | | ruleClasses smells |
	(Smalltalk includesKey: #TestLint)
		ifFalse: [ 'TestLint not loaded' ]
		ifTrue: [
			ruleClasses := (Smalltalk at: #TestLintRule) allSubclasses reject: [ :eachRuleClass | eachRuleClass hasSubclasses ].
			smells := OrderedCollection new.
			someTestClasses do: [ :eachTestClass |
				[ | rules found |
					rules := ((Smalltalk at: #TestLintRulesGetter) from: ruleClasses forClass: eachTestClass) getRules.
					found := ((Smalltalk at: #TestLint) withRules: rules forNode: ((Smalltalk at: #TestClassNode) for: eachTestClass)) run.
					found do: [ :eachSmell |
						smells add: (OrderedDictionary new
							at: 'class' put: eachTestClass name asString;
							at: 'node' put: ([ eachSmell node name asString ] on: Error, AssertionFailure do: [ :anError | '' ]);
							at: 'rule' put: eachSmell ruleClass name asString;
							at: 'title' put: ([ eachSmell title asString ] on: Error, AssertionFailure do: [ :anError | '' ]);
							at: 'message' put: ([ eachSmell message asString ] on: Error, AssertionFailure do: [ :anError | '' ]);
							yourself) ] ]
					on: Error, AssertionFailure
					do: [ :anError | smells add: (OrderedDictionary new at: 'class' put: eachTestClass name asString; at: 'error' put: anError description; yourself) ] ].
			smells asArray ] ].

"SmalltalkMentor's mechanical heuristics: every method heuristic over every method of the
package, every class heuristic over every class. Each finding names the heuristic and the
method or class it is about. Missing SmalltalkMentor is reported, not fatal."
mentorFindingsOf := [ :someClasses | | reviewer methodHeuristicClasses classHeuristicClasses findings recordOf |
	(Smalltalk includesKey: #SmalltalkMentorReview)
		ifFalse: [ 'SmalltalkMentor not loaded' ]
		ifTrue: [
			reviewer := (Smalltalk at: #SmalltalkMentorReview) basicNew.
			methodHeuristicClasses := reviewer methodHeuristicClasses.
			classHeuristicClasses := reviewer classHeuristicClasses.
			findings := OrderedCollection new.
			recordOf := [ :aFinding :aHeuristic :aKind :aTarget |
				OrderedDictionary new
					at: 'kind' put: aKind;
					at: 'target' put: aTarget;
					at: 'heuristic' put: aHeuristic class name asString;
					at: 'name' put: ([ aHeuristic name asString ] on: Error, AssertionFailure do: [ :anError | '' ]);
					at: 'title' put: ([ aFinding title asString ] on: Error, AssertionFailure do: [ :anError | '' ]);
					at: 'detail' put: ([ aFinding detail asString ] on: Error, AssertionFailure do: [ :anError | '' ]);
					yourself ].
			someClasses do: [ :eachClass |
				classHeuristicClasses do: [ :eachHeuristicClass |
					[ | heuristic |
						heuristic := eachHeuristicClass for: eachClass.
						heuristic value do: [ :eachFinding |
							findings add: (recordOf value: eachFinding value: heuristic value: 'class' value: eachClass name asString) ] ]
						on: Error, AssertionFailure
						do: [ :anError | findings add: (OrderedDictionary new at: 'kind' put: 'error'; at: 'target' put: eachClass name asString; at: 'heuristic' put: eachHeuristicClass name asString; at: 'detail' put: anError description; yourself) ] ].
				(methodsOf value: { eachClass }) do: [ :eachMethod |
					methodHeuristicClasses do: [ :eachHeuristicClass |
						[ | heuristic |
							heuristic := eachHeuristicClass for: eachMethod.
							heuristic value do: [ :eachFinding |
								findings add: (recordOf value: eachFinding value: heuristic value: 'method' value: eachMethod methodClass name asString, '>>', eachMethod selector asString) ] ]
							on: Error, AssertionFailure
							do: [ :anError | findings add: (OrderedDictionary new at: 'kind' put: 'error'; at: 'target' put: eachMethod methodClass name asString, '>>', eachMethod selector asString; at: 'heuristic' put: eachHeuristicClass name asString; at: 'detail' put: anError description; yourself) ] ] ] ].
			findings asArray ] ].

"SmalltalkMentor's LLM review of each method against the heuristics file, optional because
every method costs one model call. The proposal is the JSON object the mentor asks for."
llmReviewOf := [ :someClasses :aLimit | | mentor reviews methods |
	((Smalltalk includesKey: #SmalltalkMentor) and: [ aLimit > 0 ])
		ifFalse: [ nil ]
		ifTrue: [
			mentor := (Smalltalk at: #SmalltalkMentor) current copy.
			reviews := OrderedCollection new.
			methods := (methodsOf value: someClasses) first: (aLimit min: (methodsOf value: someClasses) size).
			methods do: [ :eachMethod |
				[ | proposal |
					proposal := mentor parseProposalFrom: (mentor completionForMessages: { mentor userMessage: (mentor promptFor: eachMethod sourceCode isTestMethod: (eachMethod methodClass theNonMetaClass inheritsFrom: TestCase)) }).
					reviews add: (OrderedDictionary new
						at: 'target' put: eachMethod methodClass name asString, '>>', eachMethod selector asString;
						at: 'canImprove' put: (proposal at: 'canImprove' ifAbsent: [ nil ]);
						at: 'rationale' put: (mentor rationaleOf: proposal);
						at: 'suggestedSource' put: (mentor suggestedSourceOf: proposal);
						yourself) ]
					on: Error, AssertionFailure
					do: [ :anError | reviews add: (OrderedDictionary new at: 'target' put: eachMethod methodClass name asString, '>>', eachMethod selector asString; at: 'error' put: anError description; yourself) ] ].
			OrderedDictionary new
				at: 'provider' put: ([ mentor provider name asString ] on: Error, AssertionFailure do: [ :anError | '' ]);
				at: 'model' put: ([ mentor model asString ] on: Error, AssertionFailure do: [ :anError | '' ]);
				at: 'reviews' put: reviews asArray;
				yourself ] ].

report := OrderedDictionary new.
report at: 'package' put: packageName.
report at: 'classes' put: (classes collect: [ :eachClass | classRecordOf value: eachClass ]) asArray.
report at: 'modelClasses' put: (classNamesOf value: modelClasses).
report at: 'testClasses' put: (classNamesOf value: testClasses).
report at: 'acceptanceClasses' put: (classNamesOf value: acceptanceClasses).
report at: 'agentTestClasses' put: (classNamesOf value: agentTestClasses).
report at: 'acceptanceTests' put: (acceptanceClasses isEmpty ifTrue: [ nil ] ifFalse: [ [ resultReportOf value: (runTestsOf value: acceptanceClasses) ] on: Error, AssertionFailure do: [ :anError | 'ERROR: ', anError description ] ]).
report at: 'agentTests' put: (agentTestClasses isEmpty ifTrue: [ nil ] ifFalse: [ [ resultReportOf value: (runTestsOf value: agentTestClasses) ] on: Error, AssertionFailure do: [ :anError | 'ERROR: ', anError description ] ]).
report at: 'coverageByAgentTests' put: (agentTestClasses isEmpty ifTrue: [ nil ] ifFalse: [ coverageReportOf value: agentTestClasses value: modelClasses ]).
report at: 'coverageByAllTests' put: (testClasses isEmpty ifTrue: [ nil ] ifFalse: [ coverageReportOf value: testClasses value: modelClasses ]).
report at: 'testSmells' put: (testSmellsOf value: testClasses).
report at: 'mentorFindings' put: (mentorFindingsOf value: classes).
report at: 'llmReview' put: (llmReviewOf value: classes value: 0).
report at: 'methods' put: ((methodsOf value: classes) collect: [ :eachMethod | methodRecordOf value: eachMethod ]) asArray.
(FileEntry withAbsolutePathName: '/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/experiments/008-BatchTool/cells/4-Refactoring_9-BatchFirst_free/2025-2c-parcial2/20260916-085315-96691/analysis/in-image.json')
	forceWriteStreamDo: [ :aStream | aStream nextPutAll: (Json render: report) ].
'OK'
