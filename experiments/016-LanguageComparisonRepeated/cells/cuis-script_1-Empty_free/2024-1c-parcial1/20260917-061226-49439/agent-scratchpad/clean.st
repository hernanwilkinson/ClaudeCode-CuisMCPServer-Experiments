| classes hits |
classes := Smalltalk allClasses select: [ :c | (c category ifNil: ['']) beginsWith: 'ISW1-2024-1C-Parcial' ].
hits := OrderedCollection new.
classes do: [ :c | {c. c class} do: [ :b | b selectors do: [ :s | | src |
	src := (b sourceCodeAt: s) asString.
	(#('availableRoomsCount' '#reserved' 'rooms)' 'floor rooms' 'isNil' 'notNil') anySatisfy: [ :k | src includesSubString: k ]) ifTrue: [ hits add: b name, '>>', s ] ] ] ].
hits isEmpty ifTrue: [ Undeclared removeKey: #availableRoomsCount ifAbsent: [] ].
{ hits. Undeclared keys }
