'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 9:49:22 am'!
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

!classDefinition: #SimsHotelTest category: #'ISW1-2024-1C-Parcial-Tests'!
TestCase subclass: #SimsHotelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'SimsHotelTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
SimsHotelTest class
	instanceVariableNames: ''!

!classDefinition: #FloorTest category: #'ISW1-2024-1C-Parcial-Tests'!
SimsHotelTest subclass: #FloorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'FloorTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
FloorTest class
	instanceVariableNames: ''!

!classDefinition: #HotelTest category: #'ISW1-2024-1C-Parcial-Tests'!
SimsHotelTest subclass: #HotelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'HotelTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
HotelTest class
	instanceVariableNames: ''!

!classDefinition: #RoomTest category: #'ISW1-2024-1C-Parcial-Tests'!
SimsHotelTest subclass: #RoomTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'RoomTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
RoomTest class
	instanceVariableNames: ''!


!Floor methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isAvailable

	^ rooms allSatisfy: [ :room | room isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
totalLosses

	^ rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
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

!Floor methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
initializeWithRooms: aNumberOfRooms pricedAt: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList! !

!Floor methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
receive: aGuestType atRoom: aRoomNumber ifNone: aNoneBlock

	self withRoomNumber: aRoomNumber do: [ :room | room receive: aGuestType ] ifNone: aNoneBlock! !

!Floor methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber ifNone: aNoneBlock

	self withRoomNumber: aRoomNumber do: [ :room | room receiveWithReservation: aGuestType ] ifNone: aNoneBlock! !

!Floor methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
reserveRoom: aRoomNumber ifNone: aNoneBlock

	self withRoomNumber: aRoomNumber do: [ :room | room reserve ] ifNone: aNoneBlock! !

!Floor methodsFor: 'guests - private' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
withRoomNumber: aRoomNumber do: aRoomBlock ifNone: aNoneBlock

	aRoomBlock value: (rooms at: aRoomNumber ifAbsent: [ ^ aNoneBlock value ])! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
assertAreValidPrices: aPriceList

	aPriceList isEmpty ifTrue: [ self signalNoPrices ].

	aPriceList do: [ :price |
		self assertIsPositive: price ifFalse: [ self signalPriceMustBePositive ] ]! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:39:26 pm (UTC)'!
assertIsInteger: aNumber ifFalse: signalsBlock

	aNumber isInteger ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:40:06 pm (UTC)'!
assertIsPositive: aNumber ifFalse: signalsBlock

	aNumber strictlyPositive ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ]! !

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

!Floor class methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
withRooms: aNumberOfRooms pricedAt: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertAreValidPrices: aPriceList.

	^ self new initializeWithRooms: aNumberOfRooms pricedAt: aPriceList! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
totalLosses

	^ self sumForEachFloor: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
totalProfits

	^ self sumForEachFloor: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection! !

!Hotel methodsFor: 'totals' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
totalRooms

	^ self sumForEachFloor: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
totalRoomsAvailable

	^ self sumForEachFloor: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
totalRoomsOccupied

	^ self sumForEachFloor: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
totalRoomsReserved

	^ self sumForEachFloor: [ :floor | floor totalRoomsReserved ]! !

!Hotel methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorNumber: aFloorNumber) receive: aGuestType atRoom: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorNumber: aFloorNumber) receiveWithReservation: aGuestType atRoom: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self floorNumber: aFloorNumber) reserveRoom: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'guests - private' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
floorNumber: aFloorNumber

	^ floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]! !

