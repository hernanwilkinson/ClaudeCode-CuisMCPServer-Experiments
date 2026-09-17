| m cat |
m := [ :aClass :aCategory :aSource | aClass compile: aSource classified: aCategory ].
cat := 'ISW1-2024-1C-Parcial-Tests'.

TestCase subclass: #SimsHotelTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
SimsHotelTest subclass: #RoomTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
SimsHotelTest subclass: #FloorTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
SimsHotelTest subclass: #HotelTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.

m value: SimsHotelTest value: 'create' value: 'guestTypeConference
	
	^ #conferenceGuest'.
m value: SimsHotelTest value: 'create' value: 'guestTypeVacation
	
	^ #vacationGuest'.
m value: SimsHotelTest value: 'create' value: 'maxPriceInList
	
	^ 200*peso'.
m value: SimsHotelTest value: 'create' value: 'minPriceInList
	
	^ 100*peso'.
m value: SimsHotelTest value: 'create' value: 'defaultPriceList
	
	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself'.
m value: SimsHotelTest value: 'create' value: 'createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withRooms: aNumberOfRooms pricedAt: aPriceList'.

{ RoomTest. FloorTest. HotelTest } do: [ :aTestClass |
	#(guestTypeConference guestTypeVacation maxPriceInList minPriceInList defaultPriceList createFloorWith:and:) 
		do: [ :sel | aTestClass removeSelector: sel ] ].

"---------------- RoomTest ----------------"
m value: RoomTest value: 'testing' value: 'test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |

	room := Room new.

	self assert: self maxPriceInList equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])'.
m value: RoomTest value: 'testing' value: 'test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.

	room reserve.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])'.
m value: RoomTest value: 'testing' value: 'test15LossesOfOccupiedRoomIsCeroPesos

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])'.

"---------------- FloorTest ----------------"
m value: FloorTest value: 'testing' value: 'test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	floor receive: self guestTypeVacation atRoom: 1 ifNone: [ self fail ].
	
	self assert: roomsNumber - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved.'.
m value: FloorTest value: 'testing' value: 'test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsNumber roomsAvailable roomsOccupied roomsReserved |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	floor reserveRoom: 1 ifNone: [ self fail ].

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	floor receiveWithReservation: self guestTypeVacation atRoom: 1 ifNone: [ self fail ].
	
	self assert: roomsAvailable equals: floor totalRoomsAvailable. 
	self assert: roomsOccupied equals: floor totalRoomsOccupied.
	self assert: roomsReserved - 1 equals: floor totalRoomsReserved.'.
m value: FloorTest value: 'testing' value: 'test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	floor reserveRoom: 1 ifNone: [ self fail ].
	
	self assert: roomsNumber - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 1 equals: floor totalRoomsReserved.'.
m value: FloorTest value: 'create' value: 'createFloorWithTwoGuestsAndAReservation

	| floor |
	
	floor := self createFloorWith: 10 and: self defaultPriceList.
	
	floor receive: self guestTypeVacation atRoom: 1 ifNone: [ self fail ].
	floor receive: self guestTypeConference atRoom: 2 ifNone: [ self fail ].
	floor reserveRoom: 3 ifNone: [ self fail ].
	
	^ floor'.
m value: FloorTest value: 'testing' value: 'test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |
	
	floor := self createFloorWithTwoGuestsAndAReservation.
		
	self assert: self maxPriceInList + self minPriceInList + (self minPriceInList / 2) equals: floor totalProfits'.
m value: FloorTest value: 'testing' value: 'test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |
	
	floor := self createFloorWithTwoGuestsAndAReservation.
		
	self assert: self maxPriceInList * 7 equals: floor totalLosses'.
m value: FloorTest value: 'testing' value: 'test10CannotOperateOnANonexistentRoom

	| floor |
	
	floor := self createFloorWith: 1 and: self defaultPriceList.
	
	self assert: #none equals: (floor receive: self guestTypeVacation atRoom: 2 ifNone: [ #none ]).
	self assert: #none equals: (floor reserveRoom: 2 ifNone: [ #none ]).
	self assert: #none equals: (floor receiveWithReservation: self guestTypeVacation atRoom: 2 ifNone: [ #none ]).
	self assert: floor isAvailable'.

"---------------- HotelTest ----------------"
m value: HotelTest value: 'create' value: 'createHotel

	^ Hotel withFloors: (OrderedCollection 
		with: (self createFloorWith: 10 and: self defaultPriceList)
		with: (self createFloorWith: 1 and: self defaultPriceList))'.
m value: HotelTest value: 'create' value: 'createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10 and: self defaultPriceList))'.
m value: HotelTest value: 'assertions' value: 'assert: aHotel hasAvailableRoomsReducedBy: aNumberOfTakenRooms reserved: aNumberOfReservedRooms occupied: aNumberOfOccupiedRooms

	self assert: aHotel totalRooms - aNumberOfTakenRooms equals: aHotel totalRoomsAvailable.
	self assert: aNumberOfReservedRooms equals: aHotel totalRoomsReserved.
	self assert: aNumberOfOccupiedRooms equals: aHotel totalRoomsOccupied'.
m value: HotelTest value: 'assertions' value: 'assertIsUntouched: aHotel

	self assert: aHotel hasAvailableRoomsReducedBy: 0 reserved: 0 occupied: 0'.
m value: HotelTest value: 'assertions' value: 'should: aBlock failWithDescription: anErrorDescription andAssert: anAssertionsBlock

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: anErrorDescription equals: error messageText.
			anAssertionsBlock value ]'.

m value: HotelTest value: 'testing' value: 'test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Hotel noFloorsErrorDescription'.
m value: HotelTest value: 'testing' value: 'test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	self assertIsUntouched: hotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel hasAvailableRoomsReducedBy: 1 reserved: 0 occupied: 1'.
m value: HotelTest value: 'testing' value: 'test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |
	
	hotel := self createHotel.

	self assertIsUntouched: hotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assert: hotel hasAvailableRoomsReducedBy: 1 reserved: 1 occupied: 1'.
m value: HotelTest value: 'testing' value: 'test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	self assertIsUntouched: hotel.

	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel hasAvailableRoomsReducedBy: 1 reserved: 0 occupied: 1'.
m value: HotelTest value: 'testing' value: 'test06HotelCannotReceiveWithReservationWithoutPreviousReservation
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		failWithDescription: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsUntouched: hotel ]'.
m value: HotelTest value: 'testing' value: 'test07HotelProfitsAreTheSumOfEachFloorProfits
	
	| hotel floor1 floor2 |
	
	floor1 := self createFloorWith: 10 and: self defaultPriceList.
	floor2 := self createFloorWith: 10 and: self defaultPriceList.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: floor1 totalProfits + floor2 totalProfits equals: hotel totalProfits'.
m value: HotelTest value: 'testing' value: 'test08HotelLossesAreTheSumOfEachFloorLosses
	
	| hotel floor1 floor2 |
	
	floor1 := self createFloorWith: 10 and: self defaultPriceList.
	floor2 := self createFloorWith: 10 and: self defaultPriceList.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: floor1 totalLosses + floor2 totalLosses equals: hotel totalLosses'.
m value: HotelTest value: 'testing' value: 'test09HotelCannotReserveANonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		failWithDescription: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsUntouched: hotel ]'.
m value: HotelTest value: 'testing' value: 'test10HotelCannotReserveANonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		failWithDescription: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsUntouched: hotel ]'.
m value: HotelTest value: 'testing' value: 'test11HotelCannotReceiveAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWithDescription: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsUntouched: hotel ]'.
m value: HotelTest value: 'testing' value: 'test12HotelCannotReceiveAtNonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		failWithDescription: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsUntouched: hotel ]'.
m value: HotelTest value: 'testing' value: 'test13HotelCannotReceiveWithReservationAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	hotel reserveRoom: 1 atFloor: 1. 
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWithDescription: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assert: hotel hasAvailableRoomsReducedBy: 1 reserved: 1 occupied: 1 ]'.
'tests ok'
