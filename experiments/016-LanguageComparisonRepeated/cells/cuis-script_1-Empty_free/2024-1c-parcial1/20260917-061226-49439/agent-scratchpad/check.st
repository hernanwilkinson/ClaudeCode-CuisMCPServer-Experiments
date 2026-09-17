| classes |
classes := Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: 'ISW1-2024-1C-Parcial' ].
{ classes collect: [ :c | c name -> c category ].
  #(rooms setFloors: setPrices: setNumberOfRooms: guestType initializeRoomsWith: #reserved) collect: [ :sel |
	sel -> (classes inject: 0 into: [ :acc :c | acc + ({c. c class} inject: 0 into: [ :a :b | a + (b selectors count: [ :s | ((b sourceCodeAt: s) asString includesSubString: sel) ]) ]) ]) ].
  Undeclared keys }
