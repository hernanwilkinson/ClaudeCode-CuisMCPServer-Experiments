| cat |
cat := 'ISW1-2024-1C-Parcial'.

"----- Room states -----"
Object subclass: #RoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
RoomState subclass: #AvailableRoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
RoomState subclass: #ReservedRoomState instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
RoomState subclass: #OccupiedRoomState instanceVariableNames: 'guestType' classVariableNames: '' poolDictionaries: '' category: cat.

#(isAvailable isOccupied isReserved) do: [ :sel |
	RoomState compile: sel, '

	self subclassResponsibility' classified: 'testing' ].
RoomState compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility' classified: 'accounting'.
RoomState compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	self subclassResponsibility' classified: 'accounting'.

AvailableRoomState compile: 'isAvailable

	^ true' classified: 'testing'.
AvailableRoomState compile: 'isOccupied

	^ false' classified: 'testing'.
AvailableRoomState compile: 'isReserved

	^ false' classified: 'testing'.
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
ReservedRoomState compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ aPriceList values min / 2' classified: 'accounting'.
ReservedRoomState compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso' classified: 'accounting'.

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
OccupiedRoomState compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ 0*peso' classified: 'accounting'.

"----- Room -----"
Object subclass: #Room instanceVariableNames: 'state' classVariableNames: '' poolDictionaries: '' category: cat.
#(guestType) do: [ :sel | Room removeSelector: sel ].
Room compile: 'initialize

	state := AvailableRoomState new' classified: 'initialization'.
Room compile: 'isAvailable

	^ state isAvailable' classified: 'testing'.
Room compile: 'isOccupied

	^ state isOccupied' classified: 'testing'.
Room compile: 'isReserved

	^ state isReserved' classified: 'testing'.
Room compile: 'profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state profitUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock' classified: 'accounting'.
Room compile: 'lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock

	^ state lossUsing: aPriceList ifAbsentGuestType: unknownGuestTypeBlock' classified: 'accounting'.
Room compile: 'receive: aGuestType

	self changeStateTo: (OccupiedRoomState by: aGuestType) when: self isAvailable ifNot: [ self signalRoomIsNotEmpty ]' classified: 'guests'.
Room compile: 'receiveWithReservation: aGuestType

	self changeStateTo: (OccupiedRoomState by: aGuestType) when: self isReserved ifNot: [ self signalRoomIsNotReserved ]' classified: 'guests'.
Room compile: 'reserve

	self changeStateTo: ReservedRoomState new when: self isAvailable ifNot: [ self signalRoomIsNotEmpty ]' classified: 'guests'.
Room compile: 'changeStateTo: aNewState when: aCondition ifNot: aFailureBlock

	aCondition ifFalse: [ ^ aFailureBlock value ].
	
	state := aNewState' classified: 'guests - private'.
Room compile: 'signalRoomIsNotEmpty

	self error: self class roomIsNotEmptyErrorDescription' classified: 'exceptions'.
Room compile: 'signalRoomIsNotReserved

	self error: self class roomIsNotReservedErrorDescription' classified: 'exceptions'.

"----- Floor -----"
#(setNumberOfRooms: setPrices: initializeRoomsWith: initializeWith: rooms) do: [ :sel | Floor removeSelector: sel ].
Floor class compile: 'withNumberOfRooms: aNumberOfRooms andPrices: aPriceList

	self assertIsPositive: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBePositive ].
	self assertIsInteger: aNumberOfRooms ifFalse: [ self signalNumberOfRoomsMustBeInteger ].
	self assertIsValidPriceList: aPriceList.
	
	^ self new initializeWithNumberOfRooms: aNumberOfRooms andPrices: aPriceList' classified: 'instance creation'.
Floor class compile: 'assertIsValidPriceList: aPriceList

	aPriceList isEmpty ifTrue: [ self signalNoPrices ].
	
	aPriceList values do: [ :price | 
		self assertIsPositive: price ifFalse: [ self signalPriceMustBePositive ] ]' classified: 'assertions'.
Floor class compile: 'signalUnknownGuestType

	self error: self unknownGuestTypeErrorDescription' classified: 'exceptions'.
Floor compile: 'initializeWithNumberOfRooms: aNumberOfRooms andPrices: aPriceList

	rooms := (1 to: aNumberOfRooms) collect: [ :aRoomNumber | Room new ].
	prices := aPriceList' classified: 'initialization'.
