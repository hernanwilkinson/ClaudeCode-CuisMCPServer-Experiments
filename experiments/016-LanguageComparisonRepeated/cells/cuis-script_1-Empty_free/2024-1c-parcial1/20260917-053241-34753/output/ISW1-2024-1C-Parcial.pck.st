'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 5:36:10 am'!
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

!classDefinition: #OccupiedRoom category: #'ISW1-2024-1C-Parcial'!
RoomState subclass: #OccupiedRoom
	instanceVariableNames: 'guestType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'OccupiedRoom class' category: #'ISW1-2024-1C-Parcial'!
OccupiedRoom class
	instanceVariableNames: ''!

!classDefinition: #ReservedRoom category: #'ISW1-2024-1C-Parcial'!
RoomState subclass: #ReservedRoom
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'ReservedRoom class' category: #'ISW1-2024-1C-Parcial'!
ReservedRoom class
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


!Floor methodsFor: 'testing' stamp: 'FRT 21/Apr/2024, 6:02:31 pm (UTC)'!
isAvailable
	
	^ self totalRooms = self totalRoomsAvailable

		
! !

!Floor methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
roomAt: aRoomNumber ifNone: noneBlock

	^ rooms at: aRoomNumber ifAbsent: noneBlock! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
sumOverRooms: aRoomValueBlock

	^ rooms sum: aRoomValueBlock! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
totalLosses

	^ self sumOverRooms: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
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

!Floor methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
initializeWithRooms: aNumberOfRooms prices: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:39:26 pm (UTC)'!
assertIsInteger: aNumber ifFalse: signalsBlock

	aNumber isInteger ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:40:06 pm (UTC)'!
assertIsPositive: aNumber ifFalse: signalsBlock

	aNumber strictlyPositive ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
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

!Floor class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
withRooms: aNumberOfRooms prices: aPriceList

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ].
	self assertIsValidPriceList: aPriceList.

	^ self new initializeWithRooms: aNumberOfRooms prices: aPriceList! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
totalLosses

	^ self sumOverFloors: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
totalProfits

	^ self sumOverFloors: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
totalRooms

	^ self sumOverFloors: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
totalRoomsAvailable

	^ self sumOverFloors: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
totalRoomsOccupied

	^ self sumOverFloors: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
totalRoomsReserved

	^ self sumOverFloors: [ :floor | floor totalRoomsReserved ]! !

!Hotel methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self roomAt: aRoomNumber atFloor: aFloorNumber) receive: aGuestType! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self roomAt: aRoomNumber atFloor: aFloorNumber) receiveWithReservation: aGuestType! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self roomAt: aRoomNumber atFloor: aFloorNumber) reserve! !

!Hotel methodsFor: 'private - accessing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
floorAt: aFloorNumber

	^ floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]! !

!Hotel methodsFor: 'private - accessing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
roomAt: aRoomNumber atFloor: aFloorNumber

	^ (self floorAt: aFloorNumber) roomAt: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'private - totals' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
receive: aGuestType

	state receive: aGuestType in: self! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
receiveWithReservation: aGuestType

	state receiveWithReservation: aGuestType in: self! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
reserve

	state reserveIn: self! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
isAvailable

	^ state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
isOccupied

	^ state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
isReserved

	^ state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
initialize

	state := AvailableRoom new! !

!Room methodsFor: 'private - state' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
beOccupiedBy: aGuestType

	state := OccupiedRoom by: aGuestType! !

!Room methodsFor: 'private - state' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
beReserved

	state := ReservedRoom new! !

!Room methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
signalRoomIsNotEmpty

	self error: self class roomIsNotEmptyErrorDescription! !

!Room methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
signalRoomIsNotReserved

	self error: self class roomIsNotReservedErrorDescription! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
isAvailable

	^ false! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
isOccupied

	^ true! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
isReserved

	^ false! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
receive: aGuestType in: aRoom

	aRoom signalRoomIsNotEmpty! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom signalRoomIsNotReserved! !

!RoomState methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
reserveIn: aRoom

	aRoom signalRoomIsNotEmpty! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility! !

!AvailableRoom methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
isAvailable

	^ true! !

!AvailableRoom methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
isOccupied

	^ false! !

!AvailableRoom methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
receive: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType! !

!AvailableRoom methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
reserveIn: aRoom

	aRoom beReserved! !

!AvailableRoom methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max! !

!AvailableRoom methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!OccupiedRoom methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
initializeBy: aGuestType

	guestType := aGuestType! !

!OccupiedRoom methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock! !

