'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:45:37 am'!
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


!Floor methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
isAvailable

	^ rooms allSatisfy: [ :room | room isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
totalLosses

	^ rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
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

!Floor methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
initializeWithRooms: aNumberOfRooms pricedAt: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList copy! !

!Floor methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
roomNumber: aRoomNumber

	^ rooms at: aRoomNumber ifAbsent: [ self class signalRoomNumberDoesNotExist ]! !

!Floor methodsFor: 'hosting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
receive: aGuestType atRoom: aRoomNumber

	(self roomNumber: aRoomNumber) receive: aGuestType! !

!Floor methodsFor: 'hosting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber

	(self roomNumber: aRoomNumber) receiveWithReservation: aGuestType! !

!Floor methodsFor: 'hosting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
reserveRoom: aRoomNumber

	(self roomNumber: aRoomNumber) reserve! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:39:26 pm (UTC)'!
assertIsInteger: aNumber ifFalse: signalsBlock

	aNumber isInteger ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:40:06 pm (UTC)'!
assertIsPositive: aNumber ifFalse: signalsBlock

	aNumber strictlyPositive ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList ifEmpty: [ self signalNoPrices ].
	aPriceList do: [ :aPrice | self assertIsPositive: aPrice ifFalse: [ self signalPriceMustBePositive ] ]! !

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

!Floor class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
roomNumberDoesNotExistErrorDescription

	^ 'Room number does not exist'! !

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

!Floor class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
signalRoomNumberDoesNotExist

	self error: self roomNumberDoesNotExistErrorDescription! !

!Floor class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
withRooms: aNumberOfRooms pricedAt: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.

	^ self new initializeWithRooms: aNumberOfRooms pricedAt: aPriceList! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
totalLosses

	^ floors sum: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
totalProfits

	^ floors sum: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
totalRooms

	^ floors sum: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
totalRoomsAvailable

	^ floors sum: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
totalRoomsOccupied

	^ floors sum: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
totalRoomsReserved

	^ floors sum: [ :floor | floor totalRoomsReserved ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection copy! !

!Hotel methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
floorNumber: aFloorNumber

	^ floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]! !

!Hotel methodsFor: 'hosting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorNumber: aFloorNumber) receive: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'hosting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorNumber: aFloorNumber) receiveWithReservation: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'hosting' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self floorNumber: aFloorNumber) reserveRoom: aRoomNumber! !

