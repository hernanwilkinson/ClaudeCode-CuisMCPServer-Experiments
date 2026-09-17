# Cascade

Masked variant of: 2018-2c-recuperatorio

## Practical exercise

Implement the tabletop game "Cascade" described below:

Cascade is a game for two players. It is played on an upright rack made of eight rows and eight columns of slots. Each player has 32 glass beads of one colour (usually, amber or teal).

Taking turns, the players drop a bead into the column they prefer (as long as it is not full) and the bead slides down to the lowest free slot of that column.

The game is won by the first one who manages to align five consecutive beads of their colour according to how the victory rule was configured when the game was created, which can be:

1. Only wins by aligning along a row
2. Only wins by aligning along a column
3. Only wins by aligning along a diagonal
4. Only wins by aligning according to a combination of the previous ones, e.g. "Only rows and columns", "Only diagonals and columns", "Rows, columns and diagonals", etc.

If all the columns are full but nobody has aligned five beads according to the victory rule, it is a draw.

### Requirements

1. The class category must be called **Cascade**.
