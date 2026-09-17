# First Midterm – Practical Part: "The Smugglers Run!"

> "It's the ship that made the Kessel Run in less than twelve parsecs…" – Han Solo about the Millenium Falcon, Star Wars Ep IV, 1977.

We were contacted to collaborate in the construction of a new "mini-game" in the context of the continuous development of an already existing game of spaceships, interstellar travel and galactic battles.

Codenamed **"The Smugglers Run!"**, the game consists in the player having to assemble a small fleet with their spaceships (which can be of different classes and sizes) and launch them to cross a dangerous route set up by an opponent. Depending on whether their ships manage to cross it or not, and how many reach the destination, the player wins or loses…

For now we must build **only** a part of it that serves as a **proof of concept**. The idea is the following:

It must be possible to build a non-empty fleet of ships of any size. For now only 3 types of ships that are already part of the game were chosen to be included here, but if the trial is a success, more will be added immediately. They can be seen below:

| Heavy Cruiser Class Ship | Smugglers Transport C.S. | Light Interceptor C.S. |
|---|---|---|
| Maneuverability: 50 | Maneuverability: 70 | Maneuverability: 90 |
| Shields: 100 | Shields: 50 | Shields: 30 |
| Fuel: 50 | Fuel: 95 | Fuel: 30 |
| MaxHullDamageLevels: 5 | MaxHullDamageLevels: 2 | MaxHullDamageLevels: 2 |
| Thrusters: Impulse or Graviton or Warp | Thrusters: Impulse or Graviton or Warp | Thrusters: Impulse or Graviton or Warp |

At the same time, a sequence of galactic sectors is defined as the route to be crossed by the fleet, also of any length. The types of sectors defined for now are the following, together with their characteristics that matter for the mini-game:

| Planetary Sector | Asteroids System | Nebula Cloud |
|---|---|---|
| Generally with medium values of Gravity and Radiation | Generally with high values of Gravity and low values of Radiation | Generally with low values of Gravity and high values of Radiation |

With the fleet and the route defined, the fleet is launched to pass through the route. The ships must try to cross it one by one (independently), passing in order through each of its sectors until reaching the last one. If a ship is destroyed in the process, it will not have managed to survive. In the same way, if a ship runs out of fuel before passing through the last sector of the route, or it does not have enough fuel to pass through the last sector, it will not have survived either. Yes, a ship that ends up with exactly 0 fuel when passing through the last sector of a route will be considered a survivor. We want to know how many ships of the fleet survived (if any) and which ones.

To determine whether the hull of the ship is damaged, or the effective fuel consumption of a ship when passing through a sector, the following checks are performed:

- If the ship's maneuverability rating is greater than or equal to the sector's gravity, the ship is not damaged. Otherwise the ship's hull suffers one level of damage.
- If the ship's shields equal or exceed the sector's radiation level, the ship is not damaged either. Otherwise the ship's hull suffers one level of damage.
- Crossing a sector normally consumes 10 of fuel.[^1]

These are the GENERAL rules of the mini-game; however, different characteristics of the ships, of the sector they cross and of the thruster system they use cause the results to vary a little. All these cases are specifically spelled out in great detail in the Tests that the game's people included for us.

[^1]: We should use units to represent all these magnitudes. But to simplify, and because we are not going to make use of any kind of conversion between them, nor do we know exactly what the units of several of the domain magnitudes are (10 kg of antimatter per trip?), FOR THE MOMENT units will not be used.

## Work to do

You must open the provided file that the company left and build a model that passes the tests (or at least all the ones you can!).

## Clarifications

- The company's tests cannot be modified. Therefore, you do not need to remove repeated code from them. The work to be done is in the model, not in the tests. However, they contain creation messages that are waiting for your implementation.
- In principle there is no restriction preventing a ship that has exhausted its fuel from entering the next sector of a route. It is difficult, but the conditions could be such that passing through it requires no fuel consumption at all and it gets through…

## Hints

- While designing, keep in mind that the ships are part of an existing game, and that they have a protocol of functionalities not visible here that serves for them to attack other ships, land inside other ships or planets, etc… Which pattern that we saw could help us in this situation?

## Recommendations

- Remove the repeated code you may have left, and improve the declarativeness of your methods. Remember that you have an environment with very useful automated refactorings for this step, such as rename or extract method.