!OccupiedRoom class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
by: aGuestType

	^ self new initializeBy: aGuestType! !

!ReservedRoom methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
isReserved

	^ true! !

!ReservedRoom methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType! !

!ReservedRoom methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:32 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
createFloorWith: aNumberOfRooms

	^ self createFloorWith: aNumberOfRooms and: self defaultPriceList! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withRooms: aNumberOfRooms prices: aPriceList! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
defaultPriceList

	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
guestTypeConference

	^ #conferenceGuest! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
guestTypeVacation

	^ #vacationGuest! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
maxPriceInList

	^ 200*peso! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
minPriceInList

	^ 100*peso! !

!SimsHotelsTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
should: aBlock failWith: anErrorDescription andAssert: anAssertionsBlock

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			anAssertionsBlock value ]! !

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

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |

	floor := self createFloorWith: 10.

	self assert: floor isAvailable.
	self assert: floor hasAvailableRooms: 10 occupied: 0 reserved: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |

	floor := self createFloorWith: 10.

	(self roomAt: 1 of: floor) receive: self guestTypeVacation.

	self assert: floor hasAvailableRooms: 9 occupied: 1 reserved: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor |

	floor := self createFloorWith: 10.
	(self roomAt: 1 of: floor) reserve.

	(self roomAt: 1 of: floor) receiveWithReservation: self guestTypeVacation.

	self assert: floor hasAvailableRooms: 9 occupied: 1 reserved: 0! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |

	floor := self createFloorWith: 10.

	(self roomAt: 1 of: floor) reserve.

	self assert: floor hasAvailableRooms: 9 occupied: 1 reserved: 1! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	self
		assert: (100*peso) + (200*peso) + (50*peso)
		equals: self createFloorWithTwoOccupiedRoomsAndOneReserved totalProfits! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	self
		assert: (200*peso) * 7
		equals: self createFloorWithTwoOccupiedRoomsAndOneReserved totalLosses! !

!FloorTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
createFloorWithTwoOccupiedRoomsAndOneReserved

	| floor |

	floor := self createFloorWith: 10.

	(self roomAt: 1 of: floor) receive: self guestTypeVacation.
	(self roomAt: 2 of: floor) receive: self guestTypeConference.
	(self roomAt: 3 of: floor) reserve.

	^ floor! !

!FloorTest methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
roomAt: aRoomNumber of: aFloor

	^ aFloor roomAt: aRoomNumber ifNone: [ self fail ]! !

!FloorTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
assert: aFloor hasAvailableRooms: aNumberOfAvailableRooms occupied: aNumberOfOccupiedRooms reserved: aNumberOfReservedRooms

	self assert: aNumberOfAvailableRooms equals: aFloor totalRoomsAvailable.
	self assert: aNumberOfOccupiedRooms equals: aFloor totalRoomsOccupied.
	self assert: aNumberOfReservedRooms equals: aFloor totalRoomsReserved! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
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

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.
	self assertHasAllRoomsAvailable: hotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel hasUnavailableRooms: 1 reserved: 0 occupied: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |

	hotel := self createHotel.
	self assertHasAllRoomsAvailable: hotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assert: hotel hasUnavailableRooms: 1 reserved: 1 occupied: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.
	self assertHasAllRoomsAvailable: hotel.

	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel hasUnavailableRooms: 1 reserved: 0 occupied: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation

	| hotel |

	hotel := self createHotel.
	self assertHasAllRoomsAvailable: hotel.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertHasAllRoomsAvailable: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits

	self
		assertTotal: [ :aFloorOrHotel | aFloorOrHotel totalProfits ]
		ofHotelIsTheSumOfItsFloors: [ :hotel |
			hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
			hotel receive: self guestTypeConference atFloor: 2 atRoom: 1 ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses

	self
		assertTotal: [ :aFloorOrHotel | aFloorOrHotel totalLosses ]
		ofHotelIsTheSumOfItsFloors: [ :hotel |
			hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
			hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.
			hotel reserveRoom: 4 atFloor: 1.
			hotel reserveRoom: 2 atFloor: 2 ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test09HotelCannotReserveANonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasAllRoomsAvailable: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test10HotelCannotReserveANonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasAllRoomsAvailable: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasAllRoomsAvailable: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertHasAllRoomsAvailable: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.
	hotel reserveRoom: 1 atFloor: 1.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assert: hotel hasUnavailableRooms: 1 reserved: 1 occupied: 1 ]! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
createHotel

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10) with: (self createFloorWith: 1))! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10))! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
assert: aHotel hasUnavailableRooms: aNumberOfUnavailableRooms reserved: aNumberOfReservedRooms occupied: aNumberOfOccupiedRooms

	self assert: aHotel totalRooms - aNumberOfUnavailableRooms equals: aHotel totalRoomsAvailable.
	self assert: aNumberOfReservedRooms equals: aHotel totalRoomsReserved.
	self assert: aNumberOfOccupiedRooms equals: aHotel totalRoomsOccupied! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
