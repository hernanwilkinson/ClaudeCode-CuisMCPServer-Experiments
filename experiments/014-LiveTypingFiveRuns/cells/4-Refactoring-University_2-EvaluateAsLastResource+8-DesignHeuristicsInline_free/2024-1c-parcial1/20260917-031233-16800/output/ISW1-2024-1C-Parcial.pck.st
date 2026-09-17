'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:16:51 am'!
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


!Floor methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
isAvailable

	^rooms allSatisfy: [ :aRoom | aRoom isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
totalLosses

	^rooms sum: [ :aRoom | aRoom lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
totalProfits

	^rooms sum: [ :aRoom | aRoom profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
totalRooms

	^rooms size! !

!Floor methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
totalRoomsAvailable

	^rooms count: [ :aRoom | aRoom isAvailable ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
totalRoomsOccupied

	^rooms count: [ :aRoom | aRoom isOccupied ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
totalRoomsReserved

	^rooms count: [ :aRoom | aRoom isReserved ]! !

!Floor methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
initializeWithRooms: aCollectionOfRooms prices: aPriceList

	rooms := aCollectionOfRooms.
	prices := aPriceList copy! !

!Floor methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
receive: aGuestType atRoom: aRoomNumber

	(self roomAt: aRoomNumber) receive: aGuestType! !

!Floor methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber

	(self roomAt: aRoomNumber) receiveWithReservation: aGuestType! !

!Floor methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
reserveRoom: aRoomNumber

	(self roomAt: aRoomNumber) reserve! !

!Floor methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
roomAt: aRoomNumber

	^rooms at: aRoomNumber ifAbsent: [ self class signalRoomNumberDoesNotExist ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	aNumberOfRooms strictlyPositive ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	aNumberOfRooms isInteger ifFalse: [ self signalNumberOfRoomsMustBeInteger ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList ifEmpty: [ self signalNoPrices ].
	aPriceList do: [ :aPrice | aPrice strictlyPositive ifFalse: [ self signalPriceMustBePositive ] ]! !

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

!Floor class methodsFor: 'error messages' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
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

!Floor class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
signalRoomNumberDoesNotExist

	self error: self roomNumberDoesNotExistErrorDescription! !

!Floor class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
availableRoomsNumbering: aNumberOfRooms

	^(1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ]! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
withNumberOfRooms: aNumberOfRooms prices: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.

	^self new initializeWithRooms: (self availableRoomsNumbering: aNumberOfRooms) prices: aPriceList! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
totalLosses

	^floors sum: [ :aFloor | aFloor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
totalProfits

	^floors sum: [ :aFloor | aFloor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
initializeWithFloors: aCollectionOfFloors

	floors := aCollectionOfFloors copy! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
totalRooms

	^floors sum: [ :aFloor | aFloor totalRooms ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
totalRoomsAvailable

	^floors sum: [ :aFloor | aFloor totalRoomsAvailable ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
totalRoomsOccupied

	^floors sum: [ :aFloor | aFloor totalRoomsOccupied ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
totalRoomsReserved

	^floors sum: [ :aFloor | aFloor totalRoomsReserved ]! !

!Hotel methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
isEmpty

	^floors allSatisfy: [ :aFloor | aFloor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receive: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receiveWithReservation: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self floorAt: aFloorNumber) reserveRoom: aRoomNumber! !

!Hotel methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
floorAt: aFloorNumber

	^floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]! !

!Hotel class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
assertHaveFloors: aCollectionOfFloors

	aCollectionOfFloors ifEmpty: [ self signalNoFloors ]! !

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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:14:35 am (UTC)'!
withFloors: aCollectionOfFloors

	self assertHaveFloors: aCollectionOfFloors.

	^self new initializeWithFloors: aCollectionOfFloors! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
receive: aGuestType

	state := state afterReceiving: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
receiveWithReservation: aGuestType

	state := state afterReceivingWithReservation: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
reserve

	state := state afterReserving! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
isAvailable

	^state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
isOccupied

	^state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
isReserved

	^state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
initialize

	state := AvailableRoomState new! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
signalRoomIsNotEmpty

	self error: self roomIsNotEmptyErrorDescription! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 6:14:34 am (UTC)'!
signalRoomIsNotReserved

	self error: self roomIsNotReservedErrorDescription! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
isAvailable

	^false! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
isOccupied

	^false! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
isReserved

	^false! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
afterReceiving: aGuestType

	^Room signalRoomIsNotEmpty! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
afterReceivingWithReservation: aGuestType

	^Room signalRoomIsNotReserved! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
afterReserving

	^Room signalRoomIsNotEmpty! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	self subclassResponsibility! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
isAvailable

	^true! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
afterReceiving: aGuestType

	^OccupiedRoomState of: aGuestType! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
afterReserving

	^ReservedRoomState new! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList values max! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
initializeOf: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
isOccupied

	^true! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList at: guestType ifAbsent: anUnknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
of: aGuestType

	^self new initializeOf: aGuestType! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
isOccupied

	^true! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
isReserved

	^true! !

!ReservedRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
afterReceivingWithReservation: aGuestType

	^OccupiedRoomState of: aGuestType! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:14:07 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList values min / 2! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:14:55 am (UTC)'!
createFloorWith: aNumberOfRooms

	^self createFloorWith: aNumberOfRooms and: self defaultPriceList! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:14:55 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^Floor withNumberOfRooms: aNumberOfRooms prices: aPriceList! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:14:55 am (UTC)'!
defaultPriceList

	^Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:14:55 am (UTC)'!
guestTypeConference

	^#conferenceGuest! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:14:55 am (UTC)'!
guestTypeVacation

	^#vacationGuest! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:14:55 am (UTC)'!
maxPriceInList

	^200*peso! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:14:55 am (UTC)'!
minPriceInList

	^100*peso! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test01CannotCreateFloorWithoutRooms

	self
		should: [ self createFloorWith: 0 ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor numberOfRoomsMustBePositiveErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test02CannotCreateFloorWithNoIntergerNumberOfRooms

	self
		should: [ self createFloorWith: 1.5 ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor numberOfRoomsMustBeIntegerErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test03CannotCreateFloorWithoutPrices

	self
		should: [ self createFloorWith: 10 and: Dictionary new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor pricesListCannotBeEmptyErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |

	floor := self createFloorWith: 10.

	self assert: floor isAvailable.
	self assert: floor totalRoomsOccupied equals: 0.
	self assert: floor totalRoomsReserved equals: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |

	floor := self createFloorWith: 10.

	floor receive: self guestTypeVacation atRoom: 1.

	self assert: floor totalRoomsAvailable equals: 9.
	self assert: floor totalRoomsOccupied equals: 1.
	self assert: floor totalRoomsReserved equals: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor |

	floor := self createFloorWith: 10.
	floor reserveRoom: 1.

	floor receiveWithReservation: self guestTypeVacation atRoom: 1.

	self assert: floor totalRoomsAvailable equals: 9.
	self assert: floor totalRoomsOccupied equals: 1.
	self assert: floor totalRoomsReserved equals: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |

	floor := self createFloorWith: 10.

	floor reserveRoom: 1.

	self assert: floor totalRoomsAvailable equals: 9.
	self assert: floor totalRoomsOccupied equals: 1.
	self assert: floor totalRoomsReserved equals: 1! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	self
		assert: self floorWithAVacationGuestAConferenceGuestAndAReservation totalProfits
		equals: self minPriceInList + self maxPriceInList + (self minPriceInList / 2)! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	self
		assert: self floorWithAVacationGuestAConferenceGuestAndAReservation totalLosses
		equals: self maxPriceInList * 7! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test10CannotReceiveAGuestInANonexistentRoom

	| floor |

	floor := self createFloorWith: 10.

	self
		should: [ floor receive: self guestTypeVacation atRoom: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assert: floor isAvailable ]! !

!FloorTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
floorWithAVacationGuestAConferenceGuestAndAReservation

	^(self createFloorWith: 10)
		receive: self guestTypeVacation atRoom: 1;
		receive: self guestTypeConference atRoom: 2;
		reserveRoom: 3;
		yourself! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test02NewHotelsAreEmpty

	self assert: self createHotel isEmpty! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 0.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 1.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.
	hotel reserveRoom: 2 atFloor: 1.

	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 0.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:29 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation

	| hotel |

	hotel := self createHotel.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotReservedErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:29 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits

	| hotel firstFloor secondFloor |

	firstFloor := self createFloorWith: 10.
	secondFloor := self createFloorWith: 10.
	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: hotel totalProfits equals: firstFloor totalProfits + secondFloor totalProfits! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:29 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses

	| hotel firstFloor secondFloor |

	firstFloor := self createFloorWith: 10.
	secondFloor := self createFloorWith: 10.
	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.
	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: hotel totalLosses equals: firstFloor totalLosses + secondFloor totalLosses! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:29 am (UTC)'!
test09HotelCannotReserveANonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:29 am (UTC)'!
test10HotelCannotReserveANonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Hotel floorNumberDoesNotExistErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:29 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:29 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Hotel floorNumberDoesNotExistErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:29 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.
	hotel reserveRoom: 1 atFloor: 1.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
			self assert: hotel totalRoomsReserved equals: 1.
			self assert: hotel totalRoomsOccupied equals: 1 ]! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
createHotel

	^Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10) with: (self createFloorWith: 1))! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
createHotelWithOneFloor

	^Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10))! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:15:28 am (UTC)'!
assertHasNoGuestsNorReservations: aHotel

	self assert: aHotel totalRoomsAvailable equals: aHotel totalRooms.
	self assert: aHotel totalRoomsReserved equals: 0.
	self assert: aHotel totalRoomsOccupied equals: 0! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test01NewRoomsAreAvailable

	| room |

	room := Room new.

	self assert: room isAvailable.
	self deny: room isOccupied.
	self deny: room isReserved! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test02ReceivingAGuestMakesTheRoomOccupied

	| room |

	room := Room new.

	room receive: self guestTypeVacation.

	self assert: room isOccupied.
	self deny: room isAvailable.
	self deny: room isReserved! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test03ReservingARoomMakesTheRoomReservedAndOccupied

	| room |

	room := Room new.

	room reserve.

	self assert: room isReserved.
	self assert: room isOccupied.
	self deny: room isAvailable! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test04CannotReceiveAGuestInAOccupiedRoom

	| room |

	room := self occupiedRoom.

	self
		should: [ room receive: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.
			self assert: room isOccupied.
			self deny: room isAvailable.
			self deny: room isReserved ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test05CannotReceiveAGuestInAReservedRoom

	| room |

	room := self reservedRoom.

	self
		should: [ room receive: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.
			self assert: room isReserved.
			self assert: room isOccupied.
			self deny: room isAvailable ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test06ReceivingOnReservationMakesTheRoomOccupied

	| room |

	room := self reservedRoom.

	room receiveWithReservation: self guestTypeVacation.

	self assert: room isOccupied.
	self deny: room isReserved.
	self deny: room isAvailable! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
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

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test08CannotReceiveOnReservationAnOccupiedRoom

	| room |

	room := self occupiedRoom.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotReservedErrorDescription.
			self assert: room isOccupied.
			self deny: room isReserved.
			self deny: room isAvailable ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test09ProfitOfAvailableRoomIsCeroPesos

	self
		assert: (Room new profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: 0*peso! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	self
		assert: (self reservedRoom profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: self minPriceInList / 2! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test11ProfitOfOccupiedRoomDependsOnGuestType

	| roomWithConferenceGuest |

	roomWithConferenceGuest := Room new.
	roomWithConferenceGuest receive: self guestTypeConference.

	self
		assert: (roomWithConferenceGuest profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: self maxPriceInList.
	self
		assert: (self occupiedRoom profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: self minPriceInList! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test12NoProfitOnOccupiedRoomByUnknownGuestType

	| room unknownGuestTypeWasNoticed |

	room := Room new.
	room receive: #unknownGuest.
	unknownGuestTypeWasNoticed := false.

	room profitUsing: self defaultPriceList ifAbsentGuestType: [ unknownGuestTypeWasNoticed := true ].

	self assert: unknownGuestTypeWasNoticed! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	self
		assert: (Room new lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: self maxPriceInList! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	self
		assert: (self reservedRoom lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: 0*peso! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:51 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	self
		assert: (self occupiedRoom lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: 0*peso! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:51 am (UTC)'!
test16CannotReserveWhenReserved

	| room |

	room := self reservedRoom.

	self
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.
			self assert: room isReserved ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:15:51 am (UTC)'!
test17CannotReserveWhenOccupied

	| room |

	room := self occupiedRoom.

	self
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.
			self assert: room isOccupied.
			self deny: room isReserved ]! !

!RoomTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
occupiedRoom

	^Room new
		receive: self guestTypeVacation;
		yourself! !

!RoomTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 6:15:50 am (UTC)'!
reservedRoom

	^Room new
		reserve;
		yourself! !
