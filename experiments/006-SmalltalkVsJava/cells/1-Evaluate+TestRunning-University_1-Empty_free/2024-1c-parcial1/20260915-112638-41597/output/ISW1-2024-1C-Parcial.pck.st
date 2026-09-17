'From Cuis7.9 [latest update: #8182] on 15 September 2026 at 11:33:39 am'!
'Description '!
!provides: 'ISW1-2024-1C-Parcial' 1 0!
SystemOrganization addCategory: #'ISW1-2024-1C-Parcial'!
SystemOrganization addCategory: #'ISW1-2024-1C-Parcial-Tests'!


!classDefinition: #Floor category: #'ISW1-2024-1C-Parcial'!
Object subclass: #Floor
	instanceVariableNames: 'rooms prices'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'Floor class' category: #'ISW1-2024-1C-Parcial'!
Floor class
	instanceVariableNames: ''!

!classDefinition: #Hotel category: #'ISW1-2024-1C-Parcial'!
Object subclass: #Hotel
	instanceVariableNames: 'floors'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'Hotel class' category: #'ISW1-2024-1C-Parcial'!
Hotel class
	instanceVariableNames: ''!

!classDefinition: #Room category: #'ISW1-2024-1C-Parcial'!
Object subclass: #Room
	instanceVariableNames: 'state'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'Room class' category: #'ISW1-2024-1C-Parcial'!
Room class
	instanceVariableNames: ''!

!classDefinition: #RoomState category: #'ISW1-2024-1C-Parcial'!
Object subclass: #RoomState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'RoomState class' category: #'ISW1-2024-1C-Parcial'!
RoomState class
	instanceVariableNames: ''!

!classDefinition: #AvailableRoomState category: #'ISW1-2024-1C-Parcial'!
RoomState subclass: #AvailableRoomState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'AvailableRoomState class' category: #'ISW1-2024-1C-Parcial'!
AvailableRoomState class
	instanceVariableNames: ''!

!classDefinition: #OccupiedRoomState category: #'ISW1-2024-1C-Parcial'!
RoomState subclass: #OccupiedRoomState
	instanceVariableNames: 'guestType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'OccupiedRoomState class' category: #'ISW1-2024-1C-Parcial'!
OccupiedRoomState class
	instanceVariableNames: ''!

!classDefinition: #ReservedRoomState category: #'ISW1-2024-1C-Parcial'!
RoomState subclass: #ReservedRoomState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'ReservedRoomState class' category: #'ISW1-2024-1C-Parcial'!
ReservedRoomState class
	instanceVariableNames: ''!

!classDefinition: #HotelSimulationTest category: #'ISW1-2024-1C-Parcial-Tests'!
TestCase subclass: #HotelSimulationTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'HotelSimulationTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
HotelSimulationTest class
	instanceVariableNames: ''!

!classDefinition: #FloorTest category: #'ISW1-2024-1C-Parcial-Tests'!
HotelSimulationTest subclass: #FloorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'FloorTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
FloorTest class
	instanceVariableNames: ''!

!classDefinition: #HotelTest category: #'ISW1-2024-1C-Parcial-Tests'!
HotelSimulationTest subclass: #HotelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'HotelTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
HotelTest class
	instanceVariableNames: ''!

!classDefinition: #RoomTest category: #'ISW1-2024-1C-Parcial-Tests'!
HotelSimulationTest subclass: #RoomTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'RoomTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
RoomTest class
	instanceVariableNames: ''!


!Floor commentStamp: '<historical>' prior: 0!
I am a floor of a hotel. I know my rooms and the price I charge to each type of guest.
I am available while all my rooms are available.!

!Hotel commentStamp: '<historical>' prior: 0!
I am a hotel. I know my floors, I lodge guests in the rooms of my floors and I take reservations for them.
I am empty while every room of every floor of mine is available.!

!Room commentStamp: '<historical>' prior: 0!
I am a room of a floor of a hotel. I am available when nobody is in me, reserved when a guest booked me but has not arrived yet, and occupied when a guest is lodging in me.
I delegate to my state which transitions are valid and how much I profit and lose.!

!RoomState commentStamp: '<historical>' prior: 0!
I represent the state of a Room: it can be available, reserved or occupied.
My subclasses know which transitions are valid, and how much a Room in my state profits or loses.
Transition messages answer the state the Room has to change to, or signal an error when the transition is not valid.!

