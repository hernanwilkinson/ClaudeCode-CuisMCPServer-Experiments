| ws |
ws := WriteStream on: String new.
(Smalltalk allClasses select: [:c | (c category ifNil: ['']) beginsWith: 'CustomerImporter-Recu-1er-Parcial']) do: [:c |
  ws nextPutAll: '===== ', c name, ' superclass: ', c superclass name, ' ivars: ', c instanceVariablesString printString, ' cat: ', c category; newLine.
  { c. c class } do: [:b | b selectors asSortedCollection do: [:s |
     ws nextPutAll: '--- ', b name, '>>', s, ' [', (b organization categoryOfElement: s), ']'; newLine; nextPutAll: (b sourceCodeAt: s); newLine]]].
StdIOWriteStream stdout nextPutAll: ws contents; newLine.
nil