!Hotel methodsFor: 'totals - private' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
sumForEachFloor: aFloorBlock

	^ floors sum: aFloorBlock! !

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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:47:28 pm (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection! !

!Room methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
receive: aGuestType

	state receive: aGuestType in: self! !

!Room methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
receiveWithReservation: aGuestType

	state receiveWithReservation: aGuestType in: self! !

!Room methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
reserve

	state reserveIn: self! !

!Room methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isAvailable

	^ state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isOccupied

	^ state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isReserved

	^ state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
initialize

	state := AvailableRoomState new! !

!Room methodsFor: 'guests - private' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
markAsReserved

	state := ReservedRoomState new! !

!Room methodsFor: 'guests - private' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
occupyWith: aGuestType

	state := OccupiedRoomState for: aGuestType! !

!Room methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
signalRoomIsNotEmpty

	self error: self class roomIsNotEmptyErrorDescription! !

!Room methodsFor: 'exceptions' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
signalRoomIsNotReserved

	self error: self class roomIsNotReservedErrorDescription! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!RoomState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isAvailable

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isOccupied

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isReserved

	self subclassResponsibility! !

!RoomState methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
receive: aGuestType in: aRoom

	aRoom signalRoomIsNotEmpty! !

!RoomState methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom signalRoomIsNotReserved! !

!RoomState methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
reserveIn: aRoom

	aRoom signalRoomIsNotEmpty! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isAvailable

	^ true! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isOccupied

	^ false! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isReserved

	^ false! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
receive: aGuestType in: aRoom

	aRoom occupyWith: aGuestType! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
reserveIn: aRoom

	aRoom markAsReserved! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
initializeFor: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isAvailable

	^ false! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isOccupied

	^ true! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isReserved

	^ false! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
for: aGuestType

	^ self new initializeFor: aGuestType! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isAvailable

	^ false! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isOccupied

	^ true! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
isReserved

	^ true! !

!ReservedRoomState methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom occupyWith: aGuestType! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:47:27 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2! !

!SimsHotelTest methodsFor: 'create' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withRooms: aNumberOfRooms pricedAt: aPriceList! !

!SimsHotelTest methodsFor: 'create' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
defaultPriceList

	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!SimsHotelTest methodsFor: 'create' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
guestTypeConference

	^ #conferenceGuest! !

!SimsHotelTest methodsFor: 'create' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
guestTypeVacation

	^ #vacationGuest! !

!SimsHotelTest methodsFor: 'create' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
maxPriceInList

	^ 200*peso! !

!SimsHotelTest methodsFor: 'create' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
minPriceInList

	^ 100*peso! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test01CannotCreateFloorWithoutRooms

	self
		should: [ self createFloorWith: 0 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor numberOfRoomsMustBePositiveErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test02CannotCreateFloorWithNoIntergerNumberOfRooms

	self
		should: [ self createFloorWith: 1.5 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor numberOfRoomsMustBeIntegerErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test03CannotCreateFloorWithoutPrices

	self
		should: [ self createFloorWith: 10 and: Dictionary new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor pricesListCannotBeEmptyErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |

	floor := self createDefaultFloor.

	self assert: floor isAvailable.
	self assertFloor: floor hasAvailable: self defaultNumberOfRooms occupied: 0 reserved: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |

	floor := self createDefaultFloor.

	self receive: self guestTypeVacation in: floor atRoom: 1.

	self deny: floor isAvailable.
	self assertFloor: floor hasAvailable: self defaultNumberOfRooms - 1 occupied: 1 reserved: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor |

	floor := self createDefaultFloor.
	floor reserveRoom: 1 ifNone: [ self fail ].

	floor receiveWithReservation: self guestTypeVacation atRoom: 1 ifNone: [ self fail ].

	self assertFloor: floor hasAvailable: self defaultNumberOfRooms - 1 occupied: 1 reserved: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |

	floor := self createDefaultFloor.

	floor reserveRoom: 1 ifNone: [ self fail ].

	self assertFloor: floor hasAvailable: self defaultNumberOfRooms - 1 occupied: 1 reserved: 1! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |

	floor := self createFloorWithTwoGuestsAndOneReservation.

	self assert: self minPriceInList + self maxPriceInList + (self minPriceInList / 2) equals: floor totalProfits! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |

	floor := self createFloorWithTwoGuestsAndOneReservation.

	self assert: self maxPriceInList * (self defaultNumberOfRooms - 3) equals: floor totalLosses! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test10NoneBlockIsEvaluatedWhenReceivingAtNonexistentRoom

	| floor |

	floor := self createDefaultFloor.

	floor receive: self guestTypeVacation atRoom: self defaultNumberOfRooms + 1 ifNone: [
		^ self assertFloor: floor hasAvailable: self defaultNumberOfRooms occupied: 0 reserved: 0 ].

	self fail! !

!FloorTest methodsFor: 'create' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
createDefaultFloor

	^ self createFloorWith: self defaultNumberOfRooms and: self defaultPriceList! !

!FloorTest methodsFor: 'create' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
createFloorWithTwoGuestsAndOneReservation

	| floor |

	floor := self createDefaultFloor.
	self receive: self guestTypeVacation in: floor atRoom: 1.
	self receive: self guestTypeConference in: floor atRoom: 2.
	floor reserveRoom: 3 ifNone: [ self fail ].

	^ floor! !

!FloorTest methodsFor: 'create' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
defaultNumberOfRooms

	^ 10! !

!FloorTest methodsFor: 'guests' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
receive: aGuestType in: aFloor atRoom: aRoomNumber

	aFloor receive: aGuestType atRoom: aRoomNumber ifNone: [ self fail ]! !

!FloorTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
assertFloor: aFloor hasAvailable: aNumberOfAvailableRooms occupied: aNumberOfOccupiedRooms reserved: aNumberOfReservedRooms

	self assert: aNumberOfAvailableRooms equals: aFloor totalRoomsAvailable.
	self assert: aNumberOfOccupiedRooms equals: aFloor totalRoomsOccupied.
	self assert: aNumberOfReservedRooms equals: aFloor totalRoomsReserved! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test02NewHotelsAreEmpty

	| hotel |

	hotel := self createHotel.

	self assert: hotel isEmpty.
	self assertIsUntouched: hotel! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self deny: hotel isEmpty.
	self assertHotel: hotel hasAvailable: hotel totalRooms - 1 reserved: 0 occupied: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assertHotel: hotel hasAvailable: hotel totalRooms - 1 reserved: 1 occupied: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.
	hotel reserveRoom: 2 atFloor: 1.

	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assertHotel: hotel hasAvailable: hotel totalRooms - 1 reserved: 0 occupied: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation

	| hotel |

	hotel := self createHotel.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Room roomIsNotReservedErrorDescription equals: error messageText.
			self assertIsUntouched: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits

	| hotel floor1 floor2 |

	floor1 := self createDefaultFloor.
	floor2 := self createDefaultFloor.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: floor1 totalProfits + floor2 totalProfits equals: hotel totalProfits! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses

	| hotel floor1 floor2 |

	floor1 := self createDefaultFloor.
	floor2 := self createDefaultFloor.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.
	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: floor1 totalLosses + floor2 totalLosses equals: hotel totalLosses! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test09HotelCannotReserveANonexistentRoom

	self
		assertOn: self createHotelWithOneFloor
		that: [ :hotel | hotel reserveRoom: 42 atFloor: 1 ]
		failsWith: Hotel roomNumberDoesNotExistErrorDescription! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test10HotelCannotReserveANonexistentFloor

	self
		assertOn: self createHotelWithOneFloor
		that: [ :hotel | hotel reserveRoom: 1 atFloor: 42 ]
		failsWith: Hotel floorNumberDoesNotExistErrorDescription! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom

	self
		assertOn: self createHotelWithOneFloor
		that: [ :hotel | hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failsWith: Hotel roomNumberDoesNotExistErrorDescription! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor

	self
		assertOn: self createHotelWithOneFloor
		that: [ :hotel | hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		failsWith: Hotel floorNumberDoesNotExistErrorDescription! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.
	hotel reserveRoom: 1 atFloor: 1.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Hotel roomNumberDoesNotExistErrorDescription equals: error messageText.
			self assertHotel: hotel hasAvailable: hotel totalRooms - 1 reserved: 1 occupied: 1 ]! !

!HotelTest methodsFor: 'create' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
createDefaultFloor

	^ self createFloorWith: 10 and: self defaultPriceList! !

!HotelTest methodsFor: 'create' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
createHotel

	^ Hotel withFloors: (OrderedCollection
		with: self createDefaultFloor
		with: (self createFloorWith: 1 and: self defaultPriceList))! !

!HotelTest methodsFor: 'create' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: self createDefaultFloor)! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
assertHotel: aHotel hasAvailable: aNumberOfAvailableRooms reserved: aNumberOfReservedRooms occupied: aNumberOfOccupiedRooms

	self assert: aNumberOfAvailableRooms equals: aHotel totalRoomsAvailable.
	self assert: aNumberOfReservedRooms equals: aHotel totalRoomsReserved.
	self assert: aNumberOfOccupiedRooms equals: aHotel totalRoomsOccupied! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
assertIsUntouched: aHotel

	self assertHotel: aHotel hasAvailable: aHotel totalRooms reserved: 0 occupied: 0! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
assertOn: aHotel that: aHotelBlock failsWith: anErrorDescription

	self
		should: [ aHotelBlock value: aHotel ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			self assertIsUntouched: aHotel ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test01NewRoomsAreAvailable

	| room |

	room := Room new.

	self assertIsAvailable: room! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test02ReceivingAGuestMakesTheRoomOccupied

	| room |

	room := Room new.

	room receive: self guestTypeVacation.

	self assertIsOccupiedWithGuest: room! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test03ReservingARoomMakesTheRoomReservedAndOccupied

	| room |

	room := Room new.

	room reserve.

	self assertIsReserved: room! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test04CannotReceiveAGuestInAOccupiedRoom

	| room |

	room := Room new.
	room receive: self guestTypeVacation.

	self
		should: [ room receive: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Room roomIsNotEmptyErrorDescription equals: error messageText.
			self assertIsOccupiedWithGuest: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test05CannotReceiveAGuestInAReservedRoom

	| room |

	room := Room new.
	room reserve.

	self
		should: [ room receive: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Room roomIsNotEmptyErrorDescription equals: error messageText.
			self assertIsReserved: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test06ReceivingOnReservationMakesTheRoomOccupied

	| room |

	room := Room new.
	room reserve.

	room receiveWithReservation: self guestTypeVacation.

	self assertIsOccupiedWithGuest: room! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test07CannotReceiveOnReservationAnAvailableRoom

	| room |

	room := Room new.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Room roomIsNotReservedErrorDescription equals: error messageText.
			self assertIsAvailable: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test08CannotReceiveOnReservationAnOccupiedRoom

	| room |

	room := Room new.
	room receive: self guestTypeVacation.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Room roomIsNotReservedErrorDescription equals: error messageText.
			self assertIsOccupiedWithGuest: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test09ProfitOfAvailableRoomIsCeroPesos

	self assert: 0*peso equals: (self profitOf: Room new)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	| room |

	room := Room new.
	room reserve.

	self assert: self minPriceInList / 2 equals: (self profitOf: room)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test11ProfitOfOccupiedRoomDependsOnGuestType

	| roomWithConferenceGuest roomWithVacationGuest |

	roomWithConferenceGuest := Room new.
	roomWithConferenceGuest receive: self guestTypeConference.

	roomWithVacationGuest := Room new.
	roomWithVacationGuest receive: self guestTypeVacation.

	self assert: self maxPriceInList equals: (self profitOf: roomWithConferenceGuest).
	self assert: self minPriceInList equals: (self profitOf: roomWithVacationGuest)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test12NoProfitOnOccupiedRoomByUnknownGuestType

	| room |

	room := Room new.
	room receive: #unknownGuest.

	room profitUsing: self defaultPriceList ifAbsentGuestType: [ ^ self ].

	"we should not get here"
	self failWith: 'should not calculate profit on room occupied by unknown guest type'! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	self assert: self maxPriceInList equals: (self lossOf: Room new)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.
	room reserve.

	self assert: 0*peso equals: (self lossOf: room)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |

	room := Room new.
	room receive: self guestTypeVacation.

	self assert: 0*peso equals: (self lossOf: room)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test16CannotReserveWhenReserved

	| room |

	room := Room new.
	room reserve.

	self
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: Room roomIsNotEmptyErrorDescription equals: anError messageText.
			self assertIsReserved: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
test17CannotReserveWhenOccupied

	| room |

	room := Room new.
	room receive: self guestTypeVacation.

	self
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: Room roomIsNotEmptyErrorDescription equals: anError messageText.
			self assertIsOccupiedWithGuest: room ]! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
assertIsAvailable: aRoom

	self assert: aRoom isAvailable.
	self deny: aRoom isOccupied.
	self deny: aRoom isReserved! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
assertIsOccupiedWithGuest: aRoom

	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable.
	self deny: aRoom isReserved! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
assertIsReserved: aRoom

	self assert: aRoom isReserved.
	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable! !

!RoomTest methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
lossOf: aRoom

	^ aRoom lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]! !

!RoomTest methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:48:34 pm (UTC)'!
profitOf: aRoom

	^ aRoom profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]! !
