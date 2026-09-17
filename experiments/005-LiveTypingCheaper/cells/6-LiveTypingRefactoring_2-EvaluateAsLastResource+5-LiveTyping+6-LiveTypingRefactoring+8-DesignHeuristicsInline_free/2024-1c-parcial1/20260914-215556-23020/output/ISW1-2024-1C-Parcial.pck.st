'From Cuis7.9 [latest update: #8182] on 14 September 2026 at 10:03:39 pm'!
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
I represent a floor of a Hotel. I know my rooms, numbered from the first one, and the price of each type of guest on me. Guests are received and rooms are reserved through me, so nobody has to reach my rooms to do it. My profits are what my occupied and reserved rooms produce and my losses are what my available rooms cost me.!

!Hotel commentStamp: '<historical>' prior: 0!
I represent a hotel. I know my floors, numbered from the first one, and I am the one guests talk to: they can be received at a floor and room, a room can be reserved for them and they can be received in a room they reserved before. I also know how many of my rooms are available, occupied and reserved, and my profits and losses, which are the sum of the ones of my floors.!

!Room commentStamp: '<historical>' prior: 0!
I represent a room of a Floor. I am available, reserved or occupied by a type of guest, and it is my state, a RoomState, the one that knows what can be done to me and how much profit and loss I produce. Receiving a guest, receiving a guest with a reservation and reserving me leave me in the state my current one answers.!

!RoomState commentStamp: '<historical>' prior: 0!
I am the state of a Room: available, reserved or occupied. My subclasses know, for the state they represent, whether a guest can be received, whether a guest with a reservation can be received and whether the room can be reserved, answering the state the room is left in and signalling an error when it can not be done. They also know the profit and the loss the room produces with a price list.!

!AvailableRoomState commentStamp: '<historical>' prior: 0!
I am the state of a Room nobody is in and nobody has reserved. A guest can be received in it and it can be reserved. It produces no profit and its loss is the most expensive price of the list, because that is what the hotel is not earning with it.!

!OccupiedRoomState commentStamp: '<historical>' prior: 0!
I am the state of a Room a guest is in. I know the type of that guest, which is what its profit is looked up with in the price list. No other guest can be received in it and it can not be reserved. It produces no loss.!

!ReservedRoomState commentStamp: '<historical>' prior: 0!
I am the state of a Room that was reserved and whose guest has not arrived yet. Only a guest with a reservation can be received in it. It produces half of the cheapest price of the list as profit and no loss.!

!FloorTest commentStamp: '<historical>' prior: 0!
I test a Floor: how it is created, how guests are received and rooms reserved on it and the profits and losses it produces.!

!HotelTest commentStamp: '<historical>' prior: 0!
I test a Hotel: how it is created, how guests are received and rooms reserved in it and the profits and losses it produces.!

!RoomTest commentStamp: '<historical>' prior: 0!
I test a Room, the states it goes through and the profit and loss it produces.!

