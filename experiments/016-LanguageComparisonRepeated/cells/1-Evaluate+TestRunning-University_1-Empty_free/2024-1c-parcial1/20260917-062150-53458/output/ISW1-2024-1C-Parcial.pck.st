'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:24:53 am'!
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


!Floor methodsFor: 'testing' stamp: 'FRT 21/Apr/2024, 6:02:31 pm (UTC)'!
isAvailable
	
	^ self totalRooms = self totalRoomsAvailable

		
! !

!Floor methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
withRoom: aRoomNumber do: aRoomBlock ifNone: noneBlock

	^ aRoomBlock value: (rooms at: aRoomNumber ifAbsent: [ ^ noneBlock value ])! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
totalLosses

	^ self sumOverRooms: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
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

!Floor methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
initializeWithNumberOfRooms: aNumberOfRooms andPrices: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList! !

!Floor methodsFor: 'accounting - private' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
sumOverRooms: aRoomAmountBlock

	^ rooms sum: aRoomAmountBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:39:26 pm (UTC)'!
assertIsInteger: aNumber ifFalse: signalsBlock

	aNumber isInteger ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:40:06 pm (UTC)'!
assertIsPositive: aNumber ifFalse: signalsBlock

	aNumber strictlyPositive ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList isEmpty ifTrue: [ self signalNoPrices ].
	
	aPriceList do: [ :price | 
		self assertIsPositive: price ifFalse: [ self signalPriceMustBePositive ] ]! !

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

!Floor class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
withNumberOfRooms: aNumberOfRooms andPrices: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.
	
	^ self new initializeWithNumberOfRooms: aNumberOfRooms andPrices: aPriceList! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
totalLosses

	^ self sumOverFloors: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
totalProfits

	^ self sumOverFloors: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection! !

!Hotel methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self withRoom: aRoomNumber atFloor: aFloorNumber do: [ :room | room receive: aGuestType ]! !

!Hotel methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self withRoom: aRoomNumber atFloor: aFloorNumber do: [ :room | room receiveWithReservation: aGuestType ]! !

!Hotel methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	self withRoom: aRoomNumber atFloor: aFloorNumber do: [ :room | room reserve ]! !

!Hotel methodsFor: 'receiving - private' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
withRoom: aRoomNumber atFloor: aFloorNumber do: aRoomBlock

	| floor |
	
	floor := floors at: aFloorNumber ifAbsent: [ ^ self class signalFloorNumberDoesNotExist ].
	floor withRoom: aRoomNumber do: aRoomBlock ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
isEmpty

	^ self totalRooms = self totalRoomsAvailable! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
totalRooms

	^ self sumOverFloors: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
totalRoomsAvailable

	^ self sumOverFloors: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
totalRoomsOccupied

	^ self sumOverFloors: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
totalRoomsReserved

	^ self sumOverFloors: [ :floor | floor totalRoomsReserved ]! !

