'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 5:44:28 am'!
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

!classDefinition: #AvailableRoom category: #'ISW1-2024-1C-Parcial'!
RoomState subclass: #AvailableRoom
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'AvailableRoom class' category: #'ISW1-2024-1C-Parcial'!
AvailableRoom class
	instanceVariableNames: ''!

!classDefinition: #TakenRoom category: #'ISW1-2024-1C-Parcial'!
RoomState subclass: #TakenRoom
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'TakenRoom class' category: #'ISW1-2024-1C-Parcial'!
TakenRoom class
	instanceVariableNames: ''!

!classDefinition: #OccupiedRoom category: #'ISW1-2024-1C-Parcial'!
TakenRoom subclass: #OccupiedRoom
	instanceVariableNames: 'guestType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'OccupiedRoom class' category: #'ISW1-2024-1C-Parcial'!
OccupiedRoom class
	instanceVariableNames: ''!

!classDefinition: #ReservedRoom category: #'ISW1-2024-1C-Parcial'!
TakenRoom subclass: #ReservedRoom
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'ReservedRoom class' category: #'ISW1-2024-1C-Parcial'!
ReservedRoom class
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


!Floor methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
isAvailable

	^ rooms allSatisfy: [ :room | room isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
totalLosses

	^ rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
totalProfits

	^ rooms sum: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'totals' stamp: 'FRT 21/Apr/2024, 5:49:55 pm (UTC)'!
totalRooms
	
	^ rooms size
		
! !

!Floor methodsFor: 'totals' stamp: 'HAW 28/Apr/2024, 7:49:36 pm (UTC)'!
totalRoomsAvailable
	
	^rooms count: [ :room | room isAvailable ]
		
! !

!Floor methodsFor: 'totals' stamp: 'HAW 28/Apr/2024, 7:49:47 pm (UTC)'!
totalRoomsOccupied
	
	^rooms count: [ :room | room isOccupied ]
		
! !

!Floor methodsFor: 'totals' stamp: 'HAW 28/Apr/2024, 7:50:07 pm (UTC)'!
totalRoomsReserved
	
	^rooms count: [ :room | room isReserved ]! !

!Floor methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
initializeWithRooms: aNumberOfRooms pricedBy: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :roomNumber | Room new ].
	prices := aPriceList! !

!Floor methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
roomAt: aRoomNumber ifAbsent: absentRoomBlock

	^ rooms at: aRoomNumber ifAbsent: absentRoomBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:39:26 pm (UTC)'!
assertIsInteger: aNumber ifFalse: signalsBlock

	aNumber isInteger ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:40:06 pm (UTC)'!
assertIsPositive: aNumber ifFalse: signalsBlock

	aNumber strictlyPositive ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList isEmpty ifTrue: [ self signalNoPrices ].
	aPriceList do: [ :price | self assertIsPositive: price ifFalse: [ self signalPriceMustBePositive ] ]! !

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

!Floor class methodsFor: 'error signalling' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
withRooms: aNumberOfRooms pricedBy: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.

	^ self new initializeWithRooms: aNumberOfRooms pricedBy: aPriceList! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
totalLosses

	^ self sumOverFloors: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
totalProfits

	^ self sumOverFloors: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection! !

!Hotel methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self roomAt: aRoomNumber atFloor: aFloorNumber) receive: aGuestType! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self roomAt: aRoomNumber atFloor: aFloorNumber) receiveWithReservation: aGuestType! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self roomAt: aRoomNumber atFloor: aFloorNumber) reserve! !

!Hotel methodsFor: 'guests - private' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
roomAt: aRoomNumber atFloor: aFloorNumber

	| floor |

	floor := floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ].

	^ floor roomAt: aRoomNumber ifAbsent: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
totalRooms

	^ self sumOverFloors: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
totalRoomsAvailable

	^ self sumOverFloors: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
totalRoomsOccupied

	^ self sumOverFloors: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
totalRoomsReserved

	^ self sumOverFloors: [ :floor | floor totalRoomsReserved ]! !

!Hotel methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
sumOverFloors: aFloorValueBlock

	^ floors sum: aFloorValueBlock! !

