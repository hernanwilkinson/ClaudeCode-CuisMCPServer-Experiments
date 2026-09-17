(Smalltalk allCallsOn: (Undeclared associationAt: #availableRoomsCount)) isEmpty ifFalse: [ self error: 'still referenced' ].
Undeclared removeKey: #availableRoomsCount.
SimsHotelTest class removeSelector: #isAbstract.
{ SimsHotelTest buildSuite tests size. Undeclared keys asArray }
