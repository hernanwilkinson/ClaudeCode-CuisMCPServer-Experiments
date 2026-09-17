| cat |
cat := 'ISW1-2024-1C-Parcial-Tests'.

{ FloorTest. HotelTest. RoomTest } do: [ :aClass | aClass selectors do: [ :each | aClass removeSelector: each ] ].

TestCase subclass: #SimsHotelsTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
SimsHotelsTest subclass: #FloorTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
SimsHotelsTest subclass: #HotelTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
SimsHotelsTest subclass: #RoomTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.

"---------------- SimsHotelsTest ----------------"
SimsHotelsTest compile: 'guestTypeConference

	^ #conferenceGuest' classified: 'create'.
SimsHotelsTest compile: 'guestTypeVacation

	^ #vacationGuest' classified: 'create'.
SimsHotelsTest compile: 'minPriceInList

	^ 100*peso' classified: 'create'.
SimsHotelsTest compile: 'maxPriceInList

	^ 200*peso' classified: 'create'.
SimsHotelsTest compile: 'defaultPriceList

	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself' classified: 'create'.
SimsHotelsTest compile: 'createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withNumberOfRooms: aNumberOfRooms andPrices: aPriceList' classified: 'create'.
SimsHotelsTest compile: 'createFloorWith10Rooms

	^ self createFloorWith: 10 and: self defaultPriceList' classified: 'create'.
SimsHotelsTest compile: 'should: aBlock raiseErrorWithDescription: anErrorDescription andAssert: anAssertionsBlock

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			anAssertionsBlock value ]' classified: 'assertions'.

"---------------- FloorTest ----------------"
FloorTest compile: 'withRoom: aRoomNumber of: aFloor do: aRoomBlock

	aFloor withRoom: aRoomNumber do: aRoomBlock ifNone: [ self fail ]' classified: 'rooms'.
FloorTest compile: 'receive: aGuestType atRoom: aRoomNumber of: aFloor

	self withRoom: aRoomNumber of: aFloor do: [ :room | room receive: aGuestType ]' classified: 'rooms'.
FloorTest compile: 'receiveWithReservation: aGuestType atRoom: aRoomNumber of: aFloor

	self withRoom: aRoomNumber of: aFloor do: [ :room | room receiveWithReservation: aGuestType ]' classified: 'rooms'.
FloorTest compile: 'reserveRoom: aRoomNumber of: aFloor

	self withRoom: aRoomNumber of: aFloor do: [ :room | room reserve ]' classified: 'rooms'.
FloorTest compile: 'createFloorWithTwoGuestsAndAReservation

	| floor |

	floor := self createFloorWith10Rooms.

	self receive: self guestTypeVacation atRoom: 1 of: floor.
	self receive: self guestTypeConference atRoom: 2 of: floor.
	self reserveRoom: 3 of: floor.

	^ floor' classified: 'create'.

