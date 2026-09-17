# Second Midterm 1c 2018 – Mars Rover

## Practical exercise

You are part of the team that develops the remote exploration equipment for Mars at NASA and you have to develop the system that controls the Mars Rover.

For that purpose, it is assumed that the surface of Mars is a plane and that points are used to position the Mars Rover on that plane, plus a cardinal point that indicates where it is heading.

Because Mars is very far away, the Mars Rover is always sent a set of commands packed in a String, where each character is a command.

Keep in mind that the communication may have problems and erroneous commands may arrive, in which case it is expected that the remaining commands are not processed any further.

Keep in mind that:

- The Mars Rover always starts at an initial point (x,y) and heading to a cardinal point (N,S,E,O — north, south, east, west; "O" is "Oeste", west).
- The rover receives a sequence of characters that represent commands about how to move.
- The commands can be:
  - `f` = move forward one point (forward)
  - `b` = move backward one point (backwards)
  - `l` = rotate 90 degrees to the left
  - `r` = rotate 90 degrees to the right


The tests must be numbered as you write them.
