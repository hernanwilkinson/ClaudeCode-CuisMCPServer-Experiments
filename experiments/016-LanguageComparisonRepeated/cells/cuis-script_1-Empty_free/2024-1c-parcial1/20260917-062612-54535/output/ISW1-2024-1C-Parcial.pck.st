'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 6:29:37 am'!
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


!Floor methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isAvailable
	
	^ rooms allSatisfy: [ :room | room isAvailable ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
totalLosses

	^ self sumOverRooms: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]! !

!Floor methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
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

!Floor methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
initializeWithNumberOfRooms: aNumberOfRooms andPrices: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList! !

!Floor methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
atRoom: aRoomNumber do: aRoomBlock ifAbsent: anAbsentRoomBlock

	^ aRoomBlock value: (rooms at: aRoomNumber ifAbsent: [ ^ anAbsentRoomBlock value ])! !

!Floor methodsFor: 'accounting - private' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
sumOverRooms: aRoomAmountBlock

	^ rooms sum: aRoomAmountBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:39:26 pm (UTC)'!
assertIsInteger: aNumber ifFalse: signalsBlock

	aNumber isInteger ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'FRT 20/Apr/2024, 10:40:06 pm (UTC)'!
assertIsPositive: aNumber ifFalse: signalsBlock

	aNumber strictlyPositive ifFalse: signalsBlock! !

!Floor class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
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

!Floor class methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription! !

!Floor class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
withNumberOfRooms: aNumberOfRooms andPrices: aPriceList

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ].
	self assertIsValidPriceList: aPriceList.
	
	^ self new initializeWithNumberOfRooms: aNumberOfRooms andPrices: aPriceList! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
totalLosses

	^ self sumOverFloors: [ :floor | floor totalLosses ]! !

!Hotel methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
totalProfits

	^ self sumOverFloors: [ :floor | floor totalProfits ]! !