!Hotel class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
assertHaveFloors: aFloorsCollection

	aFloorsCollection ifEmpty: [ self signalNoFloors ]! !

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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:44:36 am (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:18 am (UTC)'!
isAvailable

	^ state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:18 am (UTC)'!
isOccupied

	^ state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:18 am (UTC)'!
isReserved

	^ state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:18 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^ state lossUsing: aPriceList! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:18 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:44:18 am (UTC)'!
initialize

	state := AvailableRoomState new! !

!Room methodsFor: 'hosting' stamp: 'HAW 17/Sep/2026, 5:44:18 am (UTC)'!
receive: aGuestType

	state := state receive: aGuestType! !

!Room methodsFor: 'hosting' stamp: 'HAW 17/Sep/2026, 5:44:18 am (UTC)'!
receiveWithReservation: aGuestType

	state := state receiveWithReservation: aGuestType! !

!Room methodsFor: 'hosting' stamp: 'HAW 17/Sep/2026, 5:44:18 am (UTC)'!
reserve

	state := state reserve! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:44:18 am (UTC)'!
signalRoomIsNotEmpty

	^ self error: self roomIsNotEmptyErrorDescription! !

!Room class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 5:44:18 am (UTC)'!
signalRoomIsNotReserved

	^ self error: self roomIsNotReservedErrorDescription! !

!RoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
isAvailable

	self subclassResponsibility! !

!RoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
isOccupied

	self subclassResponsibility! !

!RoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
isReserved

	self subclassResponsibility! !

!RoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
lossUsing: aPriceList

	self subclassResponsibility! !

!RoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	self subclassResponsibility! !

!RoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
receive: aGuestType

	self subclassResponsibility! !

!RoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
receiveWithReservation: aGuestType

	self subclassResponsibility! !

!RoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
reserve

	self subclassResponsibility! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
isAvailable

	^ true! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
isOccupied

	^ false! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
isReserved

	^ false! !

!AvailableRoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
receive: aGuestType

	^ OccupiedRoomState with: aGuestType! !

!AvailableRoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
receiveWithReservation: aGuestType

	^ Room signalRoomIsNotReserved! !

!AvailableRoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
reserve

	^ ReservedRoomState new! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
lossUsing: aPriceList

	^ aPriceList values max! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^ 0 * peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
initializeWith: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
isAvailable

	^ false! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
isOccupied

	^ true! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
isReserved

	^ false! !

!OccupiedRoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
receive: aGuestType

	^ Room signalRoomIsNotEmpty! !

!OccupiedRoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
receiveWithReservation: aGuestType

	^ Room signalRoomIsNotReserved! !

!OccupiedRoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
reserve

	^ Room signalRoomIsNotEmpty! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
lossUsing: aPriceList

	^ 0 * peso! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: anUnknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
with: aGuestType

	^ self new initializeWith: aGuestType! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
isAvailable

	^ false! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
isOccupied

	^ true! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
isReserved

	^ true! !

!ReservedRoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
receive: aGuestType

	^ Room signalRoomIsNotEmpty! !

!ReservedRoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
receiveWithReservation: aGuestType

	^ OccupiedRoomState with: aGuestType! !

!ReservedRoomState methodsFor: 'state' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
reserve

	^ Room signalRoomIsNotEmpty! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
lossUsing: aPriceList

	^ 0 * peso! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 5:44:17 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

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

!FloorTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:45:14 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withRooms: aNumberOfRooms pricedAt: aPriceList! !

!FloorTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:45:14 am (UTC)'!
createFloorWithAVacationGuestAConferenceGuestAndAReservation

	| floor |
	
	floor := self createFloorWith: 10 and: self defaultPriceList.
	floor receive: self guestTypeVacation atRoom: 1.
	floor receive: self guestTypeConference atRoom: 2.
	floor reserveRoom: 3.
	
	^ floor! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:14 am (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |
	
	floor := self createFloorWith: 10 and: self defaultPriceList.
	
	self assert: floor isAvailable.
	self assert: floor totalRoomsOccupied equals: 0.
	self assert: floor totalRoomsReserved equals: 0! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:14 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	floor receive: self guestTypeVacation atRoom: 1.
	
	self assert: floor totalRoomsAvailable equals: roomsNumber - 1.
	self assert: floor totalRoomsOccupied equals: 1.
	self assert: floor totalRoomsReserved equals: 0! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:14 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsNumber roomsAvailable roomsOccupied roomsReserved |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	floor reserveRoom: 1.

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	floor receiveWithReservation: self guestTypeVacation atRoom: 1.
	
	self assert: floor totalRoomsAvailable equals: roomsAvailable.
	self assert: floor totalRoomsOccupied equals: roomsOccupied.
	self assert: floor totalRoomsReserved equals: roomsReserved - 1! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:14 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber and: self defaultPriceList.
	
	floor reserveRoom: 1.
	
	self assert: floor totalRoomsAvailable equals: roomsNumber - 1.
	self assert: floor totalRoomsOccupied equals: 1.
	self assert: floor totalRoomsReserved equals: 1! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:14 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |
	
	floor := self createFloorWithAVacationGuestAConferenceGuestAndAReservation.
		
	self assert: floor totalProfits equals: (100*peso) + (200*peso) + (50*peso)! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:14 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |
	
	floor := self createFloorWithAVacationGuestAConferenceGuestAndAReservation.
		
	self assert: floor totalLosses equals: (200*peso) * 7! !

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

!HotelTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
assertHasNoGuestsNorReservations: aHotel

	self assert: aHotel totalRoomsAvailable equals: aHotel totalRooms.
	self assert: aHotel totalRoomsReserved equals: 0.
	self assert: aHotel totalRoomsOccupied equals: 0! !

!HotelTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:45:14 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withRooms: aNumberOfRooms pricedAt: aPriceList! !

!HotelTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:45:14 am (UTC)'!
createHotel

	^ Hotel withFloors: (OrderedCollection
		with: (self createFloorWith: 10 and: self defaultPriceList)
		with: (self createFloorWith: 1 and: self defaultPriceList))! !

!HotelTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10 and: self defaultPriceList))! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 0.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |
	
	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 1.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	hotel reserveRoom: 2 atFloor: 1.

	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 0.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation
	
	| hotel |
	
	hotel := self createHotel.

	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotReservedErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits
	
	| hotel firstFloor secondFloor |
	
	firstFloor := self createFloorWith: 10 and: self defaultPriceList.
	secondFloor := self createFloorWith: 10 and: self defaultPriceList.
	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: hotel totalProfits equals: firstFloor totalProfits + secondFloor totalProfits! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
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

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test09HotelCannotReserveANonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test10HotelCannotReserveANonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Hotel floorNumberDoesNotExistErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Hotel floorNumberDoesNotExistErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
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

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |

	room := Room new.

	self 
		assert: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: self maxPriceInList! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.
	room reserve.

	self assert: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) equals: 0*peso! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:45:15 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |
	
	room := Room new.
	room receive: self guestTypeVacation.

	self assert: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]) equals: 0*peso! !
