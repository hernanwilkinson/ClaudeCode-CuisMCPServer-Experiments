{ Undeclared keys asArray.
  #(moveUp moveDown moveLeft moveRight advance: retreat: at:facing: isAdvanceCommand:) collect: [:s | (Smalltalk allCallsOn: s) size] }
