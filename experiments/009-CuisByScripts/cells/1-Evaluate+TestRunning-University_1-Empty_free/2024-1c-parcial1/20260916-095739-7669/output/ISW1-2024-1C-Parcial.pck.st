'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 10:00:26 am'!
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
	instanceVariableNames: 'status'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'Room class' category: #'ISW1-2024-1C-Parcial'!
Room class
	instanceVariableNames: ''!

!classDefinition: #RoomStatus category: #'ISW1-2024-1C-Parcial'!
Object subclass: #RoomStatus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'RoomStatus class' category: #'ISW1-2024-1C-Parcial'!
RoomStatus class
	instanceVariableNames: ''!

!classDefinition: #AvailableRoomStatus category: #'ISW1-2024-1C-Parcial'!
RoomStatus subclass: #AvailableRoomStatus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'AvailableRoomStatus class' category: #'ISW1-2024-1C-Parcial'!
AvailableRoomStatus class
	instanceVariableNames: ''!

!classDefinition: #OccupiedRoomStatus category: #'ISW1-2024-1C-Parcial'!
RoomStatus subclass: #OccupiedRoomStatus
	instanceVariableNames: 'guestType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'OccupiedRoomStatus class' category: #'ISW1-2024-1C-Parcial'!
OccupiedRoomStatus class
	instanceVariableNames: ''!

!classDefinition: #ReservedRoomStatus category: #'ISW1-2024-1C-Parcial'!
RoomStatus subclass: #ReservedRoomStatus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ISW1-2024-1C-Parcial'!
!classDefinition: 'ReservedRoomStatus class' category: #'ISW1-2024-1C-Parcial'!
ReservedRoomStatus class
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


!Floor methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
isAvailable

	^ self totalRooms = self totalRoomsAvailable! !

!Floor methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
totalLosses

	^ rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
totalProfits

	^ rooms sum: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
initializeWithNumberOfRooms: aNumberOfRooms andPrices: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList! !

!Floor methodsFor: 'rooms - private' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
roomAt: aRoomNumber ifNone: aNoneBlock

	^ rooms at: aRoomNumber ifAbsent: aNoneBlock! !

!Floor methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
receive: aGuestType atRoom: aRoomNumber ifNone: aNoneBlock

	(self roomAt: aRoomNumber ifNone: aNoneBlock) receive: aGuestType! !

!Floor methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber ifNone: aNoneBlock

	(self roomAt: aRoomNumber ifNone: aNoneBlock) receiveWithReservation: aGuestType! !

!Floor methodsFor: 'reserving' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
reserveRoom: aRoomNumber ifNone: aNoneBlock

	(self roomAt: aRoomNumber ifNone: aNoneBlock) reserve! !

!Floor methodsFor: 'rooms' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
totalRooms

	^ rooms size! !

!Floor methodsFor: 'rooms' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
totalRoomsAvailable

	^ rooms count: [ :room | room isAvailable ]! !

!Floor methodsFor: 'rooms' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
totalRoomsOccupied

	^ rooms count: [ :room | room isOccupied ]! !

!Floor methodsFor: 'rooms' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
totalRoomsReserved

	^ rooms count: [ :room | room isReserved ]! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:39:26 pm (UTC)'!
assertIsInteger: aNumber ifFalse: signalsBlock

	aNumber isInteger ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:40:06 pm (UTC)'!
assertIsPositive: aNumber ifFalse: signalsBlock

	aNumber strictlyPositive ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ].! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList isEmpty ifTrue: [ self signalNoPrices ].
	
	aPriceList values do: [ :price | 
		self assertIsPositive: price ifFalse: [ self signalPriceMustBePositive ] ].! !

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

!Floor class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
withNumberOfRooms: aNumberOfRooms andPrices: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.
	
	^ self new initializeWithNumberOfRooms: aNumberOfRooms andPrices: aPriceList! !

!Floor class methodsFor: 'error signal' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
totalLosses

	^ self sumOverFloors: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
totalProfits

	^ self sumOverFloors: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection! !

!Hotel methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'floors - private' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
floorAt: aFloorNumber

	^ floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]! !

!Hotel methodsFor: 'floors - private' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
sumOverFloors: aFloorBlock

	^ floors sum: aFloorBlock! !

!Hotel methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receive: aGuestType atRoom: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receiveWithReservation: aGuestType atRoom: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'reserving' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self floorAt: aFloorNumber) reserveRoom: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
totalRooms

	^ self sumOverFloors: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
totalRoomsAvailable

	^ self sumOverFloors: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
totalRoomsOccupied

	^ self sumOverFloors: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
