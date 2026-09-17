| cat |
cat := 'ISW1-2024-1C-Parcial'.

"---------------- Room states ----------------"
Object subclass: #RoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
RoomState subclass: #AvailableRoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
RoomState subclass: #ReservedRoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
RoomState subclass: #OccupiedRoomState instanceVariableNames: 'guestType' classVariableNames: '' poolDictionaries: '' category: cat.

RoomState compile: 'isAvailable

	self subclassResponsibility' classified: 'testing'.
RoomState compile: 'isOccupied

	self subclassResponsibility' classified: 'testing'.
RoomState compile: 'isReserved

	self subclassResponsibility' classified: 'testing'.
RoomState compile: 'receive: aGuestType in: aRoom

	aRoom signalRoomIsNotEmpty' classified: 'guests'.
RoomState compile: 'reserve: aRoom

	aRoom signalRoomIsNotEmpty' classified: 'guests'.
RoomState compile: 'receiveWithReservation: aGuestType in: aRoom

	aRoom signalRoomIsNotReserved' classified: 'guests'.
RoomState compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility' classified: 'accounting'.
RoomState compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso' classified: 'accounting'.

AvailableRoomState compile: 'isAvailable

	^ true' classified: 'testing'.
AvailableRoomState compile: 'isOccupied

	^ false' classified: 'testing'.
AvailableRoomState compile: 'isReserved

	^ false' classified: 'testing'.
AvailableRoomState compile: 'receive: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType' classified: 'guests'.
AvailableRoomState compile: 'reserve: aRoom

	aRoom beReserved' classified: 'guests'.
AvailableRoomState compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso' classified: 'accounting'.
AvailableRoomState compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max' classified: 'accounting'.

ReservedRoomState compile: 'isAvailable

	^ false' classified: 'testing'.
ReservedRoomState compile: 'isOccupied

	^ true' classified: 'testing'.
ReservedRoomState compile: 'isReserved

	^ true' classified: 'testing'.
ReservedRoomState compile: 'receiveWithReservation: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType' classified: 'guests'.
ReservedRoomState compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2' classified: 'accounting'.

OccupiedRoomState class compile: 'by: aGuestType

	^ self new initializeBy: aGuestType' classified: 'instance creation'.
OccupiedRoomState compile: 'initializeBy: aGuestType

	guestType := aGuestType' classified: 'initialization'.
OccupiedRoomState compile: 'isAvailable

	^ false' classified: 'testing'.
OccupiedRoomState compile: 'isOccupied

	^ true' classified: 'testing'.
OccupiedRoomState compile: 'isReserved

	^ false' classified: 'testing'.
OccupiedRoomState compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock' classified: 'accounting'.

"---------------- Room ----------------"
Room selectors do: [ :each | Room removeSelector: each ].
Object subclass: #Room instanceVariableNames: 'state' classVariableNames: '' poolDictionaries: '' category: cat.

Room compile: 'initialize

	self beAvailable' classified: 'initialization'.
Room compile: 'beAvailable

	state := AvailableRoomState new' classified: 'state - private'.
Room compile: 'beReserved

	state := ReservedRoomState new' classified: 'state - private'.
Room compile: 'beOccupiedBy: aGuestType

	state := OccupiedRoomState by: aGuestType' classified: 'state - private'.
Room compile: 'isAvailable

	^ state isAvailable' classified: 'testing'.
Room compile: 'isOccupied

	^ state isOccupied' classified: 'testing'.
Room compile: 'isReserved

	^ state isReserved' classified: 'testing'.
Room compile: 'receive: aGuestType

	state receive: aGuestType in: self' classified: 'guests'.
Room compile: 'receiveWithReservation: aGuestType

	state receiveWithReservation: aGuestType in: self' classified: 'guests'.
Room compile: 'reserve

	state reserve: self' classified: 'guests'.
Room compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock' classified: 'accounting'.
Room compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock' classified: 'accounting'.
Room compile: 'signalRoomIsNotEmpty

	self error: self class roomIsNotEmptyErrorDescription' classified: 'exceptions'.
