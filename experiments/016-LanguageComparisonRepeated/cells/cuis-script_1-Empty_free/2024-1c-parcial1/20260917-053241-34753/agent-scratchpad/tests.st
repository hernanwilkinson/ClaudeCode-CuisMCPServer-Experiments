"===== Abstract test superclass with the shared helpers ====="
TestCase subclass: #SimsHotelsTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial-Tests'.
SimsHotelsTest subclass: #RoomTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial-Tests'.
SimsHotelsTest subclass: #FloorTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial-Tests'.
SimsHotelsTest subclass: #HotelTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial-Tests'.

SimsHotelsTest class compile: 'isAbstract

	^ self == SimsHotelsTest' classified: 'testing'.
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

	^ Floor withRooms: aNumberOfRooms prices: aPriceList' classified: 'create'.
SimsHotelsTest compile: 'createFloorWith: aNumberOfRooms

	^ self createFloorWith: aNumberOfRooms and: self defaultPriceList' classified: 'create'.
SimsHotelsTest compile: 'should: aBlock failWith: anErrorDescription andAssert: anAssertionsBlock

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			anAssertionsBlock value ]' classified: 'assertions'.

{ RoomTest. FloorTest. HotelTest } do: [ :aTestClass |
	#(guestTypeConference guestTypeVacation minPriceInList maxPriceInList defaultPriceList createFloorWith:and:) do: [ :aSelector |
		aTestClass removeSelector: aSelector ] ].

"===== RoomTest ====="
RoomTest compile: 'assertIsAvailable: aRoom

	self assert: aRoom isAvailable.
	self deny: aRoom isOccupied.
	self deny: aRoom isReserved' classified: 'assertions'.
RoomTest compile: 'assertIsOccupiedWithoutReservation: aRoom

	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable.
	self deny: aRoom isReserved' classified: 'assertions'.
RoomTest compile: 'assertIsReserved: aRoom

	self assert: aRoom isReserved.
	self assert: aRoom isOccupied.
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

	self assertIsOccupiedWithoutReservation: (self createRoomOccupiedBy: self guestTypeVacation)' classified: 'testing'.
RoomTest compile: 'test03ReservingARoomMakesTheRoomReservedAndOccupied

	self assertIsReserved: self createReservedRoom' classified: 'testing'.
RoomTest compile: 'test04CannotReceiveAGuestInAOccupiedRoom

	| room |

	room := self createRoomOccupiedBy: self guestTypeVacation.

	self
		should: [ room receive: self guestTypeVacation ]
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsOccupiedWithoutReservation: room ]' classified: 'testing'.
RoomTest compile: 'test05CannotReceiveAGuestInAReservedRoom

	| room |

	room := self createReservedRoom.

	self
		should: [ room receive: self guestTypeVacation ]
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsReserved: room ]' classified: 'testing'.
RoomTest compile: 'test06ReceivingOnReservationMakesTheRoomOccupied

	| room |

	room := self createReservedRoom.

	room receiveWithReservation: self guestTypeVacation.

	self assertIsOccupiedWithoutReservation: room' classified: 'testing'.
RoomTest compile: 'test07CannotReceiveOnReservationAnAvailableRoom

	| room |

	room := Room new.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsAvailable: room ]' classified: 'testing'.
RoomTest compile: 'test08CannotReceiveOnReservationAnOccupiedRoom

	| room |

	room := self createRoomOccupiedBy: self guestTypeVacation.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsOccupiedWithoutReservation: room ]' classified: 'testing'.
RoomTest compile: 'test09ProfitOfAvailableRoomIsCeroPesos

	self assert: 0*peso equals: (self profitOf: Room new)' classified: 'testing'.
RoomTest compile: 'test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	self assert: self minPriceInList / 2 equals: (self profitOf: self createReservedRoom)' classified: 'testing'.
RoomTest compile: 'test11ProfitOfOccupiedRoomDependsOnGuestType

	self
		assert: (self defaultPriceList at: self guestTypeConference)
		equals: (self profitOf: (self createRoomOccupiedBy: self guestTypeConference)).

	self
		assert: (self defaultPriceList at: self guestTypeVacation)
		equals: (self profitOf: (self createRoomOccupiedBy: self guestTypeVacation))' classified: 'testing'.
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
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsReserved: room ]' classified: 'testing'.
RoomTest compile: 'test17CannotReserveWhenOccupied

	| room |

	room := self createRoomOccupiedBy: self guestTypeVacation.

	self
		should: [ room reserve ]
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsOccupiedWithoutReservation: room ]' classified: 'testing'.

"===== FloorTest ====="
FloorTest compile: 'roomAt: aRoomNumber of: aFloor

	^ aFloor roomAt: aRoomNumber ifNone: [ self fail ]' classified: 'accessing'.
FloorTest compile: 'createFloorWithTwoOccupiedRoomsAndOneReserved

	| floor |

	floor := self createFloorWith: 10.

	(self roomAt: 1 of: floor) receive: self guestTypeVacation.
	(self roomAt: 2 of: floor) receive: self guestTypeConference.
	(self roomAt: 3 of: floor) reserve.

	^ floor' classified: 'create'.
FloorTest compile: 'assert: aFloor hasAvailableRooms: aNumberOfAvailableRooms occupied: aNumberOfOccupiedRooms reserved: aNumberOfReservedRooms

	self assert: aNumberOfAvailableRooms equals: aFloor totalRoomsAvailable.
	self assert: aNumberOfOccupiedRooms equals: aFloor totalRoomsOccupied.
	self assert: aNumberOfReservedRooms equals: aFloor totalRoomsReserved' classified: 'assertions'.

