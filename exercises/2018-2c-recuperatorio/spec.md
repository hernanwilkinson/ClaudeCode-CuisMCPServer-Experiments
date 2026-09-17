# Make-up Exam 2c 2018 – Super 4 in a Line

## Practical exercise

Implement the game "Super 4 en línea" (Super 4 in a line, a Connect Four variant) described below:

The objective of "Super 4 en línea" is to align four chips on a board made of six rows and seven columns. Each player has 21 chips of one color (usually, red or yellow).

Taking turns, the players must insert a chip in the column they prefer (as long as it is not full) and it will fall to the lowest position.

The game is won by the first one who manages to align four consecutive chips of the same color according to how the winning strategy was configured, which can be:

1. Only wins by aligning horizontally
2. Only wins by aligning vertically
3. Only wins by aligning diagonally
4. Only wins by aligning according to a combination of the previous ones, e.g. "Only horizontal and vertical", "Only diagonal and vertical", "Horizontal, vertical and diagonal", etc.

If all the columns are full but nobody has aligned 4 chips in a winning way, it is a draw.

### Requirements

1. The class category must be called **ISW1-Super4EnLinea**.
