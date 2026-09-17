| out |
out := StdIOWriteStream stdout.
((Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: 'ISW1-2024-1C-Parcial' ]) asSortedCollection: [:a :b | a name <= b name]) do: [ :c |
  out nextPutAll: '===== ', c definition; newLine.
  { c class. c } do: [ :cl |
    cl organization categories do: [ :cat |
      (cl organization listAtCategoryNamed: cat) do: [ :sel |
        out nextPutAll: '--- ', cl name, ' [', cat, '] '; newLine; nextPutAll: (cl sourceCodeAt: sel) asString; newLine ] ] ] ].
out flush.
nil
