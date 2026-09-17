| s |
s := WriteStream on: String new.
(Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: 'ISW1-2024-1C-Parcial' ]) do: [ :c |
  s nextPutAll: '===== ', c definition; newLine.
  { c. c class } do: [ :b | b selectors asSortedCollection do: [ :sel |
     s nextPutAll: '--- ', b name, ' [', (b organization categoryOfElement: sel), ']'; newLine; nextPutAll: (b sourceCodeAt: sel); newLine ] ] ].
StdIOWriteStream stdout nextPutAll: s contents; newLine.
nil
