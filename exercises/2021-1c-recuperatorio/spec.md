# ISW1-Board Games: Truco with Envido and Several Rounds

## ISW1-Board Games

The first iteration of the **Truco** (the card game) implementation was a complete success, so now we have to do the second iteration, which consists of implementing the envido (in a simplified way) and the game of several rounds to know who won.

The envido is a part of the game where the sum of the cards of the same suit of one opponent is compared against the other's.

Regarding the envido, the rules to take into account are:

1. A player cannot call envido if they have played any card.
2. The "pie" (foot, the second player) cannot call envido until it is their turn.
3. When a player calls envido, the other can "want" (querer) or "not want" (no querer) the envido.
4. If the envido is wanted (the second player "wants" it), each player must call their "envido sum", starting with the "mano" (hand, the first player). Whoever has the highest sum wins 2 points. It does not matter who called the envido. The first to declare their score is always the "mano".
5. If the envido sum of both players is the same, the "mano" wins.
6. If the envido is not wanted, whoever called envido wins 1 point.
7. The system must not allow calling an invalid envido sum, that is, one cannot lie about the envido.
8. The envido sum is calculated as follows:
   a. If there are two cards of the same suit, the numbers of those cards are added and 20 is added to that. Example:
      Ace of Espada, 6 of espada, 2 of oro → Envido = 27 (Ace = 1)
   b. The face cards (numbers 10, 11 and 12) have a value of 0 for the envido. Example:
      Ace of Espada, 12 of espada, 2 of oro → Envido = 21
      12 of espada, 11 of espada, 2 of oro → Envido = 20
   c. If there are no cards of the same suit, the envido equals the highest envido value among the cards. Example:
      12 of espada, 7 of oro, 3 of copa → Envido = 7
9. For this iteration it is not necessary to support Real Envido, Falta Envido, Flor, nor Envido-Envido, etc. Only Envido with "Quiero" (I want) or "no Quiero" (I don't want) must be supported.
10. It can be assumed that the order of messages that will be sent once envido is called is correct. For example, the order "mano calls envido, pie wants, mano sums nn, pie sums mm" does not need to be verified.

Regarding the Truco game per se, it must be possible to:

1. Play as many rounds as necessary until some player reaches 30 or more points, thus being the winner.
2. The points of the envido and of the card play must be taken into account.
3. In the case of the cards, the winner receives only one point since we do not yet support calling truco.

Our task is to **model** what is requested for the second iteration.

CLARIFICATIONS:

- The solution of the previous iteration provided as starting code must be used to carry out this development.
- No kind of artificial intelligence that plays is requested.
- It is only necessary to develop a model that allows controlling that the rules of the game are followed for the requested functionality.