!AvailableRoomState commentStamp: '<historical>' prior: 0!
I am the state of a Room with no guest in it. It can be reserved or receive a guest.
A Room in my state produces no profit and loses the most expensive price of its floor.!

!OccupiedRoomState commentStamp: '<historical>' prior: 0!
I am the state of a Room with a guest of a known type in it. No other guest can be received and it cannot be reserved.
A Room in my state loses nothing and profits the price its floor charges to the type of guest it lodges.!

!ReservedRoomState commentStamp: '<historical>' prior: 0!
I am the state of a Room reserved by a guest who has not arrived yet.
A Room in my state is occupied, it can only receive a guest with its reservation, it loses nothing and profits half the cheapest price of its floor.!

!HotelSimulationTest commentStamp: '<historical>' prior: 0!
I hold what every test of the hotel simulation needs: the types of guest, the price list used by default, and how to create the objects under test.!

!Floor methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
isAvailable
	
	^ rooms allSatisfy: [ :room | room isAvailable ]! !

!Floor methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
initializeWithRooms: aNumberOfRooms prices: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :roomNumber | Room new ].
	prices := aPriceList! !

!Floor methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
receive: aGuestType atRoom: aRoomNumber

	^ (self roomAt: aRoomNumber) receive: aGuestType! !

!Floor methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber

	^ (self roomAt: aRoomNumber) receiveWithReservation: aGuestType! !

!Floor methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
reserveRoom: aRoomNumber

	^ (self roomAt: aRoomNumber) reserve! !

!Floor methodsFor: 'private' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
roomAt: aRoomNumber

	^ rooms at: aRoomNumber ifAbsent: [ self class signalRoomNumberDoesNotExist ]! !

!Floor methodsFor: 'counting' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
totalRooms
	
	^ rooms size! !

!Floor methodsFor: 'counting' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
totalRoomsAvailable
	
	^ rooms count: [ :room | room isAvailable ]! !

!Floor methodsFor: 'counting' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
totalRoomsOccupied
	
	^ rooms count: [ :room | room isOccupied ]! !

!Floor methodsFor: 'counting' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
totalRoomsReserved
	
	^ rooms count: [ :room | room isReserved ]! !

!Floor methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
totalLosses

	^ rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
