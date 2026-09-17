| cat m |
cat := 'ISW1-2024-1C-Parcial-Tests'.
TestCase subclass: #SimsHotelsTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
TestCase subclass: #RoomTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
SimsHotelsTest subclass: #RoomTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
SimsHotelsTest subclass: #FloorTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
SimsHotelsTest subclass: #HotelTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
{ RoomTest. FloorTest. HotelTest } do: [ :cls | cls selectors do: [ :sel | cls removeSelector: sel ] ].

m := [ :cls :cattegory :src | cls compile: src classified: cattegory ].

"----- SimsHotelsTest -----"
m value: SimsHotelsTest class value: 'testing' value: 'isAbstract

	^ self = SimsHotelsTest'.
m value: SimsHotelsTest value: 'create' value: 'guestTypeVacation
	
	^ #vacationGuest'.
m value: SimsHotelsTest value: 'create' value: 'guestTypeConference
	
	^ #conferenceGuest'.
m value: SimsHotelsTest value: 'create' value: 'minPriceInList
	
	^ 100*peso'.
m value: SimsHotelsTest value: 'create' value: 'maxPriceInList
	
	^ 200*peso'.
m value: SimsHotelsTest value: 'create' value: 'defaultPriceList
	
	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself'.
m value: SimsHotelsTest value: 'create' value: 'createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withNumberOfRooms: aNumberOfRooms andPrices: aPriceList'.
m value: SimsHotelsTest value: 'create' value: 'createFloorWithRooms: aNumberOfRooms

	^ self createFloorWith: aNumberOfRooms and: self defaultPriceList'.
m value: SimsHotelsTest value: 'assertions' value: 'should: aBlock failWith: anErrorDescription andAssert: assertionsBlock

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			assertionsBlock value ]'.

"----- RoomTest -----"
m value: RoomTest value: 'assertions' value: 'assertIsAvailable: aRoom

	self assert: aRoom isAvailable.
	self deny: aRoom isOccupied.
	self deny: aRoom isReserved'.
m value: RoomTest value: 'assertions' value: 'assertIsOccupiedByAGuest: aRoom

	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable.
	self deny: aRoom isReserved'.
m value: RoomTest value: 'assertions' value: 'assertIsReserved: aRoom

	self assert: aRoom isReserved.
	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable'.
m value: RoomTest value: 'accounting' value: 'profitOf: aRoom

	^ aRoom profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]'.
m value: RoomTest value: 'accounting' value: 'lossOf: aRoom

	^ aRoom lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]'.
m value: RoomTest value: 'create' value: 'createRoomWithAGuest

	^ Room new receive: self guestTypeVacation; yourself'.
m value: RoomTest value: 'create' value: 'createReservedRoom

	^ Room new reserve; yourself'.
m value: RoomTest value: 'testing' value: 'test01NewRoomsAreAvailable

	self assertIsAvailable: Room new'.
m value: RoomTest value: 'testing' value: 'test02ReceivingAGuestMakesTheRoomOccupied

	self assertIsOccupiedByAGuest: self createRoomWithAGuest'.
m value: RoomTest value: 'testing' value: 'test03ReservingARoomMakesTheRoomReservedAndOccupied

	self assertIsReserved: self createReservedRoom'.
m value: RoomTest value: 'testing' value: 'test04CannotReceiveAGuestInAOccupiedRoom

	| room |
	
	room := self createRoomWithAGuest.
	
	self 
		should: [ room receive: self guestTypeVacation ] 
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsOccupiedByAGuest: room ]'.
m value: RoomTest value: 'testing' value: 'test05CannotReceiveAGuestInAReservedRoom

	| room |
	
	room := self createReservedRoom.
	
	self 
		should: [ room receive: self guestTypeVacation ] 
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsReserved: room ]'.
m value: RoomTest value: 'testing' value: 'test06ReceivingOnReservationMakesTheRoomOccupied

	| room |
	
	room := self createReservedRoom.
	
	room receiveWithReservation: self guestTypeVacation.
	
	self assertIsOccupiedByAGuest: room'.
m value: RoomTest value: 'testing' value: 'test07CannotReceiveOnReservationAnAvailableRoom

	| room |
	
	room := Room new.

	self 
		should: [ room receiveWithReservation: self guestTypeVacation ] 
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsAvailable: room ]'.
m value: RoomTest value: 'testing' value: 'test08CannotReceiveOnReservationAnOccupiedRoom

	| room |
	
	room := self createRoomWithAGuest.

	self 
		should: [ room receiveWithReservation: self guestTypeVacation ] 
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsOccupiedByAGuest: room ]'.
m value: RoomTest value: 'testing' value: 'test09ProfitOfAvailableRoomIsCeroPesos

	self assert: 0*peso equals: (self profitOf: Room new)'.
