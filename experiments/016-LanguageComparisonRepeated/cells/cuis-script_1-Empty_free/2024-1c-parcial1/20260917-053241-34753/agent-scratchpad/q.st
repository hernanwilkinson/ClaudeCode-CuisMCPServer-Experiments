StdIOWriteStream stdout nextPutAll: (Collection sourceCodeAt: #sum:); newLine; nextPutAll: ((Collection includesSelector: #sum:ifEmpty:) printString); newLine;
 nextPutAll: (Collection sourceCodeAt: #sum:ifEmpty:) ; newLine;
 nextPutAll: (#(1 2) sum: [:x | x*peso]) printString; newLine;
 nextPutAll: (0*peso) printString; newLine;
 nextPutAll: (TestCase class sourceCodeAt: #isAbstract); newLine;
 nextPutAll: ((Smalltalk allClasses select: [:c | (c category ifNil:['']) beginsWith: 'ISW1-2024']) collect: [:c | c category]) printString; newLine.
nil
