| replace |
"----- Room states -----"
Object subclass: #RoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
RoomState subclass: #AvailableRoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
RoomState subclass: #ReservedRoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
RoomState subclass: #OccupiedRoomState instanceVariableNames: 'guestType' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.

RoomState compile: 'isAvailable

	^ false' classified: 'testing'.
RoomState compile: 'isOccupied

	^ false' classified: 'testing'.
RoomState compile: 'isReserved

	^ false' classified: 'testing'.
RoomState compile: 'receive: aGuestType in: aRoom

	Room signalRoomIsNotEmpty' classified: 'guests'.
RoomState compile: 'reserveIn: aRoom

	Room signalRoomIsNotEmpty' classified: 'guests'.
RoomState compile: 'receiveWithReservation: aGuestType in: aRoom

	Room signalRoomIsNotReserved' classified: 'guests'.
RoomState compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility' classified: 'accounting'.
RoomState compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso' classified: 'accounting'.

AvailableRoomState compile: 'isAvailable

	^ true' classified: 'testing'.
AvailableRoomState compile: 'receive: aGuestType in: aRoom

	aRoom beOccupiedBy: aGuestType' classified: 'guests'.
AvailableRoomState compile: 'reserveIn: aRoom

	aRoom beReserved' classified: 'guests'.
AvailableRoomState compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso' classified: 'accounting'.
AvailableRoomState compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values max' classified: 'accounting'.

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
OccupiedRoomState compile: 'isOccupied

	^ true' classified: 'testing'.
OccupiedRoomState compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList at: guestType ifAbsent: unknownGuestTypeBlock' classified: 'accounting'.

"----- Room -----"
Object subclass: #Room instanceVariableNames: 'state' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
#(guestType) do: [ :s | Room removeSelector: s ].
Room class compile: 'signalRoomIsNotEmpty

	self error: self roomIsNotEmptyErrorDescription' classified: 'exceptions'.
Room class compile: 'signalRoomIsNotReserved

	self error: self roomIsNotReservedErrorDescription' classified: 'exceptions'.
Room compile: 'initialize

	state := AvailableRoomState new' classified: 'initialization'.
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
Room compile: 'beOccupiedBy: aGuestType

	state := OccupiedRoomState by: aGuestType' classified: 'private - state'.
Room compile: 'beReserved

	state := ReservedRoomState new' classified: 'private - state'.
Room compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock' classified: 'accounting'.
Room compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock' classified: 'accounting'.

"----- Floor -----"
#(initializeRoomsWith: initializeWith: setNumberOfRooms: setPrices: rooms) do: [ :s | Floor removeSelector: s ].
Floor class compile: 'withRooms: aNumberOfRooms andPrices: aPriceList

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ].
	self assertIsValidPriceList: aPriceList.

	^ self new initializeWithRooms: aNumberOfRooms andPrices: aPriceList' classified: 'instance creation'.
Floor class compile: 'assertIsValidPriceList: aPriceList

	aPriceList isEmpty ifTrue: [ self signalNoPrices ].
	aPriceList do: [ :price | self assertIsPositive: price ifFalse: [ self signalPriceMustBePositive ] ]' classified: 'assertions'.
Floor class compile: 'signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription' classified: 'exceptions'.
Floor compile: 'initializeWithRooms: aNumberOfRooms andPrices: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomIndex | Room new ].
	prices := aPriceList' classified: 'initialization'.
Floor compile: 'withRoomNumber: aRoomNumber do: aRoomBlock ifNone: aNoneBlock

	^ aRoomBlock value: (rooms at: aRoomNumber ifAbsent: [ ^ aNoneBlock value ])' classified: 'rooms'.
Floor compile: 'isAvailable

	^ rooms allSatisfy: [ :room | room isAvailable ]' classified: 'testing'.
Floor compile: 'totalProfits

	^ rooms sum: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]' classified: 'accounting'.
Floor compile: 'totalLosses

	^ rooms sum: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]' classified: 'accounting'.
Floor compile: 'totalRooms

	^ rooms size' classified: 'totals'.
Floor compile: 'totalRoomsAvailable

	^ rooms count: [ :room | room isAvailable ]' classified: 'totals'.
Floor compile: 'totalRoomsOccupied

	^ rooms count: [ :room | room isOccupied ]' classified: 'totals'.
Floor compile: 'totalRoomsReserved

	^ rooms count: [ :room | room isReserved ]' classified: 'totals'.

