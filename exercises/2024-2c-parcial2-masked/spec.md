# Orchard Harvester

Masked variant of: 2024-2c-parcial2

A robotics company keeps venturing into agricultural automation and wants to make a simplified prototype of an orchard harvester to see how much it would cost to make it and whether it would make sense to start selling it.

To interface with the simulation, there already exists an object that is in charge of receiving a collection of strings (from now on the "string" format) as a representation of a board and verifying whether it is valid. It also allows visiting it so that you can obtain all the necessary information from it and create the representation of the board you consider necessary for the model you are asked to build. This is an example of how the board is specified with this object, using the collection of strings:

```
'########'
'#*----*#'
'#-R==W-#'
'#--h---#'
'#*-==-*#'
'########'
```

This board has 6 rows and 8 columns. Position 1@1 (x@y) is the one found in the first row (top) first column (left). Each letter has the following meaning:

- `#`: Represents a hedge
- `*`: Represents a Large Fruit
- `-`: Represents a Small Fruit
- `R`: Represents the scarecrow drone called Rook
- `W`: Represents the scarecrow drone called Wren
- `h`: Represents the Harvester
- `=`: Represents bare ground (what is left after the harvester collects fruit)

As it is a prototype, it will only be implemented with 2 scarecrow drones instead of 4.

The class `StringOrchardBoard` is in charge of validating that the string representation of the board is correct. It provides the message `#visitElementsWith: aStringOrchardBoardVisitor` that allows visiting all the elements of the board with a visitor that will receive the messages `#visitHedgeAt: aPosition`, `#visitSmallFruitAt: aPosition`, `#visitLargeFruitAt: aPosition`, etc. (see the implementation of `#visit: anElement at: position with: anOrchardBoardVisitor`), which will allow you to create the game board that you consider necessary and convenient to make.

THE STRINGS ARE NOT THE BOARD, THEY ARE A REPRESENTATION OF THE BOARD. Their purpose is to make writing the tests easier, both to enter them and to check that the game evolved correctly.

The orchard game is expected to generate a string representation of the board after playing, so that the tests can verify that everything went as expected. For example:

```smalltalk
test01HarvesterStartsMovingLeft

	| board game |

	board := StringOrchardBoard representedAs:#(
'######'
'#-RW-#'
'#-h--#'
'######').

	"Creates the game and makes it advance a single tick"
	game :=
	self
	...
	assert: game stringRepresentationOfBoard
	equals: #(
'######'
'#-RW-#'
'#h=--#'
'######').
```

`StringOrchardBoard` has a set of tests that verify its operation. The test `#test10BoardTranslationExample` fails so that you can see an example of how the translation from the String representation to a Dictionary works. To do so, do what is necessary to make it pass (see the test's comment).

The orchard game must allow the following actions:

- That the game advances. For that there must be a message, for example `#tick`, that tells the game it must move the characters according to the corresponding rules.
- Telling the game that the harvester must start moving left, right, up or down.

The rules the game must implement in this prototype are:

- It starts with 0 points and 3 lives available.
- The harvester starts moving to the left.
- The harvester moves one cell at a time depending on where it is going.
  - If it is going left it moves with a displacement of -1@0
  - If it moves right its displacement will be 1@0
  - If it moves up its displacement is 0@-1
  - If it moves down its displacement is 0@1.

  CLARIFICATION: The harvester is not steered with relative commands such as "go forward", "go backward", "turn left" or "turn right". The harvester must be told where to go directly, in an absolute way (left, right, up or down), not a relative one.

- If the harvester collects a Small Fruit, it adds one point and leaves bare ground in the place where the Small Fruit was.
- If the harvester collects a Large Fruit, it adds two points and leaves bare ground in the place where the Large Fruit was.
- If the harvester wants to move to a cell where there is a hedge, it cannot. It will stay in the cell it is in until it is told to start moving in another direction. No exception/error must be reported since it is an expected behavior.
- The scarecrow drones move according to a displacement just like the harvester.
  - Rook starts moving to the left
  - Wren starts moving to the right.
- The drones start moving after a certain number of ticks, namely:
  - Rook starts moving from the 4th tick.
  - Wren starts moving from the 5th tick.
- When a drone passes through a cell, it must leave what was in it when leaving the cell. In its initial cell it must leave bare ground when it leaves it.
- When a drone reaches a hedge, the next displacement must be decided randomly taking into account the following values:
  - 1: Keeps using the movement it had (that is, it would not move because it is hitting the hedge).
  - 2: Starts moving the drone to the left.
  - 3: Starts moving the drone up.
  - 4: Starts moving the drone down.
  - 5: Starts moving the drone to the right.
- When a drone catches the harvester, the harvester loses a life, returns to its initial position to start moving left, the drones stay where they were, moving when their turn comes as they were moving, and the fruit that was collected remains collected. The tick counter must go back to 0 so that after 4 ticks the drones start moving again.

  When the harvester returns to its initial position after being caught, it must be assumed that there will be no drone in that position.

- The game is over and cannot continue being played if the harvester reached 0 lives or if there is no more fruit to collect.

Because it is a prototype, it is not necessary to implement the following:

- That the harvester can disable drones.
- The existence of bonus items.
- That one can go through from one side of the board to the other.
- A drone colliding with another drone. That is, it does not have to be implemented that two drones can be in the same cell.
- Passing to the next orchard row when the harvester collects all the fruit.

Tips:

- To obtain a random number the message `#nextInteger:` implemented in `Random` must be used.

## Work to be done

File in `StringOrchardBoard.st` and implement the requested prototype of the orchard harvester game.
