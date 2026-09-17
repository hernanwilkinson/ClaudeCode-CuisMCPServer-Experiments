| s |
s := WriteStream on: String new.
((Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: 'ISW1-2024-1C-Parcial' ]) asSortedCollection: [:a :b | a name <= b name]) do: [ :c |
  s nextPutAll: '===== ', c category, ' ', c definition; newLine.
  { c class. c } do: [ :b |
    b selectors asSortedCollection do: [ :sel |
      s nextPutAll: '--- ', b name, '>>', sel, ' (', (b organization categoryOfElement: sel), ')'; newLine; nextPutAll: (b sourceCodeAt: sel); newLine ] ] ].
StdIOWriteStream stdout nextPutAll: s contents; newLine.
nil