!Hotel class methodsFor: 'assertions' stamp: 'HAW 29/Apr/2024, 11:48:39 am (UTC)'!
assertHaveFloors: aFloorsCollection

	aFloorsCollection isEmpty ifTrue: [ self signalNoFloors ].! !

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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:43:23 am (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
receive: aGuestType

	state receive: aGuestType in: self! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
receiveWithReservation: aGuestType

	state receiveWithReservation: aGuestType in: self! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
reserve

	state reserveIn: self! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
isAvailable

	^ state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
isOccupied

	^ state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
isReserved

	^ state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
initialize

	state := AvailableRoom new! !

!Room methodsFor: 'guests - private' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
beOccupiedBy: aGuestType

	state := OccupiedRoom for: aGuestType! !

!Room methodsFor: 'guests - private' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
beReserved

	state := ReservedRoom new! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!Room class methodsFor: 'error signalling' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
signalRoomIsNotEmpty

	self error: self roomIsNotEmptyErrorDescription! !

!Room class methodsFor: 'error signalling' stamp: 'HAW 17/Sep/2026, 8:43:07 am (UTC)'!
signalRoomIsNotReserved

	self error: self roomIsNotReservedErrorDescription! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
isAvailable

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
isOccupied

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
isReserved

	self subclassResponsibility! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
receive: aGuestType in: aRoom

	self subclassResponsibility! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	self subclassResponsibility! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
reserveIn: aRoom

	self subclassResponsibility! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
lossUsing: aPriceList

	self subclassResponsibility! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility! !

!AvailableRoom methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
isAvailable

	^ true! !

!AvailableRoom methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
isOccupied

	^ false! !

!AvailableRoom methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
isReserved

	^ false! !

!AvailableRoom methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
receive: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType! !

!AvailableRoom methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	Room signalRoomIsNotReserved! !

!AvailableRoom methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
reserveIn: aRoom

	aRoom beReserved! !

!AvailableRoom methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
lossUsing: aPriceList

	^ aPriceList values max! !

!AvailableRoom methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!TakenRoom methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
isAvailable

	^ false! !

!TakenRoom methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
isOccupied

	^ true! !

!TakenRoom methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
receive: aGuestType in: aRoom

	Room signalRoomIsNotEmpty! !

!TakenRoom methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
reserveIn: aRoom

	Room signalRoomIsNotEmpty! !

!TakenRoom methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
lossUsing: aPriceList

	^ 0*peso! !

!OccupiedRoom methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
initializeFor: aGuestType

	guestType := aGuestType! !

!OccupiedRoom methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
isReserved

	^ false! !

!OccupiedRoom methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	Room signalRoomIsNotReserved! !

!OccupiedRoom methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock! !

!OccupiedRoom class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
for: aGuestType

	^ self new initializeFor: aGuestType! !

!ReservedRoom methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
isReserved

	^ true! !

!ReservedRoom methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType! !

!ReservedRoom methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:43:06 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2! !

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

!FloorTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
createDefaultFloor

	^ self createFloorWith: self defaultNumberOfRooms and: self defaultPriceList! !

!FloorTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withRooms: aNumberOfRooms pricedBy: aPriceList! !

!FloorTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
createFloorWithTwoGuestsAndOneReservation

	| floor |

	floor := self createDefaultFloor.

	(self roomAt: 1 of: floor) receive: self guestTypeVacation.
	(self roomAt: 2 of: floor) receive: self guestTypeConference.
	(self roomAt: 3 of: floor) reserve.

	^ floor! !

!FloorTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
defaultNumberOfRooms

	^ 10! !

!FloorTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
roomAt: aRoomNumber of: aFloor

	^ aFloor roomAt: aRoomNumber ifAbsent: [ self fail ]! !

!FloorTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
assert: aFloor hasAvailableRooms: anAvailableRooms occupiedRooms: anOccupiedRooms reservedRooms: aReservedRooms

	self assert: anAvailableRooms equals: aFloor totalRoomsAvailable.
	self assert: anOccupiedRooms equals: aFloor totalRoomsOccupied.
	self assert: aReservedRooms equals: aFloor totalRoomsReserved! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |

	floor := self createDefaultFloor.

	self assert: floor isAvailable.
	self assert: floor hasAvailableRooms: self defaultNumberOfRooms occupiedRooms: 0 reservedRooms: 0! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |

	floor := self createDefaultFloor.

	(self roomAt: 1 of: floor) receive: self guestTypeVacation.

	self assert: floor hasAvailableRooms: self defaultNumberOfRooms - 1 occupiedRooms: 1 reservedRooms: 0! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsAvailable roomsOccupied roomsReserved |

	floor := self createDefaultFloor.

	(self roomAt: 1 of: floor) reserve.

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	(self roomAt: 1 of: floor) receiveWithReservation: self guestTypeVacation.

	self assert: floor hasAvailableRooms: roomsAvailable occupiedRooms: roomsOccupied reservedRooms: roomsReserved - 1! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |

	floor := self createDefaultFloor.

	(self roomAt: 1 of: floor) reserve.

	self assert: floor hasAvailableRooms: self defaultNumberOfRooms - 1 occupiedRooms: 1 reservedRooms: 1! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |

	floor := self createFloorWithTwoGuestsAndOneReservation.

	self assert: (100*peso) + (200*peso) + (50*peso) equals: floor totalProfits! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |

	floor := self createFloorWithTwoGuestsAndOneReservation.

	self assert: (200*peso) * 7 equals: floor totalLosses! !

!HotelTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 2:30:09 pm (UTC)'!
test02NewHotelsAreEmpty

	| hotel |
	
	hotel := self createHotel.
	
	self assert: hotel isEmpty.! !

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

!HotelTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
createFloor

	^ self createFloorWith: 10 and: self defaultPriceList! !

!HotelTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withRooms: aNumberOfRooms pricedBy: aPriceList! !

!HotelTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
createHotel

	^ Hotel withFloors: (OrderedCollection
		with: self createFloor
		with: (self createFloorWith: 1 and: self defaultPriceList))! !

!HotelTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: self createFloor)! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
assert: aHotel hasUnavailableRooms: anUnavailableRooms reservedRooms: aReservedRooms occupiedRooms: anOccupiedRooms

	self assert: aHotel totalRooms - anUnavailableRooms equals: aHotel totalRoomsAvailable.
	self assert: aReservedRooms equals: aHotel totalRoomsReserved.
	self assert: anOccupiedRooms equals: aHotel totalRoomsOccupied! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
