SimsHotelsTest class removeSelector: #isAbstract.
{ SimsHotelsTest buildSuite tests size.
  #(setFloors: setNumberOfRooms: setPrices: rooms guestType initializeRoomsWith: availableRoomsCount) collect: [ :sel |
	sel -> ((Smalltalk allCallsOn: sel) select: [ :ref | (ref actualClass category ifNil: ['']) beginsWith: 'ISW1-2024-1C' ]) asArray ].
  (Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: 'ISW1-2024-1C' ]) collect: [ :c | c name -> c category ] }