assertHasAllRoomsAvailable: aHotel

	self assert: aHotel hasUnavailableRooms: 0 reserved: 0 occupied: 0! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
assertTotal: aTotalBlock ofHotelIsTheSumOfItsFloors: aHotelSetUpBlock

	| hotel floor1 floor2 |

	floor1 := self createFloorWith: 10.
	floor2 := self createFloorWith: 10.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	aHotelSetUpBlock value: hotel.

	self assert: (aTotalBlock value: floor1) + (aTotalBlock value: floor2) equals: (aTotalBlock value: hotel)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test01NewRoomsAreAvailable

	self assertIsAvailable: Room new! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test02ReceivingAGuestMakesTheRoomOccupied

	self assertIsOccupiedWithoutReservation: (self createRoomOccupiedBy: self guestTypeVacation)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test03ReservingARoomMakesTheRoomReservedAndOccupied

	self assertIsReserved: self createReservedRoom! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test04CannotReceiveAGuestInAOccupiedRoom

	| room |

	room := self createRoomOccupiedBy: self guestTypeVacation.

	self
		should: [ room receive: self guestTypeVacation ]
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsOccupiedWithoutReservation: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test05CannotReceiveAGuestInAReservedRoom

	| room |

	room := self createReservedRoom.

	self
		should: [ room receive: self guestTypeVacation ]
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsReserved: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test06ReceivingOnReservationMakesTheRoomOccupied

	| room |

	room := self createReservedRoom.

	room receiveWithReservation: self guestTypeVacation.

	self assertIsOccupiedWithoutReservation: room! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test07CannotReceiveOnReservationAnAvailableRoom

	| room |

	room := Room new.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsAvailable: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test08CannotReceiveOnReservationAnOccupiedRoom

	| room |

	room := self createRoomOccupiedBy: self guestTypeVacation.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsOccupiedWithoutReservation: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test09ProfitOfAvailableRoomIsCeroPesos

	self assert: 0*peso equals: (self profitOf: Room new)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	self assert: self minPriceInList / 2 equals: (self profitOf: self createReservedRoom)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test11ProfitOfOccupiedRoomDependsOnGuestType

	self
		assert: (self defaultPriceList at: self guestTypeConference)
		equals: (self profitOf: (self createRoomOccupiedBy: self guestTypeConference)).

	self
		assert: (self defaultPriceList at: self guestTypeVacation)
		equals: (self profitOf: (self createRoomOccupiedBy: self guestTypeVacation))! !

!RoomTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 12:52:21 pm (UTC)'!
test12NoProfitOnOccupiedRoomByUnknownGuestType

	| room |
	
	room := Room new.
	room receive: #unknownGuest.
	
	room profitUsing: self defaultPriceList ifAbsentGuestType: [ ^self ].
	
	"we should not get here"
	self failWith: 'should not calculate profit on room occupied by unknown guest type'.
! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	self assert: self maxPriceInList equals: (self lossOf: Room new)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	self assert: 0*peso equals: (self lossOf: self createReservedRoom)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	self assert: 0*peso equals: (self lossOf: (self createRoomOccupiedBy: self guestTypeVacation))! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test16CannotReserveWhenReserved

	| room |

	room := self createReservedRoom.

	self
		should: [ room reserve ]
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsReserved: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
test17CannotReserveWhenOccupied

	| room |

	room := self createRoomOccupiedBy: self guestTypeVacation.

	self
		should: [ room reserve ]
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsOccupiedWithoutReservation: room ]! !

!RoomTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
createReservedRoom

	^ Room new reserve; yourself! !

!RoomTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
createRoomOccupiedBy: aGuestType

	^ Room new receive: aGuestType; yourself! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
assertIsAvailable: aRoom

	self assert: aRoom isAvailable.
	self deny: aRoom isOccupied.
	self deny: aRoom isReserved! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
assertIsOccupiedWithoutReservation: aRoom

	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable.
	self deny: aRoom isReserved! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
assertIsReserved: aRoom

	self assert: aRoom isReserved.
	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable! !

!RoomTest methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
lossOf: aRoom

	^ aRoom lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]! !

!RoomTest methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 8:35:34 am (UTC)'!
profitOf: aRoom

	^ aRoom profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]! !
