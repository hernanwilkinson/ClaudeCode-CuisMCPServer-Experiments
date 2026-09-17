| senders f r |
senders := #(rooms setFloors: setNumberOfRooms: setPrices: guestType shouldFail:) collect: [ :sel |
  sel -> ((Smalltalk allCallsOn: sel) select: [ :ref | ref actualClass category beginsWith: 'ISW1-2024-1C-Parcial' ]) size ].
f := Floor withRooms: 2 pricedAt: (Dictionary new at: #vacationGuest put: 100*peso; yourself).
f receive: #alien atRoom: 1 ifNone: [ nil ].
r := [ f totalProfits. 'no error' ] on: Error do: [ :e | e messageText ].
{ senders. r. (Smalltalk organization listAtCategoryNamed: 'ISW1-2024-1C-Parcial-Tests') }