totalProfits

	^ rooms sum: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	aNumberOfRooms isInteger ifFalse: [ self signalNumberOfRoomsMustBeInteger ].
	aNumberOfRooms strictlyPositive ifFalse: [ self signalNumberOfRoomsMustBePositive ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList isEmpty ifTrue: [ self signalNoPrices ].
	aPriceList values do: [ :price | 
		price strictlyPositive ifFalse: [ self signalPriceMustBePositive ] ]! !

!Floor class methodsFor: 'error messages' stamp: 'FRT 20/Apr/2024, 10:02:53 pm (UTC)'!
numberOfRoomsMustBeIntegerErrorDescription
	
	^ 'Number of rooms must be integer'! !

!Floor class methodsFor: 'error messages' stamp: 'FRT 20/Apr/2024, 10:35:54 pm (UTC)'!
numberOfRoomsMustBePositiveErrorDescription
	
	^'The number of rooms must be positive'! !

!Floor class methodsFor: 'error messages' stamp: 'FRT 20/Apr/2024, 10:42:25 pm (UTC)'!
priceMustBePositiveErrorDescription
	
	^'Price must be positive'! !

!Floor class methodsFor: 'error messages' stamp: 'FRT 21/Apr/2024, 5:43:01 pm (UTC)'!
pricesListCannotBeEmptyErrorDescription 
	
	^ 'Prices List must not be empty'! !

!Floor class methodsFor: 'error messages' stamp: 'FRT 21/Apr/2024, 5:47:30 pm (UTC)'!
unknownGuestTypeErrorDescription
	
	^ 'The guest type is unknown'! !

!Floor class methodsFor: 'exceptions' stamp: 'FRT 21/Apr/2024, 5:42:33 pm (UTC)'!
signalNoPrices
	
	self error: self pricesListCannotBeEmptyErrorDescription ! !

!Floor class methodsFor: 'exceptions' stamp: 'FRT 20/Apr/2024, 10:02:35 pm (UTC)'!
signalNumberOfRoomsMustBeInteger
	
	self error: self numberOfRoomsMustBeIntegerErrorDescription ! !

!Floor class methodsFor: 'exceptions' stamp: 'FRT 20/Apr/2024, 10:35:54 pm (UTC)'!
signalNumberOfRoomsMustBePositive

	self error: self numberOfRoomsMustBePositiveErrorDescription! !

!Floor class methodsFor: 'exceptions' stamp: 'FRT 20/Apr/2024, 10:41:58 pm (UTC)'!
signalPriceMustBePositive

	self error: self priceMustBePositiveErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
withRooms: aNumberOfRooms prices: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.
	
	^ self new initializeWithRooms: aNumberOfRooms prices: aPriceList! !

!Floor class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
roomNumberDoesNotExistErrorDescription

	^ 'Room number does not exist'! !

!Floor class methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
signalRoomNumberDoesNotExist

	self error: self roomNumberDoesNotExistErrorDescription! !

!Floor class methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 2:30:47 pm (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection! !

!Hotel methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	^ (self floorAt: aFloorNumber) receive: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	^ (self floorAt: aFloorNumber) receiveWithReservation: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	^ (self floorAt: aFloorNumber) reserveRoom: aRoomNumber! !

!Hotel methodsFor: 'private' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
floorAt: aFloorNumber

	^ floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]! !

!Hotel methodsFor: 'counting' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
totalRooms

	^ floors sum: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'counting' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
totalRoomsAvailable

	^ floors sum: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'counting' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
totalRoomsOccupied

	^ floors sum: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'counting' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
totalRoomsReserved

	^ floors sum: [ :floor | floor totalRoomsReserved ]! !

!Hotel methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
totalLosses

	^ floors sum: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
totalProfits

	^ floors sum: [ :floor | floor totalProfits ]! !

!Hotel class methodsFor: 'assertions' stamp: 'HAW 29/Apr/2024, 11:48:39 am (UTC)'!
assertHaveFloors: aFloorsCollection

	aFloorsCollection isEmpty ifTrue: [ self signalNoFloors ].! !

!Hotel class methodsFor: 'error description' stamp: 'FRT 26/Apr/2024, 12:42:02 am (UTC)'!
floorNumberDoesNotExistErrorDescription

	^ 'Floor number does not exist'.! !

!Hotel class methodsFor: 'error description' stamp: 'FRT 21/Apr/2024, 12:42:02 am (UTC)'!
noFloorsErrorDescription

	^ 'Cannot have a Hotel without floors'! !

!Hotel class methodsFor: 'exceptions' stamp: 'FRT 26/Apr/2024, 12:42:24 am (UTC)'!
signalFloorNumberDoesNotExist

	self error: self floorNumberDoesNotExistErrorDescription.! !

!Hotel class methodsFor: 'exceptions' stamp: 'FRT 21/Apr/2024, 12:41:30 am (UTC)'!
signalNoFloors

	self error: self noFloorsErrorDescription.! !

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:31:00 pm (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.
	
	^ self new initializeWithFloors: aFloorsCollection! !

!Room methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 2:30:26 pm (UTC)'!
receive: aGuestType

	state := state receive: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 2:30:26 pm (UTC)'!
receiveWithReservation: aGuestType

	state := state receiveWithReservation: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 2:30:26 pm (UTC)'!
reserve

	state := state reserve! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:30:26 pm (UTC)'!
isAvailable

	^ state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:30:26 pm (UTC)'!
isOccupied

	^ state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:30:26 pm (UTC)'!
isReserved

	^ state isReserved! !

!Room methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 2:30:26 pm (UTC)'!
initialize

	state := AvailableRoomState new! !

!Room methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:30:26 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:30:26 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!RoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
isAvailable

	^ false! !

!RoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
isOccupied

	^ false! !

!RoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
isReserved

	^ false! !

!RoomState methodsFor: 'transitions' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
receive: aGuestType

	^ self signalRoomIsNotEmpty! !

!RoomState methodsFor: 'transitions' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
receiveWithReservation: aGuestType

	^ self signalRoomIsNotReserved! !

!RoomState methodsFor: 'transitions' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
reserve

	^ self signalRoomIsNotEmpty! !

!RoomState methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ self subclassResponsibility! !

!RoomState methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ self subclassResponsibility! !

!RoomState methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
signalRoomIsNotEmpty

	self error: Room roomIsNotEmptyErrorDescription! !

!RoomState methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
signalRoomIsNotReserved

	self error: Room roomIsNotReservedErrorDescription! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
isAvailable

	^ true! !

!AvailableRoomState methodsFor: 'transitions' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
receive: aGuestType

	^ OccupiedRoomState of: aGuestType! !

!AvailableRoomState methodsFor: 'transitions' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
reserve

	^ ReservedRoomState new! !

!AvailableRoomState methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max! !

!AvailableRoomState methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
initializeOf: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
isOccupied

	^ true! !

!OccupiedRoomState methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!OccupiedRoomState methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
of: aGuestType

	^ self new initializeOf: aGuestType! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
isOccupied

	^ true! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
isReserved

	^ true! !

!ReservedRoomState methodsFor: 'transitions' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
receiveWithReservation: aGuestType

	^ OccupiedRoomState of: aGuestType! !

!ReservedRoomState methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!ReservedRoomState methodsFor: 'balance' stamp: 'HAW 15/Sep/2026, 2:30:17 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2! !

!HotelSimulationTest methodsFor: 'guest types' stamp: 'HAW 15/Sep/2026, 2:31:32 pm (UTC)'!
guestTypeConference
	
	^ #conferenceGuest! !

!HotelSimulationTest methodsFor: 'guest types' stamp: 'HAW 15/Sep/2026, 2:31:32 pm (UTC)'!
guestTypeVacation
	
	^ #vacationGuest! !

!HotelSimulationTest methodsFor: 'prices' stamp: 'HAW 15/Sep/2026, 2:31:32 pm (UTC)'!
defaultPriceList
	
	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!HotelSimulationTest methodsFor: 'prices' stamp: 'HAW 15/Sep/2026, 2:31:32 pm (UTC)'!
maxPriceInList
	
	^ 200*peso! !

!HotelSimulationTest methodsFor: 'prices' stamp: 'HAW 15/Sep/2026, 2:31:32 pm (UTC)'!
minPriceInList
	
	^ 100*peso! !

!HotelSimulationTest methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:31:32 pm (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withRooms: aNumberOfRooms prices: aPriceList! !

!HotelSimulationTest methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 2:31:32 pm (UTC)'!
should: aBlock failWith: anErrorDescription

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error | self assert: anErrorDescription equals: error messageText ]! !

!FloorTest methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:32:17 pm (UTC)'!
createFloorWithDefaultPricesAnd: aNumberOfRooms

	^ self createFloorWith: aNumberOfRooms and: self defaultPriceList! !

!FloorTest methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 2:32:17 pm (UTC)'!
assert: aFloor hasAvailable: availableRooms occupied: occupiedRooms andReserved: reservedRooms

	self assert: availableRooms equals: aFloor totalRoomsAvailable.
	self assert: occupiedRooms equals: aFloor totalRoomsOccupied.
	self assert: reservedRooms equals: aFloor totalRoomsReserved! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:17 pm (UTC)'!
test01CannotCreateFloorWithoutRooms

	self
		should: [ self createFloorWithDefaultPricesAnd: 0 ]
		failWith: Floor numberOfRoomsMustBePositiveErrorDescription! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:17 pm (UTC)'!
test02CannotCreateFloorWithNoIntergerNumberOfRooms

	self
		should: [ self createFloorWithDefaultPricesAnd: 1.5 ]
		failWith: Floor numberOfRoomsMustBeIntegerErrorDescription! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:17 pm (UTC)'!
test03CannotCreateFloorWithoutPrices

	self
		should: [ self createFloorWith: 10 and: Dictionary new ]
		failWith: Floor pricesListCannotBeEmptyErrorDescription! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:17 pm (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| roomsNumber floor |
	
	roomsNumber := 10.
	floor := self createFloorWithDefaultPricesAnd: roomsNumber.
	
	self assert: floor isAvailable.
	self assert: floor hasAvailable: roomsNumber occupied: 0 andReserved: 0! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:17 pm (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWithDefaultPricesAnd: roomsNumber.
	
	floor receive: self guestTypeVacation atRoom: 1.
	
	self assert: floor hasAvailable: roomsNumber - 1 occupied: 1 andReserved: 0! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:17 pm (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsNumber roomsAvailable roomsOccupied roomsReserved |
	
	roomsNumber := 10.
	floor := self createFloorWithDefaultPricesAnd: roomsNumber.
	
	floor reserveRoom: 1.

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	floor receiveWithReservation: self guestTypeVacation atRoom: 1.
	
	self assert: floor hasAvailable: roomsAvailable occupied: roomsOccupied andReserved: roomsReserved - 1! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:17 pm (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWithDefaultPricesAnd: roomsNumber.
	
	floor reserveRoom: 1.
	
	self assert: floor hasAvailable: roomsNumber - 1 occupied: 1 andReserved: 1! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:17 pm (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |
	
	floor := self createFloorWithDefaultPricesAnd: 10.
	
	floor receive: self guestTypeVacation atRoom: 1.
	floor receive: self guestTypeConference atRoom: 2.
	floor reserveRoom: 3.
		
	self assert: self minPriceInList + self maxPriceInList + (self minPriceInList / 2) equals: floor totalProfits! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:17 pm (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWithDefaultPricesAnd: roomsNumber.
	
	floor receive: self guestTypeVacation atRoom: 1.
	floor receive: self guestTypeConference atRoom: 2.
	floor reserveRoom: 3.
		
	self assert: self maxPriceInList * (roomsNumber - 3) equals: floor totalLosses! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:17 pm (UTC)'!
test10CannotReceiveAGuestInANonexistentRoom

	| floor |
	
	floor := self createFloorWithDefaultPricesAnd: 10.
	
	self
		should: [ floor receive: self guestTypeVacation atRoom: 42 ]
		failWith: Floor roomNumberDoesNotExistErrorDescription.
		
	self assert: floor isAvailable! !

!HotelTest methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
createHotel

	^ Hotel withFloors: (OrderedCollection 
		with: (self createFloorWith: 10 and: self defaultPriceList)
		with: (self createFloorWith: 1 and: self defaultPriceList))! !

!HotelTest methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
createHotelWithFloors: aFloorsCollection

	^ Hotel withFloors: aFloorsCollection! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
assert: aHotel hasOccupied: occupiedRooms andReserved: reservedRooms

	self assert: aHotel totalRooms - occupiedRooms equals: aHotel totalRoomsAvailable.
	self assert: occupiedRooms equals: aHotel totalRoomsOccupied.
	self assert: reservedRooms equals: aHotel totalRoomsReserved! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
assertHasNoGuests: aHotel

	self assert: aHotel isEmpty.
	self assert: aHotel hasOccupied: 0 andReserved: 0! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ self createHotelWithFloors: OrderedCollection new ]
		failWith: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test02NewHotelsAreEmpty

	self assertHasNoGuests: self createHotel! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	self assertHasNoGuests: hotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel hasOccupied: 1 andReserved: 0! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |
	
	hotel := self createHotel.

	self assertHasNoGuests: hotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assert: hotel hasOccupied: 1 andReserved: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	self assertHasNoGuests: hotel.

	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel hasOccupied: 1 andReserved: 0! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		failWith: Room roomIsNotReservedErrorDescription.

	self assertHasNoGuests: hotel! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits
	
	| hotel floor1 floor2 |
	
	floor1 := self createFloorWith: 10 and: self defaultPriceList.
	floor2 := self createFloorWith: 10 and: self defaultPriceList.

	hotel := self createHotelWithFloors: (OrderedCollection with: floor1 with: floor2).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: floor1 totalProfits + floor2 totalProfits equals: hotel totalProfits! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses
	
	| hotel floor1 floor2 |
	
	floor1 := self createFloorWith: 10 and: self defaultPriceList.
	floor2 := self createFloorWith: 10 and: self defaultPriceList.

	hotel := self createHotelWithFloors: (OrderedCollection with: floor1 with: floor2).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: floor1 totalLosses + floor2 totalLosses equals: hotel totalLosses! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test09HotelCannotReserveANonexistentRoom
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		failWith: Floor roomNumberDoesNotExistErrorDescription.

	self assertHasNoGuests: hotel! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test10HotelCannotReserveANonexistentFloor
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription.

	self assertHasNoGuests: hotel! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Floor roomNumberDoesNotExistErrorDescription.

	self assertHasNoGuests: hotel! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription.

	self assertHasNoGuests: hotel! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:32:44 pm (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotel.

	hotel reserveRoom: 1 atFloor: 1. 
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Floor roomNumberDoesNotExistErrorDescription.

	self assert: hotel hasOccupied: 1 andReserved: 1! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 2:31:54 pm (UTC)'!
assertIsAvailable: aRoom

	self assert: aRoom isAvailable.
	
	self deny: aRoom isOccupied.
	self deny: aRoom isReserved! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 2:31:54 pm (UTC)'!
assertIsOccupied: aRoom

	self assert: aRoom isOccupied.
	
	self deny: aRoom isAvailable.
	self deny: aRoom isReserved! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 2:31:54 pm (UTC)'!
assertIsReserved: aRoom

	self assert: aRoom isReserved.
	self assert: aRoom isOccupied.
	
	self deny: aRoom isAvailable! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:54 pm (UTC)'!
test01NewRoomsAreAvailable

	self assertIsAvailable: Room new! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:54 pm (UTC)'!
test02ReceivingAGuestMakesTheRoomOccupied

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self assertIsOccupied: room! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test03ReservingARoomMakesTheRoomReservedAndOccupied

	| room |
	
	room := Room new.

	room reserve.

	self assertIsReserved: room! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test04CannotReceiveAGuestInAOccupiedRoom

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.
	
	self 
		should: [ room receive: self guestTypeVacation ] 
		failWith: Room roomIsNotEmptyErrorDescription.

	self assertIsOccupied: room! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test05CannotReceiveAGuestInAReservedRoom

	| room |
	
	room := Room new.

	room reserve.
	
	self 
		should: [ room receive: self guestTypeVacation ] 
		failWith: Room roomIsNotEmptyErrorDescription.

	self assertIsReserved: room! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test06ReceivingOnReservationMakesTheRoomOccupied

	| room |
	
	room := Room new.

	room reserve.
	room receiveWithReservation: self guestTypeVacation.
	
	self assertIsOccupied: room! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test07CannotReceiveOnReservationAnAvailableRoom

	| room |
	
	room := Room new.

	self 
		should: [ room receiveWithReservation: self guestTypeVacation ] 
		failWith: Room roomIsNotReservedErrorDescription.

	self assertIsAvailable: room! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test08CannotReceiveOnReservationAnOccupiedRoom

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self 
		should: [ room receiveWithReservation: self guestTypeVacation ] 
		failWith: Room roomIsNotReservedErrorDescription.

	self assertIsOccupied: room! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test09ProfitOfAvailableRoomIsCeroPesos

	| room |
	
	room := Room new.

	self assert: 0*peso equals: (room profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	| room |
	
	room := Room new.

	room reserve.

	self assert: self minPriceInList / 2 equals: (room profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test11ProfitOfOccupiedRoomDependsOnGuestType

	| roomWithConferenceGuest roomWithVacationGuest |
	
	roomWithConferenceGuest := Room new.
	roomWithConferenceGuest receive: self guestTypeConference.
	
	roomWithVacationGuest := Room new.
	roomWithVacationGuest receive: self guestTypeVacation.

	self assert: self maxPriceInList
		equals: (roomWithConferenceGuest profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]).

	self assert: self minPriceInList
		equals: (roomWithVacationGuest profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test12NoProfitOnOccupiedRoomByUnknownGuestType

	| room |
	
	room := Room new.
	room receive: #unknownGuest.
	
	room profitUsing: self defaultPriceList ifAbsentGuestType: [ ^self ].
	
	"we should not get here"
	self failWith: 'should not calculate profit on room occupied by unknown guest type'! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |

	room := Room new.

	self assert: self maxPriceInList equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.

	room reserve.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |
		
	room := Room new.

	room receive: self guestTypeVacation.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test16CannotReserveWhenReserved

	| room |
	
	room := Room new.

	room reserve.

	self 
		should: [ room reserve ]
		failWith: Room roomIsNotEmptyErrorDescription.

	self assertIsReserved: room! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 2:31:55 pm (UTC)'!
test17CannotReserveWhenOccupied

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self 
		should: [ room reserve ]
		failWith: Room roomIsNotEmptyErrorDescription.

	self assertIsOccupied: room! !