totalRoomsReserved

	^ self sumOverFloors: [ :floor | floor totalRoomsReserved ]! !

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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:59:14 pm (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection! !

!Room methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isAvailable

	^ status isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isOccupied

	^ status isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isReserved

	^ status isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ status lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ status profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
initialize

	self beAvailable! !

!Room methodsFor: 'status - private' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
beAvailable

	status := AvailableRoomStatus new! !

!Room methodsFor: 'status - private' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
beOccupiedBy: aGuestType

	status := OccupiedRoomStatus by: aGuestType! !

!Room methodsFor: 'status - private' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
beReserved

	status := ReservedRoomStatus new! !

!Room methodsFor: 'error signal - private' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
signalRoomIsNotEmpty

	self error: self class roomIsNotEmptyErrorDescription! !

!Room methodsFor: 'error signal - private' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
signalRoomIsNotReserved

	self error: self class roomIsNotReservedErrorDescription! !

!Room methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
receive: aGuestType

	status receive: aGuestType in: self! !

!Room methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
receiveWithReservation: aGuestType

	status receiveWithReservation: aGuestType in: self! !

!Room methodsFor: 'reserving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
reserve

	status reserveIn: self! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!RoomStatus methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isAvailable

	self subclassResponsibility! !

!RoomStatus methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isOccupied

	self subclassResponsibility! !

!RoomStatus methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isReserved

	self subclassResponsibility! !

!RoomStatus methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
receive: aGuestType in: aRoom

	self subclassResponsibility! !

!RoomStatus methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	self subclassResponsibility! !

!RoomStatus methodsFor: 'reserving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
reserveIn: aRoom

	self subclassResponsibility! !

!RoomStatus methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility! !

!RoomStatus methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility! !

!AvailableRoomStatus methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isAvailable

	^ true! !

!AvailableRoomStatus methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isOccupied

	^ false! !

!AvailableRoomStatus methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isReserved

	^ false! !

!AvailableRoomStatus methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
receive: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType! !

!AvailableRoomStatus methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom signalRoomIsNotReserved! !

!AvailableRoomStatus methodsFor: 'reserving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
reserveIn: aRoom

	aRoom beReserved! !

!AvailableRoomStatus methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max! !

!AvailableRoomStatus methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!OccupiedRoomStatus methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
initializeBy: aGuestType

	guestType := aGuestType! !

!OccupiedRoomStatus methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isAvailable

	^ false! !

!OccupiedRoomStatus methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isOccupied

	^ true! !

!OccupiedRoomStatus methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isReserved

	^ false! !

!OccupiedRoomStatus methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
receive: aGuestType in: aRoom

	aRoom signalRoomIsNotEmpty! !

!OccupiedRoomStatus methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom signalRoomIsNotReserved! !

!OccupiedRoomStatus methodsFor: 'reserving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
reserveIn: aRoom

	aRoom signalRoomIsNotEmpty! !

!OccupiedRoomStatus methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!OccupiedRoomStatus methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock! !

!OccupiedRoomStatus class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
by: aGuestType

	^ self new initializeBy: aGuestType! !

!ReservedRoomStatus methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isAvailable

	^ false! !

!ReservedRoomStatus methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isOccupied

	^ true! !

!ReservedRoomStatus methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
isReserved

	^ true! !

!ReservedRoomStatus methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
receive: aGuestType in: aRoom

	aRoom signalRoomIsNotEmpty! !

!ReservedRoomStatus methodsFor: 'receiving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType! !

!ReservedRoomStatus methodsFor: 'reserving' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
reserveIn: aRoom

	aRoom signalRoomIsNotEmpty! !

!ReservedRoomStatus methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!ReservedRoomStatus methodsFor: 'accounting' stamp: 'HAW 16/Sep/2026, 12:58:55 pm (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2! !

!HotelSimulationTest methodsFor: 'guest types' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
guestTypeConference
	
	^ #conferenceGuest! !

!HotelSimulationTest methodsFor: 'guest types' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
guestTypeVacation
	
	^ #vacationGuest! !

!HotelSimulationTest methodsFor: 'prices' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
defaultPriceList
	
	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!HotelSimulationTest methodsFor: 'prices' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
maxPriceInList
	
	^ 200*peso! !

!HotelSimulationTest methodsFor: 'prices' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
minPriceInList
	
	^ 100*peso! !

!HotelSimulationTest methodsFor: 'floors' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
createFloorWith: aNumberOfRooms

	^ self createFloorWith: aNumberOfRooms and: self defaultPriceList! !

!HotelSimulationTest methodsFor: 'floors' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withNumberOfRooms: aNumberOfRooms andPrices: aPriceList! !

!HotelSimulationTest class methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
isAbstract

	^ thisContext methodClass == self class! !

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

!FloorTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |
	
	floor := self createFloorWith: 10.
	
	self assert: floor isAvailable.
	self assert: 0 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved.! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber.
	
	floor receive: self guestTypeVacation atRoom: 1 ifNone: [ self fail ].
	
	self assert: roomsNumber - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved.! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsNumber roomsAvailable roomsOccupied roomsReserved |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber.
	
	floor reserveRoom: 1 ifNone: [ self fail ].

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	floor receiveWithReservation: self guestTypeVacation atRoom: 1 ifNone: [ self fail ].
	
	self assert: roomsAvailable equals: floor totalRoomsAvailable. 
	self assert: roomsOccupied equals: floor totalRoomsOccupied.
	self assert: roomsReserved - 1 equals: floor totalRoomsReserved.! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor roomsNumber |
	
	roomsNumber := 10.
	floor := self createFloorWith: roomsNumber.
	
	floor reserveRoom: 1 ifNone: [ self fail ].
	
	self assert: roomsNumber - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 1 equals: floor totalRoomsReserved.! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |
	
	floor := self createFloorWithTwoGuestsAndAReservation.
		
	self assert: (100*peso) + (200*peso) + (50*peso) equals: floor totalProfits! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |
	
	floor := self createFloorWithTwoGuestsAndAReservation.
		
	self assert: (200*peso) * 7 equals: floor totalLosses! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
test10CannotReceiveAtNonexistentRoom

	| floor |
	
	floor := self createFloorWith: 10.
		
	floor receive: self guestTypeVacation atRoom: 42 ifNone: [ ^ self assert: floor isAvailable ].
	
	self fail! !

!FloorTest methodsFor: 'floors' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
createFloorWithTwoGuestsAndAReservation

	| floor |
	
	floor := self createFloorWith: 10.
	
	floor receive: self guestTypeVacation atRoom: 1 ifNone: [ self fail ].
	floor receive: self guestTypeConference atRoom: 2 ifNone: [ self fail ].
	floor reserveRoom: 3 ifNone: [ self fail ].
	
	^ floor! !

!HotelTest methodsFor: 'testing' stamp: 'FRT 22/Apr/2024, 2:30:09 pm (UTC)'!
test02NewHotelsAreEmpty

	| hotel |
	
	hotel := self createHotel.
	
	self assert: hotel isEmpty.! !

!HotelTest methodsFor: 'hotels' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
createHotel

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10) with: (self createFloorWith: 1))! !

