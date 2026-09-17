'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:16:20 am'!
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

!classDefinition: #SimsHotelsTest category: #'ISW1-2024-1C-Parcial-Tests'!
TestCase subclass: #SimsHotelsTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'SimsHotelsTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
SimsHotelsTest class
	instanceVariableNames: ''!

!classDefinition: #FloorTest category: #'ISW1-2024-1C-Parcial-Tests'!
SimsHotelsTest subclass: #FloorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'FloorTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
FloorTest class
	instanceVariableNames: ''!

!classDefinition: #HotelTest category: #'ISW1-2024-1C-Parcial-Tests'!
SimsHotelsTest subclass: #HotelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'HotelTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
HotelTest class
	instanceVariableNames: ''!

!classDefinition: #RoomTest category: #'ISW1-2024-1C-Parcial-Tests'!
SimsHotelsTest subclass: #RoomTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'RoomTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
RoomTest class
	instanceVariableNames: ''!


!Floor methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isAvailable

	^ rooms allSatisfy: [ :room | room isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
totalLosses

	^ self sumOverRooms: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
totalProfits

	^ self sumOverRooms: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

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

!Floor methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
initializeWithNumberOfRooms: aNumberOfRooms andPrices: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :roomNumber | Room new ].
	prices := aPriceList! !

!Floor methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
withRoom: aRoomNumber do: aRoomBlock ifNone: aNoneBlock

	^ aRoomBlock value: (rooms at: aRoomNumber ifAbsent: [ ^ aNoneBlock value ])! !

!Floor methodsFor: 'accounting - private' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
sumOverRooms: aRoomBlock

	^ rooms sum: aRoomBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:39:26 pm (UTC)'!
assertIsInteger: aNumber ifFalse: signalsBlock

	aNumber isInteger ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:40:06 pm (UTC)'!
assertIsPositive: aNumber ifFalse: signalsBlock

	aNumber strictlyPositive ifFalse: signalsBlock! !

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

!Floor class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
withNumberOfRooms: aNumberOfRooms andPrices: aPriceList

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ].
	aPriceList isEmpty ifTrue: [ self signalNoPrices ].
	aPriceList do: [ :price | self assertIsPositive: price ifFalse: [ self signalPriceMustBePositive ] ].

	^ self new initializeWithNumberOfRooms: aNumberOfRooms andPrices: aPriceList! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
totalLosses

	^ self sumOverFloors: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
totalProfits

	^ self sumOverFloors: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
totalRooms

	^ self sumOverFloors: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
totalRoomsAvailable

	^ self sumOverFloors: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
totalRoomsOccupied

	^ self sumOverFloors: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
totalRoomsReserved

	^ self sumOverFloors: [ :floor | floor totalRoomsReserved ]! !

