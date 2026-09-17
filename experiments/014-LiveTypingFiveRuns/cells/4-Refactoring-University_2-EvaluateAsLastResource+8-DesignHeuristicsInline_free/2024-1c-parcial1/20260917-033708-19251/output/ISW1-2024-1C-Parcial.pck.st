'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:40:16 am'!
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


!Floor methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
isAvailable

	^rooms allSatisfy: [ :room | room isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
totalLosses

	^rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
totalProfits

	^rooms sum: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
totalRooms

	^rooms size! !

!Floor methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
totalRoomsAvailable

	^rooms count: [ :room | room isAvailable ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
totalRoomsOccupied

	^rooms count: [ :room | room isOccupied ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
totalRoomsReserved

	^rooms count: [ :room | room isReserved ]! !

!Floor methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
initializeWithNumberOfRooms: aNumberOfRooms priceList: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :roomNumber | Room new ].
	prices := aPriceList! !

!Floor methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
withRoomNumbered: aRoomNumber do: aRoomBlock ifNone: aNoneBlock

	^aRoomBlock value: (rooms at: aRoomNumber ifAbsent: [ ^aNoneBlock value ])! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	aNumberOfRooms strictlyPositive ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	aNumberOfRooms isInteger ifFalse: [ self signalNumberOfRoomsMustBeInteger ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList ifEmpty: [ self signalNoPrices ].
	(aPriceList allSatisfy: [ :price | price strictlyPositive ]) ifFalse: [ self signalPriceMustBePositive ]! !

!Floor class methodsFor: 'error messages' stamp: 'FRT 20/Apr/2024, 10:02:53 pm (UTC)'!
numberOfRoomsMustBeIntegerErrorDescription
	
	^ 'Number of rooms must be integer'! !

!Floor class methodsFor: 'error messages' stamp: 'FRT 20/Apr/2024, 10:35:54 pm (UTC)'!
numberOfRoomsMustBePositiveErrorDescription
	
	^'The number of rooms must be positive'! !

!Floor class methodsFor: 'error messages' stamp: 'FRT 20/Apr/2024, 10:42:12 pm (UTC)'!
priceMustBeIntegerErrorDescription
	
	^ 'Price must be integer'! !

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

!Floor class methodsFor: 'exceptions' stamp: 'FRT 20/Apr/2024, 10:41:37 pm (UTC)'!
signalPriceMustBeInteger
	
	self error: self priceMustBeIntegerErrorDescription ! !

!Floor class methodsFor: 'exceptions' stamp: 'FRT 20/Apr/2024, 10:41:58 pm (UTC)'!
signalPriceMustBePositive

	self error: self priceMustBePositiveErrorDescription! !

!Floor class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:39:03 am (UTC)'!
withNumberOfRooms: aNumberOfRooms priceList: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.

	^self new initializeWithNumberOfRooms: aNumberOfRooms priceList: aPriceList! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
totalLosses

	^self sumOverFloors: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
totalProfits

	^self sumOverFloors: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection copy! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
sumOverFloors: aFloorBlock

	^floors sum: aFloorBlock! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
totalRooms

	^self sumOverFloors: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
totalRoomsAvailable

	^self sumOverFloors: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
totalRoomsOccupied

	^self sumOverFloors: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
totalRoomsReserved

	^self sumOverFloors: [ :floor | floor totalRoomsReserved ]! !

!Hotel methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
isEmpty

	^floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self withRoomNumbered: aRoomNumber atFloor: aFloorNumber do: [ :room | room receive: aGuestType ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self
		withRoomNumbered: aRoomNumber
		atFloor: aFloorNumber
		do: [ :room | room receiveWithReservation: aGuestType ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	self withRoomNumbered: aRoomNumber atFloor: aFloorNumber do: [ :room | room reserve ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
withRoomNumbered: aRoomNumber atFloor: aFloorNumber do: aRoomBlock

	^(floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ])
		withRoomNumbered: aRoomNumber
		do: aRoomBlock
		ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
assertHaveFloors: aFloorsCollection

	aFloorsCollection ifEmpty: [ self signalNoFloors ]! !

!Hotel class methodsFor: 'error description' stamp: 'FRT 26/Apr/2024, 12:42:02 am (UTC)'!
floorNumberDoesNotExistErrorDescription

	^ 'Floor number does not exist'.! !

!Hotel class methodsFor: 'error description' stamp: 'FRT 21/Apr/2024, 12:42:02 am (UTC)'!
noFloorsErrorDescription

	^ 'Cannot have a Hotel without floors'! !

!Hotel class methodsFor: 'error description' stamp: 'FRT 26/Apr/2024, 12:41:41 am (UTC)'!
roomNumberDoesNotExistErrorDescription

	^ 'Room number does not exist'.! !

!Hotel class methodsFor: 'exceptions' stamp: 'FRT 26/Apr/2024, 12:42:24 am (UTC)'!
signalFloorNumberDoesNotExist

	self error: self floorNumberDoesNotExistErrorDescription.! !

!Hotel class methodsFor: 'exceptions' stamp: 'FRT 21/Apr/2024, 12:41:30 am (UTC)'!
signalNoFloors

	self error: self noFloorsErrorDescription.! !

!Hotel class methodsFor: 'exceptions' stamp: 'FRT 26/Apr/2024, 12:42:39 am (UTC)'!
signalRoomNumberDoesNotExist

	self error: self roomNumberDoesNotExistErrorDescription.! !

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:39:14 am (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^self new initializeWithFloors: aFloorsCollection! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:39 am (UTC)'!
receive: aGuestType

	state := state receive: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:39 am (UTC)'!
receiveWithReservation: aGuestType
	
	state := state receiveWithReservation: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:39 am (UTC)'!
reserve

	state := state reserve! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:39 am (UTC)'!
isAvailable

	^state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:39 am (UTC)'!
isOccupied

	^state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:39 am (UTC)'!
isReserved

	^state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:38:39 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:38:39 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:38:39 am (UTC)'!
initialize

	state := AvailableRoomState new! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
signalRoomIsNotEmpty

	^self error: self roomIsNotEmptyErrorDescription! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
signalRoomIsNotReserved

	^self error: self roomIsNotReservedErrorDescription! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:31 am (UTC)'!
isAvailable

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:31 am (UTC)'!
isOccupied

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:31 am (UTC)'!
isReserved

	self subclassResponsibility! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:31 am (UTC)'!
receive: aGuestType

	self subclassResponsibility! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:31 am (UTC)'!
receiveWithReservation: aGuestType

	self subclassResponsibility! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:31 am (UTC)'!
reserve

	self subclassResponsibility! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	self subclassResponsibility! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:38:31 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	self subclassResponsibility! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
isAvailable

	^true! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
isOccupied

	^false! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
isReserved

	^false! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
receive: aGuestType

	^OccupiedRoomState by: aGuestType! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
receiveWithReservation: aGuestType

	^Room signalRoomIsNotReserved! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
reserve

	^ReservedRoomState new! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList values max! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0 * peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
initializeBy: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
isAvailable

	^false! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
isOccupied

	^true! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
isReserved

	^false! !

!OccupiedRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
receive: aGuestType

	^Room signalRoomIsNotEmpty! !

!OccupiedRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
receiveWithReservation: aGuestType

	^Room signalRoomIsNotReserved! !

!OccupiedRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
reserve

	^Room signalRoomIsNotEmpty! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0 * peso! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList at: guestType ifAbsent: anUnknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
by: aGuestType

	^self new initializeBy: aGuestType! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
isAvailable

	^false! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
isOccupied

	^true! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
isReserved

	^true! !

!ReservedRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
receive: aGuestType

	^Room signalRoomIsNotEmpty! !

!ReservedRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
receiveWithReservation: aGuestType

	^OccupiedRoomState by: aGuestType! !

!ReservedRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
reserve

	^Room signalRoomIsNotEmpty! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0 * peso! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:38:32 am (UTC)'!
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

!FloorTest methodsFor: 'testing' stamp: 'FRT 21/Apr/2024, 7:53:28 pm (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |
	
	floor := self createFloorWith: 10 and: self defaultPriceList.
	
	self assert: floor isAvailable.
	self assert: 0 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved.
! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	self receive: self guestTypeVacation atRoom: 1 of: floor.
	
	self assert: roomsNumber - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved.
! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsNumber roomsAvailable roomsOccupied roomsReserved |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	self reserveRoom: 1 of: floor.

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	self receiveWithReservation: self guestTypeVacation atRoom: 1 of: floor.
	
	self assert: roomsAvailable equals: floor totalRoomsAvailable. 
	self assert: roomsOccupied equals: floor totalRoomsOccupied.
	self assert: roomsReserved - 1 equals: floor totalRoomsReserved.
! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	self reserveRoom: 1 of: floor.
	
	self assert: roomsNumber - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 1 equals: floor totalRoomsReserved.
! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	self
		assert: (100*peso) + (200*peso) + (50*peso)
		equals: self createFloorWithTwoGuestsAndOneReservation totalProfits
! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	self assert: (200*peso) * 7 equals: self createFloorWithTwoGuestsAndOneReservation totalLosses
! !

!FloorTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^Floor withNumberOfRooms: aNumberOfRooms priceList: aPriceList! !

!FloorTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
createFloorWithTwoGuestsAndOneReservation

	| floor |

	floor := self createFloorWith: 10 and: self defaultPriceList.

	self receive: self guestTypeVacation atRoom: 1 of: floor.
	self receive: self guestTypeConference atRoom: 2 of: floor.
	self reserveRoom: 3 of: floor.

	^floor! !

!FloorTest methodsFor: 'create' stamp: 'FRT 21/Apr/2024, 8:01:23 pm (UTC)'!
defaultPriceList
	
	^ Dictionary new
		at: self guestTypeVacation put: 100*peso;
		at: self guestTypeConference put: 200*peso;
		yourself ! !

!FloorTest methodsFor: 'create' stamp: 'FRT 21/Apr/2024, 8:00:09 pm (UTC)'!
guestTypeConference
	
	^ #conferenceGuest! !

!FloorTest methodsFor: 'create' stamp: 'FRT 21/Apr/2024, 8:00:42 pm (UTC)'!
guestTypeVacation
	
	^ #vacationGuest! !

!FloorTest methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
receive: aGuestType atRoom: aRoomNumber of: aFloor

	aFloor withRoomNumbered: aRoomNumber do: [ :room | room receive: aGuestType ] ifNone: [ self fail ]! !

!FloorTest methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber of: aFloor

	aFloor
		withRoomNumbered: aRoomNumber
		do: [ :room | room receiveWithReservation: aGuestType ]
		ifNone: [ self fail ]! !

!FloorTest methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
reserveRoom: aRoomNumber of: aFloor

	aFloor withRoomNumbered: aRoomNumber do: [ :room | room reserve ] ifNone: [ self fail ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
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

!HotelTest methodsFor: 'testing' stamp: 'HAW 29/Apr/2024, 2:18:22 pm (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	self assert: hotel totalRooms equals: hotel	 totalRoomsAvailable.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel	 totalRooms - 1 equals: hotel totalRoomsAvailable.
	self assert: 0 equals: hotel totalRoomsReserved.
	self assert: 1 equals: hotel totalRoomsOccupied.
! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 29/Apr/2024, 2:18:32 pm (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |
	
	hotel := self createHotel.

	self assert: hotel totalRooms equals: hotel	 totalRoomsAvailable.

	hotel reserveRoom: 2 atFloor: 1.

	self assert: hotel	 totalRooms - 1 equals: hotel totalRoomsAvailable.
	self assert: 1 equals: hotel totalRoomsReserved.
	self assert: 1 equals: hotel totalRoomsOccupied.! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 29/Apr/2024, 2:18:41 pm (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	self assert: hotel totalRooms equals: hotel	 totalRoomsAvailable.

	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel	 totalRooms - 1 equals: hotel totalRoomsAvailable.
	self assert: 0 equals: hotel totalRoomsReserved.
	self assert: 1 equals: hotel totalRoomsOccupied.
! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation
	
	| hotel |
	
	hotel := self createHotel.

	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: Room roomIsNotReservedErrorDescription equals: error messageText.
			self assertHasNoRoomsTaken: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits
	
	| hotel firstFloor secondFloor |
	
	firstFloor := self createFloorWith: 10 and: self defaultPriceList.
	secondFloor := self createFloorWith: 10 and: self defaultPriceList.
	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: firstFloor totalProfits + secondFloor totalProfits equals: hotel totalProfits! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses
	
	| hotel firstFloor secondFloor |
	
	firstFloor := self createFloorWith: 10 and: self defaultPriceList.
	secondFloor := self createFloorWith: 10 and: self defaultPriceList.
	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.
	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: firstFloor totalLosses + secondFloor totalLosses equals: hotel totalLosses! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test09HotelCannotReserveANonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: Hotel roomNumberDoesNotExistErrorDescription equals: error messageText.
			self assertHasNoRoomsTaken: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test10HotelCannotReserveANonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: Hotel floorNumberDoesNotExistErrorDescription equals: error messageText.
			self assertHasNoRoomsTaken: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: Hotel roomNumberDoesNotExistErrorDescription equals: error messageText.
			self assertHasNoRoomsTaken: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: Hotel floorNumberDoesNotExistErrorDescription equals: error messageText.
			self assertHasNoRoomsTaken: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	hotel reserveRoom: 1 atFloor: 1.
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: Hotel roomNumberDoesNotExistErrorDescription equals: error messageText.
			self assert: hotel totalRooms - 1 equals: hotel totalRoomsAvailable.
			self assert: 1 equals: hotel totalRoomsReserved.
			self assert: 1 equals: hotel totalRoomsOccupied ]! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^Floor withNumberOfRooms: aNumberOfRooms priceList: aPriceList! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
createHotel

	^Hotel withFloors: (OrderedCollection
		with: (self createFloorWith: 10 and: self defaultPriceList)
		with: (self createFloorWith: 1 and: self defaultPriceList))! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
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

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
assertHasNoRoomsTaken: aHotel

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

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |

	room := Room new.

	self assert: self maxPriceInList equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.

	room reserve.

	self assert: 0 * peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:39:53 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |

	room := Room new.

	room receive: self guestTypeVacation.

	self assert: 0 * peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

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
