| refs |
refs := #(guest availableRoomsCount) collect: [ :k | Smalltalk allCallsOn: (Undeclared associationAt: k) ].
StdIOWriteStream stdout nextPutAll: refs printString; newLine.
(refs allSatisfy: [ :r | r isEmpty ]) ifTrue: [ #(guest availableRoomsCount) do: [ :k | Undeclared removeKey: k ] ].
Undeclared keys
