# Practical Part: Pacman

At ISW-Games they keep venturing into the creation of games and want to make a simplified prototype of Pacman to see how much it would cost to make it and whether it would make sense to start selling it.

To interface with the game, there already exists an object that is in charge of receiving a collection of strings (from now on the "string" format) as a representation of a board and verifying whether it is valid. It also allows visiting it so that you can obtain all the necessary information from it and create the representation of the board you consider necessary for the model you are asked to build. This is an example of how the board is specified with this object, using the collection of strings:

```
'########'
'#*----*#'
'#-B==C-#'
'#--p---#'
'#*-==-*#'
'########'
```

This board has 6 rows and 8 columns. Position 1@1 (x@y) is the one found in the first row (top) first column (left). Each letter has the following meaning:

- `#`: Represents a wall
- `*`: Represents a Big Pill
- `-`: Represents a Small Pill
- `B`: Represents the ghost called Blinky
- `C`: Represents the ghost called Clyde
- `p`: Represents the Pacman
- `=`: Represents a space (what is left after the pacman eats pills)

As it is a prototype of the game, it will only be implemented with 2 ghosts instead of 4.

The class `StringPacmanBoard` is in charge of validating that the string representation of the board is correct. It provides the message `#visitElementsWith: aStringPacmanBoardVisitor` that allows visiting all the elements of the board with a visitor that will receive the messages `#visitWallAt: aPosition`, `#visitSmallPillAt: aPosition`, `#visitBigPillAt: aPosition`, etc. (see the implementation of `#visit: anElement at: position with: aPacmanBoardVisitor`), which will allow you to create the game board that you consider necessary and convenient to make.

THE STRINGS ARE NOT THE BOARD, THEY ARE A REPRESENTATION OF THE BOARD. Their purpose is to make writing the tests easier, both to enter them and to check that the game evolved correctly.

The Pacman game is expected to generate a string representation of the board after playing, so that the tests can verify that everything went as expected. For example:

```smalltalk
test01PacmanStartsMovingLeft

	| board game |

	board := StringPacmanBoard representedAs:#(
'######'
'#-BC-#'
'#-p--#'
'######').

	"Creates the game and makes it advance a single tick"
	game :=
	self
	...
	assert: game stringRepresentationOfBoard
	equals: #(
'######'
'#-BC-#'
'#p=--#'
'######').
```

`StringPacmanBoard` has a set of tests that verify its operation. The test `#test10BoardTranslationExample` fails so that you can see an example of how the translation from the String representation to a Dictionary works. To do so, do what is necessary to make it pass (see the test's comment).

The Pacman game must allow the following actions:

- That the game advances. For that there must be a message, for example `#tick`, that tells the game it must move the characters according to the corresponding rules.
- Telling the game that the Pacman character must start moving left, right, up or down.

The rules the game must implement in this prototype are:

- It starts with 0 points and 3 lives available.
- The Pacman starts moving to the left.
- The Pacman moves one cell at a time depending on where it is going.
  - If it is going left it moves with a displacement of -1@0
  - If it moves right its displacement will be 1@0
  - If it moves up its displacement is 0@-1
  - If it moves down its displacement is 0@1.

  CLARIFICATION: The Pacman's movement IS NOT like the MarsRover's. In the MarsRover one can go forward, backward, turn left or right. In this game the pacman must be told where to go directly, in an absolute and not relative way.

- If the Pacman eats a Small Pill, it adds one point and leaves a space in the place where the Small Pill was.
- If the Pacman eats a Big Pill, it adds two points and leaves a space in the place where the Big Pill was.
- If the Pacman wants to move to a cell where there is a wall, it cannot. It will stay in the cell it is in until it is told to start moving in another direction. No exception/error must be reported since it is an expected behavior.
- The ghosts move according to a displacement just like the Pacman.
  - Blinky starts moving to the left
  - Clyde starts moving to the right.
- The ghosts start moving after a certain number of ticks, namely:
  - Blinky starts moving from the 4th tick.
  - Clyde starts moving from the 5th tick.
- When a ghost passes through a cell, it must leave what was in it when leaving the cell. In its initial cell it must leave a space when it leaves it.
- When a ghost reaches a wall, the next displacement must be decided randomly taking into account the following values:
  - 1: Keeps using the movement it had (that is, it would not move because it is hitting the wall).
  - 2: Starts moving the ghost to the left.
  - 3: Starts moving the ghost up.
  - 4: Starts moving the ghost down.
  - 5: Starts moving the ghost to the right.
- When a ghost "eats" the Pacman, the Pacman loses a life, returns to its initial position to start moving left, the ghosts stay where they were, moving when their turn comes as they were moving, and the pills that were eaten remain eaten. The tick counter must go back to 0 so that after 4 ticks the ghosts start moving again.

  When the pacman returns to its initial position after being eaten, it must be assumed that there will be no ghost in that position.

- The game is over and cannot continue being played if the pacman reached 0 lives or if there are no more pills to eat.

Because it is a prototype, it is not necessary to implement the following:

- That the Pacman can eat ghosts.
- The existence of the fruit.
- That one can go through from one side of the board to the other.
- A ghost colliding with another ghost. That is, it does not have to be implemented that two ghosts can be in the same cell.
- Passing to the next level when the pacman eats all the pills.

Tips:

- To obtain a random number the message `#nextInteger:` implemented in `Random` must be used.
- Remember that the default font of Cuis is not proportional; it may happen that the string representation of the board does not look well aligned. If you want to use mono-spaced fonts go to the desktop menu, choose "Preferences > Set System Font … > DejaVu > DejaVuSansMono" (or any other Mono, mono-spaced font). In some cases that font may not be selected and it will only be installed; in that case it must be selected as the font to use, for that do "Preferences > Set System Font … > DejaVu Sans Mono" from the part of the menu that says "Installed Fonts".

## Work to be done

File in `2024-2C-Parcial-2.st` and implement the requested prototype of the Pacman game.
