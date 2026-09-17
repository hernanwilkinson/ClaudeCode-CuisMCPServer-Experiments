| result classes |
classes := (Smalltalk allClasses select: [ :aClass | (aClass category ifNil: [ '' ]) beginsWith: 'BoundedStack' ]) select: [ :aClass | aClass inheritsFrom: TestCase ].
'Found classes: ', (classes collect: [ :c | c name ]) asArray printString
