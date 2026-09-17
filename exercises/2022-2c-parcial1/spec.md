# Ahoy!

## ISW1-Games

Ahoy! is the new pirate adventure game developed by the video game studio ISW1-Games.

Our team will be in charge of polishing the code before development continues, in order to have a good base on which to keep building the game.

## Ahoy!

Ahoy! is a cooperative game in which a crew of pirates join forces to bury a treasure, while detailing on a map the steps to follow so that it can be found by their Captain.

The game is divided in two parts:

1. **Burying the treasure**

   The crew, made up of different kinds of pirates (see Pirates), will all move together across the island until they find a place to bury the treasure.

   Each pirate will have a task according to the kind of pirate it is and, in this first iteration, the crew will always be made up of one representative of each kind of pirate.

   After this stage, the result is a treasure buried on the island and a map that indicates how to find it.

2. **A Captain, a map and a treasure**

   At any moment, a Captain with a treasure map in his possession will be able to read it to reach the treasure and dig it up. It is important to stress that only a Captain can read treasure maps!

## Pirates

There are different kinds of pirates, each one with abilities needed to hide a treasure on an island:

- **Corsairs** (Corsarios): they are great cartographers! The corsair will take charge of drawing the map as they move across the island.
- **Filibusters** (Filibusteros): no obstacle stops them. They will help the crew make its way across the island, knocking down the trees that cross their path.
- **Buccaneers** (Bucaneros): they will be in charge of detecting the best place to bury the treasure.

We stress again that in this first iteration of the game, the crew will always be made up of one corsair, one filibuster and one buccaneer.

## Ranks

In our game we simplify ranks to just two:

- **Captain**: the only pirate who can read treasure maps.
- **Simple pirate**: cannot read treasure maps.

Bear in mind that any pirate can be Captain at any moment. And also a Captain pirate can lose his rank and become a simple pirate.

## The Island

The island is represented by a grid of a given size, e.g. 4x5. It will have cells occupied by trees (called `Tree` cells). Other cells will be marked as suitable places to bury the treasure: we will call them `Dig` cells, and Buccaneer pirates are experts at detecting these cells. The remaining cells will be free.

The crew can move to any cell, except those occupied by trees, which must first be knocked down by the crew's Filibuster; then, once the cell is free, it can be occupied by the crew.

It is not necessary to check movements outside the board.

## Work to be done

Luckily everything is already developed and there are tests that validate that it works.

The model presented does not have a good design, for several reasons seen in class.

You are asked to improve the model by:

1. Removing the duplicated code from the model and making it more declarative where appropriate.
2. Removing the ifs that can be replaced by the use of polymorphism, using the decision criterion seen in class.
3. Removing the duplicated code in the tests.
4. Improving the design in everything you consider necessary without altering the behavior (objects complete and correct from their creation, not breaking encapsulation, removing unused messages, deleting unused variables, categorizing messages, creating class hierarchies, using already existing collection messages, etc.)

Important:

- All tests must keep working.
- We recommend not modifying the tests functionally (only for refactors).
