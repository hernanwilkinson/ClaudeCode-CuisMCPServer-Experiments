'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:11:59 am'!
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

!classDefinition: #HotelModelTest category: #'ISW1-2024-1C-Parcial-Tests'!
TestCase subclass: #HotelModelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'HotelModelTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
HotelModelTest class
	instanceVariableNames: ''!

!classDefinition: #FloorTest category: #'ISW1-2024-1C-Parcial-Tests'!
HotelModelTest subclass: #FloorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'FloorTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
FloorTest class
	instanceVariableNames: ''!

!classDefinition: #HotelTest category: #'ISW1-2024-1C-Parcial-Tests'!
HotelModelTest subclass: #HotelTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'HotelTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
HotelTest class
	instanceVariableNames: ''!

!classDefinition: #RoomTest category: #'ISW1-2024-1C-Parcial-Tests'!
HotelModelTest subclass: #RoomTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial-Tests'!
!classDefinition: 'RoomTest class' category: #'ISW1-2024-1C-Parcial-Tests'!
RoomTest class
	instanceVariableNames: ''!


!Floor methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
isAvailable

	^ rooms allSatisfy: [ :room | room isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:10:33 am (UTC)'!
totalLosses

	^ rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:10:33 am (UTC)'!
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

!Floor methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
initializeWithNumberOfRooms: aNumberOfRooms pricedAt: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList! !

!Floor methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
receive: aGuestType atRoom: aRoomNumber ifNone: aNoneBlock

	^ self withRoomAt: aRoomNumber do: [ :room | room receive: aGuestType ] ifNone: aNoneBlock! !

!Floor methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber ifNone: aNoneBlock

	^ self withRoomAt: aRoomNumber do: [ :room | room receiveWithReservation: aGuestType ] ifNone: aNoneBlock! !

!Floor methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
reserveRoom: aRoomNumber ifNone: aNoneBlock

	^ self withRoomAt: aRoomNumber do: [ :room | room reserve ] ifNone: aNoneBlock! !

!Floor methodsFor: 'guests - private' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
withRoomAt: aRoomNumber do: aRoomBlock ifNone: aNoneBlock

	| room |

	room := rooms at: aRoomNumber ifAbsent: [ ^ aNoneBlock value ].

	^ aRoomBlock value: room! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:39:26 pm (UTC)'!
assertIsInteger: aNumber ifFalse: signalsBlock

	aNumber isInteger ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:40:06 pm (UTC)'!
assertIsPositive: aNumber ifFalse: signalsBlock

	aNumber strictlyPositive ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:10:25 am (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList isEmpty ifTrue: [ self signalNoPrices ].

	aPriceList values do: [ :price |
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

!Floor class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:11:42 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:10:25 am (UTC)'!
withNumberOfRooms: aNumberOfRooms pricedAt: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.

	^ self new initializeWithNumberOfRooms: aNumberOfRooms pricedAt: aPriceList! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
totalLosses

	^ floors sum: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
totalProfits

	^ floors sum: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
totalRooms

	^ floors sum: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
totalRoomsAvailable

	^ floors sum: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
totalRoomsOccupied

	^ floors sum: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
totalRoomsReserved

	^ floors sum: [ :floor | floor totalRoomsReserved ]! !

!Hotel methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receive: aGuestType atRoom: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receiveWithReservation: aGuestType atRoom: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self floorAt: aFloorNumber) reserveRoom: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'guests - private' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
floorAt: aFloorNumber

	^ floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]! !

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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:10:26 am (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
receive: aGuestType

	state := state receive: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
receiveWithReservation: aGuestType

	state := state receiveWithReservation: aGuestType! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
reserve

	state := state reserve! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
isAvailable

	^ state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
isOccupied

	^ state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
isReserved

	^ state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
initialize

	state := AvailableRoomState new! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:08 am (UTC)'!
isAvailable

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:08 am (UTC)'!
isOccupied

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:08 am (UTC)'!
isReserved

	self subclassResponsibility! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:08 am (UTC)'!
receive: aGuestType

	^ self signalRoomIsNotEmpty! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
receiveWithReservation: aGuestType

	^ self signalRoomIsNotReserved! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:08 am (UTC)'!
reserve

	^ self signalRoomIsNotEmpty! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility! !

!RoomState methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
signalRoomIsNotEmpty

	^ self error: Room roomIsNotEmptyErrorDescription! !

!RoomState methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
signalRoomIsNotReserved

	^ self error: Room roomIsNotReservedErrorDescription! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
isAvailable

	^ true! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
isOccupied

	^ false! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
isReserved

	^ false! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
receive: aGuestType

	^ OccupiedRoomState by: aGuestType! !

!AvailableRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
reserve

	^ ReservedRoomState new! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
initializeBy: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
isAvailable

	^ false! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
isOccupied

	^ true! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
isReserved

	^ false! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
by: aGuestType

	^ self new initializeBy: aGuestType! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
isAvailable

	^ false! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
isOccupied

	^ true! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
isReserved

	^ true! !

!ReservedRoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
receiveWithReservation: aGuestType

	^ OccupiedRoomState by: aGuestType! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:10:09 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2! !

!HotelModelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:10:49 am (UTC)'!
createFloorWith: aNumberOfRooms

	^ self createFloorWith: aNumberOfRooms and: self defaultPriceList! !

!HotelModelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:10:49 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withNumberOfRooms: aNumberOfRooms pricedAt: aPriceList! !

!HotelModelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:10:49 am (UTC)'!
defaultPriceList

	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!HotelModelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:10:49 am (UTC)'!
guestTypeConference

	^ #conferenceGuest! !

!HotelModelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:10:49 am (UTC)'!
guestTypeVacation

	^ #vacationGuest! !

!HotelModelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:10:49 am (UTC)'!
maxPriceInList

	^ 200*peso! !

!HotelModelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:10:49 am (UTC)'!
minPriceInList

	^ 100*peso! !

!HotelModelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:10:49 am (UTC)'!
assertRoomsOf: aFloorOrHotel available: aNumberOfAvailableRooms occupied: aNumberOfOccupiedRooms reserved: aNumberOfReservedRooms

	self assert: aNumberOfAvailableRooms equals: aFloorOrHotel totalRoomsAvailable.
	self assert: aNumberOfOccupiedRooms equals: aFloorOrHotel totalRoomsOccupied.
	self assert: aNumberOfReservedRooms equals: aFloorOrHotel totalRoomsReserved! !

!HotelModelTest class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:10:49 am (UTC)'!
isAbstract

	^ self = HotelModelTest! !

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

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |

	floor := self createFloorWith: 10.

	self assert: floor isAvailable.
	self assertRoomsOf: floor available: 10 occupied: 0 reserved: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |

	floor := self createFloorWith: 10.

	floor receive: self guestTypeVacation atRoom: 1 ifNone: [ self fail ].

	self assertRoomsOf: floor available: 9 occupied: 1 reserved: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor |

	floor := self createFloorWith: 10.
	floor reserveRoom: 1 ifNone: [ self fail ].

	floor receiveWithReservation: self guestTypeVacation atRoom: 1 ifNone: [ self fail ].

	self assertRoomsOf: floor available: 9 occupied: 1 reserved: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |

	floor := self createFloorWith: 10.

	floor reserveRoom: 1 ifNone: [ self fail ].

	self assertRoomsOf: floor available: 9 occupied: 1 reserved: 1! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |

	floor := self createFloorWithTwoGuestsAndOneReservation.

	self assert: self minPriceInList + self maxPriceInList + (self minPriceInList / 2) equals: floor totalProfits! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |

	floor := self createFloorWithTwoGuestsAndOneReservation.

	self assert: self maxPriceInList * 7 equals: floor totalLosses! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test10CannotOperateOnANonexistentRoom

	| floor |

	floor := self createFloorWith: 10.

	self assert: #none equals: (floor receive: self guestTypeVacation atRoom: 42 ifNone: [ #none ]).
	self assert: #none equals: (floor reserveRoom: 42 ifNone: [ #none ]).
	self assert: #none equals: (floor receiveWithReservation: self guestTypeVacation atRoom: 42 ifNone: [ #none ]).
	self assert: floor isAvailable! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:42 am (UTC)'!
test11CannotComputeProfitsWithAnUnknownGuestType

	| floor |

	floor := self createFloorWith: 10.
	floor receive: #unknownGuest atRoom: 1 ifNone: [ self fail ].

	self
		should: [ floor totalProfits ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor unknownGuestTypeErrorDescription! !

!FloorTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
createFloorWithTwoGuestsAndOneReservation

	| floor |

	floor := self createFloorWith: 10.

	floor receive: self guestTypeVacation atRoom: 1 ifNone: [ self fail ].
	floor receive: self guestTypeConference atRoom: 2 ifNone: [ self fail ].
	floor reserveRoom: 3 ifNone: [ self fail ].

	^ floor! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test02NewHotelsAreEmpty

	| hotel |

	hotel := self createHotel.

	self assert: hotel isEmpty.
	self assertIsEmpty: hotel! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self deny: hotel isEmpty.
	self assertRoomsOf: hotel available: hotel totalRooms - 1 occupied: 1 reserved: 0! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assertRoomsOf: hotel available: hotel totalRooms - 1 occupied: 1 reserved: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assertRoomsOf: hotel available: hotel totalRooms - 1 occupied: 1 reserved: 0! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:29 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation

	| hotel |

	hotel := self createHotel.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raiseErrorWithMessageText: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits

	| hotel floor1 floor2 |

	floor1 := self createFloorWith: 10.
	floor2 := self createFloorWith: 10.
	hotel := self createHotelWith: floor1 and: floor2.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: floor1 totalProfits + floor2 totalProfits equals: hotel totalProfits! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses

	| hotel floor1 floor2 |

	floor1 := self createFloorWith: 10.
	floor2 := self createFloorWith: 10.
	hotel := self createHotelWith: floor1 and: floor2.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.
	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: floor1 totalLosses + floor2 totalLosses equals: hotel totalLosses! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:29 am (UTC)'!
test09HotelCannotReserveANonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		raiseErrorWithMessageText: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:29 am (UTC)'!
test10HotelCannotReserveANonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		raiseErrorWithMessageText: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:29 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raiseErrorWithMessageText: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:29 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		raiseErrorWithMessageText: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:29 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.
	hotel reserveRoom: 1 atFloor: 1.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raiseErrorWithMessageText: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertRoomsOf: hotel available: hotel totalRooms - 1 occupied: 1 reserved: 1 ]! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
createHotel

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10) with: (self createFloorWith: 1))! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
createHotelWith: aFloor and: anotherFloor

	^ Hotel withFloors: (OrderedCollection with: aFloor with: anotherFloor)! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10))! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
assertIsEmpty: aHotel

	self assertRoomsOf: aHotel available: aHotel totalRooms occupied: 0 reserved: 0! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:11:29 am (UTC)'!
should: aBlock raiseErrorWithMessageText: anErrorDescription andAssert: anAssertionBlock

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			anAssertionBlock value ]! !

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

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |

	room := Room new.

	self assert: self maxPriceInList equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.

	room reserve.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:11:23 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |

	room := Room new.

	room receive: self guestTypeVacation.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])! !

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
