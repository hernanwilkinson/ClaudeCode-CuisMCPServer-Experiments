# Second Midterm 1c 2022 – Ladders & Slides 3D

## Ladders & Slides 3D

The company has a great idea for a game that it believes will break the market! The model that will support the game has to be implemented, regardless of the front end that is used. It must be a robust implementation.

The game consists of a set of rectangular floors (pisos), one on top of the other, each of a particular extent (they can be different) and made up of cells given by their coordinates `x@y`, which start at position `1@1`. The goal is for the players, who start from the same initial cell on one of these floors, to reach the final position, which can be on the same floor or on another one.

To move, the player has to roll a 12-sided die twice, once for the `x` coordinate and once for the `y` coordinate. The 12-sided die goes from the numbers 1 to 12, but they must be interpreted as -5 to 6 at the moment of moving. For example, if Player1 is on floor 1, position `1@1`, and rolls a 7 and then a 10, that means it has to add `1@4` to its current position, ending up on floor 1, position `2@5`. It is a requirement that when playing "a die is rolled", because the plan is to offer "weighted" dice options, etc. later on.

The player cannot "fall off" the floor. That is, at most (or at least) it always stays at the edge of the floor. It does not bounce off the edges.

To be able to move from one floor to another, there are "shortcuts" (atajos), which can be stairs (escaleras) or slides (toboganes). Shortcuts go from a position on one floor to a position on another floor.

In the case of stairs, the floor it arrives at must be above the floor it leaves from.

In the case of slides, the floor it arrives at must be below the floor it leaves from.

Both stairs and slides can skip floors. That is, a staircase can go from floor 1 to floor 3; analogously, a slide can go from 5 to 2.

When a player lands on the position a shortcut leaves from, it is automatically moved to the arrival position of the shortcut.

To avoid problems when moving a player that lands on the shortcuts, it must be validated that the construction of the game is correct with respect to the configuration of the shortcuts. For example, there cannot be more than one shortcut leaving from the same position on a floor, cycles of shortcuts must be avoided, no shortcut can leave from the initial or final position, etc.

All the validations necessary to ensure that the game is well built with respect to the shortcuts and other things you consider necessary must be done, but to minimize the number of validations, for this version of the model it can be assumed that:

1. there is always more than one player (at least two players must play)
2. there is always more than one floor (there must be at least two floors)
3. the extent of the floors is correct (an integer greater than 1 in x and y)
4. the initial and final positions are correct (they are on correct floors and positions)
5. every floor can always be reached and left
6. the positions on the floors are created valid (strictly positive positions and floors, etc.)

For a player to win and end the game, it has to land exactly on the final position.

## Hints

- `CircularReadStream` is a stream that never runs out. Usage example:

  ```smalltalk
  stream := CircularReadStream on: #(10 20) moving: NullUnit new.
  stream current. → 10
  stream next → 20
  stream current → 20.
  stream next → 10
  ```

  Keep in mind that a regular `ReadStream` does not respond to the message `current`, and the first time it is sent the message `#next` it answers the first element, unlike the `CircularReadStream`, which answers the second one.

- The message `#combinations: k atATimeDo: aBlock`, implemented in `SequenciableCollection`, applies `aBlock` to the combinations of dimension `k` of the elements of the receiver. For example:

  ```smalltalk
  combinations := OrderedCollection new.
  #(1 2 3 4) combinations: 2 atATimeDo: [ :combination |
      combinations add: combination copy ].
  combinations →  an OrderedCollection(#(1 2) #(1 3) #(1 4) #(2 3) #(2 4) #(3 4))
  ```
