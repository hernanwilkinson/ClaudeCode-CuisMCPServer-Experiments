{ (TestCase class sourceCodeAt: #buildSuite) asString.
  ((Smalltalk allClasses select: [ :cl | (cl category ifNil: ['']) beginsWith: 'ISW1-2024-1C-Parcial' ]) collect: [:cl | cl name, ' -> ', cl category ]) asArray.
  (#(rooms setFloors: setNumberOfRooms: setPrices: guestType initializeRoomsWith:) collect: [:s | s -> (Smalltalk allCallsOn: s) size ]).
  Undeclared keys asArray }
