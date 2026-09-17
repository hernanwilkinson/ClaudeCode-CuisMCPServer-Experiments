{ (Smalltalk allClasses select: [:c | (c category ifNil: ['']) beginsWith: 'Survey']) collect: [:c | c name -> c category].
  (Smalltalk allImplementorsOf: #moveCrawler:to:towards:) size.
  Smalltalk allClasses inject: 0 into: [:n :c | n + ((c selectors , c class selectors) count: [:s | ((c includesSelector: s) ifTrue: [c] ifFalse: [c class]) compiledMethodAt: s ifAbsent: [nil]; yourself. false]) ] }
