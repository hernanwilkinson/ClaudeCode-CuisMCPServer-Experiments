StdIOWriteStream stdout nextPutAll: Customer instanceVariablesString; newLine; nextPutAll: (Undeclared keys asArray printString); newLine; nextPutAll: ImportTest category; newLine; nextPutAll: (Customer sourceCodeAt: #identification:) asString; newLine.
(Smalltalk allClasses select: [:c| (c category ifNil: ['']) beginsWith: 'CustomerImporter-Recu']) collect: [:c| c name -> c category]
