| lf tab |
lf := String with: Character newLineCharacter. tab := String with: Character tab.
TestCase subclass: #SimsHotelsTest instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial-Tests'.
#(FloorTest HotelTest RoomTest) do: [ :name |
	SimsHotelsTest subclass: name instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'ISW1-2024-1C-Parcial-Tests'.
	#(guestTypeConference guestTypeVacation minPriceInList maxPriceInList defaultPriceList createFloorWith:and:) do: [ :s |
		(Smalltalk at: name) removeSelector: s ] ].
SimsHotelsTest compile: 'guestTypeConference

	^ #conferenceGuest' classified: 'create'.
SimsHotelsTest compile: 'guestTypeVacation

	^ #vacationGuest' classified: 'create'.
SimsHotelsTest compile: 'minPriceInList

	^ 100*peso' classified: 'create'.
SimsHotelsTest compile: 'maxPriceInList

	^ 200*peso' classified: 'create'.
SimsHotelsTest compile: 'defaultPriceList

	^ Dictionary new
		at: self guestTypeVacation put: self minPriceInList;
		at: self guestTypeConference put: self maxPriceInList;
		yourself' classified: 'create'.
SimsHotelsTest compile: 'createFloorWith: aNumberOfRooms and: aPriceList

	^ Floor withRooms: aNumberOfRooms andPrices: aPriceList' classified: 'create'.

FloorTest selectors do: [ :s | | source |
	source := (FloorTest sourceCodeAt: s) asString.
	source := source copyReplaceAll: lf, tab, lf, tab, lf with: lf, lf, tab.
	source := source copyReplaceAll: '(100*peso) + (200*peso) + (50*peso)' with: 'self minPriceInList + self maxPriceInList + (self minPriceInList / 2)'.
	source := source copyReplaceAll: '(200*peso) * 7' with: 'self maxPriceInList * 7'.
	FloorTest compile: source classified: (FloorTest organization categoryOfElement: s) ].

HotelTest compile: 'createHotelWithOneFloor

	^ Hotel withFloors: (OrderedCollection with: (self createFloorWith: 10 and: self defaultPriceList))' classified: 'create'.
HotelTest compile: 'assertHasNoGuests: aHotel

	self assert: aHotel totalRooms equals: aHotel totalRoomsAvailable.
	self assert: 0 equals: aHotel totalRoomsReserved.
	self assert: 0 equals: aHotel totalRoomsOccupied' classified: 'assertions'.
HotelTest compile: 'assert: aHotel failsWith: anErrorDescription whenDoing: aBlock

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: anErrorDescription equals: error messageText.
			self assertHasNoGuests: aHotel ]' classified: 'assertions'.
HotelTest compile: 'test06HotelCannotReceiveWithReservationWithoutPreviousReservation

	| hotel |

	hotel := self createHotel.

	self
		assert: hotel
		failsWith: Room roomIsNotReservedErrorDescription
		whenDoing: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 2 ]' classified: 'testing'.
HotelTest compile: 'test09HotelCannotReserveANonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		assert: hotel
		failsWith: Hotel roomNumberDoesNotExistErrorDescription
		whenDoing: [ hotel reserveRoom: 42 atFloor: 1 ]' classified: 'testing'.
HotelTest compile: 'test10HotelCannotReserveANonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		assert: hotel
		failsWith: Hotel floorNumberDoesNotExistErrorDescription
		whenDoing: [ hotel reserveRoom: 1 atFloor: 42 ]' classified: 'testing'.
HotelTest compile: 'test11HotelCannotReceiveAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		assert: hotel
		failsWith: Hotel roomNumberDoesNotExistErrorDescription
		whenDoing: [ hotel receive: self guestTypeVacation atFloor: 1 atRoom: 42 ]' classified: 'testing'.
HotelTest compile: 'test12HotelCannotReceiveAtNonexistentFloor

	| hotel |

	hotel := self createHotelWithOneFloor.

	self
		assert: hotel
		failsWith: Hotel floorNumberDoesNotExistErrorDescription
		whenDoing: [ hotel receive: self guestTypeVacation atFloor: 42 atRoom: 1 ]' classified: 'testing'.
HotelTest compile: 'test13HotelCannotReceiveWithReservationAtNonexistentRoom

	| hotel |

	hotel := self createHotelWithOneFloor.
	hotel reserveRoom: 1 atFloor: 1.

	self
		should: [ hotel receiveWithReservation: self guestTypeVacation atFloor: 1 atRoom: 42 ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :error |
			self assert: Hotel roomNumberDoesNotExistErrorDescription equals: error messageText.

			self assert: hotel totalRooms - 1 equals: hotel totalRoomsAvailable.
			self assert: 1 equals: hotel totalRoomsReserved.
			self assert: 1 equals: hotel totalRoomsOccupied ]' classified: 'testing'.
{ #test07HotelProfitsAreTheSumOfEachFloorProfits. #test08HotelLossesAreTheSumOfEachFloorLosses } do: [ :s | | source |
	source := (HotelTest sourceCodeAt: s) asString.
	source := source copyReplaceAll: 'hotel := 	Hotel' with: 'hotel := Hotel'.
	source := source copyReplaceAll: lf, tab, lf, tab, lf with: lf, lf, tab.
	HotelTest compile: source classified: 'testing' ].
(HotelTest sourceCodeAt: #test07HotelProfitsAreTheSumOfEachFloorProfits) asString
