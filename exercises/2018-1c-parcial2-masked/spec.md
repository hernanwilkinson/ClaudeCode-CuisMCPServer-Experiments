# Seabed Survey Crawler

Masked variant of: 2018-1c-parcial2

## Practical exercise

You are part of the team that develops the remotely driven survey equipment of an oceanographic institute and you have to develop the system that controls the seabed survey crawler.

For that purpose, it is assumed that the seabed is a flat grid and that integer points are used to position the crawler on that grid, plus a facing that indicates which of the four walls of its cell the crawler is facing.

Because the crawler works far below the surface, it is always sent a set of commands packed in a String, where each character is a command.

Keep in mind that the communication may have problems and erroneous commands may arrive, in which case it is expected that the remaining commands are not processed any further.

Keep in mind that:

- The crawler always starts at an initial point (x,y) and facing one of the four walls (U,D,L,R — up, down, left, right).
- The crawler receives a sequence of characters that represent commands about how to move.
- The commands can be:
  - `a` = advance one cell in the direction it is facing
  - `t` = retreat one cell
  - `g` = turn 90 degrees counter-clockwise
  - `h` = turn 90 degrees clockwise


The tests must be numbered as you write them.
