# The Towers Game

The members of the team in charge of monitoring the MarsRover (which right now is roaming Mars dodging rocks and slipping on ice) are expert chess players and spend many hours playing that game, and variants of it too!

The latest one they came up with is called "The Towers Game" (El juego de las Torres) and has the following rules:

- Two players face each other in the game: one with white pieces and the other with black pieces.
- It is played on an 8x8 board (64 squares). Positions are named using points (not as in the game of chess), ranging from `1@1` to `8@8`.
- The player with the white pieces starts, and turns alternate.
- On each turn, a player can move only one piece.
- Each player has 2 towers (rooks).
- The white towers start at positions `1@1` and `7@1`.
- The black towers start at positions `2@8` and `8@8`.
- Towers move horizontally or vertically.
- When moving they cannot jump over another piece.
- When a tower eats (captures) an enemy tower, that is, it occupies the position of the enemy piece, unlike the original game the eaten tower is not removed from the board but returns to its original place, with the caveat that its movement will be at most 3 squares during the next 4 times that piece moves (afterwards it moves normally again).
- When a tower is eaten and returns to its original position, if that position is occupied, it will try to be placed in the next free place moving the piece along the x axis towards the center.
- White wins if it manages to place its towers at positions `4@4` and `5@5`.
- Black wins if it manages to place its towers at positions `4@5` and `5@4`.
