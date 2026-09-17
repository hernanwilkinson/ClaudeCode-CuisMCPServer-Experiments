# Qatar OnLine - The Final!!

The game was a complete success and more functionality has to be added! For that we will use the solution provided, adding the requested functionality.

Let us recall that the game consists of a board of 20x20 positions and 3 players per team, for this iteration. Each team has a defender (defensor), a midfielder (mediocampista) and a forward (delantero). Team 1 starts with the defender at position 2@10, the midfielder at position 5@10 and the forward at position 10@10. Team 2 places its defender at position 19@10, midfielder at 15@10 and forward at 11@10.

When the game starts, the ball is at position 10@10 in possession of team 1's forward. Team 1 starts playing, and then the teams alternate with team 2. The die has 10 numbers, from 1 to 10, and each one multiplied by 10 represents the percentage of chance to apply. So 1 represents 10%, 10 represents 100%, etc.

The functionality to add is the following:

1) The players must be able to kick at goal (patear al arco). For that, implement a single message `#patearAlArco`; they will score a goal depending on the distance to the opposing goal and the chance that is always present.

   Team 1's goal is at position 1@10 and team 2's at 20@10, and for the distance the hypotenuse of the triangle formed from the position of the player who kicks to the position of the opposing team's goal must be computed. It will be a goal depending on:

   a) If a forward kicks, he scores a goal if the percentage indicated by the die multiplied by 20 minus the distance to the goal is greater than 10. For example, if the distance to the goal is 5 and he rolls a 9 on the die, then: 9/10 * (20-5) = 13.5, so it is a goal because it is greater than 10.

   b) If a midfielder kicks, he can only do so if he has passed the half of the field. If he can kick, the same computation as for the forward is done, but the result must be greater than 15 to score a goal.

   c) If it is a defender, he cannot kick at goal; it is not allowed.

   If a goal is scored, the players must go back to their initial position and the forward of the team that conceded the goal starts with the ball. If no goal is scored, the ball must end up with the opposing team's defender.

   It is important to be able to know how many goals each team scored.

2) Offside must start being called, using a first implementation of VAR. For that there can be from 1 to 3 referees (árbitros), which are defined when the game starts and which will have a certain favoritism toward each team, indicated as a percentage (any resemblance to real life is pure coincidence).

   When the ball is passed in the direction of the opposing goal to a player of the same team, and that player is ahead of all the players of the opposing team, it will be decided whether it was offside or not.

   It will be offside if the player has the bad luck of not being favored by the referees or by the dice. If there are two referees, the first with 90% favoritism toward team 1 and the second with 40% favoritism, and the dice roll 10 and 5, the chance of calling offside would be computed as follows: 1 - (((90/100 * 10/10) + (40/100 * 5/10)) / 2) = 0.45

   If the player who received the ball is a forward, offside will be called if the chance of calling it is greater than 0.7 (offside would not be called in the given example); if he is a midfielder, offside will be called for a chance greater than 0.5 (offside would not be called in this case either); and if he is a defender, offside will be called when the chance is greater than 0.2 (offside would be called in the given example).

   When offside is called, the opposing team's defender must keep the ball, going to the position of the player who received it, so that in the next turn he can move or kick from that position. Nothing has to be done with the player that was meant to receive the ball.

The solution must not allow incorrect use of the game.

Students who must retake only the first midterm must implement the kick-at-goal functionality. The rest must implement both functionalities.

## Hints

- `#squared` is the message used to obtain the square of a number.
- `#sqrt` is the message used to obtain the square root of a number.
- Remember that the square of the hypotenuse equals the sum of the squares of the legs of a triangle.