!Floor methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:00:13 am (UTC)'!
isAvailable

	^rooms allSatisfy: [ :aRoom | aRoom isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 1:00:13 am (UTC)'!
totalLosses

	^rooms sum: [ :aRoom | aRoom lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 1:00:13 am (UTC)'!
totalProfits

	^rooms sum: [ :aRoom | aRoom profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 1:03:03 am (UTC)'!
totalRooms

	^rooms size! !

!Floor methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 1:03:03 am (UTC)'!
totalRoomsAvailable

	^rooms count: [ :aRoom | aRoom isAvailable ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 1:03:03 am (UTC)'!
totalRoomsOccupied

	^rooms count: [ :aRoom | aRoom isOccupied ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 1:03:03 am (UTC)'!
totalRoomsReserved

	^rooms count: [ :aRoom | aRoom isReserved ]! !

!Floor methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 1:00:05 am (UTC)'!
initializeWith: aNumberOfRooms roomsPricedBy: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList! !

!Floor methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 1:00:13 am (UTC)'!
receive: aGuestType atRoom: aRoomNumber

	(self roomAt: aRoomNumber) receive: aGuestType! !

!Floor methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 1:00:13 am (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber

	(self roomAt: aRoomNumber) receiveWithReservation: aGuestType! !

!Floor methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 1:00:13 am (UTC)'!
reserveRoom: aRoomNumber

	(self roomAt: aRoomNumber) reserve! !

!Floor methodsFor: 'rooms' stamp: 'HAW 15/Sep/2026, 1:00:13 am (UTC)'!
roomAt: aRoomNumber

	^rooms at: aRoomNumber ifAbsent: [ self class signalRoomNumberDoesNotExist ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 1:00:05 am (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	aNumberOfRooms isInteger ifFalse: [ self signalNumberOfRoomsMustBeInteger ].
	aNumberOfRooms strictlyPositive ifFalse: [ self signalNumberOfRoomsMustBePositive ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 1:00:05 am (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList ifEmpty: [ self signalNoPrices ].
	(aPriceList allSatisfy: [ :aPrice | aPrice strictlyPositive ]) ifFalse: [ self signalPriceMustBePositive ]! !

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

!Floor class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 1:03:09 am (UTC)'!
roomNumberDoesNotExistErrorDescription

	^'Room number does not exist'! !

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

!Floor class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 1:00:13 am (UTC)'!
signalRoomNumberDoesNotExist

	self error: self roomNumberDoesNotExistErrorDescription! !

!Floor class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 1:00:13 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 1:00:05 am (UTC)'!
with: aNumberOfRooms roomsPricedBy: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.

	^self new initializeWith: aNumberOfRooms roomsPricedBy: aPriceList! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 1:00:35 am (UTC)'!
totalLosses

	^floors sum: [ :aFloor | aFloor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 1:00:35 am (UTC)'!
totalProfits

	^floors sum: [ :aFloor | aFloor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 1:00:34 am (UTC)'!
initializeWithFloors: aFloorCollection

	floors := aFloorCollection! !

!Hotel methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 1:00:35 am (UTC)'!
totalRooms

	^floors sum: [ :aFloor | aFloor totalRooms ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 1:00:35 am (UTC)'!
totalRoomsAvailable

	^floors sum: [ :aFloor | aFloor totalRoomsAvailable ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 1:00:35 am (UTC)'!
totalRoomsOccupied

	^floors sum: [ :aFloor | aFloor totalRoomsOccupied ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 1:00:35 am (UTC)'!
totalRoomsReserved

	^floors sum: [ :aFloor | aFloor totalRoomsReserved ]! !

!Hotel methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:00:35 am (UTC)'!
isEmpty

	^floors allSatisfy: [ :aFloor | aFloor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 1:00:34 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receive: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 1:00:35 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receiveWithReservation: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 1:00:35 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self floorAt: aFloorNumber) reserveRoom: aRoomNumber! !

!Hotel methodsFor: 'floors' stamp: 'HAW 15/Sep/2026, 1:00:35 am (UTC)'!
floorAt: aFloorNumber

	^floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]! !

!Hotel class methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 1:00:34 am (UTC)'!
assertIsValidFloorCollection: aFloorCollection

	aFloorCollection ifEmpty: [ self signalNoFloors ]! !

!Hotel class methodsFor: 'exceptions' stamp: 'FRT 26/Apr/2024, 12:42:24 am (UTC)'!
signalFloorNumberDoesNotExist

	self error: self floorNumberDoesNotExistErrorDescription.! !

!Hotel class methodsFor: 'exceptions' stamp: 'FRT 21/Apr/2024, 12:41:30 am (UTC)'!
signalNoFloors

	self error: self noFloorsErrorDescription.! !

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 1:00:34 am (UTC)'!
withFloors: aFloorCollection

	self assertIsValidFloorCollection: aFloorCollection.

	^self new initializeWithFloors: aFloorCollection! !

!Hotel class methodsFor: 'error messages' stamp: 'FRT 26/Apr/2024, 12:42:02 am (UTC)'!
floorNumberDoesNotExistErrorDescription

	^ 'Floor number does not exist'.! !

!Hotel class methodsFor: 'error messages' stamp: 'FRT 21/Apr/2024, 12:42:02 am (UTC)'!
noFloorsErrorDescription

	^ 'Cannot have a Hotel without floors'! !

!Room methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:59:31 am (UTC)'!
receive: aGuestType

	state := state receive: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:59:31 am (UTC)'!
receiveWithReservation: aGuestType

	state := state receiveWithReservation: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:59:31 am (UTC)'!
reserve

	state := state reserve! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:59:31 am (UTC)'!
isAvailable

	^state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:59:31 am (UTC)'!
isOccupied

	^state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:59:31 am (UTC)'!
isReserved

	^state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:59:31 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:59:31 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:59:31 am (UTC)'!
initialize

	state := AvailableRoomState new! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:59:31 am (UTC)'!
signalRoomIsNotEmpty

	self error: self roomIsNotEmptyErrorDescription! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:59:31 am (UTC)'!
signalRoomIsNotReserved

	self error: self roomIsNotReservedErrorDescription! !

!RoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:58:40 am (UTC)'!
receive: aGuestType

	^self subclassResponsibility! !

!RoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:58:40 am (UTC)'!
receiveWithReservation: aGuestType

	^self subclassResponsibility! !

!RoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:58:40 am (UTC)'!
reserve

	^self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:58:40 am (UTC)'!
isAvailable

	^self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:58:40 am (UTC)'!
isOccupied

	^self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:58:40 am (UTC)'!
isReserved

	^self subclassResponsibility! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:58:40 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^self subclassResponsibility! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:58:40 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^self subclassResponsibility! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:58:45 am (UTC)'!
receive: aGuestType

	^OccupiedRoomState occupiedBy: aGuestType! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:58:45 am (UTC)'!
receiveWithReservation: aGuestType

	^Room signalRoomIsNotReserved! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:58:45 am (UTC)'!
reserve

	^ReservedRoomState new! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:58:45 am (UTC)'!
isAvailable

	^true! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:58:45 am (UTC)'!
isOccupied

	^false! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:58:45 am (UTC)'!
isReserved

	^false! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:58:45 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList max! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:58:45 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:59:16 am (UTC)'!
initializeOccupiedBy: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:59:16 am (UTC)'!
receive: aGuestType

	^Room signalRoomIsNotEmpty! !

!OccupiedRoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:59:16 am (UTC)'!
receiveWithReservation: aGuestType

	^Room signalRoomIsNotReserved! !

!OccupiedRoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:59:16 am (UTC)'!
reserve

	^Room signalRoomIsNotEmpty! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:59:16 am (UTC)'!
isAvailable

	^false! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:59:16 am (UTC)'!
isOccupied

	^true! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:59:16 am (UTC)'!
isReserved

	^false! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:59:16 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:59:16 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList at: guestType ifAbsent: anUnknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:59:16 am (UTC)'!
occupiedBy: aGuestType

	^self new initializeOccupiedBy: aGuestType! !

!ReservedRoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:59:09 am (UTC)'!
receive: aGuestType

	^Room signalRoomIsNotEmpty! !

!ReservedRoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:59:09 am (UTC)'!
receiveWithReservation: aGuestType

	^OccupiedRoomState occupiedBy: aGuestType! !

!ReservedRoomState methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:59:09 am (UTC)'!
reserve

	^Room signalRoomIsNotEmpty! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:59:09 am (UTC)'!
isAvailable

	^false! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:59:09 am (UTC)'!
isOccupied

	^true! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:59:09 am (UTC)'!
isReserved

	^true! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:59:09 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:59:09 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList min / self class reservationPriceDivisor! !

!ReservedRoomState class methodsFor: 'prices' stamp: 'HAW 15/Sep/2026, 12:59:09 am (UTC)'!
reservationPriceDivisor

	^2! !

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

!FloorTest methodsFor: 'testing' stamp: 'FRT 21/Apr/2024, 7:53:28 pm (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |
	
	floor := self createFloorWith: 10 and: self defaultPriceList.
	
	self assert: floor isAvailable.
	self assert: 0 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved.
! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:13 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	floor receive: self guestTypeVacation atRoom: 1.
	
	self assert: roomsNumber - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved.! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:13 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsNumber roomsAvailable roomsOccupied roomsReserved |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	floor reserveRoom: 1.

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	floor receiveWithReservation: self guestTypeVacation atRoom: 1.
	
	self assert: roomsAvailable equals: floor totalRoomsAvailable. 
	self assert: roomsOccupied equals: floor totalRoomsOccupied.
	self assert: roomsReserved - 1 equals: floor totalRoomsReserved.! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:13 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	floor reserveRoom: 1.
	
	self assert: roomsNumber - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 1 equals: floor totalRoomsReserved.! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:27 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	floor receive: self guestTypeVacation atRoom: 1.
	floor receive: self guestTypeConference atRoom: 2.
	floor reserveRoom: 3.
		
	self 
		assert: self minPriceInList + self maxPriceInList + (self minPriceInList / 2) 
		equals: floor totalProfits! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:27 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	floor receive: self guestTypeVacation atRoom: 1.
	floor receive: self guestTypeConference atRoom: 2.
	floor reserveRoom: 3.
		
	self assert: self maxPriceInList * 7 equals: floor totalLosses! !

!FloorTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 1:01:13 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^Floor with: aNumberOfRooms roomsPricedBy: aPriceList! !

!FloorTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 1:01:27 am (UTC)'!
defaultPriceList
	
	^Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!FloorTest methodsFor: 'create' stamp: 'FRT 21/Apr/2024, 8:00:09 pm (UTC)'!
guestTypeConference
	
	^ #conferenceGuest! !

!FloorTest methodsFor: 'create' stamp: 'FRT 21/Apr/2024, 8:00:42 pm (UTC)'!
guestTypeVacation
	
	^ #vacationGuest! !

!FloorTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 1:01:27 am (UTC)'!
maxPriceInList
	
	^200*peso! !

!FloorTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 1:01:27 am (UTC)'!
minPriceInList
	
	^100*peso! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:33 am (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Hotel noFloorsErrorDescription.! !

!HotelTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 2:30:09 pm (UTC)'!
test02NewHotelsAreEmpty

	| hotel |
	
	hotel := self createHotel.
	
	self assert: hotel isEmpty.! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:02:02 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	self assertNoRoomIsTakenIn: hotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRooms - 1 equals: hotel totalRoomsAvailable.
	self assert: 0 equals: hotel totalRoomsReserved.
	self assert: 1 equals: hotel totalRoomsOccupied.! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:02:02 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |
	
	hotel := self createHotel.

	self assertNoRoomIsTakenIn: hotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assert: hotel totalRooms - 1 equals: hotel totalRoomsAvailable.
	self assert: 1 equals: hotel totalRoomsReserved.
	self assert: 1 equals: hotel totalRoomsOccupied.! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:02:02 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	self assertNoRoomIsTakenIn: hotel.

	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRooms - 1 equals: hotel totalRoomsAvailable.
	self assert: 0 equals: hotel totalRoomsReserved.
	self assert: 1 equals: hotel totalRoomsOccupied.! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:52 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation
	
	| hotel |
	
	hotel := self createHotel.
	
	self assertNoRoomIsTakenIn: hotel.

	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Room roomIsNotReservedErrorDescription equals: error messageText.
			self assertNoRoomIsTakenIn: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:52 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits
	
	| hotel firstFloor secondFloor |
	
	firstFloor := self createFloorWith: 10 and: self defaultPriceList.
	secondFloor := self createFloorWith: 10 and: self defaultPriceList.

	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: firstFloor totalProfits + secondFloor totalProfits equals: hotel totalProfits.! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:52 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses
	
	| hotel firstFloor secondFloor |
	
	firstFloor := self createFloorWith: 10 and: self defaultPriceList.
	secondFloor := self createFloorWith: 10 and: self defaultPriceList.

	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: firstFloor totalLosses + secondFloor totalLosses equals: hotel totalLosses.! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:52 am (UTC)'!
test09HotelCannotReserveANonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Floor roomNumberDoesNotExistErrorDescription equals: error messageText.
			self assertNoRoomIsTakenIn: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:52 am (UTC)'!
test10HotelCannotReserveANonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Hotel floorNumberDoesNotExistErrorDescription equals: error messageText.
			self assertNoRoomIsTakenIn: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:52 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Floor roomNumberDoesNotExistErrorDescription equals: error messageText.
			self assertNoRoomIsTakenIn: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:52 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Hotel floorNumberDoesNotExistErrorDescription equals: error messageText.
			self assertNoRoomIsTakenIn: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 1:01:52 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.

	hotel reserveRoom: 1 atFloor: 1. 
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Floor roomNumberDoesNotExistErrorDescription equals: error messageText.
			self assert: hotel totalRooms - 1 equals: hotel totalRoomsAvailable.
			self assert: 1 equals: hotel totalRoomsReserved.
			self assert: 1 equals: hotel totalRoomsOccupied ]! !

!HotelTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 1:01:33 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^Floor with: aNumberOfRooms roomsPricedBy: aPriceList! !

!HotelTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 1:01:33 am (UTC)'!
createHotel

	^Hotel withFloors: (OrderedCollection 
		with: (self createFloorWith: 10 and: self defaultPriceList)
		with: (self createFloorWith: 1 and: self defaultPriceList))! !

!HotelTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 1:01:33 am (UTC)'!
createHotelWithOneFloor

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

!HotelTest methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 1:01:33 am (UTC)'!
assertNoRoomIsTakenIn: aHotel

	self assert: aHotel totalRooms equals: aHotel totalRoomsAvailable.
	self assert: 0 equals: aHotel totalRoomsReserved.
	self assert: 0 equals: aHotel totalRoomsOccupied! !

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

!RoomTest methodsFor: 'testing' stamp: 'HAW 26/Apr/2024, 8:30:25 pm (UTC)'!
test04CannotReceiveAGuestInAOccupiedRoom

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.
	
	self 
		should: [ room receive: self guestTypeVacation ] 
		raise: Error - MessageNotUnderstood 
		withExceptionDo:  [ 	:error |
			self assert: Room roomIsNotEmptyErrorDescription equals: error messageText.

			self assert: room isOccupied.
			
			self deny: room isAvailable.
			self deny: room isReserved.
		]
	
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 26/Apr/2024, 8:30:32 pm (UTC)'!
test05CannotReceiveAGuestInAReservedRoom

	| room |
	
	room := Room new.

	room reserve.
	
	self 
		should: [ room receive: self guestTypeVacation ] 
		raise: Error - MessageNotUnderstood 
		withExceptionDo:  [ 	:error |
			self assert: Room roomIsNotEmptyErrorDescription equals: error messageText.
			
			self assert: room isReserved.
			self assert: room isOccupied.
			
			self deny: room isAvailable.
		]

	

	
! !

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

!RoomTest methodsFor: 'testing' stamp: 'HAW 26/Apr/2024, 8:30:40 pm (UTC)'!
test07CannotReceiveOnReservationAnAvailableRoom

	| room |
	
	room := Room new.

	self 
		should: [ room receiveWithReservation: self guestTypeVacation. ] 
		raise: Error - MessageNotUnderstood 
		withExceptionDo:  [ 	:error |
			self assert: Room roomIsNotReservedErrorDescription equals: error messageText.

			self assert: room isAvailable.

			self deny: room isReserved.
			self deny: room isOccupied.
		]

	
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 26/Apr/2024, 8:30:50 pm (UTC)'!
test08CannotReceiveOnReservationAnOccupiedRoom

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self 
		should: [ room receiveWithReservation: self guestTypeVacation. ] 
		raise: Error - MessageNotUnderstood 	
		withExceptionDo:  [ 	:error |
			self assert: Room roomIsNotReservedErrorDescription equals: error messageText.
			
			self assert: room isOccupied.

			self deny: room isReserved.
			self deny: room isAvailable.
		]

	
! !

!RoomTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 12:22:02 pm (UTC)'!
test09ProfitOfAvailableRoomIsCeroPesos

	| room |
	
	room := Room new.

	self assert: 0*peso equals: (room profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]).
	
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 29/Apr/2024, 2:22:57 pm (UTC)'!
test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	| room |
	
	room := Room new.

	room reserve.

	self assert: self minPriceInList / 2 equals: (room profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]).
! !

!RoomTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 12:45:00 pm (UTC)'!
test11ProfitOfOccupiedRoomDependsOnGuestType

	| roomWithConferenceGuest roomWithVacationGuest |
	
	roomWithConferenceGuest := Room new.
	roomWithConferenceGuest receive: self guestTypeConference.
	
	roomWithVacationGuest := Room new.
	roomWithVacationGuest receive: self guestTypeVacation.

	self assert: (self defaultPriceList at: self guestTypeConference) 
		equals: (roomWithConferenceGuest profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]).

	self assert: (self defaultPriceList at: self guestTypeVacation) 
		equals: (roomWithVacationGuest profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]).
! !

!RoomTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 12:52:21 pm (UTC)'!
test12NoProfitOnOccupiedRoomByUnknownGuestType

	| room |
	
	room := Room new.
	room receive: #unknownGuest.
	
	room profitUsing: self defaultPriceList ifAbsentGuestType: [ ^self ].
	
	"we should not get here"
	self failWith: 'should not calculate profit on room occupied by unknown guest type'.
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:59:38 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |
	
	room := Room new.

	self assert: self maxPriceInList equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:59:38 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |
	
	room := Room new.

	room reserve.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:59:38 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |
		
	room := Room new.

	room receive: self guestTypeVacation.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 28/Apr/2024, 6:53:31 pm (UTC)'!
test16CannotReserveWhenReserved

	| room |
	
	room := Room new.

	room reserve.

	self 
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: Room roomIsNotEmptyErrorDescription equals: anError messageText.
			self assert: room isReserved ].! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 28/Apr/2024, 6:53:48 pm (UTC)'!
test17CannotReserveWhenOccupied

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self 
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: Room roomIsNotEmptyErrorDescription equals: anError messageText.
			self assert: room isOccupied ].! !

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
