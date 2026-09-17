| out classes |
out := WriteStream on: String new.
classes := Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: 'CustomerImporter-Recu-1er-Parcial' ].
classes do: [ :c |
  out nextPutAll: '===== '; nextPutAll: c definition; newLine.
  { c. c class } do: [ :b |
    b selectors asSortedCollection do: [ :s |
      out nextPutAll: '--- '; nextPutAll: b name; nextPutAll: ' >> '; nextPutAll: (b organization categoryOfElement: s) asString; newLine;
        nextPutAll: (b sourceCodeAt: s) asString; newLine ] ] ].
StdIOWriteStream stdout nextPutAll: out contents; newLine.
classes size