Room compile: 'signalRoomIsNotReserved

	self error: self class roomIsNotReservedErrorDescription' classified: 'exceptions'.

"---------------- Floor ----------------"
#(initializeRoomsWith: initializeWith: setNumberOfRooms: setPrices: rooms) do: [ :each | Floor removeSelector: each ].

Floor class compile: 'withNumberOfRooms: aNumberOfRooms andPrices: aPriceList

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ].
	aPriceList isEmpty ifTrue: [ self signalNoPrices ].
	aPriceList do: [ :price | self assertIsPositive: price ifFalse: [ self signalPriceMustBePositive ] ].

	^ self new initializeWithNumberOfRooms: aNumberOfRooms andPrices: aPriceList' classified: 'instance creation'.
Floor class compile: 'signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription' classified: 'exceptions'.

Floor compile: 'initializeWithNumberOfRooms: aNumberOfRooms andPrices: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :roomNumber | Room new ].
	prices := aPriceList' classified: 'initialization'.
Floor compile: 'withRoom: aRoomNumber do: aRoomBlock ifNone: aNoneBlock

	^ aRoomBlock value: (rooms at: aRoomNumber ifAbsent: [ ^ aNoneBlock value ])' classified: 'rooms'.
Floor compile: 'sumOverRooms: aRoomBlock

	^ rooms sum: aRoomBlock' classified: 'accounting - private'.
Floor compile: 'totalProfits

	^ self sumOverRooms: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]' classified: 'accounting'.
Floor compile: 'totalLosses

	^ self sumOverRooms: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]' classified: 'accounting'.
Floor compile: 'isAvailable

	^ rooms allSatisfy: [ :room | room isAvailable ]' classified: 'testing'.

"---------------- Hotel ----------------"
#(initialize setFloors:) do: [ :each | Hotel removeSelector: each ].
Object subclass: #Hotel instanceVariableNames: 'floors' classVariableNames: '' poolDictionaries: '' category: cat.

Hotel class compile: 'withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection' classified: 'instance creation'.
Hotel compile: 'initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection' classified: 'initialization'.

Hotel compile: 'atFloor: aFloorNumber atRoom: aRoomNumber do: aRoomBlock

	| floor |

	floor := floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ].

	floor withRoom: aRoomNumber do: aRoomBlock ifNone: [ self class signalRoomNumberDoesNotExist ]' classified: 'guests - private'.
Hotel compile: 'receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self atFloor: aFloorNumber atRoom: aRoomNumber do: [ :room | room receive: aGuestType ]' classified: 'guests'.
Hotel compile: 'receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self atFloor: aFloorNumber atRoom: aRoomNumber do: [ :room | room receiveWithReservation: aGuestType ]' classified: 'guests'.
Hotel compile: 'reserveRoom: aRoomNumber atFloor: aFloorNumber

	self atFloor: aFloorNumber atRoom: aRoomNumber do: [ :room | room reserve ]' classified: 'guests'.

Hotel compile: 'sumOverFloors: aFloorBlock

	^ floors sum: aFloorBlock' classified: 'totals - private'.
Hotel compile: 'isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]' classified: 'testing'.
Hotel compile: 'totalRooms

	^ self sumOverFloors: [ :floor | floor totalRooms ]' classified: 'totals'.
Hotel compile: 'totalRoomsAvailable

	^ self sumOverFloors: [ :floor | floor totalRoomsAvailable ]' classified: 'totals'.
Hotel compile: 'totalRoomsOccupied

	^ self sumOverFloors: [ :floor | floor totalRoomsOccupied ]' classified: 'totals'.
Hotel compile: 'totalRoomsReserved

	^ self sumOverFloors: [ :floor | floor totalRoomsReserved ]' classified: 'totals'.
Hotel compile: 'totalProfits

	^ self sumOverFloors: [ :floor | floor totalProfits ]' classified: 'accounting'.
Hotel compile: 'totalLosses

	^ self sumOverFloors: [ :floor | floor totalLosses ]' classified: 'accounting'.
'ok'
