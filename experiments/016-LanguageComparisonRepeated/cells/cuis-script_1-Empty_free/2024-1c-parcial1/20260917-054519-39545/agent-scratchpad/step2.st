HotelTest compile: 'createHotel

	^ Hotel withFloors: (OrderedCollection
		with: (self createFloorWith: 10 and: self defaultPriceList)
		with: (self createFloorWith: 1 and: self defaultPriceList))' classified: 'create'.
{ Smalltalk allCallsOn: #setFloors:. (FloorTest sourceCodeAt: #test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne) asString }
