| out |
SimsHotelsTest class removeSelector: #isAbstract.
out := StdIOWriteStream stdout.
(Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: 'ISW1-2024-1C-Parcial' ]) do: [ :c |
  out nextPutAll: c name, ' -> ', c category, ' ', c selectors asSortedCollection asArray printString; newLine ].
out nextPutAll: 'Undeclared: ', Undeclared keys printString; newLine.
out nextPutAll: 'senders of rooms/setFloors:/guestType: ', ((#(rooms setFloors: setNumberOfRooms: guestType) collect: [:s | (Smalltalk allCallsOn: s) select: [:m | m actualClass category beginsWith: 'ISW1']]) printString); newLine.
nil
