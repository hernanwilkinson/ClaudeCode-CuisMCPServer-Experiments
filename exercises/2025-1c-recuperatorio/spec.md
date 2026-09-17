# Make-up Exam – Practical Part: "Fleet Escape!" (Escape de Flota!)

> "It's the ship that made the Kessel Run in less than twelve parsecs…" – Han Solo about the Millennium Falcon, Star Wars Ep IV, 1977

Our game prototype from the first midterm has been an unexpected success in Spanish-speaking countries, and therefore a new branch of it was opened, entirely in Spanish and titled **"Escape de Flota!"** (Fleet Escape!). As a reminder, a player assembles a fleet of ships of different classes to try to get through a route of dangerous galactic sectors and have at least one of their ships survive.

We are asked to carry out a new development iteration on the previous version to add new functionalities highly demanded by its current players and launch "Season 2" immediately…

## Important indications

- Those who must recover only the 1st midterm must implement points 1 to 3 of the list of requested functionalities.
- Those who must recover the 2nd midterm or both midterms must do only point 4.

You must open the solution of the first iteration provided by the company and develop the new functionalities.

This time you can add, delete, improve and modify everything you want in the model, both in the tests and in the initial code.

## List of new functionalities requested

1) The fuel of a ship (antimatter reserves) is stored in a specially protected tank. However, when a ship passes through a sector close to a black hole, where gravity exceeds 300, the tank cracks. The current tests are assumed valid for ships that have no cracks in their tank. However, we want to add special behaviour for when the tank has cracks. In particular:

   a) In the general case, when crossing a galactic sector of any type with the tank cracked, fuel leaks through the cracks! The amount lost increases exponentially (base 2) with the crossing of successive sectors. E.g. crossing a planetary sector with Impulse (Impulso) with the tank cracked consumes 11 points (10 + 2^0) the 1st time, 12 the 2nd (10 + 2^1), 14 the 3rd (10 + 2^2), 18 the 4th and so on.
      Note: We are asked that the leak start to happen from the sector following the one where the crack occurs.

   b) When crossing a nebula with the tank cracked, if the shields do not withstand the radiation, it causes double the normal damage to the ship's hull (2 levels of hull damage instead of just 1). The rest of the conditions for the nebula are the same as with the intact tank, except for point c, below.

   c) Crossing a nebula with the tank cracked and losing fuel, and turning on the Warp module (light speed, Velocidad Luz) is immediate destruction (in game terms it means the ship explodes, is destroyed and does not survive the sector)…

2) Until now, if a nebula was crossed using light speed, the Warp module was invigorated and the ship almost teleported immediately to the next sector. We add: when used under these conditions, the Warp engine overheats and cannot be used for the next two sectors of the journey. Instead, the ship behaves as if it were propelled by Standard Impulse (Impulso Estándar) until the 3rd sector arrives, where the light-speed thruster could be used again.

3) Finally we are asked to:

   a) Implement a new characteristic that ships will have called "blink" (parpadeo). Blinking will allow ships to skip sectors when travelling a route. E.g. a ship with blink 2 will only travel the odd sectors, starting with the 1st, then the 3rd, then the 5th and so on… The current ships such as the heavy cruiser (crucero pesado), or the smuggler (contrabandista), have blink 1, so they must keep travelling all the sectors as they do now, but the light fighter (caza ligero) for example will have blink 2. The logical thing is that it be configurable for the design of future ships with larger blinks.

   b) For ships stranded while travelling a route, we are asked to add the functionality of being able to check the sector number (using the index of the sequence of sectors, since routes have not yet been modelled properly) in which the ship was stranded while crossing it. Let us remember that a ship is stranded in a sector if it is destroyed in the sector or it does not have enough fuel to cross it (it goes negative in the initial model) and therefore does not survive.

