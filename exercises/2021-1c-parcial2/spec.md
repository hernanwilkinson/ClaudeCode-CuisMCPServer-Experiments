# ISW1-Board Games: A Round of Truco

## ISW1-Board Games

ISW1 opened a new line of business with the goal of making board games, and what better way to start than with **Truco** (the card game)!

Development is planned by iterations because **Truco** is a complicated game. In the first iteration only how a round is played must be implemented, but without calling envido or truco.

Fortunately a whole model of Spanish cards customized for **Truco** is already developed. Spanish cards have 4 suits (palos): espada (swords), oro (coins), basto (clubs) and copa (cups). Card numbers go from 1 to 12. Being specialized for truco, cards that are not used in the game cannot be created, such as those numbered 8, 9 and the jokers. The class **CartaDeTruco** models the Spanish cards for playing Truco.

**CartaDeTruco** allows creating cards easily, such as:

- `CartaDeTruco anchoDeEspadas.`
  (This convenience only exists for certain well-known cards)
- `CartaDeTruco espadaCon: 1.`
- `CartaDeTruco oroCon: 6`, etc.

Truco cards know how to compare for equality and respond to `#mataA:`, which returns true if the receiver card beats the collaborator card at truco, and `#empardaCon:`, which returns true when the receiver card is "parda" (ties) with the collaborator.

For this first iteration, what corresponds to **a Round of Truco** (Ronda de Truco) must be developed, taking the following into account:

1. The round is only for two players: the "mano" (hand, the one who starts the first confrontation) and the "pie" (foot, the one who plays second in the first confrontation).
2. The number of cards each player starts with is 3. A single deck of cards is used.
3. Each round is composed of successive confrontations (enfrentamientos), which will be at most 3.
4. In each confrontation each player plays a card following this order: first whoever must start the confrontation, and then the other player.
5. The way to decide who must start a confrontation is:
   a. If it is the first confrontation, the "mano" must play first.
   b. Otherwise, whoever won the previous confrontation must play first.
   c. If the previous confrontation was "pardo" (a tie), whoever played first in the confrontation before the tie plays first. If that one was also a tie, the "mano" plays.
6. A confrontation is won by a player when their card "kills" (mata) the other player's card.
7. A confrontation is tied ("emparedado"/pardo) when the cards played by both players are "pardas" (the same value).
8. The round is won by whoever has won two confrontations.
9. In case the first confrontation was a tie, whoever wins the second confrontation wins the round. (Only supporting a tied first confrontation is required.)
10. A round cannot continue being played if there is already a winner.

In this first iteration, supporting the functionality of envido, flor or calling truco is not required. **It must only be ensured that there are no errors when building the game, that the order in which each player plays is correct, and knowing who won the round.**

Supporting the cases where the second and third confrontations are ties is not required either. **Only the case where the first confrontation is a tie must be supported.**

Our task is to **model** what is requested for the first iteration.

CLARIFICATIONS:

- No kind of artificial intelligence that plays is requested.
- It is only necessary to develop a model that allows controlling that the rules of the game are followed for the requested functionality.
- It is not necessary to develop how the cards are dealt. The tests must control the dealt cards and the flow of the game.
