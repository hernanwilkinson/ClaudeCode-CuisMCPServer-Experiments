| lf tab |
lf := String with: Character newLineCharacter. tab := String with: Character tab.
{ FloorTest. HotelTest } do: [ :cls |
	cls selectors do: [ :s | | source |
		source := (cls sourceCodeAt: s) asString.
		(source includesSubString: lf, lf, tab, tab) ifTrue: [
			cls compile: (source copyReplaceAll: lf, lf, tab, tab with: lf, lf, tab) classified: (cls organization categoryOfElement: s) ] ] ].
HotelTest compile: 'test07HotelProfitsAreTheSumOfEachFloorProfits

	| hotel floor1 floor2 |

	floor1 := self createFloorWith: 10 and: self defaultPriceList.
	floor2 := self createFloorWith: 10 and: self defaultPriceList.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	self assert: floor1 totalProfits + floor2 totalProfits equals: hotel totalProfits' classified: 'testing'.
HotelTest compile: 'test08HotelLossesAreTheSumOfEachFloorLosses

	| hotel floor1 floor2 |

	floor1 := self createFloorWith: 10 and: self defaultPriceList.
	floor2 := self createFloorWith: 10 and: self defaultPriceList.
	hotel := Hotel withFloors: (OrderedCollection with: floor1 with: floor2).

	hotel receive: self guestTypeVacation atFloor: 1 atRoom: 1.
	hotel receive: self guestTypeConference atFloor: 2 atRoom: 1.

	hotel reserveRoom: 4 atFloor: 1.
	hotel reserveRoom: 2 atFloor: 2.

	self assert: floor1 totalLosses + floor2 totalLosses equals: hotel totalLosses' classified: 'testing'.
'ok'