Floor compile: 'atRoom: aRoomNumber do: aRoomBlock ifAbsent: anAbsentRoomBlock

	^ aRoomBlock value: (rooms at: aRoomNumber ifAbsent: [ ^ anAbsentRoomBlock value ])' classified: 'rooms'.
Floor compile: 'totalProfits

	^ self sumOverRooms: [ :room | room profitUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]' classified: 'accounting'.
Floor compile: 'totalLosses

	^ self sumOverRooms: [ :room | room lossUsing: prices ifAbsentGuestType: [ self class signalUnknownGuestType ] ]' classified: 'accounting'.
Floor compile: 'sumOverRooms: aRoomAmountBlock

	^ rooms sum: aRoomAmountBlock' classified: 'accounting - private'.
Floor compile: 'isAvailable
	
	^ rooms allSatisfy: [ :room | room isAvailable ]' classified: 'testing'.

"----- Hotel -----"
Object subclass: #Hotel instanceVariableNames: 'floors' classVariableNames: '' poolDictionaries: '' category: cat.
#(initialize setFloors:) do: [ :sel | Hotel removeSelector: sel ].
Hotel class compile: 'withFloors: aFloorsCollection

	self assertHaveFloors: aFloorsCollection.

	^ self new initializeWithFloors: aFloorsCollection' classified: 'instance creation'.
Hotel compile: 'initializeWithFloors: aFloorsCollection

	floors := aFloorsCollection' classified: 'initialization'.
Hotel compile: 'receive: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self atRoom: aRoomNumber atFloor: aFloorNumber do: [ :room | room receive: aGuestType ]' classified: 'guests'.
Hotel compile: 'receiveWithReservation: aGuestType atFloor: aFloorNumber atRoom: aRoomNumber

	self atRoom: aRoomNumber atFloor: aFloorNumber do: [ :room | room receiveWithReservation: aGuestType ]' classified: 'guests'.
Hotel compile: 'reserveRoom: aRoomNumber atFloor: aFloorNumber

	self atRoom: aRoomNumber atFloor: aFloorNumber do: [ :room | room reserve ]' classified: 'guests'.
Hotel compile: 'atRoom: aRoomNumber atFloor: aFloorNumber do: aRoomBlock

	| floor |
	
	floor := floors at: aFloorNumber ifAbsent: [ self class signalFloorNumberDoesNotExist ].
	
	^ floor atRoom: aRoomNumber do: aRoomBlock ifAbsent: [ self class signalRoomNumberDoesNotExist ]' classified: 'guests - private'.
Hotel compile: 'isEmpty

	^ floors allSatisfy: [ :floor | floor isAvailable ]' classified: 'testing'.
Hotel compile: 'sumOverFloors: aFloorAmountBlock

	^ floors sum: aFloorAmountBlock' classified: 'totals - private'.
#( #(totalRooms totals) #(totalRoomsAvailable totals) #(totalRoomsOccupied totals) #(totalRoomsReserved totals) #(totalProfits accounting) #(totalLosses accounting) ) do: [ :pair |
	Hotel compile: pair first, '

	^ self sumOverFloors: [ :floor | floor ', pair first, ' ]' classified: pair second ].

"----- Tests: instantiation -----"
{ FloorTest. HotelTest } do: [ :cls | cls compile: 'createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withNumberOfRooms: aNumberOfRooms andPrices: aPriceList' classified: 'create' ].
HotelTest compile: 'createHotel

	^ Hotel withFloors: (OrderedCollection 
		with: (self createFloorWith: 10 and: self defaultPriceList)
		with: (self createFloorWith: 1 and: self defaultPriceList))' classified: 'create'.
HotelTest selectors do: [ :sel | | src |
	src := HotelTest sourceCodeAt: sel.
	(src includesSubString: 'Hotel new setFloors:') ifTrue: [
		HotelTest compile: (src copyReplaceAll: 'Hotel new setFloors:' with: 'Hotel withFloors:') classified: 'testing' ] ].
"Tests 13-15: remove shouldFail:"
#(test13LossesOfAvailableRoomIsTheMaxPriceInList test14LossesOfReservedRoomIsCeroPesos test15LossesOfOccupiedRoomIsCeroPesos) do: [ :sel | | src body |
	src := RoomTest sourceCodeAt: sel.
	body := src copyFrom: (src indexOf: $[) + 1 to: (src lastIndexOf: $]) - 1.
	RoomTest compile: sel, '
', body classified: 'testing' ].
(RoomTest sourceCodeAt: #test14LossesOfReservedRoomIsCeroPesos) asString
