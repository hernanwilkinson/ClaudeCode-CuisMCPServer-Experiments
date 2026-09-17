StdIOWriteStream stdout nextPutAll: (Collection sourceCodeAt: #sum:) asString; newLine;
 nextPutAll: (Collection includesSelector: #allSatisfy:) printString; newLine;
 nextPutAll: (TestCase class sourceCodeAt: #buildSuite) asString; newLine;
 nextPutAll: (TestCase class sourceCodeAt: #isAbstract) asString; newLine;
 nextPutAll: ((1 to: 3) sum: [:i | i * peso]) printString; newLine.
nil