!Hotel methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
totalRooms

	^ self sumOverFloors: [ :floor | floor totalRooms ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
totalRoomsAvailable

	^ self sumOverFloors: [ :floor | floor totalRoomsAvailable ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
totalRoomsOccupied

	^ self sumOverFloors: [ :floor | floor totalRoomsOccupied ]! !

!Hotel methodsFor: 'totals' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
totalRoomsReserved

	^ self sumOverFloors: [ :floor | floor totalRoomsReserved ]! !

!Hotel methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self atRoom: aRoomNumber atFloor: aFloorNumber do: [ :room | room receive: aGuestType ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self atRoom: aRoomNumber atFloor: aFloorNumber do: [ :room | room receiveWithReservation: aGuestType ]! !

!Hotel methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
reserveRoom: aRoomNumber atFloor: aFloorNumber

	self atRoom: aRoomNumber atFloor: aFloorNumber do: [ :room | room reserve ]! !

!Hotel methodsFor: 'guests - private' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
atRoom: aRoomNumber atFloor: aFloorNumber do: aRoomBlock

	| floor |
	
	floor := floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ].
	
	^ floor atRoom: aRoomNumber do: aRoomBlock ifAbsent: [ self class signalRoomNumberDoesNotExist ]! !

!Hotel methodsFor: 'totals - private' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
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

!Hotel class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
receive: aGuestType

	self changeStateTo: (OccupiedRoomState by: aGuestType) when: self isAvailable ifNot: [ self signalRoomIsNotEmpty ]! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
receiveWithReservation: aGuestType

	self changeStateTo: (OccupiedRoomState by: aGuestType) when: self isReserved ifNot: [ self signalRoomIsNotReserved ]! !

!Room methodsFor: 'guests' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
reserve

	self changeStateTo: ReservedRoomState new when: self isAvailable ifNot: [ self signalRoomIsNotEmpty ]! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isAvailable

	^ state isAvailable! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isOccupied

	^ state isOccupied! !

!Room methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isReserved

	^ state isReserved! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock! !

!Room methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
initialize

	state := AvailableRoomState new! !

!Room methodsFor: 'guests - private' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
changeStateTo: aNewState when: aCondition ifNot: aFailureBlock

	aCondition ifFalse: [ ^ aFailureBlock value ].
	
	state := aNewState! !

!Room methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
signalRoomIsNotEmpty

	self error: self class roomIsNotEmptyErrorDescription! !

!Room methodsFor: 'exceptions' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
signalRoomIsNotReserved

	self error: self class roomIsNotReservedErrorDescription! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:14 pm (UTC)'!
roomIsNotEmptyErrorDescription

	^ 'Room is not empty.'! !

!Room class methodsFor: 'error messages' stamp: 'FRT 22/Apr/2024, 12:01:43 pm (UTC)'!
roomIsNotReservedErrorDescription

	^ 'Room is not reserved.'! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isAvailable

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isOccupied

	self subclassResponsibility! !

!RoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isReserved

	self subclassResponsibility! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility! !

!RoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isAvailable

	^ true! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isOccupied

	^ false! !

!AvailableRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isReserved

	^ false! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max! !

!AvailableRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!OccupiedRoomState methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
initializeBy: aGuestType

	guestType := aGuestType! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isAvailable

	^ false! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isOccupied

	^ true! !

!OccupiedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isReserved

	^ false! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!OccupiedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock! !

!OccupiedRoomState class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
by: aGuestType

	^ self new initializeBy: aGuestType! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isAvailable

	^ false! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isOccupied

	^ true! !

!ReservedRoomState methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
isReserved

	^ true! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso! !

!ReservedRoomState methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:27:56 am (UTC)'!
profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withNumberOfRooms: aNumberOfRooms andPrices: aPriceList! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
createFloorWithRooms: aNumberOfRooms

	^ self createFloorWith: aNumberOfRooms and: self defaultPriceList! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
defaultPriceList
	
	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
guestTypeConference
	
	^ #conferenceGuest! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
guestTypeVacation
	
	^ #vacationGuest! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
maxPriceInList
	
	^ 200*peso! !

!SimsHotelsTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
minPriceInList
	
	^ 100*peso! !

!SimsHotelsTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
should: aBlock failWith: anErrorDescription andAssert: assertionsBlock

	self 
		should: aBlock
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			assertionsBlock value ]! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test01CannotCreateFloorWithoutRooms

	self
		should: [ self createFloorWith: 0 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor numberOfRoomsMustBePositiveErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test02CannotCreateFloorWithNoIntergerNumberOfRooms

	self
		should: [ self createFloorWith: 1.5 and: self defaultPriceList ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor numberOfRoomsMustBeIntegerErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test03CannotCreateFloorWithoutPrices

	self
		should: [ self createFloorWith: 10 and: Dictionary new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Floor pricesListCannotBeEmptyErrorDescription! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test04WhenAFloorIsCreatedAllTheRoomsAreAvailable

	| floor |
	
	floor := self createFloor.
	
	self assert: floor isAvailable.
	self assert: self numberOfRooms equals: floor totalRoomsAvailable.
	self assert: 0 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test05WhenAFloorReceivesAGuestInARoomReducesTheAvailableRoomsByOneAndIncreaseOccupiedByOne

	| floor |
	
	floor := self createFloor.
	
	self in: floor atRoom: 1 do: [ :room | room receive: self guestTypeVacation ].
	
	self deny: floor isAvailable.
	self assert: self numberOfRooms - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 0 equals: floor totalRoomsReserved! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test06WhenAFloorReceivesOnReservationAGuestInARoomKeepsTheAvailableRoomsAndOccupiedAndReducesTheReservedByOne

	| floor roomsAvailable roomsOccupied roomsReserved |
	
	floor := self createFloor.
	
	self in: floor atRoom: 1 do: [ :room | room reserve ].

	roomsAvailable := floor totalRoomsAvailable.
	roomsOccupied := floor totalRoomsOccupied.
	roomsReserved := floor totalRoomsReserved.

	self in: floor atRoom: 1 do: [ :room | room receiveWithReservation: self guestTypeVacation ].
	
	self assert: roomsAvailable equals: floor totalRoomsAvailable. 
	self assert: roomsOccupied equals: floor totalRoomsOccupied.
	self assert: roomsReserved - 1 equals: floor totalRoomsReserved! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test07WhenARoomIsReservedTheFloorAvailableRoomsReducesByOneAndIncreaseReservedAndOccupiedByOne

	| floor |
	
	floor := self createFloor.
	
	self in: floor atRoom: 1 do: [ :room | room reserve ].
	
	self assert: self numberOfRooms - 1 equals: floor totalRoomsAvailable. 
	self assert: 1 equals: floor totalRoomsOccupied.
	self assert: 1 equals: floor totalRoomsReserved! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test08TotalProfitShouldBeTheSumOfOccupiedRoomsProfits

	| floor |
	
	floor := self createFloorWithAVacationGuestAConferenceGuestAndAReservation.
		
	self 
		assert: self minPriceInList + self maxPriceInList + (self minPriceInList / 2) 
		equals: floor totalProfits! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test09TotalLossesShouldBeTheSumOfAvailableRoomsLosses

	| floor |
	
	floor := self createFloorWithAVacationGuestAConferenceGuestAndAReservation.
		
	self assert: self maxPriceInList * (self numberOfRooms - 3) equals: floor totalLosses! !

!FloorTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test10CannotAccessANonexistentRoom

	| floor |
	
	floor := self createFloor.
	
	self 
		assert: #absent 
		equals: (floor atRoom: self numberOfRooms + 1 do: [ :room | self fail ] ifAbsent: [ #absent ])! !

!FloorTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
createFloor

	^ self createFloorWithRooms: self numberOfRooms! !

!FloorTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
createFloorWithAVacationGuestAConferenceGuestAndAReservation

	| floor |
	
	floor := self createFloor.
	
	self in: floor atRoom: 1 do: [ :room | room receive: self guestTypeVacation ].
	self in: floor atRoom: 2 do: [ :room | room receive: self guestTypeConference ].
	self in: floor atRoom: 3 do: [ :room | room reserve ].
	
	^ floor! !

!FloorTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
numberOfRooms

	^ 10! !

!FloorTest methodsFor: 'rooms' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
in: aFloor atRoom: aRoomNumber do: aRoomBlock

	aFloor atRoom: aRoomNumber do: aRoomBlock ifAbsent: [ self fail ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test01CannotCreateHotelWithoutFloors

	self
		should: [ Hotel withFloors: OrderedCollection new ]
		raise: Error - MessageNotUnderstood 
		withMessageText: Hotel noFloorsErrorDescription! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test02NewHotelsAreEmpty

	| hotel |
	
	hotel := self createHotel.
	
	self assert: 11 equals: hotel totalRooms.
	self assertIsEmpty: hotel! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test03HotelCanReceiveATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 2.

	self deny: hotel isEmpty.
	self assertTotalRoomsOf: hotel available: hotel totalRooms - 1 reserved: 0 occupied: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test04HotelCanTakeAReservationForARoomAtFloor

	| hotel |
	
	hotel := self createHotel.

	hotel reserveRoom: 2 atFloor: 1.

	self assertTotalRoomsOf: hotel available: hotel totalRooms - 1 reserved: 1 occupied: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test05HotelCanReceiveWithReservationATypeOfGuestInRoomAtFloor

	| hotel |
	
	hotel := self createHotel.
	
	hotel reserveRoom: 2 atFloor: 1.
	hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2.

	self assertTotalRoomsOf: hotel available: hotel totalRooms - 1 reserved: 0 occupied: 1! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test06HotelCannotReceiveWithReservationWithoutPreviousReservation
	
	| hotel |
	
	hotel := self createHotel.
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test07HotelProfitsAreTheSumOfEachFloorProfits
	
	| hotel floor1 floor2 |
	
	floor1 := self createFloorWithRooms: 10.
	floor2 := self createFloorWithRooms: 10.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: floor1 totalProfits + floor2 totalProfits equals: hotel totalProfits.
	self assert: self minPriceInList + self maxPriceInList equals: hotel totalProfits! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test08HotelLossesAreTheSumOfEachFloorLosses
	
	| hotel floor1 floor2 |
	
	floor1 := self createFloorWithRooms: 10.
	floor2 := self createFloorWithRooms: 10.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).
	
	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: floor1 totalLosses + floor2 totalLosses equals: hotel totalLosses.
	self assert: self maxPriceInList * 16 equals: hotel totalLosses! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test09HotelCannotReserveANonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 42 atFloor: 1 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test10HotelCannotReserveANonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel reserveRoom: 1 atFloor: 42 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test11HotelCannotReceiveAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test12HotelCannotReceiveAtNonexistentFloor
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.
	
	self 
		should: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]
		failWith: Hotel floorNumberDoesNotExistErrorDescription
		andAssert: [ self assertIsEmpty: hotel ]! !

!HotelTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test13HotelCannotReceiveWithReservationAtNonexistentRoom
	
	| hotel |
	
	hotel := self createHotelWithOneFloor.

	hotel reserveRoom: 1 atFloor: 1. 
	
	self 
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		failWith: Hotel roomNumberDoesNotExistErrorDescription
		andAssert: [ self assertTotalRoomsOf: hotel available: hotel totalRooms - 1 reserved: 1 occupied: 1 ]! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
createHotel

	^ Hotel withFloors: (OrderedCollection 
		with: (self createFloorWithRooms: 10)
		with: (self createFloorWithRooms: 1))! !

!HotelTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWithRooms: 10))! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
assertIsEmpty: aHotel

	self assert: aHotel isEmpty.
	self assertTotalRoomsOf: aHotel available: aHotel totalRooms reserved: 0 occupied: 0! !

!HotelTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
assertTotalRoomsOf: aHotel available: aNumberOfAvailableRooms reserved: aNumberOfReservedRooms occupied: aNumberOfOccupiedRooms

	self assert: aNumberOfAvailableRooms equals: aHotel totalRoomsAvailable.
	self assert: aNumberOfReservedRooms equals: aHotel totalRoomsReserved.
	self assert: aNumberOfOccupiedRooms equals: aHotel totalRoomsOccupied! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test01NewRoomsAreAvailable

	self assertIsAvailable: Room new! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test02ReceivingAGuestMakesTheRoomOccupied

	self assertIsOccupiedByAGuest: self createRoomWithAGuest! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test03ReservingARoomMakesTheRoomReservedAndOccupied

	self assertIsReserved: self createReservedRoom! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test04CannotReceiveAGuestInAOccupiedRoom

	| room |
	
	room := self createRoomWithAGuest.
	
	self 
		should: [ room receive: self guestTypeVacation ] 
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsOccupiedByAGuest: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test05CannotReceiveAGuestInAReservedRoom

	| room |
	
	room := self createReservedRoom.
	
	self 
		should: [ room receive: self guestTypeVacation ] 
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsReserved: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test06ReceivingOnReservationMakesTheRoomOccupied

	| room |
	
	room := self createReservedRoom.
	
	room receiveWithReservation: self guestTypeVacation.
	
	self assertIsOccupiedByAGuest: room! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test07CannotReceiveOnReservationAnAvailableRoom

	| room |
	
	room := Room new.

	self 
		should: [ room receiveWithReservation: self guestTypeVacation ] 
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsAvailable: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test08CannotReceiveOnReservationAnOccupiedRoom

	| room |
	
	room := self createRoomWithAGuest.

	self 
		should: [ room receiveWithReservation: self guestTypeVacation ] 
		failWith: Room roomIsNotReservedErrorDescription
		andAssert: [ self assertIsOccupiedByAGuest: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test09ProfitOfAvailableRoomIsCeroPesos

	self assert: 0*peso equals: (self profitOf: Room new)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test10ProfitOfReservedRoomIsHalfTheMinPriceInList

	self assert: self minPriceInList / 2 equals: (self profitOf: self createReservedRoom)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test11ProfitOfOccupiedRoomDependsOnGuestType

	| roomWithConferenceGuest roomWithVacationGuest |
	
	roomWithConferenceGuest := Room new.
	roomWithConferenceGuest receive: self guestTypeConference.
	
	roomWithVacationGuest := Room new.
	roomWithVacationGuest receive: self guestTypeVacation.

	self assert: self maxPriceInList equals: (self profitOf: roomWithConferenceGuest).
	self assert: self minPriceInList equals: (self profitOf: roomWithVacationGuest)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test12NoProfitOnOccupiedRoomByUnknownGuestType

	| room |
	
	room := Room new.
	room receive: #unknownGuest.
	
	room profitUsing: self defaultPriceList ifAbsentGuestType: [ ^ self ].
	
	"we should not get here"
	self failWith: 'should not calculate profit on room occupied by unknown guest type'! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test13LossesOfAvailableRoomIsTheMaxPriceInList

	self assert: self maxPriceInList equals: (self lossOf: Room new)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test14LossesOfReservedRoomIsCeroPesos

	self assert: 0*peso equals: (self lossOf: self createReservedRoom)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test15LossesOfOccupiedRoomIsCeroPesos

	self assert: 0*peso equals: (self lossOf: self createRoomWithAGuest)! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test16CannotReserveWhenReserved

	| room |
	
	room := self createReservedRoom.

	self 
		should: [ room reserve ]
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsReserved: room ]! !

!RoomTest methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
test17CannotReserveWhenOccupied

	| room |
	
	room := self createRoomWithAGuest.

	self 
		should: [ room reserve ]
		failWith: Room roomIsNotEmptyErrorDescription
		andAssert: [ self assertIsOccupiedByAGuest: room ]! !

!RoomTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
createReservedRoom

	^ Room new reserve; yourself! !

!RoomTest methodsFor: 'create' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
createRoomWithAGuest

	^ Room new receive: self guestTypeVacation; yourself! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
assertIsAvailable: aRoom

	self assert: aRoom isAvailable.
	self deny: aRoom isOccupied.
	self deny: aRoom isReserved! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
assertIsOccupiedByAGuest: aRoom

	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable.
	self deny: aRoom isReserved! !

!RoomTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
assertIsReserved: aRoom

	self assert: aRoom isReserved.
	self assert: aRoom isOccupied.
	self deny: aRoom isAvailable! !

!RoomTest methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
lossOf: aRoom

	^ aRoom lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]! !

!RoomTest methodsFor: 'accounting' stamp: 'HAW 17/Sep/2026, 9:29:07 am (UTC)'!
profitOf: aRoom

	^ aRoom profitUsing: self defaultPriceList ifAbsentGuestType: [ self fail ]! !
