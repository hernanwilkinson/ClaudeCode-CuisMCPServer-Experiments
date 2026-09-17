'From Cuis6.3 [latest update: #6350] on 3 December 2024 at 9:26:36 am'!

!OrchardGameTest methodsFor: 'tests' stamp: 'TRN 12/3/2024 01:40:03'!
test24GameIsNotOverWhenDronesHoverOverFruits

	| board game |

	board := StringOrchardBoard representedAs:#(
'#####'
'#-RW#'
'#*-h#'
'#####').

	nextIntegers := ReadStream on: #().
	game := OrchardGame on: board randomizingWith: self.
	4 timesRepeat: [game tick].
	
	self deny: game isOver.
	self assert: game stringRepresentationOfBoard equals:#(
'#####'
'#R=W#'
'#h==#'
'#####') .
! !


!OrchardElement methodsFor: 'testing' stamp: 'TRN 12/3/2024 01:39:09'!
isOrIsOnFruit

	^false! !


!Drone methodsFor: 'testing' stamp: 'TRN 12/3/2024 01:39:39'!
isOrIsOnFruit

	^previousElement isOrIsOnFruit ! !


!Fruit methodsFor: 'testing' stamp: 'TRN 12/3/2024 01:39:09'!
isOrIsOnFruit
	
	^true! !


!OrchardGame methodsFor: 'testing' stamp: 'TRN 12/3/2024 01:39:09'!
areThereNoFruits
	
	^board allSatisfy: [ :anOrchardElement | anOrchardElement isOrIsOnFruit not ]! !

