| result |
DevelopmentEnvironment class compile: 'isCurrent ^false' classified: 'current'.
result := TestResult new.
ImportTest buildSuite run: result.
StdIOWriteStream stdout nextPutAll: 'Integration: ', result printString; newLine.
self error: 'rollback on purpose'
