# ISW1 - MineField

Implement the "Minefield" game ("Campo minado"). In it there is a player who can move up, down, right and left one position at a time, inside a two-dimensional board of configurable extent, but at least 2x2.

Each position of the board can contain **a single element**, which can be of different types as explained further on.

The player must start at one of the positions of the bottom row (row 1). That position must be free.

**The player wins** when he reaches any position of the top row of the board.

**The player loses** after running out of lives. The number of lives he starts with must be configurable.

Each position of the board can contain:

- Nothing: the player reaches this position and nothing else happens.
- A low-power mine: if the player lands on a low-power mine he loses one life, and continues from that position if he has lives left. The mine can explode only once.
- A high-power mine: if the player lands on a high-power mine he loses two lives and "flies through the air" to a new position that results from adding to the current position a random point between -3@-3 and 3@3. If he were to land outside the board, then he does not "fly through the air". If he lands on a position with another element (mine, tunnel, etc.), what is defined for landing on that element is applied recursively. Like the low-power mine, it can explode only once.
- A light armour: the player becomes equipped with the light armour, which will protect him a single time from any type of mine, and additionally, in the case of a high-power mine, the integer half of the randomly generated values will be used to "fly through the air". No more than one armour can be worn at a time. If he had an armour on and lands on a position with another armour, the one he was wearing is taken off, that armour is lost, and the new one is put on.
- A heavy armour: the player becomes equipped with the heavy armour, which can be used with two low-power bombs without losing lives. If it is used with a high-power bomb, it only works once, he does not lose a life and does not "fly through the air". Like the light armour, he cannot wear more than one armour and always keeps the last one.
- A tunnel: a tunnel goes from one position to another, always inside the board. When landing on a position of a tunnel one appears at the other position of the tunnel. Tunnels are bi-directional.

When the player lands on an occupied position he uses what is at that position (e.g. he equips himself with a Light Armour, enters the Tunnel, etc.), and that position becomes free (the latter does not happen in the case of tunnels).

Take into account that:

- There cannot be more than one element per position.
- When one moves, **one cannot leave the board**. For example, if the player is in the first column and goes left, he stays in the same position.
- It must be ensured that the game is created in a valid way.
- It can be assumed that there will always be a valid path to win, but this does not have to be validated.

Implement it.

### Protocol to take into account:

- To obtain a random number you can use the message `#nextInteger: maxRandomValue`, which `Random` knows how to answer and which returns a random number between 1 and maxRandomValue inclusive.
- The message `#//` is integer division.
