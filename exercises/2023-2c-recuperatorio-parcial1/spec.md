# ISW1 - BattleField

*Scope of this exercise: the reduced scope of the section "Those who have to make up the 1st midterm must" below (make-up of the 1st midterm). The full statement is the exercise `2023-2c-recuperatorio-parcial2`.*

The "Minefield" game ("Campo minado") was a complete success and it has to be turned into a "Battlefield" game ("Campo de Batalla"); that is why the game is now for two teams and with several players per team. However, the possibility of having a single player of a single team, as up to now, must be kept, in which case it will be a Soldier with Bayonet (the types of players are detailed further on).

The number of players per team may vary, but both teams must have the same number of players and the sum of the lives of the players of each team must be equal.

The players of team 1 must start at configurable columns of row 1.

The players of team 2 must start at configurable columns of the top row.

In both cases, they must start at empty positions, empty not only of field elements but also of players.

The already existing movement messages must keep being used, but one player of each team will be moved at a time, starting with the first player of team 1. For example, if each team has one player and the message `#movePlayerRight` is sent twice, the first one will move the player of team 1 and the second one the player of team 2, in both cases to the right. When the last player of a team is moved, the next time it is that team's turn to move it will be its first player.

Team 1 wins when one of its players reaches the top row (as it was up to now). Team 2 wins when one of its players reaches row 1.

The game ends when some team wins or when all players run out of lives.

There are three types of players:

- **Soldier with pistol** (Soldado con pistola): cannot use armour against bombs. If he lands on a position with an armour he cannot put it on and the armour must stay there.
- **Soldier with machine gun** (Soldado con ametralladora): like the soldier with pistol, cannot use armour.
- **Soldier with bayonet** (Soldado con bayoneta): can use any type of armour.

There can only be one player per position. If a player wants to move to a position occupied by a player of the same team, he cannot, and goes back to his initial position.

If a player moves to a position occupied by a player of the other team and both players have the same weapon (for example both with bayonet), the player who arrives at the position loses a life if the seconds of the current time are even, but if they are odd the player who was at the position loses a life.

When the players have different weapons and meet at a position, who loses a life is decided as follows:

- If one has a bayonet, it is the other player who loses the life.
- If one has a pistol and the other a machine gun, the one entering the position loses the life and the one who was at the position keeps his life.

When a player loses a life in a confrontation, he must go back to his initial position. It can be assumed that the initial position will always be empty.

If a player runs out of lives, he no longer takes part in the game.

### Take into account that:

- It is always analysed first whether there is any element at the position a player arrives at, and afterwards whether there is a player. For example, if there is a soldier at the exit of a tunnel and another soldier of another team lands on it, the first one moves through the tunnel.
- If there is a player at the exit of a tunnel, the same must be done as if the player had moved to that position.
- The same rules as for the midterm problem still apply, that is, all the existing tests must keep passing. For this, the special case of the first team with one player and the second team with no players has to be handled.

Implement it.

### Those who have to make up the 1st midterm must:

- Do what is necessary so that the game can be created with the new conditions.
- Implement only the Soldier with Bayonet.
- Make it possible to move the players of each team (which will only be Soldiers with Bayonet) without taking into account that players may meet at a position.

### Recommendations and Protocol to take into account:

- To obtain the current time, the message `#now` is sent to `GregorianDateTime`.
- To obtain the seconds of the current time, the messages `#timeOfDay` and then `#seconds` must be sent to a `GregorianDateTime`.
- There is the class `CircularReadStream`, which represents a stream that never ends and that, when the end is reached, goes back to the beginning.
  When it is instantiated, `#current` returns the first element.
  The message `#next` moves the stream to the next element.
  The message `#previous` moves the stream to the previous element.
  Instantiation example: `CircularReadStream on: #(1 2 3) moving: NullUnit new`
- It is recommended to follow this process at the beginning:
  - Start by making the current tests work for the Soldier with Bayonet type of player, moving to that abstraction what is scattered about the "player" in `MineField`.
  - Create an abstraction to represent the team of players and make all the tests pass with that new abstraction.
  - Modify the game so that it can receive the configuration of the two teams.
- It is not a problem if the teams and/or players are not created completely if the solution you make requires it.
