'From Cuis7.9 [latest update: #8182] on 14 September 2026 at 9:48:09 pm'!
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


!Floor methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:45:17 am (UTC)'!
isAvailable

	^rooms allSatisfy: [ :room | room isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:45:17 am (UTC)'!
totalLosses

	^rooms sum: [ :room | 
		room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:45:17 am (UTC)'!
totalProfits

	^rooms sum: [ :room | 
		room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:45:17 am (UTC)'!
initializeWithRooms: aRoomCollection pricedAt: aPriceList

	rooms := aRoomCollection.
	prices := aPriceList! !

!Floor methodsFor: 'rooms' stamp: 'HAW 15/Sep/2026, 12:45:17 am (UTC)'!
roomAt: aRoomNumber ifAbsent: anAbsentRoomBlock

	^rooms at: aRoomNumber ifAbsent: anAbsentRoomBlock! !

!Floor methodsFor: 'rooms' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
totalRooms

	^rooms size! !

!Floor methodsFor: 'rooms' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
totalRoomsAvailable

	^rooms count: [ :room | room isAvailable ]! !

!Floor methodsFor: 'rooms' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
totalRoomsOccupied

	^rooms count: [ :room | room isOccupied ]! !

!Floor methodsFor: 'rooms' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
totalRoomsReserved

	^rooms count: [ :room | room isReserved ]! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:45:17 am (UTC)'!
createRooms: aNumberOfRooms

	^(1 to: aNumberOfRooms) collect: [ :roomNumber | Room new ]! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:45:17 am (UTC)'!
withRooms: aNumberOfRooms pricedAt: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.

	^self new initializeWithRooms: (self createRooms: aNumberOfRooms) pricedAt: aPriceList copy! !

!Floor class methodsFor: 'instance creation assertions' stamp: 'HAW 15/Sep/2026, 12:45:17 am (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	aNumberOfRooms strictlyPositive ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	aNumberOfRooms isInteger ifFalse: [ self signalNumberOfRoomsMustBeInteger ]! !

!Floor class methodsFor: 'instance creation assertions' stamp: 'HAW 15/Sep/2026, 12:45:17 am (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList ifEmpty: [ self signalNoPrices ].
	aPriceList do: [ :price | price strictlyPositive ifFalse: [ self signalPriceMustBePositive ] ]! !

!Floor class methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
signalNoPrices

	self error: self pricesListCannotBeEmptyErrorDescription! !

!Floor class methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 12:47:22 am (UTC)'!
signalNumberOfRoomsMustBeInteger

	self error: self numberOfRoomsMustBeIntegerErrorDescription! !

!Floor class methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 12:47:22 am (UTC)'!
signalNumberOfRoomsMustBePositive

	self error: self numberOfRoomsMustBePositiveErrorDescription! !

!Floor class methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 12:47:22 am (UTC)'!
signalPriceMustBePositive

	self error: self priceMustBePositiveErrorDescription! !

!Floor class methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 12:45:17 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
numberOfRoomsMustBeIntegerErrorDescription

	^'Number of rooms must be integer'! !

!Floor class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
numberOfRoomsMustBePositiveErrorDescription

	^'The number of rooms must be positive'! !

!Floor class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
priceMustBePositiveErrorDescription

	^'Price must be positive'! !

!Floor class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
pricesListCannotBeEmptyErrorDescription

	^'Prices List must not be empty'! !

!Floor class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
unknownGuestTypeErrorDescription

	^'The guest type is unknown'! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
totalLosses

	^floors sum: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
totalProfits

	^floors sum: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
initializeWithFloors: aFloorCollection

	floors := aFloorCollection! !

!Hotel methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
isEmpty

	^floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self 
		withRoomAt: aRoomNumber 
		ofFloor: aFloorNumber 
		do: [ :room | room receive: aGuestType ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self 
		withRoomAt: aRoomNumber 
		ofFloor: aFloorNumber 
		do: [ :room | room receiveWithReservation: aGuestType ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	self 
		withRoomAt: aRoomNumber 
		ofFloor: aFloorNumber 
		do: [ :room | room reserve ]! !

!Hotel methodsFor: 'private' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
floorAt: aFloorNumber

	^floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]! !

!Hotel methodsFor: 'private' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
withRoomAt: aRoomNumber ofFloor: aFloorNumber do: aRoomBlock

	| room |

	room := (self floorAt: aFloorNumber) 
		roomAt: aRoomNumber 
		ifAbsent: [ self class signalRoomNumberDoesNotExist ].

	^aRoomBlock value: room! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
totalRooms

	^floors sum: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
totalRoomsAvailable

	^floors sum: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
totalRoomsOccupied

	^floors sum: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
totalRoomsReserved

	^floors sum: [ :floor | floor totalRoomsReserved ]! !

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
withFloors: aFloorCollection

	self assertHasFloors: aFloorCollection.

	^self new initializeWithFloors: aFloorCollection copy! !

!Hotel class methodsFor: 'instance creation assertions' stamp: 'HAW 15/Sep/2026, 12:45:30 am (UTC)'!
assertHasFloors: aFloorCollection

	aFloorCollection ifEmpty: [ self signalNoFloors ]! !

!Hotel class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
floorNumberDoesNotExistErrorDescription

	^'Floor number does not exist'! !

!Hotel class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
noFloorsErrorDescription

	^'Cannot have a Hotel without floors'! !

!Hotel class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
roomNumberDoesNotExistErrorDescription

	^'Room number does not exist'! !

!Hotel class methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
signalFloorNumberDoesNotExist

	self error: self floorNumberDoesNotExistErrorDescription! !

!Hotel class methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
signalNoFloors

	self error: self noFloorsErrorDescription! !

!Hotel class methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 12:47:21 am (UTC)'!
signalRoomNumberDoesNotExist

	self error: self roomNumberDoesNotExistErrorDescription! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:56 am (UTC)'!
isAvailable

	^state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:56 am (UTC)'!
isOccupied

	^state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:56 am (UTC)'!
isReserved

	^state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:44:56 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:44:56 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:44:56 am (UTC)'!
initializeAvailable

	state := AvailableRoomState new! !

!Room methodsFor: 'occupation' stamp: 'HAW 15/Sep/2026, 12:44:56 am (UTC)'!
receive: aGuestType

	state := state receive: aGuestType! !

!Room methodsFor: 'occupation' stamp: 'HAW 15/Sep/2026, 12:44:56 am (UTC)'!
receiveWithReservation: aGuestType

	state := state receiveWithReservation: aGuestType! !

!Room methodsFor: 'occupation' stamp: 'HAW 15/Sep/2026, 12:44:56 am (UTC)'!
reserve

	state := state reserve! !

!Room class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:44:56 am (UTC)'!
new

	^self basicNew initializeAvailable! !

!Room class methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 12:44:56 am (UTC)'!
signalRoomIsNotEmpty

	self error: self roomIsNotEmptyErrorDescription! !

!Room class methodsFor: 'error signaling' stamp: 'HAW 15/Sep/2026, 12:44:56 am (UTC)'!
signalRoomIsNotReserved

	self error: self roomIsNotReservedErrorDescription! !

!Room class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:47:22 am (UTC)'!
roomIsNotEmptyErrorDescription

	^'Room is not empty.'! !

!Room class methodsFor: 'error descriptions' stamp: 'HAW 15/Sep/2026, 12:47:22 am (UTC)'!
roomIsNotReservedErrorDescription

	^'Room is not reserved.'! !

!RoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:36 am (UTC)'!
isAvailable

	^self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:36 am (UTC)'!
isOccupied

	^self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:37 am (UTC)'!
isReserved

	^self subclassResponsibility! !

!RoomState methodsFor: 'occupation' stamp: 'HAW 15/Sep/2026, 12:44:37 am (UTC)'!
receive: aGuestType

	Room signalRoomIsNotEmpty! !

!RoomState methodsFor: 'occupation' stamp: 'HAW 15/Sep/2026, 12:44:37 am (UTC)'!
receiveWithReservation: aGuestType

	Room signalRoomIsNotReserved! !

!RoomState methodsFor: 'occupation' stamp: 'HAW 15/Sep/2026, 12:44:37 am (UTC)'!
reserve

	Room signalRoomIsNotEmpty! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:44:37 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^self noMoney! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:44:37 am (UTC)'!
noMoney

	^0*peso! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:44:37 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^self noMoney! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:43 am (UTC)'!
isAvailable

	^true! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:43 am (UTC)'!
isOccupied

	^false! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
isReserved

	^false! !

!AvailableRoomState methodsFor: 'occupation' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
receive: aGuestType

	^OccupiedRoomState hosting: aGuestType! !

!AvailableRoomState methodsFor: 'occupation' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
reserve

	^ReservedRoomState new! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList max! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
initializeHosting: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
isAvailable

	^false! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
isOccupied

	^true! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
isReserved

	^false! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList at: guestType ifAbsent: anUnknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
hosting: aGuestType

	^self new initializeHosting: aGuestType! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
isAvailable

	^false! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
isOccupied

	^true! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
isReserved

	^true! !

!ReservedRoomState methodsFor: 'occupation' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
receiveWithReservation: aGuestType

	^OccupiedRoomState hosting: aGuestType! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 15/Sep/2026, 12:44:44 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList min / 2! !

!HotelSimulationTest methodsFor: 'guest types' stamp: 'HAW 15/Sep/2026, 12:45:50 am (UTC)'!
guestTypeConference

	^#conferenceGuest! !

!HotelSimulationTest methodsFor: 'guest types' stamp: 'HAW 15/Sep/2026, 12:45:50 am (UTC)'!
guestTypeVacation

	^#vacationGuest! !

!HotelSimulationTest methodsFor: 'prices' stamp: 'HAW 15/Sep/2026, 12:45:50 am (UTC)'!
defaultPriceList

	^Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!HotelSimulationTest methodsFor: 'prices' stamp: 'HAW 15/Sep/2026, 12:45:50 am (UTC)'!
maxPriceInList

	^200*peso! !

!HotelSimulationTest methodsFor: 'prices' stamp: 'HAW 15/Sep/2026, 12:45:50 am (UTC)'!
minPriceInList

	^100*peso! !

!HotelSimulationTest methodsFor: 'floors' stamp: 'HAW 15/Sep/2026, 12:45:50 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^Floor withRooms: aNumberOfRooms pricedAt: aPriceList! !

!HotelSimulationTest methodsFor: 'floors' stamp: 'HAW 15/Sep/2026, 12:45:50 am (UTC)'!
roomAt: aRoomNumber of: aFloor

	^aFloor roomAt: aRoomNumber ifAbsent: [ self fail ]! !

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

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:02 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	(self roomAt: 1 of: floor) receive: self guestTypeVacation.
	
	self assert: roomsNumber - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:02 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsNumber roomsAvailable roomsOccupied roomsReserved |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	(self roomAt: 1 of: floor) reserve.

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	(self roomAt: 1 of: floor) receiveWithReservation: self guestTypeVacation.
	
	self assert: roomsAvailable equals: floor totalRoomsAvailable. 
	self assert: roomsOccupied equals: floor totalRoomsOccupied.
	self assert: roomsReserved - 1 equals: floor totalRoomsReserved! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:02 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	(self roomAt: 1 of: floor) reserve.
	
	self assert: roomsNumber - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 1 equals: floor totalRoomsReserved! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:02 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	(self roomAt: 1 of: floor) receive: self guestTypeVacation.
	(self roomAt: 2 of: floor) receive: self guestTypeConference.
	(self roomAt: 3 of: floor) reserve.
		
	self 
		assert: self minPriceInList + self maxPriceInList + (self minPriceInList / 2) 
		equals: floor totalProfits! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:02 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	(self roomAt: 1 of: floor) receive: self guestTypeVacation.
	(self roomAt: 2 of: floor) receive: self guestTypeConference.
	(self roomAt: 3 of: floor) reserve.
		
	self assert: self maxPriceInList * (roomsNumber - 3) equals: floor totalLosses! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:47:37 am (UTC)'!
test10CannotComputeTotalProfitsWhenARoomIsOccupiedByAnUnknownGuestType

	| floor |
	
	floor := self createFloorWith: 10 and: self defaultPriceList.
	
	(self roomAt: 1 of: floor) receive: #unknownGuest.
	
	self
		should: [ floor totalProfits ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor unknownGuestTypeErrorDescription! !

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

!HotelTest methodsFor: 'hotels' stamp: 'HAW 15/Sep/2026, 12:46:08 am (UTC)'!
createHotel

	^self createHotelWith: (OrderedCollection 
		with: (self createFloorWith: 10 and: self defaultPriceList)
		with: (self createFloorWith: 1 and: self defaultPriceList))! !

!HotelTest methodsFor: 'hotels' stamp: 'HAW 15/Sep/2026, 12:46:08 am (UTC)'!
createHotelWith: aFloorCollection

	^Hotel withFloors: aFloorCollection! !

!HotelTest methodsFor: 'hotels' stamp: 'HAW 15/Sep/2026, 12:46:29 am (UTC)'!
createHotelWithASingleFloorOf: aNumberOfRooms

	^self createHotelWith: (OrderedCollection 
		with: (self createFloorWith: aNumberOfRooms and: self defaultPriceList))! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:08 am (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:29 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Room roomIsNotReservedErrorDescription equals: error messageText.
			self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:29 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits
	
	| hotel floorWithVacationGuest floorWithConferenceGuest |
	
	floorWithVacationGuest := self createFloorWith: 10 and: self defaultPriceList.
	floorWithConferenceGuest := self createFloorWith: 10 and: self defaultPriceList.

	hotel := self createHotelWith: (OrderedCollection 
		with: floorWithVacationGuest 
		with: floorWithConferenceGuest).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self 
		assert: floorWithVacationGuest totalProfits + floorWithConferenceGuest totalProfits 
		equals: hotel totalProfits! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:29 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses
	
	| hotel floorWithVacationGuest floorWithConferenceGuest |
	
	floorWithVacationGuest := self createFloorWith: 10 and: self defaultPriceList.
	floorWithConferenceGuest := self createFloorWith: 10 and: self defaultPriceList.

	hotel := self createHotelWith: (OrderedCollection 
		with: floorWithVacationGuest 
		with: floorWithConferenceGuest).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self 
		assert: floorWithVacationGuest totalLosses + floorWithConferenceGuest totalLosses 
		equals: hotel totalLosses! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:39 am (UTC)'!
test09HotelCannotReserveANonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithASingleFloorOf: 10.
	
	self 
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Hotel roomNumberDoesNotExistErrorDescription equals: error messageText.
			self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:39 am (UTC)'!
test10HotelCannotReserveANonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithASingleFloorOf: 10.
	
	self 
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Hotel floorNumberDoesNotExistErrorDescription equals: error messageText.
			self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:39 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithASingleFloorOf: 10.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Hotel roomNumberDoesNotExistErrorDescription equals: error messageText.
			self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:39 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithASingleFloorOf: 10.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Hotel floorNumberDoesNotExistErrorDescription equals: error messageText.
			self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:46:39 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithASingleFloorOf: 10.

	hotel reserveRoom: 1 atFloor: 1. 
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: Hotel roomNumberDoesNotExistErrorDescription equals: error messageText.
			self assert: hotel totalRooms - 1 equals: hotel totalRoomsAvailable.
			self assert: 1 equals: hotel totalRoomsReserved.
			self assert: 1 equals: hotel totalRoomsOccupied ]! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 15/Sep/2026, 12:46:29 am (UTC)'!
assertIsEmpty: aHotel

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

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:45:04 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |
	
	room := Room new.

	self assert: self maxPriceInList equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:45:04 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |
	
	room := Room new.

	room reserve.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 15/Sep/2026, 12:45:04 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !
