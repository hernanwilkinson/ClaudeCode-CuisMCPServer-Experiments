'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 3:12:06 am'!
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


!Floor methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
isAvailable

	^rooms allSatisfy: [ :room | room isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
totalLosses

	^rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
totalProfits

	^rooms sum: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

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

!Floor methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
initializeWithRooms: aNumberOfRooms pricedBy: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :roomNumber | Room new ].
	prices := aPriceList! !

!Floor methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
receive: aGuestType atRoom: aRoomNumber

	(self roomAt: aRoomNumber) receive: aGuestType! !

!Floor methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
receiveWithReservation: aGuestType atRoom: aRoomNumber

	(self roomAt: aRoomNumber) receiveWithReservation: aGuestType! !

!Floor methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
reserveRoom: aRoomNumber

	(self roomAt: aRoomNumber) reserve! !

!Floor methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
roomAt: aRoomNumber

	^rooms at: aRoomNumber ifAbsent: [ self class signalRoomNumberDoesNotExist ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
assertIsValidNumberOfRooms: aNumberOfRooms

	aNumberOfRooms strictlyPositive ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	aNumberOfRooms isInteger ifFalse: [ self signalNumberOfRoomsMustBeInteger ]! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
assertIsValidPriceList: aPriceList

	aPriceList ifEmpty: [ self signalNoPrices ].
	aPriceList do: [ :price | price strictlyPositive ifFalse: [ self signalPriceMustBePositive ] ]! !

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

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
withRooms: aNumberOfRooms pricedBy: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertIsValidPriceList: aPriceList.

	^self new initializeWithRooms: aNumberOfRooms pricedBy: aPriceList! !

!Floor class methodsFor: 'error signaling' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
signalRoomNumberDoesNotExist

	self error: self roomNumberDoesNotExistErrorDescription! !

!Floor class methodsFor: 'error signaling' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
roomNumberDoesNotExistErrorDescription

	^'Room number does not exist'! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
totalLosses

	^floors sum: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
totalProfits

	^floors sum: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection copy! !

!Hotel methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
isEmpty

	^floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receive: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorAt: aFloorNumber) receiveWithReservation: aGuestType atRoom: aRoomNumber! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self floorAt: aFloorNumber) reserveRoom: aRoomNumber! !

!Hotel methodsFor: 'private' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
floorAt: aFloorNumber

	^floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
totalRooms

	^floors sum: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
totalRoomsAvailable

	^floors sum: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
totalRoomsOccupied

	^floors sum: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
totalRoomsReserved

	^floors sum: [ :floor | floor totalRoomsReserved ]! !

