| m |
m := [ :aClass :aCategory :aSource | aClass compile: aSource classified: aCategory ].

"---------------- Room states ----------------"
Object subclass: #RoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
RoomState subclass: #AvailableRoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
RoomState subclass: #ReservedRoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
RoomState subclass: #OccupiedRoomState instanceVariableNames: 'guestType' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.

m value: RoomState value: 'testing' value: 'isAvailable

	self subclassResponsibility'.
m value: RoomState value: 'testing' value: 'isReserved

	self subclassResponsibility'.
m value: RoomState value: 'testing' value: 'isOccupied

	self subclassResponsibility'.
m value: RoomState value: 'accounting' value: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility'.
m value: RoomState value: 'accounting' value: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility'.
m value: RoomState value: 'guests' value: 'receive: aGuestType in: aRoom

	aRoom signalRoomIsNotEmpty'.
m value: RoomState value: 'guests' value: 'reserveIn: aRoom

	aRoom signalRoomIsNotEmpty'.
m value: RoomState value: 'guests' value: 'receiveWithReservation: aGuestType in: aRoom

	aRoom signalRoomIsNotReserved'.

m value: AvailableRoomState value: 'testing' value: 'isAvailable

	^ true'.
m value: AvailableRoomState value: 'testing' value: 'isReserved

	^ false'.
m value: AvailableRoomState value: 'testing' value: 'isOccupied

	^ false'.
m value: AvailableRoomState value: 'accounting' value: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso'.
m value: AvailableRoomState value: 'accounting' value: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max'.
m value: AvailableRoomState value: 'guests' value: 'receive: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType'.
m value: AvailableRoomState value: 'guests' value: 'reserveIn: aRoom

	aRoom beReserved'.

m value: ReservedRoomState value: 'testing' value: 'isAvailable

	^ false'.
m value: ReservedRoomState value: 'testing' value: 'isReserved

	^ true'.
m value: ReservedRoomState value: 'testing' value: 'isOccupied

	^ true'.
m value: ReservedRoomState value: 'accounting' value: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2'.
m value: ReservedRoomState value: 'accounting' value: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso'.
m value: ReservedRoomState value: 'guests' value: 'receiveWithReservation: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType'.

OccupiedRoomState class compile: 'by: aGuestType

	^ self new initializeBy: aGuestType' classified: 'instance creation'.
m value: OccupiedRoomState value: 'initialization' value: 'initializeBy: aGuestType

	guestType := aGuestType'.
m value: OccupiedRoomState value: 'testing' value: 'isAvailable

	^ false'.
m value: OccupiedRoomState value: 'testing' value: 'isReserved

	^ false'.
m value: OccupiedRoomState value: 'testing' value: 'isOccupied

	^ true'.
m value: OccupiedRoomState value: 'accounting' value: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock'.
m value: OccupiedRoomState value: 'accounting' value: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso'.

"---------------- Room ----------------"
Object subclass: #Room instanceVariableNames: 'state' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
#(guestType) do: [ :sel | Room removeSelector: sel ].

m value: Room value: 'initialization' value: 'initialize

	state := AvailableRoomState new'.
m value: Room value: 'testing' value: 'isAvailable

	^ state isAvailable'.
m value: Room value: 'testing' value: 'isOccupied

	^ state isOccupied'.
m value: Room value: 'testing' value: 'isReserved

	^ state isReserved'.
m value: Room value: 'accounting' value: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock'.
m value: Room value: 'accounting' value: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock'.
m value: Room value: 'guests' value: 'receive: aGuestType

	state receive: aGuestType in: self'.
m value: Room value: 'guests' value: 'receiveWithReservation: aGuestType

	state receiveWithReservation: aGuestType in: self'.
m value: Room value: 'guests' value: 'reserve

	state reserveIn: self'.
m value: Room value: 'state changes - private' value: 'beOccupiedBy: aGuestType

	state := OccupiedRoomState by: aGuestType'.
m value: Room value: 'state changes - private' value: 'beReserved

	state := ReservedRoomState new'.
m value: Room value: 'exceptions - private' value: 'signalRoomIsNotEmpty

	self error: self class roomIsNotEmptyErrorDescription'.
m value: Room value: 'exceptions - private' value: 'signalRoomIsNotReserved

	self error: self class roomIsNotReservedErrorDescription'.

