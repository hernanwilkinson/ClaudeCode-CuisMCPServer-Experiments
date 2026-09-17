# ISW1 - Sims Hotels

In the coming space conquest many are busy building spaceships, but only one company has the goal of opening the first hotel outside Earth. That is why they hired us to implement a simulation to improve their service.

We already have the first implementation of the model (implemented by another team) with *technical debt* that we want to address in this first iteration.

## Model

A **Hotel** is a collection of floors (which we will call **Floor**) and in turn each **floor** will have rooms (which we will call **Room**).

The **Hotel** can:

- Receive (without a prior reservation) a **guest** in a **room** of a **floor** (`Hotel>>#receive:atFloor:atRoom:`).
- Take the reservation of a **guest** (`Hotel>>#reserveRoom:atFloor:`).
- Receive a **guest** in a reserved **room**, which, unlike an available **room**, can only be accessed with the message `Hotel>>#receiveWithReservation:atFloor:atRoom:`.

Note that for this iteration (and to simplify the problem) it is not verified that a reserved **room** is accessed by the same **guest** who made the reservation; moreover, it is also important to note that **guests are modeled by the type of guest using symbols**: they can be a **#conferenceGuest** or a **#vacationGuest** (see the messages **#guestTypeConference** and **#guestTypeVacation** in the tests).

### What is knowing the type of guest that occupies each room good for?

Each **floor** has an associated price differentiated by the type of **guest**. This is used to compute the profit (and loss) of the **hotel** (`Hotel>>#totalProfits` and `Hotel>>#totalLosses`).

## Work to do

With all this in mind, we are asked to:

1. Fix the instantiation of **Floor**. Then modify the `#createFloorWith:and:` messages in the tests.
2. Fix the creation of **Hotel**. Then modify the `#createHotel` messages in the tests.
3. Model the fact that a room can be occupied, available or reserved in a more explicit and declarative way. The previous team seems to have used the **guest** with **nil** to model an available room, and the guest type `#reserved` for the reserved room...
4. Once item 3 is fixed, make sure no repeated code remains among the methods `#receive:`, `#receiveWithReservation` and `#reserve`.
5. We have noticed that in several methods of **Hotel**, **floor rooms** is used, breaking encapsulation. Let's fix this! (Hint: messages are missing in **Floor**).
6. Related to item 5, make tests 13, 14 and 15 of **Room** work. They are currently implemented using the message **#shouldFail:**. Delete that message from each test and make what is inside the block pass. Add the missing message in **Room** and fix `Hotel>>#totalLosses` (Hint: see the implementations of `Floor>>#totalProfits` and of `Room>>#profitUsing:ifAbsentGuestType:`).
7. We have found a lot of **repeated code**! We are asked to improve the following messages if you have not done so yet:
   - `Hotel>>#receive:atFloor:atRoom:`, `Hotel>>#receiveWithReservation:atFloor:atRoom:` and `Hotel>>#reserveRoom:atFloor:`.
   - `Hotel>>#totalLosses` and `Hotel>>#totalProfits` (is there any collection message that also helps us improve the declarativeness of these implementations?)
   - `Hotel>>#isEmpty`, `Hotel>>#totalRooms`, `Hotel>>#totalRoomsOccupied` and `Hotel>>#totalRoomsReserved` (first let's improve the declarativeness of these methods!).
8. Bonus Track: Only if you finished everything above and have time and energy left, improve the tests by preventing them from breaking encapsulation and removing the repeated code you consider necessary. This only adds points; it does not subtract points if you do not do it.
