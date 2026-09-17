| refs |
Customer recompile: #identification:.
refs := #(#identificationType #identificationNumber #identification) collect: [:k | k -> (Smalltalk allCallsOn: (Undeclared associationAt: k)) size ].
StdIOWriteStream stdout nextPutAll: refs printString; newLine.
#(#identificationType #identificationNumber #identification) do: [:k | (Smalltalk allCallsOn: (Undeclared associationAt: k)) isEmpty ifTrue: [ Undeclared removeKey: k ] ].
Undeclared keys asArray