"---------------- Floor ----------------"
Floor class compile: 'withRooms: aNumberOfRooms pricedAt: aPriceList

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ].
	self assertIsValidPriceList: aPriceList.

	^ self new initializeWithRooms: aNumberOfRooms pricedAt: aPriceList' classified: 'instance creation'.
Floor class compile: 'assertIsValidPriceList: aPriceList

	aPriceList isEmpty ifTrue: [ self signalNoPrices ].
	aPriceList do: [ :price | self assertIsPositive: price ifFalse: [ self signalPriceMustBePositive ] ]' classified: 'assertions'.
Floor class compile: 'signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription' classified: 'exceptions'.

#(initializeRoomsWith: initializeWith: rooms setNumberOfRooms: setPrices:) do: [ :sel | Floor removeSelector: sel ].

m value: Floor value: 'initialization' value: 'initializeWithRooms: aNumberOfRooms pricedAt: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList'.
m value: Floor value: 'testing' value: 'isAvailable

	^ rooms allSatisfy: [ :room | room isAvailable ]'.
m value: Floor value: 'accounting' value: 'totalProfits

	^ rooms sum: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]'.
m value: Floor value: 'accounting' value: 'totalLosses

	^ rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]'.
m value: Floor value: 'guests' value: 'receive: aGuestType atRoom: aRoomNumber ifNone: aNoneBlock

	^ self roomNumbered: aRoomNumber ifFound: [ :room | room receive: aGuestType ] ifNone: aNoneBlock'.
m value: Floor value: 'guests' value: 'receiveWithReservation: aGuestType atRoom: aRoomNumber ifNone: aNoneBlock

	^ self roomNumbered: aRoomNumber ifFound: [ :room | room receiveWithReservation: aGuestType ] ifNone: aNoneBlock'.
m value: Floor value: 'guests' value: 'reserveRoom: aRoomNumber ifNone: aNoneBlock

	^ self roomNumbered: aRoomNumber ifFound: [ :room | room reserve ] ifNone: aNoneBlock'.
m value: Floor value: 'rooms - private' value: 'roomNumbered: aRoomNumber ifFound: aFoundBlock ifNone: aNoneBlock

	^ aFoundBlock value: (rooms at: aRoomNumber ifAbsent: [ ^ aNoneBlock value ])'.

"---------------- Hotel ----------------"
Object subclass: #Hotel instanceVariableNames: 'floors' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
#(initialize setFloors:) do: [ :sel | Hotel removeSelector: sel ].

Hotel class compile: 'withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection' classified: 'instance creation'.

m value: Hotel value: 'initialization' value: 'initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection'.
m value: Hotel value: 'testing' value: 'isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]'.
m value: Hotel value: 'guests' value: 'receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorNumbered: aFloorNumber) 
		receive: aGuestType 
		atRoom: aRoomNumber 
		ifNone: [ self class signalRoomNumberDoesNotExist ]'.
m value: Hotel value: 'guests' value: 'receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	(self floorNumbered: aFloorNumber) 
		receiveWithReservation: aGuestType 
		atRoom: aRoomNumber 
		ifNone: [ self class signalRoomNumberDoesNotExist ]'.
m value: Hotel value: 'guests' value: 'reserveRoom: aRoomNumber atFloor: aFloorNumber

	(self floorNumbered: aFloorNumber) 
		reserveRoom: aRoomNumber 
		ifNone: [ self class signalRoomNumberDoesNotExist ]'.
m value: Hotel value: 'floors - private' value: 'floorNumbered: aFloorNumber

	^ floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ]'.
m value: Hotel value: 'accounting' value: 'totalLosses

	^ floors sum: [ :floor | floor totalLosses ]'.
m value: Hotel value: 'accounting' value: 'totalProfits

	^ floors sum: [ :floor | floor totalProfits ]'.
m value: Hotel value: 'totals' value: 'totalRooms

	^ floors sum: [ :floor | floor totalRooms ]'.
m value: Hotel value: 'totals' value: 'totalRoomsAvailable

	^ floors sum: [ :floor | floor totalRoomsAvailable ]'.
m value: Hotel value: 'totals' value: 'totalRoomsOccupied

	^ floors sum: [ :floor | floor totalRoomsOccupied ]'.
m value: Hotel value: 'totals' value: 'totalRoomsReserved

	^ floors sum: [ :floor | floor totalRoomsReserved ]'.
'model ok'
