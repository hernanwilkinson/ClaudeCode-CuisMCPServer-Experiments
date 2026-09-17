"Build one tool scenario image. Evaluated by the VM through -s, with these arguments after the
file name: scenario name, features to require, tool group classes to keep, decorator classes to
keep. The lists are space separated and - stands for an empty one.

Every concrete MCPToolGroup and MCPToolDecorator subclass left in the image is served, so the
classes not named are removed. The tools the server will offer are written next to the image as
expected-tools.json, for the verifier to compare against what the running server answers."

"The MCP classes are looked up by name when the script runs, because the script is compiled
before the packages that define them are loaded, and a class named at compile time would be
bound to nil."

| arguments scenarioName namesIn featureNames toolGroupNames decoratorNames offersBatchTool dropBatchTool imageDirectory standardOutput log classNamed concreteSubclassesOf sortedNamesOf removeAllBut installUnitsAsGlobals servedToolNames writeExpectedTools reportFailure build |

arguments := Smalltalk startUpScriptArguments.
scenarioName := arguments first.
namesIn := [ :aSpaceSeparatedText | aSpaceSeparatedText substrings reject: [ :aName | aName = '-' ] ].
featureNames := namesIn value: arguments second.
toolGroupNames := namesIn value: arguments third.
decoratorNames := namesIn value: arguments fourth.
offersBatchTool := (arguments size < 5) or: [ arguments fifth = 'yes' ].

imageDirectory := DirectoryEntry withAbsolutePathName: Smalltalk imagePath.
standardOutput := StdIOWriteStream stdout.
log := [ :aText | standardOutput nextPutAll: 'scenario-image: '; nextPutAll: aText; newLine; flush ].

classNamed := [ :aClassName | Smalltalk at: aClassName ].
concreteSubclassesOf := [ :aRootClassName | (classNamed value: aRootClassName) allSubclasses reject: [ :eachClass | eachClass isAbstract ] ].
sortedNamesOf := [ :someClasses | (someClasses collect: [ :eachClass | eachClass name asString ]) asSortedCollection asArray ].

"A class is abstract while it has subclasses, so removing the leaves not kept goes on until no
childless class outside the kept ones is left: an abstract group whose every subclass went away
would otherwise be served as concrete and fail on the first tools/list."
removeAllBut := [ :someClassNamesToKeep :aRootClassName | | removable |
	[
		removable := (classNamed value: aRootClassName) allSubclasses select: [ :eachClass |
			eachClass hasSubclasses not and: [ (someClassNamesToKeep includes: eachClass name asString) not ] ].
		removable isEmpty ] whileFalse: [
			removable do: [ :eachClassToRemove |
				log value: 'removing ', eachClassToRemove name.
				eachClassToRemove removeFromSystem ] ] ].

servedToolNames := [ | server |
	server := (classNamed value: #MCPServer)
		servingOver: ((classNamed value: #MCPTransportText) readingFrom: '' readStream writingTo: (WriteStream on: String new))
		smalltalk: Smalltalk.
	(server toolDefinitions collect: [ :eachDefinition | eachDefinition at: 'name' ]) asSortedCollection asArray ].

writeExpectedTools := [ | expected |
	expected := OrderedDictionary new
		at: 'scenario' put: scenarioName;
		at: 'toolGroups' put: (sortedNamesOf value: (concreteSubclassesOf value: #MCPToolGroup));
		at: 'decorators' put: (sortedNamesOf value: (concreteSubclassesOf value: #MCPToolDecorator));
		at: 'tools' put: servedToolNames value;
		yourself.
	(imageDirectory // 'expected-tools.json')
		forceWriteStreamDo: [ :aStream | aStream nextPutAll: ((classNamed value: #Json) render: expected) ] ].

reportFailure := [ :anError |
	log value: 'FAILED: ', anError description.
	(imageDirectory // 'build-error.txt') forceWriteStreamDo: [ :aStream |
		aStream
			nextPutAll: anError description; newLine;
			nextPutAll: anError signalerContext printString ].
	Smalltalk quitPrimitive: 1 ].

installUnitsAsGlobals := [
	log value: 'installing the Aconcagua and Chalten units as globals'.
	(classNamed value: #UnitsTestResource) installUnitsAsGlobals.
	(classNamed value: #TimeUnits) installUnitsAsGlobals ].

"The batch tool lives in MCPImageTools with evaluate; a scenario that must offer evaluate alone
gets the group's tool list recompiled without it."
dropBatchTool := [
	log value: 'dropping the batch tool'.
	(classNamed value: #MCPImageTools)
		compile: 'addToolsTo: anMCPServer

	anMCPServer
		addTool: self evaluateTool;
		addTool: self screenshotTool;
		addTool: self saveImageTool'
		classified: 'tools' ].

build := [
	featureNames do: [ :aFeatureName |
		log value: 'requiring ', aFeatureName.
		Feature require: aFeatureName ].
	installUnitsAsGlobals value.
	offersBatchTool ifFalse: [ dropBatchTool value ].
	removeAllBut value: toolGroupNames value: #MCPToolGroup.
	removeAllBut value: decoratorNames value: #MCPToolDecorator.
	writeExpectedTools value.
	log value: 'serving ', (servedToolNames value size printString), ' tools; saving and quitting'.
	Smalltalk saveAndQuit ].

[
	(Delay forSeconds: 2) wait.
	[ build value ]
		on: Error, FeatureRequirementUnsatisfied
		do: [ :anError | reportFailure value: anError ] ] fork
