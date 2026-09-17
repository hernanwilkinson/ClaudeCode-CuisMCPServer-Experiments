| s |
s := WriteStream on: String new.
(Smalltalk allClasses select: [:c | (c category ifNil: ['']) beginsWith: 'CustomerImporter-Recu-1er-Parcial']) do: [:c |
  s nextPutAll: '======== ', c name, ' < ', c superclass name, ' [', c category, '] ivars: ', c instanceVariablesString; newLine.
  { c. c class } do: [:b | b selectors asSortedCollection do: [:sel |
     s nextPutAll: '--- ', b name, ' >> ', sel, ' {', (b organization categoryOfElement: sel) asString, '}'; newLine; nextPutAll: (b sourceCodeAt: sel) asString; newLine]]].
StdIOWriteStream stdout nextPutAll: s contents; newLine.
nil
