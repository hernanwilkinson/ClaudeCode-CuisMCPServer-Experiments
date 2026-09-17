"===== Room states ====="
Object subclass: #RoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
RoomState subclass: #AvailableRoom instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
RoomState subclass: #ReservedRoom instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
RoomState subclass: #OccupiedRoom instanceVariableNames: 'guestType' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.

RoomState compile: 'isAvailable

	^ false' classified: 'testing'.
RoomState compile: 'isOccupied

	^ true' classified: 'testing'.
RoomState compile: 'isReserved

	^ false' classified: 'testing'.
RoomState compile: 'receive: aGuestType in: aRoom

	aRoom signalRoomIsNotEmpty' classified: 'guests'.
RoomState compile: 'receiveWithReservation: aGuestType in: aRoom

	aRoom signalRoomIsNotReserved' classified: 'guests'.
RoomState compile: 'reserveIn: aRoom

	aRoom signalRoomIsNotEmpty' classified: 'guests'.
RoomState compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility' classified: 'accounting'.
RoomState compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso' classified: 'accounting'.

AvailableRoom compile: 'isAvailable

	^ true' classified: 'testing'.
AvailableRoom compile: 'isOccupied

	^ false' classified: 'testing'.
AvailableRoom compile: 'receive: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType' classified: 'guests'.
AvailableRoom compile: 'reserveIn: aRoom

	aRoom beReserved' classified: 'guests'.
AvailableRoom compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso' classified: 'accounting'.
AvailableRoom compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max' classified: 'accounting'.

ReservedRoom compile: 'isReserved

	^ true' classified: 'testing'.
ReservedRoom compile: 'receiveWithReservation: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType' classified: 'guests'.
ReservedRoom compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2' classified: 'accounting'.

OccupiedRoom class compile: 'by: aGuestType

	^ self new initializeBy: aGuestType' classified: 'instance creation'.
OccupiedRoom compile: 'initializeBy: aGuestType

	guestType := aGuestType' classified: 'initialization'.
OccupiedRoom compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock' classified: 'accounting'.

"===== Room ====="
#(guestType) do: [ :aSelector | Room removeSelector: aSelector ].
Object subclass: #Room instanceVariableNames: 'state' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.

Room compile: 'initialize

	state := AvailableRoom new' classified: 'initialization'.
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

	state reserveIn: self' classified: 'guests'.
Room compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock' classified: 'accounting'.
Room compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock' classified: 'accounting'.
Room compile: 'beOccupiedBy: aGuestType

	state := OccupiedRoom by: aGuestType' classified: 'private - state'.
Room compile: 'beReserved

	state := ReservedRoom new' classified: 'private - state'.
Room compile: 'signalRoomIsNotEmpty

	self error: self class roomIsNotEmptyErrorDescription' classified: 'exceptions'.
Room compile: 'signalRoomIsNotReserved

	self error: self class roomIsNotReservedErrorDescription' classified: 'exceptions'.

"===== Floor ====="
#(initializeRoomsWith: initializeWith: rooms setNumberOfRooms: setPrices:) do: [ :aSelector | Floor removeSelector: aSelector ].

Floor class compile: 'withRooms: aNumberOfRooms prices: aPriceList

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ].
	self assertIsValidPriceList: aPriceList.

	^ self new initializeWithRooms: aNumberOfRooms prices: aPriceList' classified: 'instance creation'.
Floor class compile: 'assertIsValidPriceList: aPriceList

	aPriceList isEmpty ifTrue: [ self signalNoPrices ].
	aPriceList do: [ :price | self assertIsPositive: price ifFalse: [ self signalPriceMustBePositive ] ]' classified: 'assertions'.
Floor class compile: 'signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription' classified: 'exceptions'.

Floor compile: 'initializeWithRooms: aNumberOfRooms prices: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList' classified: 'initialization'.
Floor compile: 'roomAt: aRoomNumber ifNone: noneBlock

	^ rooms at: aRoomNumber ifAbsent: noneBlock' classified: 'accessing'.
Floor compile: 'totalProfits

	^ self sumOverRooms: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]' classified: 'accounting'.
Floor compile: 'totalLosses

	^ self sumOverRooms: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]' classified: 'accounting'.
Floor compile: 'sumOverRooms: aRoomValueBlock

	^ rooms sum: aRoomValueBlock' classified: 'accounting'.

"===== Hotel ====="
#(initialize setFloors:) do: [ :aSelector | Hotel removeSelector: aSelector ].
Object subclass: #Hotel instanceVariableNames: 'floors' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.

Hotel class compile: 'withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection' classified: 'instance creation'.
Hotel compile: 'initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection' classified: 'initialization'.

Hotel compile: 'receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self roomAt: aRoomNumber atFloor: aFloorNumber) receive: aGuestType' classified: 'guests'.
Hotel compile: 'receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self roomAt: aRoomNumber atFloor: aFloorNumber) receiveWithReservation: aGuestType' classified: 'guests'.
Hotel compile: 'reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self roomAt: aRoomNumber atFloor: aFloorNumber) reserve' classified: 'guests'.
Hotel compile: 'roomAt: aRoomNumber atFloor: aFloorNumber

	^ (self floorAt: aFloorNumber) roomAt: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]' classified: 'private - accessing'.
Hotel compile: 'floorAt: aFloorNumber

	^ floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]' classified: 'private - accessing'.

Hotel compile: 'isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]' classified: 'testing'.
Hotel compile: 'sumOverFloors: aFloorValueBlock

	^ floors sum: aFloorValueBlock' classified: 'private - totals'.
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
'model ok'
