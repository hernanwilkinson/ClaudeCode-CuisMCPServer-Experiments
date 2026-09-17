'From Cuis7.9 [latest update: #8182] on 14 September 2026 at 9:58:35 pm'!
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
	instanceVariableNames: 'status'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'Room class' category: #'ISW1-2024-1C-Parcial'!
Room class
	instanceVariableNames: ''!

!classDefinition: #RoomStatus category: #'ISW1-2024-1C-Parcial'!
Object subclass: #RoomStatus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'RoomStatus class' category: #'ISW1-2024-1C-Parcial'!
RoomStatus class
	instanceVariableNames: ''!

!classDefinition: #AvailableRoomStatus category: #'ISW1-2024-1C-Parcial'!
RoomStatus subclass: #AvailableRoomStatus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'AvailableRoomStatus class' category: #'ISW1-2024-1C-Parcial'!
AvailableRoomStatus class
	instanceVariableNames: ''!

!classDefinition: #OccupiedRoomStatus category: #'ISW1-2024-1C-Parcial'!
RoomStatus subclass: #OccupiedRoomStatus
	instanceVariableNames: 'guestType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'OccupiedRoomStatus class' category: #'ISW1-2024-1C-Parcial'!
OccupiedRoomStatus class
	instanceVariableNames: ''!

!classDefinition: #ReservedRoomStatus category: #'ISW1-2024-1C-Parcial'!
RoomStatus subclass: #ReservedRoomStatus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'ReservedRoomStatus class' category: #'ISW1-2024-1C-Parcial'!
ReservedRoomStatus class
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
I am a floor of a Hotel. I know my rooms and the price charged to each type of guest staying in one of them, and I take care of receiving and reserving my rooms.!

!Hotel commentStamp: '<historical>' prior: 0!
I represent a hotel. I know my floors, each one with its rooms, and I let a type of guest be received in a room with or without a previous reservation. I also know how much my floors earn from the rooms taken and how much they lose from the rooms that stay available.!

!Room commentStamp: '<historical>' prior: 0!
I am a room of a Floor. I know my status, available, reserved or occupied by a type of guest, and I change it when a guest is received or a reservation is taken.!

!RoomStatus commentStamp: '<historical>' prior: 0!
I represent the status of a Room. My subclasses know which changes of status are allowed and how much a room in that status earns and loses. I am immutable, so every change of status answers the new status.!

!AvailableRoomStatus commentStamp: '<historical>' prior: 0!
I am the status of a Room nobody stays in nor has reserved. It can be occupied or reserved, and it loses the most expensive price of the price list.!

!OccupiedRoomStatus commentStamp: '<historical>' prior: 0!
I am the status of a Room a type of guest stays in. It can not be occupied nor reserved again, and it earns the price of the type of guest staying in it.!

!ReservedRoomStatus commentStamp: '<historical>' prior: 0!
I am the status of a Room that has been reserved and is not occupied yet. It can only receive a guest with reservation, and it earns half the cheapest price of the price list.!

!FloorTest commentStamp: '<historical>' prior: 0!
I test how a Floor is created, how it receives and reserves its rooms and how it totals its profits and losses.!

!HotelTest commentStamp: '<historical>' prior: 0!
I test how a Hotel receives and reserves the rooms of its floors and how it totals its rooms, profits and losses.!

!RoomTest commentStamp: '<historical>' prior: 0!
I test how a Room changes between being available, reserved and occupied, and how much it earns and loses in each status.!

