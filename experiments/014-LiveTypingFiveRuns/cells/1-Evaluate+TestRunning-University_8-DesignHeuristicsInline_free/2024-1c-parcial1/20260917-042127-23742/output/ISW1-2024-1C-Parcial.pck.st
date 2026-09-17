'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 4:24:53 am'!
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


!Floor methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
isAvailable

	^rooms allSatisfy: [ :room | room isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
totalLosses

	^rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
totalProfits

	^rooms sum: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
totalRooms

	^rooms size! !

!Floor methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
totalRoomsAvailable

	^rooms count: [ :room | room isAvailable ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
totalRoomsOccupied

	^rooms count: [ :room | room isOccupied ]! !

!Floor methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
totalRoomsReserved

	^rooms count: [ :room | room isReserved ]! !

!Floor methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
initializeWithRooms: aCollectionOfRooms pricedBy: aPriceList

	rooms := aCollectionOfRooms.
	prices := aPriceList! !

!Floor methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
atRoom: aRoomNumber do: aRoomBlock ifAbsent: anAbsentRoomBlock

	aRoomBlock value: (rooms at: aRoomNumber ifAbsent: [ ^anAbsentRoomBlock value ])! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	aNumberOfRooms strictlyPositive ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	aNumberOfRooms isInteger ifFalse: [ self signalNumberOfRoomsMustBeInteger ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList ifEmpty: [ self signalNoPrices ].
	(aPriceList allSatisfy: [ :aPrice | aPrice strictlyPositive ]) ifFalse: [ self signalPriceMustBePositive ]! !

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

!Floor class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
availableRoomsNumbering: aNumberOfRooms

	^(1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ]! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:23:14 am (UTC)'!
withNumberOfRooms: aNumberOfRooms pricedBy: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.

	^self new initializeWithRooms: (self availableRoomsNumbering: aNumberOfRooms) pricedBy: aPriceList copy! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
totalLosses

	^floors sum: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
totalProfits

	^floors sum: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
totalRooms

	^floors sum: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
totalRoomsAvailable

	^floors sum: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
totalRoomsOccupied

	^floors sum: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
totalRoomsReserved

	^floors sum: [ :floor | floor totalRoomsReserved ]! !

!Hotel methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
isEmpty

	^floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self atFloor: aFloorNumber atRoom: aRoomNumber do: [ :room | room receive: aGuestType ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self atFloor: aFloorNumber atRoom: aRoomNumber do: [ :room | room receiveWithReservation: aGuestType ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	self atFloor: aFloorNumber atRoom: aRoomNumber do: [ :room | room reserve ]! !

!Hotel methodsFor: 'guests - private' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
atFloor: aFloorNumber atRoom: aRoomNumber do: aRoomBlock

	(floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ])
		atRoom: aRoomNumber
		do: aRoomBlock
		ifAbsent: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:23:25 am (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^self new initializeWithFloors: aFloorsCollection copy! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
receive: aGuestType

	state := state receive: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
receiveWithReservation: aGuestType

	state := state receiveWithReservation: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
reserve

	state := state reserve! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
isAvailable

	^state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
isOccupied

	^state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
isReserved

	^state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
initialize

	state := AvailableRoomState new! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
signalRoomIsNotEmpty

	^self error: self roomIsNotEmptyErrorDescription! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
signalRoomIsNotReserved

	^self error: self roomIsNotReservedErrorDescription! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:57 am (UTC)'!
isAvailable

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:57 am (UTC)'!
isOccupied

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:57 am (UTC)'!
isReserved

	self subclassResponsibility! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	self subclassResponsibility! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:22:57 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	self subclassResponsibility! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
receive: aGuestType

	^Room signalRoomIsNotEmpty! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
receiveWithReservation: aGuestType

	^Room signalRoomIsNotReserved! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
reserve

	^Room signalRoomIsNotEmpty! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
isAvailable

	^true! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
isOccupied

	^false! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
isReserved

	^false! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
receive: aGuestType

	^OccupiedRoomState by: aGuestType! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
reserve

	^ReservedRoomState new! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList values max! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
initializeBy: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
isAvailable

	^false! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
isOccupied

	^true! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
isReserved

	^false! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList at: guestType ifAbsent: anUnknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
by: aGuestType

	^self new initializeBy: aGuestType! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
isAvailable

	^false! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
isOccupied

	^true! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
isReserved

	^true! !

!ReservedRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
receiveWithReservation: aGuestType

	^OccupiedRoomState by: aGuestType! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 7:22:58 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList values min / 2! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 7:23:42 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^Floor withNumberOfRooms: aNumberOfRooms pricedBy: aPriceList! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 7:23:42 am (UTC)'!
defaultPriceList

	^Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 7:23:42 am (UTC)'!
guestTypeConference

	^#conferenceGuest! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 7:23:42 am (UTC)'!
guestTypeVacation

	^#vacationGuest! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 7:23:42 am (UTC)'!
maxPriceInList

	^200*peso! !

!HotelSimulationTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 7:23:42 am (UTC)'!
minPriceInList

	^100*peso! !

!HotelSimulationTest class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:42 am (UTC)'!
isAbstract

	^self = HotelSimulationTest! !

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

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |

	floor := self createFloorWithTenRooms.

	self assert: floor isAvailable.
	self assert: floor totalRoomsOccupied equals: 0.
	self assert: floor totalRoomsReserved equals: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |

	floor := self createFloorWithTenRooms.

	self receive: self guestTypeVacation atRoom: 1 of: floor.

	self assert: floor totalRoomsAvailable equals: 9.
	self assert: floor totalRoomsOccupied equals: 1.
	self assert: floor totalRoomsReserved equals: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor |

	floor := self createFloorWithTenRooms.
	self reserveRoom: 1 of: floor.

	self receiveWithReservation: self guestTypeVacation atRoom: 1 of: floor.

	self assert: floor totalRoomsAvailable equals: 9.
	self assert: floor totalRoomsOccupied equals: 1.
	self assert: floor totalRoomsReserved equals: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |

	floor := self createFloorWithTenRooms.

	self reserveRoom: 1 of: floor.

	self assert: floor totalRoomsAvailable equals: 9.
	self assert: floor totalRoomsOccupied equals: 1.
	self assert: floor totalRoomsReserved equals: 1! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |

	floor := self createFloorWithTenRooms.

	self occupyThreeRoomsOf: floor.

	self assert: floor totalProfits equals: self minPriceInList + self maxPriceInList + (self minPriceInList / 2)! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |

	floor := self createFloorWithTenRooms.

	self occupyThreeRoomsOf: floor.

	self assert: floor totalLosses equals: self maxPriceInList * 7! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
test10CannotCreateFloorWithNonPositivePrices

	self
		should: [ self createFloorWith: 10 and: (Dictionary new at: self guestTypeVacation put: 0*peso; yourself) ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor priceMustBePositiveErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
test11TotalProfitsOfARoomOccupiedByAnUnknownGuestTypeFails

	| floor |

	floor := self createFloorWithTenRooms.
	self receive: #unknownGuest atRoom: 1 of: floor.

	self
		should: [ floor totalProfits ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor unknownGuestTypeErrorDescription! !

!FloorTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
createFloorWithTenRooms

	^self createFloorWith: 10 and: self defaultPriceList! !

!FloorTest methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
occupyThreeRoomsOf: aFloor

	self receive: self guestTypeVacation atRoom: 1 of: aFloor.
	self receive: self guestTypeConference atRoom: 2 of: aFloor.
	self reserveRoom: 3 of: aFloor! !

!FloorTest methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
receive: aGuestType atRoom: aRoomNumber of: aFloor

	aFloor atRoom: aRoomNumber do: [ :room | room receive: aGuestType ] ifAbsent: [ self fail ]! !

!FloorTest methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber of: aFloor

	aFloor atRoom: aRoomNumber do: [ :room | room receiveWithReservation: aGuestType ] ifAbsent: [ self fail ]! !

!FloorTest methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 7:23:56 am (UTC)'!
reserveRoom: aRoomNumber of: aFloor

	aFloor atRoom: aRoomNumber do: [ :room | room reserve ] ifAbsent: [ self fail ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
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

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 0.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 1.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.
	hotel reserveRoom: 2 atFloor: 1.

	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 0.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation

	| hotel |

	hotel := self createHotel.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotReservedErrorDescription.
			self assertHasAllRoomsAvailable: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits

	| hotel firstFloor secondFloor |

	firstFloor := self createFloorWith: 10 and: self defaultPriceList.
	secondFloor := self createFloorWith: 10 and: self defaultPriceList.
	hotel := self createHotelWithFloors: (OrderedCollection with: firstFloor with: secondFloor).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: hotel totalProfits equals: firstFloor totalProfits + secondFloor totalProfits! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses

	| hotel firstFloor secondFloor |

	firstFloor := self createFloorWith: 10 and: self defaultPriceList.
	secondFloor := self createFloorWith: 10 and: self defaultPriceList.
	hotel := self createHotelWithFloors: (OrderedCollection with: firstFloor with: secondFloor).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.
	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: hotel totalLosses equals: firstFloor totalLosses + secondFloor totalLosses! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
test09HotelCannotReserveANonexistentRoom

	| hotel |

	hotel := self createHotel.

	self
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Hotel roomNumberDoesNotExistErrorDescription.
			self assertHasAllRoomsAvailable: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
test10HotelCannotReserveANonexistentFloor

	| hotel |

	hotel := self createHotel.

	self
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Hotel floorNumberDoesNotExistErrorDescription.
			self assertHasAllRoomsAvailable: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom

	| hotel |

	hotel := self createHotel.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Hotel roomNumberDoesNotExistErrorDescription.
			self assertHasAllRoomsAvailable: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor

	| hotel |

	hotel := self createHotel.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Hotel floorNumberDoesNotExistErrorDescription.
			self assertHasAllRoomsAvailable: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom

	| hotel |

	hotel := self createHotel.
	hotel reserveRoom: 1 atFloor: 1.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Hotel roomNumberDoesNotExistErrorDescription.
			self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
			self assert: hotel totalRoomsReserved equals: 1.
			self assert: hotel totalRoomsOccupied equals: 1 ]! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
createHotel

	^Hotel withFloors: (OrderedCollection
		with: (self createFloorWith: 10 and: self defaultPriceList)
		with: (self createFloorWith: 1 and: self defaultPriceList))! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
createHotelWithFloors: aFloorsCollection

	^Hotel withFloors: aFloorsCollection! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 7:24:18 am (UTC)'!
assertHasAllRoomsAvailable: aHotel

	self assert: aHotel totalRoomsAvailable equals: aHotel totalRooms.
	self assert: aHotel totalRoomsReserved equals: 0.
	self assert: aHotel totalRoomsOccupied equals: 0! !

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

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:28 am (UTC)'!
test04CannotReceiveAGuestInAOccupiedRoom

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.
	
	self 
		should: [ room receive: self guestTypeVacation ] 
		raise: Error - MessageNotUnderstood 
		withExceptionDo:  [ 	:error |
			self assert: error messageText equals: Room roomIsNotEmptyErrorDescription.

			self assert: room isOccupied.
			
			self deny: room isAvailable.
			self deny: room isReserved.
		]
	
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:28 am (UTC)'!
test05CannotReceiveAGuestInAReservedRoom

	| room |
	
	room := Room new.

	room reserve.
	
	self 
		should: [ room receive: self guestTypeVacation ] 
		raise: Error - MessageNotUnderstood 
		withExceptionDo:  [ 	:error |
			self assert: error messageText equals: Room roomIsNotEmptyErrorDescription.
			
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

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:28 am (UTC)'!
test07CannotReceiveOnReservationAnAvailableRoom

	| room |
	
	room := Room new.

	self 
		should: [ room receiveWithReservation: self guestTypeVacation. ] 
		raise: Error - MessageNotUnderstood 
		withExceptionDo:  [ 	:error |
			self assert: error messageText equals: Room roomIsNotReservedErrorDescription.

			self assert: room isAvailable.

			self deny: room isReserved.
			self deny: room isOccupied.
		]

	
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:28 am (UTC)'!
test08CannotReceiveOnReservationAnOccupiedRoom

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self 
		should: [ room receiveWithReservation: self guestTypeVacation. ] 
		raise: Error - MessageNotUnderstood 	
		withExceptionDo:  [ 	:error |
			self assert: error messageText equals: Room roomIsNotReservedErrorDescription.
			
			self assert: room isOccupied.

			self deny: room isReserved.
			self deny: room isAvailable.
		]

	
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:28 am (UTC)'!
test09ProfitOfAvailableRoomIsCeroPesos

	| room |
	
	room := Room new.

	self assert: (room profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) equals: 0*peso.
	
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:28 am (UTC)'!
test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	| room |
	
	room := Room new.

	room reserve.

	self assert: (room profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) equals: self minPriceInList / 2.
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:28 am (UTC)'!
test11ProfitOfOccupiedRoomDependsOnGuestType

	| roomWithConferenceGuest roomWithVacationGuest |
	
	roomWithConferenceGuest := Room new.
	roomWithConferenceGuest receive: self guestTypeConference.
	
	roomWithVacationGuest := Room new.
	roomWithVacationGuest receive: self guestTypeVacation.

	self assert: (roomWithConferenceGuest profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) equals: self maxPriceInList.

	self assert: (roomWithVacationGuest profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) equals: self minPriceInList.
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

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:03 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |

	room := Room new.

	self assert: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) equals: self maxPriceInList! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:03 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.

	room reserve.

	self assert: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) equals: 0*peso! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:23:03 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |

	room := Room new.

	room receive: self guestTypeVacation.

	self assert: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) equals: 0*peso! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:28 am (UTC)'!
test16CannotReserveWhenReserved

	| room |
	
	room := Room new.

	room reserve.

	self 
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.
			self assert: room isReserved ].! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 7:24:28 am (UTC)'!
test17CannotReserveWhenOccupied

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self 
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.
			self assert: room isOccupied ].! !
