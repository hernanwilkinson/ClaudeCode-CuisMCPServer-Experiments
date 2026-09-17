| suite |
suite := BoundedStackTest buildSuite.
(suite tests collect: [ :t | t selector ]) asArray printString
