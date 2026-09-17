| src |
src := (FloorTest sourceCodeAt: #test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne) asString.
Undeclared removeKey: #availableRoomsCount ifAbsent: [].
{ #('availableRoomsCount' '#reserved' 'rooms)' 'floor rooms' 'isNil' 'notNil') select: [ :k | src includesSubString: k ]. Undeclared keys }
