| cat c |
cat := 'ISW1-2024-1C-Parcial'.
c := [ :cls :category :src | cls compile: src classified: category ].

"----- Room states -----"
Object subclass: #RoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
RoomState subclass: #AvailableRoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
RoomState subclass: #ReservedRoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
RoomState subclass: #OccupiedRoomState instanceVariableNames: 'guestType' classVariableNames: '' poolDictionaries: '' category: cat.

c value: RoomState value: 'testing' value: 'isAvailable

	self subclassResponsibility'.
c value: RoomState value: 'testing' value: 'isOccupied

	self subclassResponsibility'.
c value: RoomState value: 'testing' value: 'isReserved

	self subclassResponsibility'.
c value: RoomState value: 'guests' value: 'receive: aGuestType in: aRoom

	aRoom signalRoomIsNotEmpty'.
c value: RoomState value: 'guests' value: 'receiveWithReservation: aGuestType in: aRoom

	aRoom signalRoomIsNotReserved'.
c value: RoomState value: 'guests' value: 'reserveIn: aRoom

	aRoom signalRoomIsNotEmpty'.
c value: RoomState value: 'accounting' value: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility'.
c value: RoomState value: 'accounting' value: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility'.

c value: AvailableRoomState value: 'testing' value: 'isAvailable

	^ true'.
c value: AvailableRoomState value: 'testing' value: 'isOccupied

	^ false'.
c value: AvailableRoomState value: 'testing' value: 'isReserved

	^ false'.
c value: AvailableRoomState value: 'guests' value: 'receive: aGuestType in: aRoom

	aRoom occupyWith: aGuestType'.
c value: AvailableRoomState value: 'guests' value: 'reserveIn: aRoom

	aRoom markAsReserved'.
c value: AvailableRoomState value: 'accounting' value: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso'.
c value: AvailableRoomState value: 'accounting' value: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max'.

c value: ReservedRoomState value: 'testing' value: 'isAvailable

	^ false'.
c value: ReservedRoomState value: 'testing' value: 'isOccupied

	^ true'.
c value: ReservedRoomState value: 'testing' value: 'isReserved

	^ true'.
c value: ReservedRoomState value: 'guests' value: 'receiveWithReservation: aGuestType in: aRoom

	aRoom occupyWith: aGuestType'.
c value: ReservedRoomState value: 'accounting' value: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2'.
c value: ReservedRoomState value: 'accounting' value: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso'.

c value: OccupiedRoomState class value: 'instance creation' value: 'for: aGuestType

	^ self new initializeFor: aGuestType'.
c value: OccupiedRoomState value: 'initialization' value: 'initializeFor: aGuestType

	guestType := aGuestType'.
c value: OccupiedRoomState value: 'testing' value: 'isAvailable

	^ false'.
c value: OccupiedRoomState value: 'testing' value: 'isOccupied

	^ true'.
c value: OccupiedRoomState value: 'testing' value: 'isReserved

	^ false'.
c value: OccupiedRoomState value: 'accounting' value: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock'.
c value: OccupiedRoomState value: 'accounting' value: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso'.

"----- Room -----"
Room selectors do: [ :sel | Room removeSelector: sel ].
Object subclass: #Room instanceVariableNames: 'state' classVariableNames: '' poolDictionaries: '' category: cat.
c value: Room value: 'initialization' value: 'initialize

	state := AvailableRoomState new'.
c value: Room value: 'guests' value: 'receive: aGuestType

	state receive: aGuestType in: self'.
c value: Room value: 'guests' value: 'receiveWithReservation: aGuestType

	state receiveWithReservation: aGuestType in: self'.
c value: Room value: 'guests' value: 'reserve

	state reserveIn: self'.
c value: Room value: 'guests - private' value: 'occupyWith: aGuestType

	state := OccupiedRoomState for: aGuestType'.
c value: Room value: 'guests - private' value: 'markAsReserved

	state := ReservedRoomState new'.
c value: Room value: 'exceptions' value: 'signalRoomIsNotEmpty

	self error: self class roomIsNotEmptyErrorDescription'.
c value: Room value: 'exceptions' value: 'signalRoomIsNotReserved

	self error: self class roomIsNotReservedErrorDescription'.
c value: Room value: 'testing' value: 'isAvailable

	^ state isAvailable'.
c value: Room value: 'testing' value: 'isOccupied

	^ state isOccupied'.
c value: Room value: 'testing' value: 'isReserved

	^ state isReserved'.
c value: Room value: 'accounting' value: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock'.
c value: Room value: 'accounting' value: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock'.

