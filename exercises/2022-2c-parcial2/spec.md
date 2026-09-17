# Qatar OnLine

"The World Cup is not only played in Qatar! It is also played online!"

This is the phrase with which the company ISW-Games is promoting the online football (soccer) game that we have to develop. Luckily there is time to program it, so we have to take care of doing the first iteration with a good design.

The game consists of a board of 20x20 positions and 3 players per team, for this iteration. Each team has a defender (defensor), a midfielder (mediocampista) and a forward (delantero). Team 1 starts with the defender at position 2@10, the midfielder at position 5@10 and the forward at position 10@10. Team 2 places its defender at position 19@10, midfielder at 15@10 and forward at 11@10.

When the game starts, the ball is at position 10@10 in possession of team 1's forward. Team 1 starts playing, and then the teams alternate with team 2.

For now there are two actions the players can do:

1) Move to a position within the board. To do so, one must indicate to which position which player is to be moved, and apply the movement adjustment explained later. A player can only move when it is his team's turn, and if he has the ball, he takes it with him.

2) Kick the ball to a position within the board. To do so, one must indicate to which position the ball is to be kicked, and apply the movement adjustment explained later. Only the one who possesses the ball can kick, and only when it is his team's turn.

Both for the player's movement and for when the ball is kicked, a bit of "chance" must be applied to the final position that is reached. For that, the die must be rolled twice: once to see the movement percentage on the x axis and once to see the movement percentage on the y axis. The die has 10 numbers, from 1 to 10, and each one multiplied by 10 represents the percentage of the intended movement that is actually done. So 1 represents 10%, 10 represents 100%, etc.

The movement adjustment consists of applying the percentage obtained by rolling the die to the difference between the initial and final position of each axis. For example, if the player is at position 1@1 and wants to move to position 10@20, and rolls 5 on the first roll of the die and 10 on the second, the final position reached is: (1+((10-1)*5/10)) @ (1+((20-1)*10/10)), that is, 5@20. This happens both when moving the player and when kicking the ball. The final position must be an integer point.

The ball is always within the board and is in the possession of a single player or of none. When two players are on the same square where the ball is, who keeps the ball is decided according to:

1) Forward vs. Defender: the defender always wins.
2) Forward vs. Midfielder: the die must be rolled. From 1 to 5 the forward keeps it, from 6 to 10 the midfielder.
3) Forward vs. Forward: whoever had the ball keeps it.
4) Defender vs. Defender: whoever had the ball keeps it.
5) Defender vs. Midfielder: the die must be rolled. From 1 to 7 the defender keeps it, from 8 to 10 the midfielder.
6) Midfielder vs. Midfielder: the die must be rolled. From 1 to 6 the midfielder who had the ball keeps it, from 7 to 10 the midfielder who did not have the ball.

The system must do all possible validations, such as that only the team whose turn it is can play, that moves or kicks go to valid positions, etc.

The case where there are two players in the same place and the ball lands there must not be taken into account. Do not worry about this case.

## Hints

- `CircularReadStream` is a stream that never ends. Usage example:

```smalltalk
stream := CircularReadStream on: #(10 20) moving: NullUnit new.
stream current. → 10
stream next → 20
stream current → 20.
stream next → 10
```
