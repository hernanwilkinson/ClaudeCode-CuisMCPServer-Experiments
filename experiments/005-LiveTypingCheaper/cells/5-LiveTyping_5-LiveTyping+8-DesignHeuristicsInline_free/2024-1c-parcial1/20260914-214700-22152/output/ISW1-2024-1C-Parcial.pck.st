'From Cuis7.9 [latest update: #8182] on 14 September 2026 at 9:55:29 pm'!
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

!classDefinition: #FloorTest category: #'ISW1-2024-1C-Parcial-Tests'!
TestCase subclass: #FloorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'FloorTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
FloorTest class
	instanceVariableNames: ''!

!classDefinition: #HotelTest category: #'ISW1-2024-1C-Parcial-Tests'!
TestCase subclass: #HotelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'HotelTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
HotelTest class
	instanceVariableNames: ''!

!classDefinition: #RoomTest category: #'ISW1-2024-1C-Parcial-Tests'!
TestCase subclass: #RoomTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'RoomTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
RoomTest class
	instanceVariableNames: ''!


!Floor commentStamp: '<historical>' prior: 0!
I represent a floor of a hotel. I know my rooms, numbered from one, and the price I charge for each type of guest. I know my profits, what my occupied and reserved rooms earn, and my losses, what my available rooms fail to earn.!

!Hotel commentStamp: '<historical>' prior: 0!
I represent a hotel. I know my floors, numbered from one, and I let guests be received, with or without a previous reservation, in a room of one of them. I also know my total profits and losses, which are the sum of those of my floors.!

!Room commentStamp: '<historical>' prior: 0!
I represent a room of a floor. I know my state, which tells whether I am available, reserved or occupied by a type of guest, and it is the one who answers what I earn and what I lose, and who I become when I receive a guest or I am reserved.!

!RoomState commentStamp: '<historical>' prior: 0!
I represent the state of a room, and I am the one who knows what can be done to it and what it earns and loses while it is in me. When a room changes its state, I answer the state it becomes; when what is asked of the room can not be done in me, I signal the error. My subclasses are AvailableRoomState, ReservedRoomState and OccupiedRoomState.!

!AvailableRoomState commentStamp: '<historical>' prior: 0!
I represent the state of a room nobody occupies nor has reserved. It can receive a guest or be reserved, it earns nothing and it loses the most expensive price in the list.!

!OccupiedRoomState commentStamp: '<historical>' prior: 0!
I represent the state of a room occupied by a guest, and I know the type of that guest. Nothing else can be done to it, and it earns the price of that type of guest.!

!ReservedRoomState commentStamp: '<historical>' prior: 0!
I represent the state of a room somebody reserved and nobody occupies yet. It can only receive a guest with that reservation, and it earns half the cheapest price in the list.!

!FloorTest commentStamp: '<historical>' prior: 0!
I test a Floor, how it is created, how its rooms are occupied and reserved, and the profits and losses it computes from them.!

!HotelTest commentStamp: '<historical>' prior: 0!
I test a Hotel, how it is created, how it receives guests and takes reservations in the rooms of its floors, and the totals it computes from them.!

!RoomTest commentStamp: '<historical>' prior: 0!
I test a Room, the states it goes through when it receives guests and is reserved, and what it earns and loses in each of them.!

