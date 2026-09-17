# Practical Part: Tetris (make-up of the 2nd midterm)

**This exercise is the "For the 2nd Midterm" scope of the statement (do everything). The "For the 1st and 2nd Midterm" scope, which replaces rule 4 with per-piece wall-hit behavior, is an extension of this exercise and has its own solution file.** The full statement follows.

At ISW-Games they keep venturing into the creation of games. The previous prototype of Pacman satisfied the product owners and they want to do something similar but with the game of Tetris. That is, the idea is to implement a simplified prototype of Tetris to see how much it would cost to make it and whether it would make sense to start selling it.

What is expected, in order to ensure the correct operation of the game, is to use a string representation of how the board would look after exercising it in each test. For example:

```
'#---***----#'
'#----*-----#'
'#----------#'
'#----**----#'
'#----**----#'
'############'
```

This is the string representation of a Tetris game that consists of 5 rows by 10 columns, where the Square-shaped piece (Tetromino_O) reached the last row and another T-shaped piece (Tetromino_T) is coming out. A Tetromino is a geometric shape composed of four equal squares.

Unlike Pacman, it is not necessary to create the game with an initial board defined with strings. In this case the game must be instantiated at minimum with the extent of the board (columns x rows), which must have at least 4 columns and 5 rows.

The Tetris pieces that have to be implemented are:

1. Tetromino O: It is the piece that represents a 2x2 square.
2. Tetromino T: It is the piece that represents a T, with 3 squares on top and one square below in the middle.
3. Tetromino I: It is the piece that is like an I, of 4 squares.
4. Tetromino Z: It is the piece with 2 squares on top and 2 below shifted to the right.
5. Tetromino L: It is the L-shaped piece.

(The original shows a drawing next to each piece. In the string representation of the board they look like this:)

```
O      T      I     Z      L
**     ***    *     **     *
**      *     *      **    *
              *            **
              *
```

In the String representation of the board, the pieces must be presented by means of asterisks (`*`), the free spaces by means of dashes (`-`) and the wall by means of hashtags (`#`).

The Tetris game must allow the following actions:

1. That the game advances. For that there must be a message, for example `#tick`, that tells the game it must move the piece being played down one row. There can only be one piece in play.
2. Telling the current piece to move left or right. It can be moved several times between `#tick` and `#tick`. As it is a prototype, it is assumed that the piece can move freely left and right, that it will not collide with another piece nor complete a line by doing so.
3. Telling the current piece to go down as far as possible.

The rules the game must implement in this prototype are:

1. The piece always starts in row 1 (topmost), in the middle of the board, rounding to the left if necessary. In the example board above it can be seen that tetromino T starts at 4@1.
2. The pieces are positioned starting from the topmost, leftmost element. For example, for the board shown above, the position of that tetromino T piece is 4@1.

   From the position of the piece the positions of the rest of its elements are known. For the tetromino T that starts at 4@1, the positions would be: 4@1, 5@1, 6@1 and 5@2, which is obtained by creating a collection with:

   position, position + (1@0), position + (2@0) and position + (1@1)

3. The sequence of figures is decided randomly, sending the message `#nextInteger:` to an object of type `Random`. According to the number obtained a piece is created as follows:
   - 1 → Tetromino O
   - 2 → Tetromino T
   - 3 → Tetromino I
   - 4 → Tetromino L
   - 5 → Tetromino Z
4. The pieces cannot leave the board.
5. A piece goes down until the last row (bottommost) or until it collides with another piece.
6. When a piece cannot go down any further, all the positions of the piece become occupied.
7. When a piece cannot go down any further, all the rows that are complete, with occupied positions in all their columns, must be removed.
8. When a row is removed for being complete, all the rows above it go down one row.
9. 10 points are added to the total score, which starts at 0, for each completed line.
10. The game ends when the current piece cannot go down from its starting position.

Because it is a prototype, it is not necessary to implement the following:

- Rotation of pieces
- Adding points for a piece that reaches the end

Work to be done depending on what is being retaken:

- For the 1st Midterm: Besides representing the game and the pieces, implement actions 1 and 2, and implement rules 1 to 4 inclusive.
- For the 2nd Midterm: Do everything.
- For the 1st and 2nd Midterm: Do everything plus:

  Replace rule 4) with: The behavior of the pieces when they hit the side walls varies as follows:
  - Tetromino O and T: They appear on the other side of the board, same row.
  - Tetromino I and L: They bounce 2 columns. For example, if a Tetromino I piece hits the left wall, its new position should be in column 3, same row it was in.
  - Tetromino Z: It goes to the column of the initial position keeping the row.

Tips:

- To obtain a random number the message `#nextInteger:` implemented in `Random` must be used.
- Remember that the default font of Cuis is not proportional; it may happen that the string representation of the board does not look well aligned. If you want to use mono-spaced fonts go to the desktop menu, choose "Preferences > Set System Font … > DejaVu > DejaVuSansMono" (or any other Mono, mono-spaced font). In some cases that font may not be selected and it will only be installed; in that case it must be selected as the font to use, for that do "Preferences > Set System Font … > DejaVu Sans Mono" from the part of the menu that says "Installed Fonts".

## Work to be done

Implement the requested prototype of the Tetris game.
