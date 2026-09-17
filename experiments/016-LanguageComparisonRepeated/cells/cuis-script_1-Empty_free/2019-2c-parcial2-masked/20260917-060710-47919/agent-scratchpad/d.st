| out |
out := WriteStream on: String new.
(Smalltalk allClasses select: [:c | (c category ifNil: ['']) beginsWith: 'SurveyCrawler']) do: [:c |
  out nextPutAll: '===== ', c definition; newLine.
  { c. c class } do: [:b | b selectors do: [:s | out nextPutAll: '--- ', b name, '>>', s, ' [', (b organization categoryOfElement: s), ']'; newLine; nextPutAll: (b sourceCodeAt: s); newLine]]].
StdIOWriteStream stdout nextPutAll: out contents; newLine.
nil