"----- Floor -----"
#(setNumberOfRooms: setPrices: initializeRoomsWith: initializeWith:) do: [ :sel | Floor removeSelector: sel ].
c value: Floor class value: 'instance creation' value: 'withRooms: aNumberOfRooms pricedAt: aPriceList

	self assertIsValidNumberOfRooms: aNumberOfRooms.
	self assertAreValidPrices: aPriceList.

	^ self new initializeWithRooms: aNumberOfRooms pricedAt: aPriceList'.
c value: Floor class value: 'assertions' value: 'assertIsValidNumberOfRooms: aNumberOfRooms

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ]'.
c value: Floor class value: 'assertions' value: 'assertAreValidPrices: aPriceList

	aPriceList isEmpty ifTrue: [ self signalNoPrices ].

	aPriceList do: [ :price |
		self assertIsPositive: price ifFalse: [ self signalPriceMustBePositive ] ]'.
c value: Floor class value: 'exceptions' value: 'signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription'.
c value: Floor value: 'initialization' value: 'initializeWithRooms: aNumberOfRooms pricedAt: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList'.
c value: Floor value: 'testing' value: 'isAvailable

	^ rooms allSatisfy: [ :room | room isAvailable ]'.
c value: Floor value: 'accounting' value: 'totalProfits

	^ rooms sum: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]'.
c value: Floor value: 'accounting' value: 'totalLosses

	^ rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]'.
c value: Floor value: 'guests' value: 'receive: aGuestType atRoom: aRoomNumber ifNone: aNoneBlock

	self withRoomNumber: aRoomNumber do: [ :room | room receive: aGuestType ] ifNone: aNoneBlock'.
c value: Floor value: 'guests' value: 'receiveWithReservation: aGuestType atRoom: aRoomNumber ifNone: aNoneBlock

	self withRoomNumber: aRoomNumber do: [ :room | room receiveWithReservation: aGuestType ] ifNone: aNoneBlock'.
c value: Floor value: 'guests' value: 'reserveRoom: aRoomNumber ifNone: aNoneBlock

	self withRoomNumber: aRoomNumber do: [ :room | room reserve ] ifNone: aNoneBlock'.
c value: Floor value: 'guests - private' value: 'withRoomNumber: aRoomNumber do: aRoomBlock ifNone: aNoneBlock

	aRoomBlock value: (rooms at: aRoomNumber ifAbsent: [ ^ aNoneBlock value ])'.

"----- Hotel -----"
#(setFloors: initialize) do: [ :sel | Hotel removeSelector: sel ].
Object subclass: #Hotel instanceVariableNames: 'floors' classVariableNames: '' poolDictionaries: '' category: cat.
c value: Hotel class value: 'instance creation' value: 'withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection'.
c value: Hotel value: 'initialization' value: 'initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection'.
c value: Hotel value: 'guests' value: 'receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorNumber: aFloorNumber) receive: aGuestType atRoom: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]'.
c value: Hotel value: 'guests' value: 'receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorNumber: aFloorNumber) receiveWithReservation: aGuestType atRoom: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]'.
c value: Hotel value: 'guests' value: 'reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self floorNumber: aFloorNumber) reserveRoom: aRoomNumber ifNone: [ self class signalRoomNumberDoesNotExist ]'.
c value: Hotel value: 'guests - private' value: 'floorNumber: aFloorNumber

	^ floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]'.
c value: Hotel value: 'accounting' value: 'totalProfits

	^ self sumForEachFloor: [ :floor | floor totalProfits ]'.
c value: Hotel value: 'accounting' value: 'totalLosses

	^ self sumForEachFloor: [ :floor | floor totalLosses ]'.
c value: Hotel value: 'totals' value: 'totalRooms

	^ self sumForEachFloor: [ :floor | floor totalRooms ]'.
c value: Hotel value: 'totals' value: 'totalRoomsAvailable

	^ self sumForEachFloor: [ :floor | floor totalRoomsAvailable ]'.
c value: Hotel value: 'totals' value: 'totalRoomsOccupied

	^ self sumForEachFloor: [ :floor | floor totalRoomsOccupied ]'.
c value: Hotel value: 'totals' value: 'totalRoomsReserved

	^ self sumForEachFloor: [ :floor | floor totalRoomsReserved ]'.
c value: Hotel value: 'totals - private' value: 'sumForEachFloor: aFloorBlock

	^ floors sum: aFloorBlock'.
c value: Hotel value: 'testing' value: 'isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]'.
'ok'