assertHasNoTakenRooms: aHotel

	self assert: aHotel hasUnavailableRooms: 0 reservedRooms: 0 occupiedRooms: 0! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
should: aBlock failWith: anErrorDescription andAssert: aHotel hasUnavailableRooms: anUnavailableRooms reservedRooms: aReservedRooms occupiedRooms: anOccupiedRooms

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			self assert: aHotel hasUnavailableRooms: anUnavailableRooms reservedRooms: aReservedRooms occupiedRooms: anOccupiedRooms ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	self assertHasNoTakenRooms: hotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel hasUnavailableRooms: 1 reservedRooms: 0 occupiedRooms: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |

	hotel := self createHotel.

	self assertHasNoTakenRooms: hotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assert: hotel hasUnavailableRooms: 1 reservedRooms: 1 occupiedRooms: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	self assertHasNoTakenRooms: hotel.

	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel hasUnavailableRooms: 1 reservedRooms: 0 occupiedRooms: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation

	| hotel |

	hotel := self createHotel.

	self assertHasNoTakenRooms: hotel.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: hotel hasUnavailableRooms: 0 reservedRooms: 0 occupiedRooms: 0! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits

	| hotel floor1 floor2 |

	floor1 := self createFloor.
	floor2 := self createFloor.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: floor1 totalProfits + floor2 totalProfits equals: hotel totalProfits! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses

	| hotel floor1 floor2 |

	floor1 := self createFloor.
	floor2 := self createFloor.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: floor1 totalLosses + floor2 totalLosses equals: hotel totalLosses! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
test09HotelCannotReserveANonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: hotel hasUnavailableRooms: 0 reservedRooms: 0 occupiedRooms: 0! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
test10HotelCannotReserveANonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: hotel hasUnavailableRooms: 0 reservedRooms: 0 occupiedRooms: 0! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: hotel hasUnavailableRooms: 0 reservedRooms: 0 occupiedRooms: 0! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: hotel hasUnavailableRooms: 0 reservedRooms: 0 occupiedRooms: 0! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:44:00 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	hotel reserveRoom: 1 atFloor: 1.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: hotel hasUnavailableRooms: 1 reservedRooms: 1 occupiedRooms: 1! !

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

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |

	room := Room new.

	self assert: self maxPriceInList equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.

	room reserve.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 8:43:38 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |

	room := Room new.

	room receive: self guestTypeVacation.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !
