| cat c t |
cat := 'ISW1-2024-1C-Parcial-Tests'.
c := [ :cls :category :src | cls compile: src classified: category ].
{ FloorTest. HotelTest. RoomTest } do: [ :cls | cls selectors do: [ :sel | cls removeSelector: sel ] ].

TestCase subclass: #SimsHotelTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
SimsHotelTest subclass: #RoomTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
SimsHotelTest subclass: #FloorTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
SimsHotelTest subclass: #HotelTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.

c value: SimsHotelTest class value: 'testing' value: 'isAbstract

	^ self = SimsHotelTest'.
c value: SimsHotelTest value: 'create' value: 'createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withRooms: aNumberOfRooms pricedAt: aPriceList'.
c value: SimsHotelTest value: 'create' value: 'defaultPriceList

	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself'.
c value: SimsHotelTest value: 'create' value: 'guestTypeConference

	^ #conferenceGuest'.
c value: SimsHotelTest value: 'create' value: 'guestTypeVacation

	^ #vacationGuest'.
c value: SimsHotelTest value: 'create' value: 'maxPriceInList

	^ 200*peso'.
c value: SimsHotelTest value: 'create' value: 'minPriceInList

	^ 100*peso'.

"----- RoomTest -----"
t := [ :src | c value: RoomTest value: 'testing' value: src ].
t value: 'test01NewRoomsAreAvailable

	| room |

	room := Room new.

	self assertIsAvailable: room'.
t value: 'test02ReceivingAGuestMakesTheRoomOccupied

	| room |

	room := Room new.

	room receive: self guestTypeVacation.

	self assertIsOccupiedWithGuest: room'.
t value: 'test03ReservingARoomMakesTheRoomReservedAndOccupied

	| room |

	room := Room new.

	room reserve.

	self assertIsReserved: room'.
t value: 'test04CannotReceiveAGuestInAOccupiedRoom

	| room |

	room := Room new.
	room receive: self guestTypeVacation.

	self
		should: [ room receive: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Room roomIsNotEmptyErrorDescription equals: error messageText.
			self assertIsOccupiedWithGuest: room ]'.
t value: 'test05CannotReceiveAGuestInAReservedRoom

	| room |

	room := Room new.
	room reserve.

	self
		should: [ room receive: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Room roomIsNotEmptyErrorDescription equals: error messageText.
			self assertIsReserved: room ]'.
t value: 'test06ReceivingOnReservationMakesTheRoomOccupied

	| room |

	room := Room new.
	room reserve.

	room receiveWithReservation: self guestTypeVacation.

	self assertIsOccupiedWithGuest: room'.
t value: 'test07CannotReceiveOnReservationAnAvailableRoom

	| room |

	room := Room new.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Room roomIsNotReservedErrorDescription equals: error messageText.
			self assertIsAvailable: room ]'.
t value: 'test08CannotReceiveOnReservationAnOccupiedRoom

	| room |

	room := Room new.
	room receive: self guestTypeVacation.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Room roomIsNotReservedErrorDescription equals: error messageText.
			self assertIsOccupiedWithGuest: room ]'.
t value: 'test09ProfitOfAvailableRoomIsCeroPesos

	self assert: 0*peso equals: (self profitOf: Room new)'.
t value: 'test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	| room |

	room := Room new.
	room reserve.

	self assert: self minPriceInList / 2 equals: (self profitOf: room)'.
t value: 'test11ProfitOfOccupiedRoomDependsOnGuestType

	| roomWithConferenceGuest roomWithVacationGuest |

	roomWithConferenceGuest := Room new.
	roomWithConferenceGuest receive: self guestTypeConference.

	roomWithVacationGuest := Room new.
	roomWithVacationGuest receive: self guestTypeVacation.

	self assert: self maxPriceInList equals: (self profitOf: roomWithConferenceGuest).
	self assert: self minPriceInList equals: (self profitOf: roomWithVacationGuest)'.
