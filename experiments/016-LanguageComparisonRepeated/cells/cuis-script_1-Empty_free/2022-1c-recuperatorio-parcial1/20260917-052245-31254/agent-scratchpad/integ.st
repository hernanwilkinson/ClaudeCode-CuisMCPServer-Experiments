| r |
DevelopmentEnvironment class compile: 'isCurrent ^false'.
r := ImportTest buildSuite run.
StdIOWriteStream stdout nextPutAll: 'integration: ', r printString, ' / category: ', ImportTest category; newLine.
self error: 'revert on purpose'
