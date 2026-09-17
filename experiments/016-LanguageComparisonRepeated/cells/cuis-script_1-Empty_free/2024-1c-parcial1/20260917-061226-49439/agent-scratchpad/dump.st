| out classes |
out := StdIOWriteStream stdout.
classes := Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: 'ISW1-2024-1C-Parcial' ].
classes do: [ :c |
  out nextPutAll: '====== ', c name, ' (', c category, ') super: ', c superclass name, ' ivars: ', c instanceVariablesString; newLine.
  { c class. c } do: [ :b |
    b selectors asSortedCollection do: [ :s |
      out nextPutAll: '--- ', b name, ' >> ', s, ' [', (b organization categoryOfElement: s) asString, ']'; newLine.
      out nextPutAll: (b sourceCodeAt: s) asString; newLine ] ] ].
classes size