!HotelTest methodsFor: 'hotels' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10))! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
assertThat: aHotel hasAvailable: aNumberOfAvailableRooms reserved: aNumberOfReservedRooms occupied: aNumberOfOccupiedRooms

	self assert: aNumberOfAvailableRooms equals: aHotel totalRoomsAvailable.
	self assert: aNumberOfReservedRooms equals: aHotel totalRoomsReserved.
	self assert: aNumberOfOccupiedRooms equals: aHotel totalRoomsOccupied.! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
should: aBlock failOn: aHotel withMessageText: anErrorDescription

	| totalRoomsAvailable totalRoomsReserved totalRoomsOccupied |
	
	totalRoomsAvailable := aHotel totalRoomsAvailable.
	totalRoomsReserved := aHotel totalRoomsReserved.
	totalRoomsOccupied := aHotel totalRoomsOccupied.

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :error |	
			self assert: anErrorDescription equals: error messageText.
			self assertThat: aHotel hasAvailable: totalRoomsAvailable reserved: totalRoomsReserved occupied: totalRoomsOccupied ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Hotel noFloorsErrorDescription.! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assertThat: hotel hasAvailable: hotel totalRooms - 1 reserved: 0 occupied: 1.! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |
	
	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assertThat: hotel hasAvailable: hotel totalRooms - 1 reserved: 1 occupied: 1.! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assertThat: hotel hasAvailable: hotel totalRooms - 1 reserved: 0 occupied: 1.! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		failOn: hotel
		withMessageText: Room roomIsNotReservedErrorDescription! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits
	
	| hotel floor1 floor2 |
	
	floor1 := self createFloorWith: 10.
	floor2 := self createFloorWith: 10.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: floor1 totalProfits + floor2 totalProfits equals: hotel totalProfits.! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses
	
	| hotel floor1 floor2 |
	
	floor1 := self createFloorWith: 10.
	floor2 := self createFloorWith: 10.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: floor1 totalLosses + floor2 totalLosses equals: hotel totalLosses.! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
test09HotelCannotReserveANonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		failOn: hotel
		withMessageText: Hotel roomNumberDoesNotExistErrorDescription! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
test10HotelCannotReserveANonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		failOn: hotel
		withMessageText: Hotel floorNumberDoesNotExistErrorDescription! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failOn: hotel
		withMessageText: Hotel roomNumberDoesNotExistErrorDescription! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		failOn: hotel
		withMessageText: Hotel floorNumberDoesNotExistErrorDescription! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:00:04 pm (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	hotel reserveRoom: 1 atFloor: 1. 
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failOn: hotel
		withMessageText: Hotel roomNumberDoesNotExistErrorDescription! !

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

!RoomTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |

	room := Room new.

	self assert: self maxPriceInList equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]).! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.

	room reserve.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]).! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 12:59:43 pm (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |
	
	room := Room new.

	room receive: self guestTypeVacation.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]).! !