t value: 'test12NoProfitOnOccupiedRoomByUnknownGuestType

	| room |

	room := Room new.
	room receive: #unknownGuest.

	room profitUsing: self defaultPriceList ifAbsentGuestType: [ ^ self ].

	"we should not get here"
	self failWith: ''should not calculate profit on room occupied by unknown guest type'''.
t value: 'test13LossesOfAvailableRoomIsTheMaxPriceInList

	self assert: self maxPriceInList equals: (self lossOf: Room new)'.
t value: 'test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.
	room reserve.

	self assert: 0*peso equals: (self lossOf: room)'.
t value: 'test15LossesOfOccupiedRoomIsCeroPesos

	| room |

	room := Room new.
	room receive: self guestTypeVacation.

	self assert: 0*peso equals: (self lossOf: room)'.
t value: 'test16CannotReserveWhenReserved

	| room |

	room := Room new.
	room reserve.

	self
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: Room roomIsNotEmptyErrorDescription equals: anError messageText.
			self assertIsReserved: room ]'.
t value: 'test17CannotReserveWhenOccupied

	| room |

	room := Room new.
	room receive: self guestTypeVacation.

	self
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: Room roomIsNotEmptyErrorDescription equals: anError messageText.
			self assertIsOccupiedWithGuest: room ]'.
c value: RoomTest value: 'assertions' value: 'assertIsAvailable: aRoom

	self assert: aRoom isAvailable.
	self deny: aRoom isOccupied.
	self deny: aRoom isReserved'.
c value: RoomTest value: 'assertions' value: 'assertIsOccupiedWithGuest: aRoom

	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable.
	self deny: aRoom isReserved'.
c value: RoomTest value: 'assertions' value: 'assertIsReserved: aRoom

	self assert: aRoom isReserved.
	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable'.
c value: RoomTest value: 'accounting' value: 'profitOf: aRoom

	^ aRoom profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]'.
c value: RoomTest value: 'accounting' value: 'lossOf: aRoom

	^ aRoom lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]'.

"----- FloorTest -----"
t := [ :src | c value: FloorTest value: 'testing' value: src ].
t value: 'test01CannotCreateFloorWithoutRooms

	self
		should: [ self createFloorWith: 0 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor numberOfRoomsMustBePositiveErrorDescription'.
t value: 'test02CannotCreateFloorWithNoIntergerNumberOfRooms

	self
		should: [ self createFloorWith: 1.5 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor numberOfRoomsMustBeIntegerErrorDescription'.
t value: 'test03CannotCreateFloorWithoutPrices

	self
		should: [ self createFloorWith: 10 and: Dictionary new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor pricesListCannotBeEmptyErrorDescription'.
t value: 'test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |

	floor := self createDefaultFloor.

	self assert: floor isAvailable.
	self assertFloor: floor hasAvailable: self defaultNumberOfRooms occupied: 0 reserved: 0'.
t value: 'test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |

	floor := self createDefaultFloor.

	self receive: self guestTypeVacation in: floor atRoom: 1.

	self deny: floor isAvailable.
	self assertFloor: floor hasAvailable: self defaultNumberOfRooms - 1 occupied: 1 reserved: 0'.
t value: 'test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor |

	floor := self createDefaultFloor.
	floor reserveRoom: 1 ifNone: [ self fail ].

	floor receiveWithReservation: self guestTypeVacation atRoom: 1 ifNone: [ self fail ].

	self assertFloor: floor hasAvailable: self defaultNumberOfRooms - 1 occupied: 1 reserved: 0'.
t value: 'test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |

	floor := self createDefaultFloor.

	floor reserveRoom: 1 ifNone: [ self fail ].

	self assertFloor: floor hasAvailable: self defaultNumberOfRooms - 1 occupied: 1 reserved: 1'.
t value: 'test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |

	floor := self createFloorWithTwoGuestsAndOneReservation.

	self assert: self minPriceInList + self maxPriceInList + (self minPriceInList / 2) equals: floor totalProfits'.
t value: 'test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |

	floor := self createFloorWithTwoGuestsAndOneReservation.

	self assert: self maxPriceInList * (self defaultNumberOfRooms - 3) equals: floor totalLosses'.
t value: 'test10NoneBlockIsEvaluatedWhenReceivingAtNonexistentRoom

	| floor |

	floor := self createDefaultFloor.

	floor receive: self guestTypeVacation atRoom: self defaultNumberOfRooms + 1 ifNone: [
		^ self assertFloor: floor hasAvailable: self defaultNumberOfRooms occupied: 0 reserved: 0 ].

	self fail'.
c value: FloorTest value: 'create' value: 'defaultNumberOfRooms

	^ 10'.
c value: FloorTest value: 'create' value: 'createDefaultFloor

	^ self createFloorWith: self defaultNumberOfRooms and: self defaultPriceList'.
c value: FloorTest value: 'create' value: 'createFloorWithTwoGuestsAndOneReservation

	| floor |

	floor := self createDefaultFloor.
	self receive: self guestTypeVacation in: floor atRoom: 1.
	self receive: self guestTypeConference in: floor atRoom: 2.
	floor reserveRoom: 3 ifNone: [ self fail ].

	^ floor'.
c value: FloorTest value: 'guests' value: 'receive: aGuestType in: aFloor atRoom: aRoomNumber

	aFloor receive: aGuestType atRoom: aRoomNumber ifNone: [ self fail ]'.
c value: FloorTest value: 'assertions' value: 'assertFloor: aFloor hasAvailable: aNumberOfAvailableRooms occupied: aNumberOfOccupiedRooms reserved: aNumberOfReservedRooms

	self assert: aNumberOfAvailableRooms equals: aFloor totalRoomsAvailable.
	self assert: aNumberOfOccupiedRooms equals: aFloor totalRoomsOccupied.
	self assert: aNumberOfReservedRooms equals: aFloor totalRoomsReserved'.

"----- HotelTest -----"
t := [ :src | c value: HotelTest value: 'testing' value: src ].
t value: 'test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Hotel noFloorsErrorDescription'.
t value: 'test02NewHotelsAreEmpty

	| hotel |

	hotel := self createHotel.

	self assert: hotel isEmpty.
	self assertIsUntouched: hotel'.
t value: 'test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self deny: hotel isEmpty.
	self assertHotel: hotel hasAvailable: hotel totalRooms - 1 reserved: 0 occupied: 1'.
t value: 'test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assertHotel: hotel hasAvailable: hotel totalRooms - 1 reserved: 1 occupied: 1'.
t value: 'test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.
	hotel reserveRoom: 2 atFloor: 1.

	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assertHotel: hotel hasAvailable: hotel totalRooms - 1 reserved: 0 occupied: 1'.
t value: 'test06HotelCannotReceiveWithReservationWithoutPreviousReservation

	| hotel |

	hotel := self createHotel.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Room roomIsNotReservedErrorDescription equals: error messageText.
			self assertIsUntouched: hotel ]'.
t value: 'test07HotelProfitsAreTheSumOfEachFloorProfits

	| hotel floor1 floor2 |

	floor1 := self createDefaultFloor.
	floor2 := self createDefaultFloor.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: floor1 totalProfits + floor2 totalProfits equals: hotel totalProfits'.
t value: 'test08HotelLossesAreTheSumOfEachFloorLosses

	| hotel floor1 floor2 |

	floor1 := self createDefaultFloor.
	floor2 := self createDefaultFloor.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.
	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: floor1 totalLosses + floor2 totalLosses equals: hotel totalLosses'.
t value: 'test09HotelCannotReserveANonexistentRoom

	self
		assertOn: self createHotelWithOneFloor
		that: [ :hotel | hotel reserveRoom: 42 atFloor: 1 ]
		failsWith: Hotel roomNumberDoesNotExistErrorDescription'.
t value: 'test10HotelCannotReserveANonexistentFloor

	self
		assertOn: self createHotelWithOneFloor
		that: [ :hotel | hotel reserveRoom: 1 atFloor: 42 ]
		failsWith: Hotel floorNumberDoesNotExistErrorDescription'.
t value: 'test11HotelCannotReceiveAtNonexistentRoom

	self
		assertOn: self createHotelWithOneFloor
		that: [ :hotel | hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failsWith: Hotel roomNumberDoesNotExistErrorDescription'.
t value: 'test12HotelCannotReceiveAtNonexistentFloor

	self
		assertOn: self createHotelWithOneFloor
		that: [ :hotel | hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		failsWith: Hotel floorNumberDoesNotExistErrorDescription'.
t value: 'test13HotelCannotReceiveWithReservationAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.
	hotel reserveRoom: 1 atFloor: 1.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Hotel roomNumberDoesNotExistErrorDescription equals: error messageText.
			self assertHotel: hotel hasAvailable: hotel totalRooms - 1 reserved: 1 occupied: 1 ]'.
c value: HotelTest value: 'create' value: 'createDefaultFloor

	^ self createFloorWith: 10 and: self defaultPriceList'.
c value: HotelTest value: 'create' value: 'createHotel

	^ Hotel withFloors: (OrderedCollection
		with: self createDefaultFloor
		with: (self createFloorWith: 1 and: self defaultPriceList))'.
c value: HotelTest value: 'create' value: 'createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: self createDefaultFloor)'.
c value: HotelTest value: 'assertions' value: 'assertHotel: aHotel hasAvailable: aNumberOfAvailableRooms reserved: aNumberOfReservedRooms occupied: aNumberOfOccupiedRooms

	self assert: aNumberOfAvailableRooms equals: aHotel totalRoomsAvailable.
	self assert: aNumberOfReservedRooms equals: aHotel totalRoomsReserved.
	self assert: aNumberOfOccupiedRooms equals: aHotel totalRoomsOccupied'.
c value: HotelTest value: 'assertions' value: 'assertIsUntouched: aHotel

	self assertHotel: aHotel hasAvailable: aHotel totalRooms reserved: 0 occupied: 0'.
c value: HotelTest value: 'assertions' value: 'assertOn: aHotel that: aHotelBlock failsWith: anErrorDescription

	self
		should: [ aHotelBlock value: aHotel ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			self assertIsUntouched: aHotel ]'.

Floor removeSelector: #rooms.
'ok'
