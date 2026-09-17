| result out |
out := StdIOWriteStream stdout.
DevelopmentEnvironment class compile: 'isCurrent

	^false' classified: 'current'.
result := ImportTest buildSuite run.
DevelopmentEnvironment class compile: 'isCurrent

	^true' classified: 'current'.
out nextPutAll: 'senders of removed setters: ', ((Smalltalk allCallsOn: #identificationType:), (Smalltalk allCallsOn: #identificationNumber:)) printString; newLine.
out nextPutAll: 'Customer ivars: ', Customer instVarNames printString; newLine.
out nextPutAll: 'ImportTest category: ', ImportTest category; newLine.
out nextPutAll: 'current env: ', Environment current class name; newLine.
result printString