!Hotel methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self atFloor: aFloorNumber atRoom: aRoomNumber do: [ :room | room receive: aGuestType ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self atFloor: aFloorNumber atRoom: aRoomNumber do: [ :room | room receiveWithReservation: aGuestType ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	self atFloor: aFloorNumber atRoom: aRoomNumber do: [ :room | room reserve ]! !

!Hotel methodsFor: 'guests - private' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
atFloor: aFloorNumber atRoom: aRoomNumber do: aRoomBlock

	| floor |

	floor := floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ].

	floor withRoom: aRoomNumber do: aRoomBlock ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'totals - private' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
sumOverFloors: aFloorBlock

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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
receive: aGuestType

	state receive: aGuestType in: self! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
receiveWithReservation: aGuestType

	state receiveWithReservation: aGuestType in: self! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
reserve

	state reserve: self! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isAvailable

	^ state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isOccupied

	^ state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isReserved

	^ state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
initialize

	self beAvailable! !

!Room methodsFor: 'state - private' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
beAvailable

	state := AvailableRoomState new! !

!Room methodsFor: 'state - private' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
beOccupiedBy: aGuestType

	state := OccupiedRoomState by: aGuestType! !

!Room methodsFor: 'state - private' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
beReserved

	state := ReservedRoomState new! !

!Room methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
signalRoomIsNotEmpty

	self error: self class roomIsNotEmptyErrorDescription! !

!Room methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
signalRoomIsNotReserved

	self error: self class roomIsNotReservedErrorDescription! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isAvailable

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isOccupied

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isReserved

	self subclassResponsibility! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
receive: aGuestType in: aRoom

	aRoom signalRoomIsNotEmpty! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom signalRoomIsNotReserved! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
reserve: aRoom

	aRoom signalRoomIsNotEmpty! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isAvailable

	^ true! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isOccupied

	^ false! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isReserved

	^ false! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
receive: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
reserve: aRoom

	aRoom beReserved! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
initializeBy: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isAvailable

	^ false! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isOccupied

	^ true! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isReserved

	^ false! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
by: aGuestType

	^ self new initializeBy: aGuestType! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isAvailable

	^ false! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isOccupied

	^ true! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
isReserved

	^ true! !

!ReservedRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:14:12 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withNumberOfRooms: aNumberOfRooms andPrices: aPriceList! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
createFloorWith10Rooms

	^ self createFloorWith: 10 and: self defaultPriceList! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
defaultPriceList

	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
guestTypeConference

	^ #conferenceGuest! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
guestTypeVacation

	^ #vacationGuest! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
maxPriceInList

	^ 200*peso! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
minPriceInList

	^ 100*peso! !

!SimsHotelsTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
should: aBlock raiseErrorWithDescription: anErrorDescription andAssert: anAssertionsBlock

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			anAssertionsBlock value ]! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test01CannotCreateFloorWithoutRooms

	self
		should: [ self createFloorWith: 0 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor numberOfRoomsMustBePositiveErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test02CannotCreateFloorWithNoIntergerNumberOfRooms

	self
		should: [ self createFloorWith: 1.5 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor numberOfRoomsMustBeIntegerErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test03CannotCreateFloorWithoutPrices

	self
		should: [ self createFloorWith: 10 and: Dictionary new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor pricesListCannotBeEmptyErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |

	floor := self createFloorWith10Rooms.

	self assert: floor isAvailable.
	self assert: 0 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved.! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |

	floor := self createFloorWith10Rooms.

	self receive: self guestTypeVacation atRoom: 1 of: floor.

	self assert: floor totalRooms - 1 equals: floor totalRoomsAvailable.
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved.! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsAvailable roomsOccupied roomsReserved |

	floor := self createFloorWith10Rooms.

	self reserveRoom: 1 of: floor.

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	self receiveWithReservation: self guestTypeVacation atRoom: 1 of: floor.

	self assert: roomsAvailable equals: floor totalRoomsAvailable.
	self assert: roomsOccupied equals: floor totalRoomsOccupied.
	self assert: roomsReserved - 1 equals: floor totalRoomsReserved.! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |

	floor := self createFloorWith10Rooms.

	self reserveRoom: 1 of: floor.

	self assert: floor totalRooms - 1 equals: floor totalRoomsAvailable.
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 1 equals: floor totalRoomsReserved.! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	self
		assert: self maxPriceInList + self minPriceInList + (self minPriceInList / 2)
		equals: self createFloorWithTwoGuestsAndAReservation totalProfits! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	self
		assert: self maxPriceInList * 7
		equals: self createFloorWithTwoGuestsAndAReservation totalLosses! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test10CannotCreateFloorWithNonPositivePrices

	self
		should: [ self createFloorWith: 10 and: (Dictionary new at: self guestTypeVacation put: 0*peso; yourself) ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor priceMustBePositiveErrorDescription! !

!FloorTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
createFloorWithTwoGuestsAndAReservation

	| floor |

	floor := self createFloorWith10Rooms.

	self receive: self guestTypeVacation atRoom: 1 of: floor.
	self receive: self guestTypeConference atRoom: 2 of: floor.
	self reserveRoom: 3 of: floor.

	^ floor! !

!FloorTest methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
receive: aGuestType atRoom: aRoomNumber of: aFloor

	self withRoom: aRoomNumber of: aFloor do: [ :room | room receive: aGuestType ]! !

!FloorTest methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber of: aFloor

	self withRoom: aRoomNumber of: aFloor do: [ :room | room receiveWithReservation: aGuestType ]! !

!FloorTest methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
reserveRoom: aRoomNumber of: aFloor

	self withRoom: aRoomNumber of: aFloor do: [ :room | room reserve ]! !

!FloorTest methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
withRoom: aRoomNumber of: aFloor do: aRoomBlock

	aFloor withRoom: aRoomNumber do: aRoomBlock ifNone: [ self fail ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test02NewHotelsAreEmpty

	| hotel |

	hotel := self createHotel.

	self assert: hotel isEmpty.
	self assertHasNoRoomsTaken: hotel! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self deny: hotel isEmpty.
	self assertThat: hotel hasRoomsAvailableLessThanTotalBy: 1 reserved: 0 occupied: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assertThat: hotel hasRoomsAvailableLessThanTotalBy: 1 reserved: 1 occupied: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assertThat: hotel hasRoomsAvailableLessThanTotalBy: 1 reserved: 0 occupied: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation

	| hotel |

	hotel := self createHotel.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raiseErrorWithDescription: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertHasNoRoomsTaken: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits

	| hotel floor1 floor2 |

	floor1 := self createFloorWith10Rooms.
	floor2 := self createFloorWith10Rooms.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: self minPriceInList + self maxPriceInList equals: hotel totalProfits.
	self assert: floor1 totalProfits + floor2 totalProfits equals: hotel totalProfits! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses

	| hotel floor1 floor2 |

	floor1 := self createFloorWith10Rooms.
	floor2 := self createFloorWith10Rooms.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.
	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: self maxPriceInList * 16 equals: hotel totalLosses.
	self assert: floor1 totalLosses + floor2 totalLosses equals: hotel totalLosses! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test09HotelCannotReserveANonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		raiseErrorWithDescription: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasNoRoomsTaken: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test10HotelCannotReserveANonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		raiseErrorWithDescription: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasNoRoomsTaken: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raiseErrorWithDescription: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasNoRoomsTaken: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		raiseErrorWithDescription: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasNoRoomsTaken: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	hotel reserveRoom: 1 atFloor: 1.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raiseErrorWithDescription: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertThat: hotel hasRoomsAvailableLessThanTotalBy: 1 reserved: 1 occupied: 1 ]! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
createHotel

	^ Hotel withFloors: (OrderedCollection
		with: self createFloorWith10Rooms
		with: (self createFloorWith: 1 and: self defaultPriceList))! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: self createFloorWith10Rooms)! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
assertHasNoRoomsTaken: aHotel

	self assertThat: aHotel hasRoomsAvailableLessThanTotalBy: 0 reserved: 0 occupied: 0! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
assertThat: aHotel hasRoomsAvailableLessThanTotalBy: aNumberOfTakenRooms reserved: aNumberOfReservedRooms occupied: aNumberOfOccupiedRooms

	self assert: aHotel totalRooms - aNumberOfTakenRooms equals: aHotel totalRoomsAvailable.
	self assert: aNumberOfReservedRooms equals: aHotel totalRoomsReserved.
	self assert: aNumberOfOccupiedRooms equals: aHotel totalRoomsOccupied! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test01NewRoomsAreAvailable

	self assertIsAvailable: Room new! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test02ReceivingAGuestMakesTheRoomOccupied

	self assertIsOccupiedByAGuest: (self createRoomOccupiedBy: self guestTypeVacation)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test03ReservingARoomMakesTheRoomReservedAndOccupied

	self assertIsReserved: self createReservedRoom! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test04CannotReceiveAGuestInAOccupiedRoom

	| room |

	room := self createRoomOccupiedBy: self guestTypeVacation.

	self
		should: [ room receive: self guestTypeVacation ]
		raiseErrorWithDescription: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsOccupiedByAGuest: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test05CannotReceiveAGuestInAReservedRoom

	| room |

	room := self createReservedRoom.

	self
		should: [ room receive: self guestTypeVacation ]
		raiseErrorWithDescription: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsReserved: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test06ReceivingOnReservationMakesTheRoomOccupied

	| room |

	room := self createReservedRoom.

	room receiveWithReservation: self guestTypeVacation.

	self assertIsOccupiedByAGuest: room! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test07CannotReceiveOnReservationAnAvailableRoom

	| room |

	room := Room new.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		raiseErrorWithDescription: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsAvailable: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test08CannotReceiveOnReservationAnOccupiedRoom

	| room |

	room := self createRoomOccupiedBy: self guestTypeVacation.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		raiseErrorWithDescription: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsOccupiedByAGuest: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test09ProfitOfAvailableRoomIsCeroPesos

	self assert: 0*peso equals: (self profitOf: Room new)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	self assert: self minPriceInList / 2 equals: (self profitOf: self createReservedRoom)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test11ProfitOfOccupiedRoomDependsOnGuestType

	self assert: self maxPriceInList equals: (self profitOf: (self createRoomOccupiedBy: self guestTypeConference)).
	self assert: self minPriceInList equals: (self profitOf: (self createRoomOccupiedBy: self guestTypeVacation))! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test12NoProfitOnOccupiedRoomByUnknownGuestType

	(self createRoomOccupiedBy: #unknownGuest) profitUsing: self defaultPriceList ifAbsentGuestType: [ ^ self ].

	"we should not get here"
	self failWith: 'should not calculate profit on room occupied by unknown guest type'! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	self assert: self maxPriceInList equals: (self lossOf: Room new)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	self assert: 0*peso equals: (self lossOf: self createReservedRoom)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	self assert: 0*peso equals: (self lossOf: (self createRoomOccupiedBy: self guestTypeVacation))! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test16CannotReserveWhenReserved

	| room |

	room := self createReservedRoom.

	self
		should: [ room reserve ]
		raiseErrorWithDescription: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsReserved: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
test17CannotReserveWhenOccupied

	| room |

	room := self createRoomOccupiedBy: self guestTypeVacation.

	self
		should: [ room reserve ]
		raiseErrorWithDescription: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsOccupiedByAGuest: room ]! !

!RoomTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
createReservedRoom

	^ Room new reserve; yourself! !

!RoomTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
createRoomOccupiedBy: aGuestType

	^ Room new receive: aGuestType; yourself! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
assertIsAvailable: aRoom

	self assert: aRoom isAvailable.
	self deny: aRoom isOccupied.
	self deny: aRoom isReserved! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
assertIsOccupiedByAGuest: aRoom

	self assert: aRoom isOccupied.
	self deny: aRoom isReserved.
	self deny: aRoom isAvailable! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
assertIsReserved: aRoom

	self assert: aRoom isReserved.
	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable! !

!RoomTest methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
lossOf: aRoom

	^ aRoom lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]! !

!RoomTest methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:15:15 am (UTC)'!
profitOf: aRoom

	^ aRoom profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]! !
