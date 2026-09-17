| out |
out := StdIOWriteStream stdout.
(Smalltalk allClasses select: [:c | (c category ifNil: ['']) beginsWith: 'SurveyCrawler']) do: [:c |
  out nextPutAll: '===== ', c definition; newLine.
  { c class. c } do: [:b |
    b selectors asSortedCollection do: [:s | out nextPutAll: '--- ', b name, '>>', s, ' [', (b organization categoryOfElement: s) asString, ']'; newLine; nextPutAll: (b sourceCodeAt: s) asString; newLine]]].
nil
