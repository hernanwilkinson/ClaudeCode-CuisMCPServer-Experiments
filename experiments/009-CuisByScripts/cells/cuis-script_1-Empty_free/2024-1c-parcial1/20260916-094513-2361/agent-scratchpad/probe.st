{ ({100*peso. 200*peso} sum: [:x | x]) printString.
  (#() sum: [:x | x] ifEmpty: [0]) printString.
  ({1. 2} allSatisfy: [:x | x > 0]) printString.
  (Collection includesSelector: #sum:) printString.
  (Collection sourceCodeAt: #sum:) asString.
  (0*peso) strictlyPositive printString.
  ((100*peso) / 2) printString.
  (Class canUnderstand: #category:) printString.
  (TestCase class sourceCodeAt: #isAbstract) asString }
