{ Collection canUnderstand: #allSatisfy:. Collection canUnderstand: #sum:. Collection canUnderstand: #sum:ifEmpty:.
 (Array with: 0*peso with: 100*peso) sum: [:x | x].
 (Array with: 3 with: 4) sum: [:x | x].
 (Collection >> #sum:) sourceCode.
 (100*peso) strictlyPositive.
 (Array with: 100*peso with: 200*peso) max.
 (100*peso)/2 }
