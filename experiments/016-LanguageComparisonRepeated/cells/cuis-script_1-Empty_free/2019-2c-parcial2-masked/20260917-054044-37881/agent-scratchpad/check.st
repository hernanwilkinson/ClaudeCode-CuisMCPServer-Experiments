| classes |
classes := Smalltalk allClasses select: [:c | (c category ifNil: ['']) beginsWith: 'SurveyCrawler'].
{ classes collect: [:c | c name -> c category].
  #(#moveUp #moveDown #moveLeft #moveRight #advance: #retreat: #isAdvanceCommand: #at:facing: #initializeAt:facing:) select: [:sel |
	classes anySatisfy: [:c | ({c. c class} anySatisfy: [:b | b selectors anySatisfy: [:m | (b compiledMethodAt: m) hasLiteral: sel]])]] }