FloorTest compile: 'test01CannotCreateFloorWithoutRooms

	self
		should: [ self createFloorWith: 0 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor numberOfRoomsMustBePositiveErrorDescription' classified: 'testing'.
FloorTest compile: 'test02CannotCreateFloorWithNoIntergerNumberOfRooms

	self
		should: [ self createFloorWith: 1.5 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor numberOfRoomsMustBeIntegerErrorDescription' classified: 'testing'.
FloorTest compile: 'test03CannotCreateFloorWithoutPrices

	self
		should: [ self createFloorWith: 10 and: Dictionary new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor pricesListCannotBeEmptyErrorDescription' classified: 'testing'.
FloorTest compile: 'test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |

	floor := self createFloorWith10Rooms.

	self assert: floor isAvailable.
	self assert: 0 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved.' classified: 'testing'.
FloorTest compile: 'test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |

	floor := self createFloorWith10Rooms.

	self receive: self guestTypeVacation atRoom: 1 of: floor.

	self assert: floor totalRooms - 1 equals: floor totalRoomsAvailable.
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved.' classified: 'testing'.
FloorTest compile: 'test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsAvailable roomsOccupied roomsReserved |

	floor := self createFloorWith10Rooms.

	self reserveRoom: 1 of: floor.

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	self receiveWithReservation: self guestTypeVacation atRoom: 1 of: floor.

	self assert: roomsAvailable equals: floor totalRoomsAvailable.
	self assert: roomsOccupied equals: floor totalRoomsOccupied.
	self assert: roomsReserved - 1 equals: floor totalRoomsReserved.' classified: 'testing'.
FloorTest compile: 'test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |

	floor := self createFloorWith10Rooms.

	self reserveRoom: 1 of: floor.

	self assert: floor totalRooms - 1 equals: floor totalRoomsAvailable.
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 1 equals: floor totalRoomsReserved.' classified: 'testing'.
FloorTest compile: 'test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	self
		assert: self maxPriceInList + self minPriceInList + (self minPriceInList / 2)
		equals: self createFloorWithTwoGuestsAndAReservation totalProfits' classified: 'testing'.
FloorTest compile: 'test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	self
		assert: self maxPriceInList * 7
		equals: self createFloorWithTwoGuestsAndAReservation totalLosses' classified: 'testing'.
FloorTest compile: 'test10CannotCreateFloorWithNonPositivePrices

	self
		should: [ self createFloorWith: 10 and: (Dictionary new at: self guestTypeVacation put: 0*peso; yourself) ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor priceMustBePositiveErrorDescription' classified: 'testing'.

"---------------- HotelTest ----------------"
HotelTest compile: 'createHotel

	^ Hotel withFloors: (OrderedCollection
		with: self createFloorWith10Rooms
		with: (self createFloorWith: 1 and: self defaultPriceList))' classified: 'create'.
HotelTest compile: 'createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: self createFloorWith10Rooms)' classified: 'create'.
HotelTest compile: 'assertThat: aHotel hasRoomsAvailableLessThanTotalBy: aNumberOfTakenRooms reserved: aNumberOfReservedRooms occupied: aNumberOfOccupiedRooms

	self assert: aHotel totalRooms - aNumberOfTakenRooms equals: aHotel totalRoomsAvailable.
	self assert: aNumberOfReservedRooms equals: aHotel totalRoomsReserved.
	self assert: aNumberOfOccupiedRooms equals: aHotel totalRoomsOccupied' classified: 'assertions'.
HotelTest compile: 'assertHasNoRoomsTaken: aHotel

	self assertThat: aHotel hasRoomsAvailableLessThanTotalBy: 0 reserved: 0 occupied: 0' classified: 'assertions'.

HotelTest compile: 'test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Hotel noFloorsErrorDescription' classified: 'testing'.
HotelTest compile: 'test02NewHotelsAreEmpty

	| hotel |

	hotel := self createHotel.

	self assert: hotel isEmpty.
	self assertHasNoRoomsTaken: hotel' classified: 'testing'.
HotelTest compile: 'test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self deny: hotel isEmpty.
	self assertThat: hotel hasRoomsAvailableLessThanTotalBy: 1 reserved: 0 occupied: 1' classified: 'testing'.
HotelTest compile: 'test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assertThat: hotel hasRoomsAvailableLessThanTotalBy: 1 reserved: 1 occupied: 1' classified: 'testing'.
HotelTest compile: 'test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assertThat: hotel hasRoomsAvailableLessThanTotalBy: 1 reserved: 0 occupied: 1' classified: 'testing'.
HotelTest compile: 'test06HotelCannotReceiveWithReservationWithoutPreviousReservation

	| hotel |

	hotel := self createHotel.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raiseErrorWithDescription: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertHasNoRoomsTaken: hotel ]' classified: 'testing'.
HotelTest compile: 'test07HotelProfitsAreTheSumOfEachFloorProfits

	| hotel floor1 floor2 |

	floor1 := self createFloorWith10Rooms.
	floor2 := self createFloorWith10Rooms.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: self minPriceInList + self maxPriceInList equals: hotel totalProfits.
	self assert: floor1 totalProfits + floor2 totalProfits equals: hotel totalProfits' classified: 'testing'.
HotelTest compile: 'test08HotelLossesAreTheSumOfEachFloorLosses

	| hotel floor1 floor2 |

	floor1 := self createFloorWith10Rooms.
	floor2 := self createFloorWith10Rooms.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.
	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: self maxPriceInList * 16 equals: hotel totalLosses.
	self assert: floor1 totalLosses + floor2 totalLosses equals: hotel totalLosses' classified: 'testing'.
HotelTest compile: 'test09HotelCannotReserveANonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		raiseErrorWithDescription: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasNoRoomsTaken: hotel ]' classified: 'testing'.
HotelTest compile: 'test10HotelCannotReserveANonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		raiseErrorWithDescription: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasNoRoomsTaken: hotel ]' classified: 'testing'.
HotelTest compile: 'test11HotelCannotReceiveAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raiseErrorWithDescription: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasNoRoomsTaken: hotel ]' classified: 'testing'.
HotelTest compile: 'test12HotelCannotReceiveAtNonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		raiseErrorWithDescription: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasNoRoomsTaken: hotel ]' classified: 'testing'.
HotelTest compile: 'test13HotelCannotReceiveWithReservationAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	hotel reserveRoom: 1 atFloor: 1.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raiseErrorWithDescription: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertThat: hotel hasRoomsAvailableLessThanTotalBy: 1 reserved: 1 occupied: 1 ]' classified: 'testing'.

"---------------- RoomTest ----------------"
RoomTest compile: 'assertIsAvailable: aRoom

	self assert: aRoom isAvailable.
	self deny: aRoom isOccupied.
	self deny: aRoom isReserved' classified: 'assertions'.
RoomTest compile: 'assertIsReserved: aRoom

	self assert: aRoom isReserved.
	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable' classified: 'assertions'.
RoomTest compile: 'assertIsOccupiedByAGuest: aRoom

	self assert: aRoom isOccupied.
	self deny: aRoom isReserved.
	self deny: aRoom isAvailable' classified: 'assertions'.
RoomTest compile: 'createReservedRoom

	^ Room new reserve; yourself' classified: 'create'.
RoomTest compile: 'createRoomOccupiedBy: aGuestType

	^ Room new receive: aGuestType; yourself' classified: 'create'.
RoomTest compile: 'profitOf: aRoom

	^ aRoom profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]' classified: 'accounting'.
RoomTest compile: 'lossOf: aRoom

	^ aRoom lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]' classified: 'accounting'.

RoomTest compile: 'test01NewRoomsAreAvailable

	self assertIsAvailable: Room new' classified: 'testing'.
RoomTest compile: 'test02ReceivingAGuestMakesTheRoomOccupied

	self assertIsOccupiedByAGuest: (self createRoomOccupiedBy: self guestTypeVacation)' classified: 'testing'.
RoomTest compile: 'test03ReservingARoomMakesTheRoomReservedAndOccupied

	self assertIsReserved: self createReservedRoom' classified: 'testing'.
RoomTest compile: 'test04CannotReceiveAGuestInAOccupiedRoom

	| room |

	room := self createRoomOccupiedBy: self guestTypeVacation.

	self
		should: [ room receive: self guestTypeVacation ]
		raiseErrorWithDescription: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsOccupiedByAGuest: room ]' classified: 'testing'.
