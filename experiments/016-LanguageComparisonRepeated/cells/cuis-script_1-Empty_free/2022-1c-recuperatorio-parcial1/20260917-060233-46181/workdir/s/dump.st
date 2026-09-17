| ws |
ws := WriteStream on: String new.
(Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: 'CustomerImporter-Recu-1er-Parcial' ]) do: [ :c |
  ws nextPutAll: '===== ', c name, ' < ', c superclass name, ' [', c category, '] ivars: ', c instanceVariablesString, ' classVars: ', c classVariablesString; newLine.
  { c. c class } do: [ :b | b selectors asSortedCollection do: [ :s |
    ws nextPutAll: '--- ', b name, '>>', s, ' (', (b organization categoryOfElement: s) asString, ')'; newLine; nextPutAll: (b sourceCodeAt: s) asString; newLine ] ] ].
StdIOWriteStream stdout nextPutAll: ws contents; newLine.
nil