!Floor methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
isAvailable
	
	^rooms allSatisfy: [ :aRoom | aRoom isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:56:32 am (UTC)'!
totalLosses

	^rooms sum: [ :aRoom | 
		aRoom 
			lossUsing: prices 
			ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:56:32 am (UTC)'!
totalProfits

	^rooms sum: [ :aRoom | 
		aRoom 
			profitUsing: prices 
			ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
totalRooms
	
	^rooms size! !

!Floor methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:53:23 am (UTC)'!
totalRoomsAvailable
	
	^rooms count: [ :aRoom | aRoom isAvailable ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:53:23 am (UTC)'!
totalRoomsOccupied
	
	^rooms count: [ :aRoom | aRoom isOccupied ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:53:23 am (UTC)'!
totalRoomsReserved
	
	^rooms count: [ :aRoom | aRoom isReserved ]! !

!Floor methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
initializeWithRooms: aNumberOfRooms pricedWith: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList! !

!Floor methodsFor: 'rooms' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
roomAt: aRoomNumber

	^rooms at: aRoomNumber ifAbsent: [ self class signalRoomNumberDoesNotExist ]! !

!Floor methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
receive: aGuestType atRoom: aRoomNumber

	(self roomAt: aRoomNumber) receive: aGuestType! !

!Floor methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber

	(self roomAt: aRoomNumber) receiveWithReservation: aGuestType! !

!Floor methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
reserveRoom: aRoomNumber

	(self roomAt: aRoomNumber) reserve! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	aNumberOfRooms isInteger ifFalse: [ self signalNumberOfRoomsMustBeInteger ].
	aNumberOfRooms strictlyPositive ifFalse: [ self signalNumberOfRoomsMustBePositive ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList ifEmpty: [ self signalNoPrices ].
	aPriceList values do: [ :aPrice | aPrice strictlyPositive ifFalse: [ self signalPriceMustBePositive ] ]! !

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

!Floor class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
roomNumberDoesNotExistErrorDescription
	
	^ 'Room number does not exist'.! !

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

!Floor class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
signalRoomNumberDoesNotExist

	self error: self roomNumberDoesNotExistErrorDescription! !

!Floor class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:53:18 am (UTC)'!
withRooms: aNumberOfRooms pricedWith: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.
	
	^self new initializeWithRooms: aNumberOfRooms pricedWith: aPriceList! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
totalLosses

	^floors sum: [ :aFloor | aFloor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
totalProfits

	^floors sum: [ :aFloor | aFloor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
initializeWithFloors: aFloorCollection

	floors := aFloorCollection! !

!Hotel methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
totalRooms

	^floors sum: [ :aFloor | aFloor totalRooms ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
totalRoomsAvailable

	^floors sum: [ :aFloor | aFloor totalRoomsAvailable ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
totalRoomsOccupied

	^floors sum: [ :aFloor | aFloor totalRoomsOccupied ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
totalRoomsReserved

	^floors sum: [ :aFloor | aFloor totalRoomsReserved ]! !

!Hotel methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
isEmpty

	^floors allSatisfy: [ :aFloor | aFloor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receive: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) 
		receiveWithReservation: aGuestType 
		atRoom: aRoomNumber! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self floorAt: aFloorNumber) reserveRoom: aRoomNumber! !

!Hotel methodsFor: 'floors' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
floorAt: aFloorNumber

	^floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]! !

!Hotel class methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
assertHasFloors: aFloorCollection

	aFloorCollection ifEmpty: [ self signalNoFloors ]! !

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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:53:54 am (UTC)'!
withFloors: aFloorCollection

	self assertHasFloors: aFloorCollection.
	
	^self new initializeWithFloors: aFloorCollection! !

!Room methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:52:26 am (UTC)'!
receive: aGuestType

	status := status receive: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:52:26 am (UTC)'!
receiveWithReservation: aGuestType

	status := status receiveWithReservation: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:52:26 am (UTC)'!
reserve

	status := status reserve! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:26 am (UTC)'!
isAvailable

	^status isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:26 am (UTC)'!
isOccupied

	^status isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:26 am (UTC)'!
isReserved

	^status isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:52:26 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^status lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:52:26 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^status profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:52:26 am (UTC)'!
initialize

	status := AvailableRoomStatus new! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:52:26 am (UTC)'!
signalRoomIsNotEmpty

	self error: self roomIsNotEmptyErrorDescription! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 15/Sep/2026, 12:52:26 am (UTC)'!
signalRoomIsNotReserved

	self error: self roomIsNotReservedErrorDescription! !

!RoomStatus methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:59 am (UTC)'!
receive: aGuestType

	^Room signalRoomIsNotEmpty! !

!RoomStatus methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:59 am (UTC)'!
receiveWithReservation: aGuestType

	^Room signalRoomIsNotReserved! !

!RoomStatus methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:51:59 am (UTC)'!
reserve

	^Room signalRoomIsNotEmpty! !

!RoomStatus methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:51:59 am (UTC)'!
isAvailable

	^self subclassResponsibility! !

!RoomStatus methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:51:59 am (UTC)'!
isOccupied

	^self subclassResponsibility! !

!RoomStatus methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:51:59 am (UTC)'!
isReserved

	^self subclassResponsibility! !

!RoomStatus methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:59 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^self subclassResponsibility! !

!RoomStatus methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:51:59 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^self subclassResponsibility! !

!AvailableRoomStatus methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
receive: aGuestType

	^OccupiedRoomStatus hosting: aGuestType! !

!AvailableRoomStatus methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
reserve

	^ReservedRoomStatus new! !

!AvailableRoomStatus methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
isAvailable

	^true! !

!AvailableRoomStatus methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
isOccupied

	^false! !

!AvailableRoomStatus methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
isReserved

	^false! !

!AvailableRoomStatus methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList values max! !

!AvailableRoomStatus methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!OccupiedRoomStatus methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:52:12 am (UTC)'!
initializeHosting: aGuestType

	guestType := aGuestType! !

!OccupiedRoomStatus methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:12 am (UTC)'!
isAvailable

	^false! !

!OccupiedRoomStatus methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:12 am (UTC)'!
isOccupied

	^true! !

!OccupiedRoomStatus methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:12 am (UTC)'!
isReserved

	^false! !

!OccupiedRoomStatus methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:52:12 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!OccupiedRoomStatus methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:52:12 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList at: guestType ifAbsent: anUnknownGuestTypeBlock! !

!OccupiedRoomStatus class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:52:12 am (UTC)'!
hosting: aGuestType

	^self new initializeHosting: aGuestType! !

!ReservedRoomStatus methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
receiveWithReservation: aGuestType

	^OccupiedRoomStatus hosting: aGuestType! !

!ReservedRoomStatus methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
isAvailable

	^false! !

!ReservedRoomStatus methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
isOccupied

	^true! !

!ReservedRoomStatus methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
isReserved

	^true! !

!ReservedRoomStatus methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!ReservedRoomStatus methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:52:07 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList values min / 2! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
test01CannotCreateFloorWithoutRooms

	self
		should: [ self createFloorWithRooms: 0 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor numberOfRoomsMustBePositiveErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
test02CannotCreateFloorWithNoIntergerNumberOfRooms

	self
		should: [ self createFloorWithRooms: 1.5 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor numberOfRoomsMustBeIntegerErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
test03CannotCreateFloorWithoutPrices

	| noPrices |
	
	noPrices := Dictionary new.
	
	self
		should: [ Floor withRooms: 10 pricedWith: noPrices ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor pricesListCannotBeEmptyErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |
	
	floor := self createFloorWithRooms: 10.
	
	self assert: floor isAvailable.
	self assert: 0 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor numberOfRooms |
	
	numberOfRooms := 10.
	floor := self createFloorWithRooms: numberOfRooms.
	
	floor receive: self guestTypeVacation atRoom: 1.
	
	self assert: numberOfRooms - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsAvailable roomsOccupied roomsReserved |
	
	floor := self createFloorWithRooms: 10.
	
	floor reserveRoom: 1.

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	floor receiveWithReservation: self guestTypeVacation atRoom: 1.
	
	self assert: roomsAvailable equals: floor totalRoomsAvailable. 
	self assert: roomsOccupied equals: floor totalRoomsOccupied.
	self assert: roomsReserved - 1 equals: floor totalRoomsReserved! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor numberOfRooms |
	
	numberOfRooms := 10.
	floor := self createFloorWithRooms: numberOfRooms.
	
	floor reserveRoom: 1.
	
	self assert: numberOfRooms - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 1 equals: floor totalRoomsReserved! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |
	
	floor := self createFloorWithRooms: 10.
	
	floor receive: self guestTypeVacation atRoom: 1.
	floor receive: self guestTypeConference atRoom: 2.
	floor reserveRoom: 3.
		
	self 
		assert: self minPriceInList + self maxPriceInList + (self minPriceInList / 2) 
		equals: floor totalProfits! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |
	
	floor := self createFloorWithRooms: 10.
	
	floor receive: self guestTypeVacation atRoom: 1.
	floor receive: self guestTypeConference atRoom: 2.
	floor reserveRoom: 3.
		
	self assert: self maxPriceInList * 7 equals: floor totalLosses! !

!FloorTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
createFloorWithRooms: aNumberOfRooms

	^Floor withRooms: aNumberOfRooms pricedWith: self defaultPriceList! !

!FloorTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
defaultPriceList
	
	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!FloorTest methodsFor: 'create' stamp: 'FRT 21/Apr/2024, 8:00:09 pm (UTC)'!
guestTypeConference
	
	^ #conferenceGuest! !

!FloorTest methodsFor: 'create' stamp: 'FRT 21/Apr/2024, 8:00:42 pm (UTC)'!
guestTypeVacation
	
	^ #vacationGuest! !

!FloorTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
maxPriceInList
	
	^ 200*peso! !

!FloorTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:54:57 am (UTC)'!
minPriceInList
	
	^ 100*peso! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:28 am (UTC)'!
test01CannotCreateHotelWithoutFloors

	| noFloors |
	
	noFloors := OrderedCollection new.
	
	self
		should: [ Hotel withFloors: noFloors ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:41 am (UTC)'!
test02NewHotelsAreEmpty

	| hotel |
	
	hotel := self createHotel.
	
	self assert: hotel isEmpty! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:41 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	self assert: hotel totalRooms equals: hotel totalRoomsAvailable.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRooms - 1 equals: hotel totalRoomsAvailable.
	self assert: 0 equals: hotel totalRoomsReserved.
	self assert: 1 equals: hotel totalRoomsOccupied! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:41 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |
	
	hotel := self createHotel.

	self assert: hotel totalRooms equals: hotel totalRoomsAvailable.

	hotel reserveRoom: 2 atFloor: 1.

	self assert: hotel totalRooms - 1 equals: hotel totalRoomsAvailable.
	self assert: 1 equals: hotel totalRoomsReserved.
	self assert: 1 equals: hotel totalRoomsOccupied! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:41 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	self assert: hotel totalRooms equals: hotel totalRoomsAvailable.

	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRooms - 1 equals: hotel totalRoomsAvailable.
	self assert: 0 equals: hotel totalRoomsReserved.
	self assert: 1 equals: hotel totalRoomsOccupied! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:41 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation
	
	| hotel |
	
	hotel := self createHotel.
	
	self assert: hotel totalRooms equals: hotel totalRoomsAvailable.

	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Room roomIsNotReservedErrorDescription equals: error messageText.
			
			self assert: hotel totalRooms equals: hotel totalRoomsAvailable.
			self assert: 0 equals: hotel totalRoomsReserved.
			self assert: 0 equals: hotel totalRoomsOccupied ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:28 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits
	
	| hotel firstFloor secondFloor |
	
	firstFloor := self createFloorWithRooms: 10.
	secondFloor := self createFloorWithRooms: 10.
	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self 
		assert: firstFloor totalProfits + secondFloor totalProfits 
		equals: hotel totalProfits! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:28 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses
	
	| hotel firstFloor secondFloor |
	
	firstFloor := self createFloorWithRooms: 10.
	secondFloor := self createFloorWithRooms: 10.
	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self 
		assert: firstFloor totalLosses + secondFloor totalLosses 
		equals: hotel totalLosses! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:28 am (UTC)'!
test09HotelCannotReserveANonexistentRoom
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Floor roomNumberDoesNotExistErrorDescription equals: error messageText.
		
			self assert: hotel totalRooms equals: hotel totalRoomsAvailable.
			self assert: 0 equals: hotel totalRoomsReserved.
			self assert: 0 equals: hotel totalRoomsOccupied ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:28 am (UTC)'!
test10HotelCannotReserveANonexistentFloor
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Hotel floorNumberDoesNotExistErrorDescription equals: error messageText.
		
			self assert: hotel totalRooms equals: hotel totalRoomsAvailable.
			self assert: 0 equals: hotel totalRoomsReserved.
			self assert: 0 equals: hotel totalRoomsOccupied ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:28 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Floor roomNumberDoesNotExistErrorDescription equals: error messageText.
		
			self assert: hotel totalRooms equals: hotel totalRoomsAvailable.
			self assert: 0 equals: hotel totalRoomsReserved.
			self assert: 0 equals: hotel totalRoomsOccupied ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:28 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Hotel floorNumberDoesNotExistErrorDescription equals: error messageText.
		
			self assert: hotel totalRooms equals: hotel totalRoomsAvailable.
			self assert: 0 equals: hotel totalRoomsReserved.
			self assert: 0 equals: hotel totalRoomsOccupied ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:55:28 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotel.

	hotel reserveRoom: 1 atFloor: 1. 
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Floor roomNumberDoesNotExistErrorDescription equals: error messageText.
		
			self assert: hotel totalRooms - 1 equals: hotel totalRoomsAvailable.
			self assert: 1 equals: hotel totalRoomsReserved.
			self assert: 1 equals: hotel totalRoomsOccupied ]! !

!HotelTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:55:28 am (UTC)'!
createFloorWithRooms: aNumberOfRooms

	^Floor withRooms: aNumberOfRooms pricedWith: self defaultPriceList! !

!HotelTest methodsFor: 'create' stamp: 'HAW 15/Sep/2026, 12:55:28 am (UTC)'!
createHotel

	^Hotel withFloors: 
		(OrderedCollection 
			with: (self createFloorWithRooms: 10) 
			with: (self createFloorWithRooms: 1))! !

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

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:41 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |
	
	room := Room new.

	self 
		assert: self maxPriceInList 
		equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:41 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |
	
	room := Room new.

	room reserve.

	self 
		assert: 0*peso 
		equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:52:41 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self 
		assert: 0*peso 
		equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

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