"----- Hotel -----"
#(initialize setFloors:) do: [ :s | Hotel removeSelector: s ].
Object subclass: #Hotel instanceVariableNames: 'floors' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial'.
Hotel class compile: 'withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection' classified: 'instance creation'.
Hotel compile: 'initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection' classified: 'initialization'.
Hotel compile: 'receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self withRoom: aRoomNumber atFloor: aFloorNumber do: [ :room | room receive: aGuestType ]' classified: 'guests'.
Hotel compile: 'receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self withRoom: aRoomNumber atFloor: aFloorNumber do: [ :room | room receiveWithReservation: aGuestType ]' classified: 'guests'.
Hotel compile: 'reserveRoom: aRoomNumber atFloor: aFloorNumber

	self withRoom: aRoomNumber atFloor: aFloorNumber do: [ :room | room reserve ]' classified: 'guests'.
Hotel compile: 'withRoom: aRoomNumber atFloor: aFloorNumber do: aRoomBlock

	| floor |

	floor := floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ].

	^ floor withRoomNumber: aRoomNumber do: aRoomBlock ifNone: [ self class signalRoomNumberDoesNotExist ]' classified: 'private - guests'.
Hotel compile: 'isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]' classified: 'testing'.
Hotel compile: 'totalProfits

	^ floors sum: [ :floor | floor totalProfits ]' classified: 'accounting'.
Hotel compile: 'totalLosses

	^ floors sum: [ :floor | floor totalLosses ]' classified: 'accounting'.
Hotel compile: 'totalRooms

	^ floors sum: [ :floor | floor totalRooms ]' classified: 'totals'.
Hotel compile: 'totalRoomsAvailable

	^ floors sum: [ :floor | floor totalRoomsAvailable ]' classified: 'totals'.
Hotel compile: 'totalRoomsOccupied

	^ floors sum: [ :floor | floor totalRoomsOccupied ]' classified: 'totals'.
Hotel compile: 'totalRoomsReserved

	^ floors sum: [ :floor | floor totalRoomsReserved ]' classified: 'totals'.

"----- Tests -----"
replace := [ :aClass :aSelector :pairs | | source |
	source := (aClass sourceCodeAt: aSelector) asString.
	pairs do: [ :pair | source := source copyReplaceAll: pair first with: pair last ].
	aClass compile: source classified: (aClass organization categoryOfElement: aSelector) ].

#(FloorTest HotelTest RoomTest) do: [ :name |
	TestCase subclass: name instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial-Tests' ].

#(FloorTest HotelTest) do: [ :name |
	(Smalltalk at: name) compile: 'createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withRooms: aNumberOfRooms andPrices: aPriceList' classified: 'create' ].

HotelTest selectors do: [ :s | replace value: HotelTest value: s value: {
	{ 'Hotel new setFloors:'. 'Hotel withFloors:' }.
	{ 'Hotel new 
			      setFloors:'. 'Hotel withFloors:' } } ].

FloorTest compile: 'onRoom: aRoomNumber of: aFloor do: aRoomBlock

	aFloor withRoomNumber: aRoomNumber do: aRoomBlock ifNone: [ self fail ]' classified: 'create'.
FloorTest selectors do: [ :s | replace value: FloorTest value: s value: {
	{ '"Tech Debt"'. '' }.
	{ '((floor rooms) at: 1) receive: self guestTypeVacation'. 'self onRoom: 1 of: floor do: [ :room | room receive: self guestTypeVacation ]' }.
	{ '((floor rooms) at: 2) receive: self guestTypeConference'. 'self onRoom: 2 of: floor do: [ :room | room receive: self guestTypeConference ]' }.
	{ '((floor rooms) at: 1) receiveWithReservation: self guestTypeVacation'. 'self onRoom: 1 of: floor do: [ :room | room receiveWithReservation: self guestTypeVacation ]' }.
	{ '((floor rooms) at: 1) reserve'. 'self onRoom: 1 of: floor do: [ :room | room reserve ]' }.
	{ '((floor rooms) at: 3) reserve'. 'self onRoom: 3 of: floor do: [ :room | room reserve ]' } } ].

RoomTest compile: 'test13LossesOfAvailableRoomIsTheMaxPriceInList

	| room |

	room := Room new.

	self assert: self maxPriceInList equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])' classified: 'testing'.
RoomTest compile: 'test14LossesOfReservedRoomIsCeroPesos

	| room |

	room := Room new.

	room reserve.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])' classified: 'testing'.
RoomTest compile: 'test15LossesOfOccupiedRoomIsCeroPesos

	| room |

	room := Room new.

	room receive: self guestTypeVacation.

	self assert: 0*peso equals: (room lossUsing: self defaultPriceList ifAbsentGuestType: [ self fail ])' classified: 'testing'.
{ (Smalltalk allCallsOn: #rooms). (Smalltalk allCallsOn: #setFloors:). (Smalltalk allCallsOn: #setPrices:) }