4) In this version the motherships (naves nodrizas) make their debut. They serve as support for the rest of the already known ships, called "tactical" (tácticas). Motherships allow a limited and configurable number of ships to dock inside them. These have no standardization in the values of their characteristics (maneuverability, shields, etc.) and any combination is valid.

   During the EscapeDeFlota! only the non-destroyed ships of their own fleet that run out of fuel in a sector should enter them (if there is room for them), when the fleet tries to cross it. The ships that dock can be of any type, even other motherships.

   The ships docked in this way can be refuelled at a rate of 10 per sector travelled by the mothership (the normal fuel consumption per sector) while they are docked. The fuel comes from the mothership's own reserve. If the mothership's fuel is not enough to refuel all the docked ships, or it would leave it at exactly 0 fuel, none is refuelled.

   When a docked ship is completely refuelled (it returns to the value it had when it was created), it is obliged to leave the mothership and go back to crossing the sectors on its own (and it cannot leave before meeting this condition either).

   A mothership cannot refuel ships while it is inside another mothership. Also, regarding capacity, for a mothership to enter another one, it will occupy what its docked ships occupy inside, plus 1 for itself. That is, a mothership with 2 cruisers inside will occupy 3 places in terms of capacity to enter another one, and a mothership with another mothership inside which in turn has another empty mothership will also occupy 3 places.

   A non-destroyed mothership that is out of fuel will not be able to dock ships inside it.

   The base maneuverability of a mothership is penalized by 1 point for each tactical ship it carries inside, and 2 for each mothership it has docked inside, per level. That is, a mothership with one tactical ship and another mothership (level 1), the latter in turn having another tactical ship and another empty mothership inside (level 2), will have:
   1 * 1 + 2 * 1 + 1 * 2 + 2 * 2 = 1 + 2 + 2 + 4 = 9 of penalty to its maneuverability.

   The total strength of its shields will be its base value plus 5%, rounded to an integer, of the sum of the shields of all the ships it has docked inside (which could also be motherships with this bonus) only at the first level. If in the example above the tactical ships have shields at 100 and the motherships have shields at 200, the bonus will be:
   round (0.05 * 100 + 0.05 * (200 + round (0.05 * 100 + 0.05 * 200))) = 16 and the total shields of the main mothership will be: 200 + 16 = 216

   The rest of the behaviour of motherships is identical to the rest of the tactical ships.

   If a mothership does not survive, none of the ships it has docked inside survive. On the other hand, if a mothership survives a route, so do all the ships inside it.

   If a fleet has more than one mothership, then the one with the smallest total capacity and least fuel always docks ships first, and another one is never used until the capacity of the previous one is full.

   If there is more than one non-destroyed, out-of-fuel ship to dock in a sector, the order in which they are chosen to do so is equiprobable over however many there are.

### Optional for Point 4 (for the sci-fi fanatic; they add extra score but do not subtract)

- When a mothership is destroyed, all the ships it has inside are destroyed. Note that destroyed is not the same as not having survived.
- When a ship enters a mothership, besides being refuelled, it is repaired from damage at a rate of 1 damage level per sector travelled inside the mothership. The condition to leave the mothership is now that the ship be completely refuelled and repaired.
- A mothership docked inside another one, although it cannot refuel its own docked ships, can now repair them as above, at a rate of 1 point of damage per sector travelled inside another mothership.

## Clarifications

In Point 4, to simplify, it will not be necessary to test impossible docking combinations, e.g. with cycles or a mothership docking inside itself, at most if you need it to make progress with your implementation. Always use valid cases in the tests.

## Hints

- If you need it to write the tests, do not hesitate to define new types of spaceships. E.g. a Short-Range Explorer Ship with little fuel capacity.
- Point 1a: You should not need to double the number of current "if cases" to solve it.
- Point 1a: `#raisedTo:` of Number may be useful to raise numbers to a power.
- Point 4: When refuelling inside a mothership, you can assume that a ship with negative reserves starts with its tank at 0. That is, if the ship was left at -5, but recharges the normal consumption, it ends up at 10 and also consumes only 10 from the mothership…
- Point 4: To obtain a SortedCollection from an OrderedCollection you can use the message `#asSortedCollection:` together with a block that indicates how the elements are ordered. E.g. `[:a :b | a < b ]`.
- Point 4: To obtain a random number you can use the message `#nextInteger:` which is implemented in Random.
- Point 4: `#round` of Number may be useful to round numbers.
