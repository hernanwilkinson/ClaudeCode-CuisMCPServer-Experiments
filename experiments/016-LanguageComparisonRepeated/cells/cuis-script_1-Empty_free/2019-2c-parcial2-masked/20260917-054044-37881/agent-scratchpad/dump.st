| s |
s := WriteStream on: String new.
(Smalltalk allClasses select: [:c | (c category ifNil: ['']) beginsWith: 'Survey']) do: [:c |
  s nextPutAll: c definition; newLine.
  {c. c class} do: [:b | b selectors asSortedCollection do: [:sel |
     s nextPutAll: '---- ', b name, '>>', sel, ' [', (b whichCategoryIncludesSelector: sel), ']'; newLine; nextPutAll: (b sourceCodeAt: sel); newLine]]].
StdIOWriteStream stdout nextPutAll: s contents; newLine.
nil