FloorTest compile: 'test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |

	floor := self createFloorWith: 10.

	self assert: floor isAvailable.
	self assert: floor hasAvailableRooms: 10 occupied: 0 reserved: 0' classified: 'testing'.
FloorTest compile: 'test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |

	floor := self createFloorWith: 10.

	(self roomAt: 1 of: floor) receive: self guestTypeVacation.

	self assert: floor hasAvailableRooms: 9 occupied: 1 reserved: 0' classified: 'testing'.
FloorTest compile: 'test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor |

	floor := self createFloorWith: 10.
	(self roomAt: 1 of: floor) reserve.

	(self roomAt: 1 of: floor) receiveWithReservation: self guestTypeVacation.

	self assert: floor hasAvailableRooms: 9 occupied: 1 reserved: 0' classified: 'testing'.
FloorTest compile: 'test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |

	floor := self createFloorWith: 10.

	(self roomAt: 1 of: floor) reserve.

	self assert: floor hasAvailableRooms: 9 occupied: 1 reserved: 1' classified: 'testing'.
FloorTest compile: 'test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	self
		assert: (100*peso) + (200*peso) + (50*peso)
		equals: self createFloorWithTwoOccupiedRoomsAndOneReserved totalProfits' classified: 'testing'.
FloorTest compile: 'test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	self
		assert: (200*peso) * 7
		equals: self createFloorWithTwoOccupiedRoomsAndOneReserved totalLosses' classified: 'testing'.

"===== HotelTest ====="
HotelTest compile: 'createHotel

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10) with: (self createFloorWith: 1))' classified: 'create'.
HotelTest compile: 'createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10))' classified: 'create'.
HotelTest compile: 'assert: aHotel hasUnavailableRooms: aNumberOfUnavailableRooms reserved: aNumberOfReservedRooms occupied: aNumberOfOccupiedRooms

	self assert: aHotel totalRooms - aNumberOfUnavailableRooms equals: aHotel totalRoomsAvailable.
	self assert: aNumberOfReservedRooms equals: aHotel totalRoomsReserved.
	self assert: aNumberOfOccupiedRooms equals: aHotel totalRoomsOccupied' classified: 'assertions'.
HotelTest compile: 'assertHasAllRoomsAvailable: aHotel

	self assert: aHotel hasUnavailableRooms: 0 reserved: 0 occupied: 0' classified: 'assertions'.
HotelTest compile: 'assertTotal: aTotalBlock ofHotelIsTheSumOfItsFloors: aHotelSetUpBlock

	| hotel floor1 floor2 |

	floor1 := self createFloorWith: 10.
	floor2 := self createFloorWith: 10.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	aHotelSetUpBlock value: hotel.

	self assert: (aTotalBlock value: floor1) + (aTotalBlock value: floor2) equals: (aTotalBlock value: hotel)' classified: 'assertions'.

HotelTest compile: 'test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Hotel noFloorsErrorDescription' classified: 'testing'.
HotelTest compile: 'test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.
	self assertHasAllRoomsAvailable: hotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel hasUnavailableRooms: 1 reserved: 0 occupied: 1' classified: 'testing'.
HotelTest compile: 'test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |

	hotel := self createHotel.
	self assertHasAllRoomsAvailable: hotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assert: hotel hasUnavailableRooms: 1 reserved: 1 occupied: 1' classified: 'testing'.
HotelTest compile: 'test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.
	self assertHasAllRoomsAvailable: hotel.

	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel hasUnavailableRooms: 1 reserved: 0 occupied: 1' classified: 'testing'.
HotelTest compile: 'test06HotelCannotReceiveWithReservationWithoutPreviousReservation

	| hotel |

	hotel := self createHotel.
	self assertHasAllRoomsAvailable: hotel.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertHasAllRoomsAvailable: hotel ]' classified: 'testing'.
HotelTest compile: 'test07HotelProfitsAreTheSumOfEachFloorProfits

	self
		assertTotal: [ :aFloorOrHotel | aFloorOrHotel totalProfits ]
		ofHotelIsTheSumOfItsFloors: [ :hotel |
			hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
			hotel receive: self guestTypeConference atFloor: 2 atRoom: 1 ]' classified: 'testing'.
HotelTest compile: 'test08HotelLossesAreTheSumOfEachFloorLosses

	self
		assertTotal: [ :aFloorOrHotel | aFloorOrHotel totalLosses ]
		ofHotelIsTheSumOfItsFloors: [ :hotel |
			hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
			hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.
			hotel reserveRoom: 4 atFloor: 1.
			hotel reserveRoom: 2 atFloor: 2 ]' classified: 'testing'.
HotelTest compile: 'test09HotelCannotReserveANonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasAllRoomsAvailable: hotel ]' classified: 'testing'.
HotelTest compile: 'test10HotelCannotReserveANonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasAllRoomsAvailable: hotel ]' classified: 'testing'.
HotelTest compile: 'test11HotelCannotReceiveAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasAllRoomsAvailable: hotel ]' classified: 'testing'.
HotelTest compile: 'test12HotelCannotReceiveAtNonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasAllRoomsAvailable: hotel ]' classified: 'testing'.
HotelTest compile: 'test13HotelCannotReceiveWithReservationAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.
	hotel reserveRoom: 1 atFloor: 1.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assert: hotel hasUnavailableRooms: 1 reserved: 1 occupied: 1 ]' classified: 'testing'.
'tests ok'