!Hotel methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 9:23:13 am (UTC)'!
sumOverFloors: aFloorAmountBlock

	^ floors sum: aFloorAmountBlock! !

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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:23:12 am (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.
	
	^ self new initializeWithFloors: aFloorsCollection! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
isAvailable

	^ state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
isOccupied

	^ state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
isReserved

	^ state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
initialize

	state := AvailableRoomState new! !

!Room methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
receive: aGuestType

	state receive: aGuestType in: self! !

!Room methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
receiveWithReservation: aGuestType

	state receiveWithReservation: aGuestType in: self! !

!Room methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
reserve

	state reserveIn: self! !

!Room methodsFor: 'receiving - private' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
beOccupiedBy: aGuestType

	state := OccupiedRoomState by: aGuestType! !

!Room methodsFor: 'receiving - private' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
beReserved

	state := ReservedRoomState new! !

!Room methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
signalRoomIsNotEmpty

	self error: self class roomIsNotEmptyErrorDescription! !

!Room methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:22:57 am (UTC)'!
signalRoomIsNotReserved

	self error: self class roomIsNotReservedErrorDescription! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!RoomState methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
receive: aGuestType in: aRoom

	self subclassResponsibility! !

!RoomState methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	self subclassResponsibility! !

!RoomState methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
reserveIn: aRoom

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
isAvailable

	^ false! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
isOccupied

	^ true! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
isReserved

	^ false! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility! !

!AvailableRoomState methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
receive: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType! !

!AvailableRoomState methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom signalRoomIsNotReserved! !

!AvailableRoomState methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
reserveIn: aRoom

	aRoom beReserved! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
isAvailable

	^ true! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
isOccupied

	^ false! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
initializeBy: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
receive: aGuestType in: aRoom

	aRoom signalRoomIsNotEmpty! !

!OccupiedRoomState methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom signalRoomIsNotReserved! !

!OccupiedRoomState methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
reserveIn: aRoom

	aRoom signalRoomIsNotEmpty! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
by: aGuestType

	^ self new initializeBy: aGuestType! !

!ReservedRoomState methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
receive: aGuestType in: aRoom

	aRoom signalRoomIsNotEmpty! !

!ReservedRoomState methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType! !

!ReservedRoomState methodsFor: 'receiving' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
reserveIn: aRoom

	aRoom signalRoomIsNotEmpty! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
isReserved

	^ true! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:22:56 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2! !

!SimsHotelTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:23 am (UTC)'!
createFloorWith: aNumberOfRooms

	^ Floor withNumberOfRooms: aNumberOfRooms andPrices: self defaultPriceList! !

!SimsHotelTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:23 am (UTC)'!
defaultPriceList
	
	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!SimsHotelTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:23 am (UTC)'!
guestTypeConference
	
	^ #conferenceGuest! !

!SimsHotelTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:23 am (UTC)'!
guestTypeVacation
	
	^ #vacationGuest! !

!SimsHotelTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:23 am (UTC)'!
maxPriceInList
	
	^ 200*peso! !

!SimsHotelTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:23 am (UTC)'!
minPriceInList
	
	^ 100*peso! !

!SimsHotelTest class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:23:23 am (UTC)'!
isAbstract

	^ self == SimsHotelTest! !

!FloorTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:38 am (UTC)'!
assertThat: aFloor hasAvailable: aNumberOfAvailableRooms occupied: aNumberOfOccupiedRooms reserved: aNumberOfReservedRooms

	self assert: aNumberOfAvailableRooms equals: aFloor totalRoomsAvailable.
	self assert: aNumberOfOccupiedRooms equals: aFloor totalRoomsOccupied.
	self assert: aNumberOfReservedRooms equals: aFloor totalRoomsReserved! !

!FloorTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:38 am (UTC)'!
createFloorWithTwoOccupiedAndOneReservedRooms

	| floor |
	
	floor := self createFloorWith: 10.
	
	self receive: self guestTypeVacation atRoom: 1 of: floor.
	self receive: self guestTypeConference atRoom: 2 of: floor.
	self reserveRoom: 3 of: floor.
	
	^ floor! !

!FloorTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:38 am (UTC)'!
receive: aGuestType atRoom: aRoomNumber of: aFloor

	aFloor withRoom: aRoomNumber do: [ :room | room receive: aGuestType ] ifNone: [ self fail ]! !

!FloorTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:38 am (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber of: aFloor

	aFloor withRoom: aRoomNumber do: [ :room | room receiveWithReservation: aGuestType ] ifNone: [ self fail ]! !

!FloorTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:38 am (UTC)'!
reserveRoom: aRoomNumber of: aFloor

	aFloor withRoom: aRoomNumber do: [ :room | room reserve ] ifNone: [ self fail ]! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:38 am (UTC)'!
test01CannotCreateFloorWithoutRooms

	self
		should: [ self createFloorWith: 0 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor numberOfRoomsMustBePositiveErrorDescription! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:38 am (UTC)'!
test02CannotCreateFloorWithNoIntergerNumberOfRooms

	self
		should: [ self createFloorWith: 1.5 ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor numberOfRoomsMustBeIntegerErrorDescription! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:39 am (UTC)'!
test03CannotCreateFloorWithoutPrices

	self
		should: [ Floor withNumberOfRooms: 10 andPrices: Dictionary new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor pricesListCannotBeEmptyErrorDescription! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:39 am (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |
	
	floor := self createFloorWith: 10.
	
	self assert: floor isAvailable.
	self assertThat: floor hasAvailable: 10 occupied: 0 reserved: 0! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:39 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |
	
	floor := self createFloorWith: 10.
	
	self receive: self guestTypeVacation atRoom: 1 of: floor.
	
	self assertThat: floor hasAvailable: 9 occupied: 1 reserved: 0! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:39 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor |
	
	floor := self createFloorWith: 10.
	self reserveRoom: 1 of: floor.

	self receiveWithReservation: self guestTypeVacation atRoom: 1 of: floor.
	
	self assertThat: floor hasAvailable: 9 occupied: 1 reserved: 0! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:39 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |
	
	floor := self createFloorWith: 10.
	
	self reserveRoom: 1 of: floor.
	
	self assertThat: floor hasAvailable: 9 occupied: 1 reserved: 1! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:39 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	self 
		assert: (100*peso) + (200*peso) + (50*peso) 
		equals: self createFloorWithTwoOccupiedAndOneReservedRooms totalProfits! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:39 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	self 
		assert: (200*peso) * 7 
		equals: self createFloorWithTwoOccupiedAndOneReservedRooms totalLosses! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:39 am (UTC)'!
test10CannotAccessANonexistentRoom

	| floor |
	
	floor := self createFloorWith: 10.
	
	self assert: #none equals: (floor withRoom: 11 do: [ :room | self fail ] ifNone: [ #none ])! !

!HotelTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
assertHotelTotalIsTheSumOfEachFloorTotalFor: anAmountSelector

	| hotel floor1 floor2 |
	
	floor1 := self createFloorWith: 10.
	floor2 := self createFloorWith: 10.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.
	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self 
		assert: (floor1 perform: anAmountSelector) + (floor2 perform: anAmountSelector) 
		equals: (hotel perform: anAmountSelector)! !

!HotelTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:58 am (UTC)'!
assertIsUntouched: aHotel

	self assertThat: aHotel hasAvailable: aHotel totalRooms reserved: 0 occupied: 0! !

!HotelTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:58 am (UTC)'!
assertThat: aHotel hasAvailable: aNumberOfAvailableRooms reserved: aNumberOfReservedRooms occupied: aNumberOfOccupiedRooms

	self assert: aNumberOfAvailableRooms equals: aHotel totalRoomsAvailable.
	self assert: aNumberOfReservedRooms equals: aHotel totalRoomsReserved.
	self assert: aNumberOfOccupiedRooms equals: aHotel totalRoomsOccupied! !

!HotelTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:58 am (UTC)'!
createHotel

	^ Hotel withFloors: (OrderedCollection 
		with: (self createFloorWith: 10)
		with: (self createFloorWith: 1))! !

!HotelTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:23:58 am (UTC)'!
createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10))! !

!HotelTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
should: aBlock failWith: anErrorDescription andAssert: anAssertionBlock

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			anAssertionBlock value ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test02NewHotelsAreEmpty

	| hotel |
	
	hotel := self createHotel.
	
	self assert: hotel isEmpty.
	self assertIsUntouched: hotel! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self deny: hotel isEmpty.
	self assertThat: hotel hasAvailable: hotel totalRooms - 1 reserved: 0 occupied: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |
	
	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assertThat: hotel hasAvailable: hotel totalRooms - 1 reserved: 1 occupied: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assertThat: hotel hasAvailable: hotel totalRooms - 1 reserved: 0 occupied: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsUntouched: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits
	
	self assertHotelTotalIsTheSumOfEachFloorTotalFor: #totalProfits! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses
	
	self assertHotelTotalIsTheSumOfEachFloorTotalFor: #totalLosses! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test09HotelCannotReserveANonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsUntouched: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test10HotelCannotReserveANonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsUntouched: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsUntouched: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsUntouched: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:24:17 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	hotel reserveRoom: 1 atFloor: 1. 
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertThat: hotel hasAvailable: hotel totalRooms - 1 reserved: 1 occupied: 1 ]! !

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

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:39 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |

	room := Room new.

	self assert: self maxPriceInList equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:39 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.

	room reserve.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 9:23:39 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !
