| out classes |
out := StdIOWriteStream stdout.
classes := Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: 'CustomerImporter-Recu-1er-Parcial' ].
classes do: [ :c |
  out nextPutAll: '===== ', c definition; newLine.
  { c. c class } do: [ :b |
    b selectors asSortedCollection do: [ :s |
      out nextPutAll: '----- ', b name, '>>', s, ' [', (b organization categoryOfElement: s), ']'; newLine; nextPutAll: (b sourceCodeAt: s); newLine ] ] ].
classes size