m value: RoomTest value: 'testing' value: 'test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	self assert: self minPriceInList / 2 equals: (self profitOf: self createReservedRoom)'.
m value: RoomTest value: 'testing' value: 'test11ProfitOfOccupiedRoomDependsOnGuestType

	| roomWithConferenceGuest roomWithVacationGuest |
	
	roomWithConferenceGuest := Room new.
	roomWithConferenceGuest receive: self guestTypeConference.
	
	roomWithVacationGuest := Room new.
	roomWithVacationGuest receive: self guestTypeVacation.

	self assert: self maxPriceInList equals: (self profitOf: roomWithConferenceGuest).
	self assert: self minPriceInList equals: (self profitOf: roomWithVacationGuest)'.
m value: RoomTest value: 'testing' value: 'test12NoProfitOnOccupiedRoomByUnknownGuestType

	| room |
	
	room := Room new.
	room receive: #unknownGuest.
	
	room profitUsing: self defaultPriceList ifAbsentGuestType: [ ^ self ].
	
	"we should not get here"
	self failWith: ''should not calculate profit on room occupied by unknown guest type'''.
m value: RoomTest value: 'testing' value: 'test13LossesOfAvailableRoomIsTheMaxPriceInList

	self assert: self maxPriceInList equals: (self lossOf: Room new)'.
m value: RoomTest value: 'testing' value: 'test14LossesOfReservedRoomIsCeroPesos

	self assert: 0*peso equals: (self lossOf: self createReservedRoom)'.
m value: RoomTest value: 'testing' value: 'test15LossesOfOccupiedRoomIsCeroPesos

	self assert: 0*peso equals: (self lossOf: self createRoomWithAGuest)'.
m value: RoomTest value: 'testing' value: 'test16CannotReserveWhenReserved

	| room |
	
	room := self createReservedRoom.

	self 
		should: [ room reserve ]
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsReserved: room ]'.
m value: RoomTest value: 'testing' value: 'test17CannotReserveWhenOccupied

	| room |
	
	room := self createRoomWithAGuest.

	self 
		should: [ room reserve ]
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsOccupiedByAGuest: room ]'.

"----- FloorTest -----"
m value: FloorTest value: 'create' value: 'numberOfRooms

	^ 10'.
m value: FloorTest value: 'create' value: 'createFloor

	^ self createFloorWithRooms: self numberOfRooms'.
m value: FloorTest value: 'rooms' value: 'in: aFloor atRoom: aRoomNumber do: aRoomBlock

	aFloor atRoom: aRoomNumber do: aRoomBlock ifAbsent: [ self fail ]'.
m value: FloorTest value: 'testing' value: 'test01CannotCreateFloorWithoutRooms

	self
		should: [ self createFloorWith: 0 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor numberOfRoomsMustBePositiveErrorDescription'.
m value: FloorTest value: 'testing' value: 'test02CannotCreateFloorWithNoIntergerNumberOfRooms

	self
		should: [ self createFloorWith: 1.5 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor numberOfRoomsMustBeIntegerErrorDescription'.
m value: FloorTest value: 'testing' value: 'test03CannotCreateFloorWithoutPrices

	self
		should: [ self createFloorWith: 10 and: Dictionary new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor pricesListCannotBeEmptyErrorDescription'.
m value: FloorTest value: 'testing' value: 'test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |
	
	floor := self createFloor.
	
	self assert: floor isAvailable.
	self assert: self numberOfRooms equals: floor totalRoomsAvailable.
	self assert: 0 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved'.
m value: FloorTest value: 'testing' value: 'test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |
	
	floor := self createFloor.
	
	self in: floor atRoom: 1 do: [ :room | room receive: self guestTypeVacation ].
	
	self deny: floor isAvailable.
	self assert: self numberOfRooms - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved'.
m value: FloorTest value: 'testing' value: 'test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsAvailable roomsOccupied roomsReserved |
	
	floor := self createFloor.
	
	self in: floor atRoom: 1 do: [ :room | room reserve ].

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	self in: floor atRoom: 1 do: [ :room | room receiveWithReservation: self guestTypeVacation ].
	
	self assert: roomsAvailable equals: floor totalRoomsAvailable. 
	self assert: roomsOccupied equals: floor totalRoomsOccupied.
	self assert: roomsReserved - 1 equals: floor totalRoomsReserved'.
m value: FloorTest value: 'testing' value: 'test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |
	
	floor := self createFloor.
	
	self in: floor atRoom: 1 do: [ :room | room reserve ].
	
	self assert: self numberOfRooms - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 1 equals: floor totalRoomsReserved'.
m value: FloorTest value: 'create' value: 'createFloorWithAVacationGuestAConferenceGuestAndAReservation

	| floor |
	
	floor := self createFloor.
	
	self in: floor atRoom: 1 do: [ :room | room receive: self guestTypeVacation ].
	self in: floor atRoom: 2 do: [ :room | room receive: self guestTypeConference ].
	self in: floor atRoom: 3 do: [ :room | room reserve ].
	
	^ floor'.
m value: FloorTest value: 'testing' value: 'test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |
	
	floor := self createFloorWithAVacationGuestAConferenceGuestAndAReservation.
		
	self 
		assert: self minPriceInList + self maxPriceInList + (self minPriceInList / 2) 
		equals: floor totalProfits'.
m value: FloorTest value: 'testing' value: 'test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |
	
	floor := self createFloorWithAVacationGuestAConferenceGuestAndAReservation.
		
	self assert: self maxPriceInList * (self numberOfRooms - 3) equals: floor totalLosses'.
m value: FloorTest value: 'testing' value: 'test10CannotAccessANonexistentRoom

	| floor |
	
	floor := self createFloor.
	
	self 
		assert: #absent 
		equals: (floor atRoom: self numberOfRooms + 1 do: [ :room | self fail ] ifAbsent: [ #absent ])'.

"----- HotelTest -----"
m value: HotelTest value: 'create' value: 'createHotel

	^ Hotel withFloors: (OrderedCollection 
		with: (self createFloorWithRooms: 10)
		with: (self createFloorWithRooms: 1))'.
m value: HotelTest value: 'create' value: 'createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWithRooms: 10))'.
m value: HotelTest value: 'assertions' value: 'assertIsEmpty: aHotel

	self assert: aHotel isEmpty.
	self assertTotalRoomsOf: aHotel available: aHotel totalRooms reserved: 0 occupied: 0'.
m value: HotelTest value: 'assertions' value: 'assertTotalRoomsOf: aHotel available: aNumberOfAvailableRooms reserved: aNumberOfReservedRooms occupied: aNumberOfOccupiedRooms

	self assert: aNumberOfAvailableRooms equals: aHotel totalRoomsAvailable.
	self assert: aNumberOfReservedRooms equals: aHotel totalRoomsReserved.
	self assert: aNumberOfOccupiedRooms equals: aHotel totalRoomsOccupied'.
m value: HotelTest value: 'testing' value: 'test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Hotel noFloorsErrorDescription'.
m value: HotelTest value: 'testing' value: 'test02NewHotelsAreEmpty

	| hotel |
	
	hotel := self createHotel.
	
	self assert: 11 equals: hotel totalRooms.
	self assertIsEmpty: hotel'.
m value: HotelTest value: 'testing' value: 'test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self deny: hotel isEmpty.
	self assertTotalRoomsOf: hotel available: hotel totalRooms - 1 reserved: 0 occupied: 1'.
m value: HotelTest value: 'testing' value: 'test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |
	
	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assertTotalRoomsOf: hotel available: hotel totalRooms - 1 reserved: 1 occupied: 1'.
m value: HotelTest value: 'testing' value: 'test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assertTotalRoomsOf: hotel available: hotel totalRooms - 1 reserved: 0 occupied: 1'.
m value: HotelTest value: 'testing' value: 'test06HotelCannotReceiveWithReservationWithoutPreviousReservation
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]'.
m value: HotelTest value: 'testing' value: 'test07HotelProfitsAreTheSumOfEachFloorProfits
	
	| hotel floor1 floor2 |
	
	floor1 := self createFloorWithRooms: 10.
	floor2 := self createFloorWithRooms: 10.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: floor1 totalProfits + floor2 totalProfits equals: hotel totalProfits.
	self assert: self minPriceInList + self maxPriceInList equals: hotel totalProfits'.
m value: HotelTest value: 'testing' value: 'test08HotelLossesAreTheSumOfEachFloorLosses
	
	| hotel floor1 floor2 |
	
	floor1 := self createFloorWithRooms: 10.
	floor2 := self createFloorWithRooms: 10.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: floor1 totalLosses + floor2 totalLosses equals: hotel totalLosses.
	self assert: self maxPriceInList * 16 equals: hotel totalLosses'.
m value: HotelTest value: 'testing' value: 'test09HotelCannotReserveANonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]'.
m value: HotelTest value: 'testing' value: 'test10HotelCannotReserveANonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]'.
m value: HotelTest value: 'testing' value: 'test11HotelCannotReceiveAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]'.
m value: HotelTest value: 'testing' value: 'test12HotelCannotReceiveAtNonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]'.
m value: HotelTest value: 'testing' value: 'test13HotelCannotReceiveWithReservationAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.

	hotel reserveRoom: 1 atFloor: 1. 
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertTotalRoomsOf: hotel available: hotel totalRooms - 1 reserved: 1 occupied: 1 ]'.
{ RoomTest category. FloorTest category. HotelTest category. SimsHotelsTest buildSuite tests size }