!Hotel class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:10:31 am (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^self new initializeWithFloors: aFloorsCollection! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
receive: aGuestType

	state := state receive: aGuestType in: self! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
receiveWithReservation: aGuestType

	state := state receiveWithReservation: aGuestType in: self! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
reserve

	state := state reserveIn: self! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isAvailable

	^state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isOccupied

	^state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isReserved

	^state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^state profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
initialize

	state := AvailableRoomState new! !

!Room methodsFor: 'errors' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
signalIsNotEmpty

	self error: self class roomIsNotEmptyErrorDescription! !

!Room methodsFor: 'errors' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
signalIsNotReserved

	self error: self class roomIsNotReservedErrorDescription! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isAvailable

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isOccupied

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isReserved

	self subclassResponsibility! !

!RoomState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
receive: aGuestType in: aRoom

	^aRoom signalIsNotEmpty! !

!RoomState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	^aRoom signalIsNotReserved! !

!RoomState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
reserveIn: aRoom

	^aRoom signalIsNotEmpty! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	self subclassResponsibility! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isAvailable

	^true! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isOccupied

	^false! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isReserved

	^false! !

!AvailableRoomState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
receive: aGuestType in: aRoom

	^OccupiedRoomState by: aGuestType! !

!AvailableRoomState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
reserveIn: aRoom

	^ReservedRoomState new! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList values max! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^0*peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
initializeBy: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isAvailable

	^false! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isOccupied

	^true! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isReserved

	^false! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList at: guestType ifAbsent: anUnknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
by: aGuestType

	^self new initializeBy: aGuestType! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isAvailable

	^false! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isOccupied

	^true! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
isReserved

	^true! !

!ReservedRoomState methodsFor: 'transitions' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
receiveWithReservation: aGuestType in: aRoom

	^OccupiedRoomState by: aGuestType! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 6:10:13 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: anUnknownGuestTypeBlock

	^aPriceList values min / 2! !

!HotelSimulationTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^Floor withRooms: aNumberOfRooms pricedBy: aPriceList! !

!HotelSimulationTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
createFloorWithTenRooms

	^self createFloorWith: 10 and: self defaultPriceList! !

!HotelSimulationTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
defaultPriceList

	^Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!HotelSimulationTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
guestTypeConference

	^#conferenceGuest! !

!HotelSimulationTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
guestTypeVacation

	^#vacationGuest! !

!HotelSimulationTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
maxPriceInList

	^200*peso! !

!HotelSimulationTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
minPriceInList

	^100*peso! !

!HotelSimulationTest class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
isAbstract

	^self = HotelSimulationTest! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test01CannotCreateFloorWithoutRooms

	self
		should: [ Floor withRooms: 0 pricedBy: self defaultPriceList ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor numberOfRoomsMustBePositiveErrorDescription! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test02CannotCreateFloorWithNoIntergerNumberOfRooms

	self
		should: [ Floor withRooms: 1.5 pricedBy: self defaultPriceList ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor numberOfRoomsMustBeIntegerErrorDescription! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test03CannotCreateFloorWithoutPrices

	self
		should: [ Floor withRooms: 10 pricedBy: Dictionary new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor pricesListCannotBeEmptyErrorDescription! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |

	floor := self createFloorWithTenRooms.

	self assert: floor isAvailable.
	self assert: floor totalRoomsOccupied equals: 0.
	self assert: floor totalRoomsReserved equals: 0! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |

	floor := self createFloorWithTenRooms.

	floor receive: self guestTypeVacation atRoom: 1.

	self assert: floor totalRoomsAvailable equals: 9.
	self assert: floor totalRoomsOccupied equals: 1.
	self assert: floor totalRoomsReserved equals: 0! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsAvailable roomsOccupied roomsReserved |

	floor := self createFloorWithTenRooms.
	floor reserveRoom: 1.

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	floor receiveWithReservation: self guestTypeVacation atRoom: 1.

	self assert: floor totalRoomsAvailable equals: roomsAvailable.
	self assert: floor totalRoomsOccupied equals: roomsOccupied.
	self assert: floor totalRoomsReserved equals: roomsReserved - 1! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |

	floor := self createFloorWithTenRooms.

	floor reserveRoom: 1.

	self assert: floor totalRoomsAvailable equals: 9.
	self assert: floor totalRoomsOccupied equals: 1.
	self assert: floor totalRoomsReserved equals: 1! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |

	floor := self createFloorWithTwoGuestsAndOneReservation.

	self assert: floor totalProfits equals: self maxPriceInList + self minPriceInList + (self minPriceInList / 2)! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |

	floor := self createFloorWithTwoGuestsAndOneReservation.

	self assert: floor totalLosses equals: self maxPriceInList * 7! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test10CannotReserveANonexistentRoom

	| floor |

	floor := self createFloorWithTenRooms.

	self
		should: [ floor reserveRoom: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assert: floor isAvailable ]! !

!FloorTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test11CannotComputeTotalProfitsWithAnUnknownGuestType

	| floor |

	floor := self createFloorWithTenRooms.
	floor receive: #unknownGuest atRoom: 1.

	self
		should: [ floor totalProfits ]
		raise: Error - MessageNotUnderstood
		withMessageText: Floor unknownGuestTypeErrorDescription! !

!FloorTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
createFloorWithTwoGuestsAndOneReservation

	| floor |

	floor := self createFloorWithTenRooms.
	floor receive: self guestTypeVacation atRoom: 1.
	floor receive: self guestTypeConference atRoom: 2.
	floor reserveRoom: 3.

	^floor! !

!HotelTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
assertHasNoGuestsNorReservations: aHotel

	self assert: aHotel totalRoomsAvailable equals: aHotel totalRooms.
	self assert: aHotel totalRoomsReserved equals: 0.
	self assert: aHotel totalRoomsOccupied equals: 0! !

!HotelTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
createHotel

	^Hotel withFloors: (OrderedCollection
		with: self createFloorWithTenRooms
		with: (self createFloorWith: 1 and: self defaultPriceList))! !

!HotelTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
createHotelWithOneFloor

	^Hotel withFloors: (OrderedCollection with: self createFloorWithTenRooms)! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood
		withMessageText: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test02NewHotelsAreEmpty

	self assert: self createHotel isEmpty! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 0.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |

	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 1.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |

	hotel := self createHotel.
	hotel reserveRoom: 2 atFloor: 1.

	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assert: hotel totalRoomsAvailable equals: hotel totalRooms - 1.
	self assert: hotel totalRoomsReserved equals: 0.
	self assert: hotel totalRoomsOccupied equals: 1! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation

	| hotel |

	hotel := self createHotel.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotReservedErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits

	| hotel firstFloor secondFloor |

	firstFloor := self createFloorWithTenRooms.
	secondFloor := self createFloorWithTenRooms.
	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: hotel totalProfits equals: firstFloor totalProfits + secondFloor totalProfits! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses

	| hotel firstFloor secondFloor |

	firstFloor := self createFloorWithTenRooms.
	secondFloor := self createFloorWithTenRooms.
	hotel := Hotel withFloors: (OrderedCollection with: firstFloor with: secondFloor).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.
	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: hotel totalLosses equals: firstFloor totalLosses + secondFloor totalLosses! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test09HotelCannotReserveANonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test10HotelCannotReserveANonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Hotel floorNumberDoesNotExistErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Floor roomNumberDoesNotExistErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Hotel floorNumberDoesNotExistErrorDescription.
			self assertHasNoGuestsNorReservations: hotel ]! !

!HotelTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:20 am (UTC)'!
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

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test01NewRoomsAreAvailable

	| room |

	room := Room new.

	self assert: room isAvailable.
	self deny: room isOccupied.
	self deny: room isReserved! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test02ReceivingAGuestMakesTheRoomOccupied

	| room |

	room := Room new.

	room receive: self guestTypeVacation.

	self assert: room isOccupied.
	self deny: room isAvailable.
	self deny: room isReserved! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test03ReservingARoomMakesTheRoomReservedAndOccupied

	| room |

	room := Room new.

	room reserve.

	self assert: room isReserved.
	self assert: room isOccupied.
	self deny: room isAvailable! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test04CannotReceiveAGuestInAOccupiedRoom

	| room |

	room := Room new.
	room receive: self guestTypeVacation.

	self
		should: [ room receive: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.
			self assert: room isOccupied.
			self deny: room isAvailable.
			self deny: room isReserved ]! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test05CannotReceiveAGuestInAReservedRoom

	| room |

	room := Room new.
	room reserve.

	self
		should: [ room receive: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.
			self assert: room isReserved.
			self assert: room isOccupied.
			self deny: room isAvailable ]! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test06ReceivingOnReservationMakesTheRoomOccupied

	| room |

	room := Room new.
	room reserve.

	room receiveWithReservation: self guestTypeVacation.

	self assert: room isOccupied.
	self deny: room isReserved.
	self deny: room isAvailable! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
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

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test08CannotReceiveOnReservationAnOccupiedRoom

	| room |

	room := Room new.
	room receive: self guestTypeVacation.

	self
		should: [ room receiveWithReservation: self guestTypeVacation ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotReservedErrorDescription.
			self assert: room isOccupied.
			self deny: room isReserved.
			self deny: room isAvailable ]! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test09ProfitOfAvailableRoomIsCeroPesos

	self
		assert: (Room new profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: 0*peso! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	| room |

	room := Room new.
	room reserve.

	self
		assert: (room profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: self minPriceInList / 2! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test11ProfitOfOccupiedRoomDependsOnGuestType

	| roomWithConferenceGuest roomWithVacationGuest |

	roomWithConferenceGuest := Room new.
	roomWithConferenceGuest receive: self guestTypeConference.
	roomWithVacationGuest := Room new.
	roomWithVacationGuest receive: self guestTypeVacation.

	self
		assert: (roomWithConferenceGuest profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: self maxPriceInList.
	self
		assert: (roomWithVacationGuest profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: self minPriceInList! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test12NoProfitOnOccupiedRoomByUnknownGuestType

	| room |

	room := Room new.
	room receive: #unknownGuest.

	self
		assert: (room profitUsing: self defaultPriceList ifAbsentGuestType: [ #unknownGuestType ])
		equals: #unknownGuestType! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	self
		assert: (Room new lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: self maxPriceInList! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.
	room reserve.

	self
		assert: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: 0*peso! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	| room |

	room := Room new.
	room receive: self guestTypeVacation.

	self
		assert: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])
		equals: 0*peso! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test16CannotReserveWhenReserved

	| room |

	room := Room new.
	room reserve.

	self
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.
			self assert: room isReserved ]! !

!RoomTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 6:11:38 am (UTC)'!
test17CannotReserveWhenOccupied

	| room |

	room := Room new.
	room receive: self guestTypeVacation.

	self
		should: [ room reserve ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Room roomIsNotEmptyErrorDescription.
			self assert: room isOccupied.
			self deny: room isReserved ]! !