!Floor methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
isAvailable

	^rooms allSatisfy: [ :room | room isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
totalLosses

	^rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
totalProfits

	^rooms sum: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
totalRooms

	^rooms size! !

!Floor methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
totalRoomsAvailable

	^rooms count: [ :room | room isAvailable ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
totalRoomsOccupied

	^rooms count: [ :room | room isOccupied ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
totalRoomsReserved

	^rooms count: [ :room | room isReserved ]! !

!Floor methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
initializeWithRooms: aRoomCollection pricedAt: aPriceList

	rooms := aRoomCollection.
	prices := aPriceList! !

!Floor methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
receive: aGuestType atRoom: aRoomNumber

	(self roomAt: aRoomNumber) receive: aGuestType! !

!Floor methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber

	(self roomAt: aRoomNumber) receiveWithReservation: aGuestType! !

!Floor methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
reserveRoom: aRoomNumber

	(self roomAt: aRoomNumber) reserve! !

!Floor methodsFor: 'private' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
roomAt: aRoomNumber

	^rooms at: aRoomNumber ifAbsent: [ self class signalRoomNumberDoesNotExist ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	aNumberOfRooms strictlyPositive ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	aNumberOfRooms isInteger ifFalse: [ self signalNumberOfRoomsMustBeInteger ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList ifEmpty: [ self signalNoPrices ].
	aPriceList values do: [ :price | price strictlyPositive ifFalse: [ self signalPriceMustBePositive ] ]! !

!Floor class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
numberOfRoomsMustBeIntegerErrorDescription

	^'Number of rooms must be integer'! !

!Floor class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
numberOfRoomsMustBePositiveErrorDescription

	^'The number of rooms must be positive'! !

!Floor class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
priceMustBePositiveErrorDescription

	^'Price must be positive'! !

!Floor class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
pricesListCannotBeEmptyErrorDescription

	^'Prices List must not be empty'! !

!Floor class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
roomNumberDoesNotExistErrorDescription

	^'Room number does not exist'! !

!Floor class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
unknownGuestTypeErrorDescription

	^'The guest type is unknown'! !

!Floor class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
signalNoPrices

	self error: self pricesListCannotBeEmptyErrorDescription! !

!Floor class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
signalNumberOfRoomsMustBeInteger

	self error: self numberOfRoomsMustBeIntegerErrorDescription! !

!Floor class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
signalNumberOfRoomsMustBePositive

	self error: self numberOfRoomsMustBePositiveErrorDescription! !

!Floor class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
signalPriceMustBePositive

	self error: self priceMustBePositiveErrorDescription! !

!Floor class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
signalRoomNumberDoesNotExist

	self error: self roomNumberDoesNotExistErrorDescription! !

!Floor class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
withRooms: aNumberOfRooms pricedAt: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.

	^self new initializeWithRooms: (self availableRooms: aNumberOfRooms) pricedAt: aPriceList! !

!Floor class methodsFor: 'private' stamp: 'HAW 15/Sep/2026, 12:51:27 am (UTC)'!
availableRooms: aNumberOfRooms

	^(1 to: aNumberOfRooms) collect: [ :roomNumber | Room new ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
totalLosses

	^floors sum: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
totalProfits

	^floors sum: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
initializeWithFloors: aFloorCollection

	floors := aFloorCollection! !

!Hotel methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
totalRooms

	^floors sum: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
totalRoomsAvailable

	^floors sum: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
totalRoomsOccupied

	^floors sum: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
totalRoomsReserved

	^floors sum: [ :floor | floor totalRoomsReserved ]! !

!Hotel methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
isEmpty

	^floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receive: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receiveWithReservation: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self floorAt: aFloorNumber) reserveRoom: aRoomNumber! !

!Hotel methodsFor: 'private' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
floorAt: aFloorNumber

	^floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]! !

!Hotel class methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
assertHasFloors: aFloorCollection

	aFloorCollection ifEmpty: [ self signalNoFloors ]! !

!Hotel class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
signalFloorNumberDoesNotExist

	self error: self floorNumberDoesNotExistErrorDescription! !

!Hotel class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
signalNoFloors

	self error: self noFloorsErrorDescription! !

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:51:45 am (UTC)'!
withFloors: aFloorCollection

	self assertHasFloors: aFloorCollection.

	^self new initializeWithFloors: aFloorCollection! !

!Hotel class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
floorNumberDoesNotExistErrorDescription

	^'Floor number does not exist'! !

!Hotel class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 12:54:50 am (UTC)'!
noFloorsErrorDescription

	^'Cannot have a Hotel without floors'! !

!Room methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:13 am (UTC)'!
receive: aGuestType

	state := state receive: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:13 am (UTC)'!
receiveWithReservation: aGuestType

	state := state receiveWithReservation: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:13 am (UTC)'!
reserve

	state := state reserve! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:51:13 am (UTC)'!
isAvailable

	^state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:51:13 am (UTC)'!
isOccupied

	^self isAvailable not! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:51:13 am (UTC)'!
isReserved

	^state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:13 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:13 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:51:13 am (UTC)'!
initialize

	state := AvailableRoomState new! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:51:13 am (UTC)'!
signalRoomIsNotEmpty

	self error: self roomIsNotEmptyErrorDescription! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:51:13 am (UTC)'!
signalRoomIsNotReserved

	self error: self roomIsNotReservedErrorDescription! !

!RoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
receive: aGuestType

	^Room signalRoomIsNotEmpty! !

!RoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
receiveWithReservation: aGuestType

	^Room signalRoomIsNotReserved! !

!RoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
reserve

	^Room signalRoomIsNotEmpty! !

!RoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
isAvailable

	^false! !

!RoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
isReserved

	^false! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^self subclassResponsibility! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
receive: aGuestType

	^OccupiedRoomState occupiedBy: aGuestType! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
reserve

	^ReservedRoomState new! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
isAvailable

	^true! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList values max! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
initializeOccupiedBy: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList at: guestType ifAbsent: anUnknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
occupiedBy: aGuestType

	^self new initializeOccupiedBy: aGuestType! !

!ReservedRoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
receiveWithReservation: aGuestType

	^OccupiedRoomState occupiedBy: aGuestType! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
isReserved

	^true! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:03 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList values min / 2! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 26/Apr/2024, 7:54:55 pm (UTC)'!
test01CannotCreateFloorWithoutRooms

	self
		should: [ self createFloorWith: 0 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor numberOfRoomsMustBePositiveErrorDescription ! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 26/Apr/2024, 7:55:02 pm (UTC)'!
test02CannotCreateFloorWithNoIntergerNumberOfRooms

	self
		should: [ self createFloorWith: 1.5 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor numberOfRoomsMustBeIntegerErrorDescription ! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 26/Apr/2024, 7:55:06 pm (UTC)'!
test03CannotCreateFloorWithoutPrices

	self
		should: [ self createFloorWith: 10 and:  Dictionary new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor pricesListCannotBeEmptyErrorDescription ! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:46 am (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |
	
	floor := self createFloorWith: 10 and: self defaultPriceList.
	
	self assert: floor isAvailable.
	self assert: floor totalRoomsOccupied equals: 0.
	self assert: floor totalRoomsReserved equals: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:46 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor numberOfRooms |
	
	numberOfRooms := 10.
	floor := self createFloorWith: numberOfRooms and: self defaultPriceList.
	
	floor receive: self guestTypeVacation atRoom: 1.
	
	self assert: floor totalRoomsAvailable equals: numberOfRooms - 1. 
	self assert: floor totalRoomsOccupied equals: 1.
	self assert: floor totalRoomsReserved equals: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:46 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsAvailable roomsOccupied roomsReserved |
	
	floor := self createFloorWith: 10 and: self defaultPriceList.
	
	floor reserveRoom: 1.

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	floor receiveWithReservation: self guestTypeVacation atRoom: 1.
	
	self assert: floor totalRoomsAvailable equals: roomsAvailable. 
	self assert: floor totalRoomsOccupied equals: roomsOccupied.
	self assert: floor totalRoomsReserved equals: roomsReserved - 1! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:46 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor numberOfRooms |
	
	numberOfRooms := 10.
	floor := self createFloorWith: numberOfRooms and: self defaultPriceList.
	
	floor reserveRoom: 1.
	
	self assert: floor totalRoomsAvailable equals: numberOfRooms - 1. 
	self assert: floor totalRoomsOccupied equals: 1.
	self assert: floor totalRoomsReserved equals: 1! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:46 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |
	
	floor := self createFloorWith: 10 and: self defaultPriceList.
	
	floor receive: self guestTypeVacation atRoom: 1.
	floor receive: self guestTypeConference atRoom: 2.
	floor reserveRoom: 3.
		
	self 
		assert: floor totalProfits 
		equals: self minPriceInList + self maxPriceInList + (self minPriceInList / 2)! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:46 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |
	
	floor := self createFloorWith: 10 and: self defaultPriceList.
	
	floor receive: self guestTypeVacation atRoom: 1.
	floor receive: self guestTypeConference atRoom: 2.
	floor reserveRoom: 3.
		
	self assert: floor totalLosses equals: self maxPriceInList * 7! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:46 am (UTC)'!
test10CannotReserveARoomThatDoesNotExist

	| floor |
	
	floor := self createFloorWith: 10 and: self defaultPriceList.
	
	self 
		should: [ floor reserveRoom: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assert: floor isAvailable ]! !

!FloorTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:52:46 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^Floor withRooms: aNumberOfRooms pricedAt: aPriceList! !

!FloorTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:52:46 am (UTC)'!
defaultPriceList
	
	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself ! !

!FloorTest methodsFor: 'create' stamp: 'FRT 21/Apr/2024, 8:00:09 pm (UTC)'!
guestTypeConference
	
	^ #conferenceGuest! !

!FloorTest methodsFor: 'create' stamp: 'FRT 21/Apr/2024, 8:00:42 pm (UTC)'!
guestTypeVacation
	
	^ #vacationGuest! !

!FloorTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:52:46 am (UTC)'!
maxPriceInList
	
	^ 200*peso ! !

!FloorTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:52:46 am (UTC)'!
minPriceInList
	
	^ 100*peso ! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 2:30:09 pm (UTC)'!
test02NewHotelsAreEmpty

	| hotel |
	
	hotel := self createHotel.
	
	self assert: hotel isEmpty.! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	self assertAllRoomsAreAvailableIn: hotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 0.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |
	
	hotel := self createHotel.

	self assertAllRoomsAreAvailableIn: hotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assertOnlyOneRoomIsReservedIn: hotel! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 0.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |	
			self assert: anError messageText equals: Room roomIsNotReservedErrorDescription.
			self assertAllRoomsAreAvailableIn: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits
	
	| hotel firstFloor secondFloor |
	
	firstFloor := self createFloorWith: 10 and: self defaultPriceList.
	secondFloor := self createFloorWith: 10 and: self defaultPriceList.

	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: hotel totalProfits equals: firstFloor totalProfits + secondFloor totalProfits! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses
	
	| hotel firstFloor secondFloor |
	
	firstFloor := self createFloorWith: 10 and: self defaultPriceList.
	secondFloor := self createFloorWith: 10 and: self defaultPriceList.

	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: hotel totalLosses equals: firstFloor totalLosses + secondFloor totalLosses! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
test09HotelCannotReserveANonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithASingleFloor.
	
	self 
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |	
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assertAllRoomsAreAvailableIn: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
test10HotelCannotReserveANonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithASingleFloor.
	
	self 
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |	
			self assert: anError messageText equals: Hotel floorNumberDoesNotExistErrorDescription.
			self assertAllRoomsAreAvailableIn: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithASingleFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |	
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assertAllRoomsAreAvailableIn: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithASingleFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |	
			self assert: anError messageText equals: Hotel floorNumberDoesNotExistErrorDescription.
			self assertAllRoomsAreAvailableIn: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithASingleFloor.
	hotel reserveRoom: 1 atFloor: 1. 
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |	
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assertOnlyOneRoomIsReservedIn: hotel ]! !

!HotelTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^Floor withRooms: aNumberOfRooms pricedAt: aPriceList! !

!HotelTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
createHotel

	^Hotel withFloors: (OrderedCollection 
		with: (self createFloorWith: 10 and: self defaultPriceList)
		with: (self createFloorWith: 1 and: self defaultPriceList))! !

!HotelTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
createHotelWithASingleFloor

	^Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10 and: self defaultPriceList))! !

!HotelTest methodsFor: 'create' stamp: 'FRT 22/Apr/2024, 1:27:22 pm (UTC)'!
defaultPriceList
	
	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself ! !

!HotelTest methodsFor: 'create' stamp: 'FRT 22/Apr/2024, 1:27:36 pm (UTC)'!
guestTypeConference
	
	^ #conferenceGuest! !

!HotelTest methodsFor: 'create' stamp: 'FRT 22/Apr/2024, 1:27:42 pm (UTC)'!
guestTypeVacation
	
	^ #vacationGuest! !

!HotelTest methodsFor: 'create' stamp: 'FRT 22/Apr/2024, 1:27:48 pm (UTC)'!
maxPriceInList
	
	^ 200*peso ! !

!HotelTest methodsFor: 'create' stamp: 'FRT 22/Apr/2024, 1:27:53 pm (UTC)'!
minPriceInList
	
	^ 100*peso ! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
assertAllRoomsAreAvailableIn: aHotel

	self assert: aHotel totalRoomsAvailable equals: aHotel totalRooms.
	self assert: aHotel totalRoomsReserved equals: 0.
	self assert: aHotel totalRoomsOccupied equals: 0! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 12:53:17 am (UTC)'!
assertOnlyOneRoomIsReservedIn: aHotel

	self assert: aHotel totalRoomsAvailable equals: aHotel totalRooms - 1.
	self assert: aHotel totalRoomsReserved equals: 1.
	self assert: aHotel totalRoomsOccupied equals: 1! !

!RoomTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 1:11:08 am (UTC)'!
test01NewRoomsAreAvailable

	| room |
	
	room := Room new.

	self assert: room isAvailable.
	
	self deny: room isOccupied.
	self deny: room isReserved.! !

!RoomTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 12:03:07 pm (UTC)'!
test02ReceivingAGuestMakesTheRoomOccupied

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self assert: room isOccupied.

	self deny: room isAvailable.
	self deny: room isReserved.! !

!RoomTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 12:04:16 pm (UTC)'!
test03ReservingARoomMakesTheRoomReservedAndOccupied

	| room |
	
	room := Room new.

	room reserve.

	self assert: room isReserved.
	self assert: room isOccupied.

	self deny: room isAvailable.
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:25 am (UTC)'!
test04CannotReceiveAGuestInAOccupiedRoom

	| room |
	
	room := Room new.
	room receive: self guestTypeVacation.
	
	self 
		should: [ room receive: self guestTypeVacation ] 
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.

			self assert: room isOccupied.
			self deny: room isAvailable.
			self deny: room isReserved ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:25 am (UTC)'!
test05CannotReceiveAGuestInAReservedRoom

	| room |
	
	room := Room new.
	room reserve.
	
	self 
		should: [ room receive: self guestTypeVacation ] 
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.

			self assert: room isReserved.
			self assert: room isOccupied.
			self deny: room isAvailable ]! !

!RoomTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 2:58:29 pm (UTC)'!
test06ReceivingOnReservationMakesTheRoomOccupied

	| room |
	
	room := Room new.

	room reserve.
	
	room receiveWithReservation: self guestTypeVacation.
	
	self assert: room isOccupied.
	
	self deny: room isReserved.
	self deny: room isAvailable.
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:25 am (UTC)'!
test07CannotReceiveOnReservationAnAvailableRoom

	| room |
	
	room := Room new.

	self 
		should: [ room receiveWithReservation: self guestTypeVacation ] 
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotReservedErrorDescription.

			self assert: room isAvailable.
			self deny: room isReserved.
			self deny: room isOccupied ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:25 am (UTC)'!
test08CannotReceiveOnReservationAnOccupiedRoom

	| room |
	
	room := Room new.
	room receive: self guestTypeVacation.

	self 
		should: [ room receiveWithReservation: self guestTypeVacation ] 
		raise: Error - MessageNotUnderstood 	
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotReservedErrorDescription.

			self assert: room isOccupied.
			self deny: room isReserved.
			self deny: room isAvailable ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:25 am (UTC)'!
test09ProfitOfAvailableRoomIsCeroPesos

	| room |
	
	room := Room new.

	self 
		assert: (room profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) 
		equals: 0*peso! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:25 am (UTC)'!
test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	| room |
	
	room := Room new.
	room reserve.

	self 
		assert: (room profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) 
		equals: self minPriceInList / 2! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:25 am (UTC)'!
test11ProfitOfOccupiedRoomDependsOnGuestType

	| roomWithConferenceGuest roomWithVacationGuest |
	
	roomWithConferenceGuest := Room new.
	roomWithConferenceGuest receive: self guestTypeConference.
	
	roomWithVacationGuest := Room new.
	roomWithVacationGuest receive: self guestTypeVacation.

	self 
		assert: (roomWithConferenceGuest profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) 
		equals: (self defaultPriceList at: self guestTypeConference).

	self 
		assert: (roomWithVacationGuest profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) 
		equals: (self defaultPriceList at: self guestTypeVacation)! !

!RoomTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 12:52:21 pm (UTC)'!
test12NoProfitOnOccupiedRoomByUnknownGuestType

	| room |
	
	room := Room new.
	room receive: #unknownGuest.
	
	room profitUsing: self defaultPriceList ifAbsentGuestType: [ ^self ].
	
	"we should not get here"
	self failWith: 'should not calculate profit on room occupied by unknown guest type'.
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:25 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |
	
	room := Room new.

	self 
		assert: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) 
		equals: self maxPriceInList! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:25 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |
	
	room := Room new.
	room reserve.

	self 
		assert: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) 
		equals: 0*peso! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:25 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |
		
	room := Room new.
	room receive: self guestTypeVacation.

	self 
		assert: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) 
		equals: 0*peso! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:25 am (UTC)'!
test16CannotReserveWhenReserved

	| room |
	
	room := Room new.
	room reserve.

	self 
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.
			self assert: room isReserved ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:26 am (UTC)'!
test17CannotReserveWhenOccupied

	| room |
	
	room := Room new.
	room receive: self guestTypeVacation.

	self 
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.
			self assert: room isOccupied ]! !

!RoomTest methodsFor: 'create' stamp: 'FRT 22/Apr/2024, 1:16:28 pm (UTC)'!
defaultPriceList
	
	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself ! !

!RoomTest methodsFor: 'create' stamp: 'FRT 22/Apr/2024, 12:20:45 pm (UTC)'!
guestTypeConference
	
	^ #conferenceGuest! !

!RoomTest methodsFor: 'create' stamp: 'FRT 22/Apr/2024, 12:02:15 pm (UTC)'!
guestTypeVacation
	
	^ #vacationGuest! !

!RoomTest methodsFor: 'create' stamp: 'FRT 22/Apr/2024, 1:16:13 pm (UTC)'!
maxPriceInList
	
	^ 200*peso ! !

!RoomTest methodsFor: 'create' stamp: 'FRT 22/Apr/2024, 12:40:38 pm (UTC)'!
minPriceInList
	
	^ 100*peso ! !