RoomTest compile: 'test05CannotReceiveAGuestInAReservedRoom

	| room |

	room := self createReservedRoom.

	self
		should: [ room receive: self guestTypeVacation ]
		raiseErrorWithDescription: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsReserved: room ]' classified: 'testing'.
RoomTest compile: 'test06ReceivingOnReservationMakesTheRoomOccupied

	| room |

	room := self createReservedRoom.

	room receiveWithReservation: self guestTypeVacation.

	self assertIsOccupiedByAGuest: room' classified: 'testing'.
RoomTest compile: 'test07CannotReceiveOnReservationAnAvailableRoom

	| room |

	room := Room new.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		raiseErrorWithDescription: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsAvailable: room ]' classified: 'testing'.
RoomTest compile: 'test08CannotReceiveOnReservationAnOccupiedRoom

	| room |

	room := self createRoomOccupiedBy: self guestTypeVacation.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		raiseErrorWithDescription: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsOccupiedByAGuest: room ]' classified: 'testing'.
RoomTest compile: 'test09ProfitOfAvailableRoomIsCeroPesos

	self assert: 0*peso equals: (self profitOf: Room new)' classified: 'testing'.
RoomTest compile: 'test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	self assert: self minPriceInList / 2 equals: (self profitOf: self createReservedRoom)' classified: 'testing'.
RoomTest compile: 'test11ProfitOfOccupiedRoomDependsOnGuestType

	self assert: self maxPriceInList equals: (self profitOf: (self createRoomOccupiedBy: self guestTypeConference)).
	self assert: self minPriceInList equals: (self profitOf: (self createRoomOccupiedBy: self guestTypeVacation))' classified: 'testing'.
RoomTest compile: 'test12NoProfitOnOccupiedRoomByUnknownGuestType

	(self createRoomOccupiedBy: #unknownGuest) profitUsing: self defaultPriceList ifAbsentGuestType: [ ^ self ].

	"we should not get here"
	self failWith: ''should not calculate profit on room occupied by unknown guest type''' classified: 'testing'.
RoomTest compile: 'test13LossesOfAvailableRoomIsTheMaxPriceInList

	self assert: self maxPriceInList equals: (self lossOf: Room new)' classified: 'testing'.
RoomTest compile: 'test14LossesOfReservedRoomIsCeroPesos

	self assert: 0*peso equals: (self lossOf: self createReservedRoom)' classified: 'testing'.
RoomTest compile: 'test15LossesOfOccupiedRoomIsCeroPesos

	self assert: 0*peso equals: (self lossOf: (self createRoomOccupiedBy: self guestTypeVacation))' classified: 'testing'.
RoomTest compile: 'test16CannotReserveWhenReserved

	| room |

	room := self createReservedRoom.

	self
		should: [ room reserve ]
		raiseErrorWithDescription: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsReserved: room ]' classified: 'testing'.
RoomTest compile: 'test17CannotReserveWhenOccupied

	| room |

	room := self createRoomOccupiedBy: self guestTypeVacation.

	self
		should: [ room reserve ]
		raiseErrorWithDescription: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsOccupiedByAGuest: room ]' classified: 'testing'.
'ok'
