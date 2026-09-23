# ISW1 - Sims Hotels

In the coming space conquest many are busy building spaceships, but only one company has the goal of opening the first hotel outside Earth. That is why they hired us to implement a simulation to improve their service.

We already have the first implementation of the model (implemented by another team) with *technical debt* that we want to address in this first iteration.

## Model

A **Hotel** is a collection of floors (which we will call **Floor**) and in turn each **floor** will have rooms (which we will call **Room**).

The **Hotel** can:

- Receive (without a prior reservation) a **guest** in a **room** of a **floor** (`Hotel.receiveAtFloorAtRoom(aGuestType, aFloorNumber, aRoomNumber)`).
- Take the reservation of a **guest** (`Hotel.reserveRoomAtFloor(aRoomNumber, aFloorNumber)`).
- Receive a **guest** in a reserved **room**, which, unlike an available **room**, can only be accessed with the method `Hotel.receiveWithReservationAtFloorAtRoom(aGuestType, aFloorNumber, aRoomNumber)`.

Note that for this iteration (and to simplify the problem) it is not verified that a reserved **room** is accessed by the same **guest** who made the reservation; moreover, it is also important to note that **guests are modeled by the type of guest using strings**: they can be a **"conferenceGuest"** or a **"vacationGuest"** (see the methods **guestTypeConference()** and **guestTypeVacation()** in the tests).

### What is knowing the type of guest that occupies each room good for?

Each **floor** has an associated price differentiated by the type of **guest**. This is used to compute the profit (and loss) of the **hotel** (`Hotel.totalProfits()` and `Hotel.totalLosses()`).

## Work to do

With all this in mind, we are asked to:

1. Fix the instantiation of **Floor**. Then modify the `createFloorWithAnd` methods in the tests.
2. Fix the creation of **Hotel**. Then modify the `createHotel` methods in the tests.
3. Model the fact that a room can be occupied, available or reserved in a more explicit and declarative way. The previous team seems to have used the **guest** with **null** to model an available room, and the guest type `"reserved"` for the reserved room...
4. Once item 3 is fixed, make sure no repeated code remains among the methods `receive`, `receiveWithReservation` and `reserve`.
5. We have noticed that in several methods of **Hotel**, **floor rooms** is used, breaking encapsulation. Let's fix this! (Hint: methods are missing in **Floor**).
6. Related to item 5, make tests 13, 14 and 15 of **Room** work. They are currently implemented using the method **shouldFail**. Delete that call from each test and make what is inside the lambda pass. Add the missing method in **Room** and fix `Hotel.totalLosses()` (Hint: see the implementations of `Floor.totalProfits()` and of `Room.profitUsingIfAbsentGuestType(aPriceList, unknownGuestTypeBlock)`).
7. We have found a lot of **repeated code**! We are asked to improve the following methods if you have not done so yet:
   - `Hotel.receiveAtFloorAtRoom(...)`, `Hotel.receiveWithReservationAtFloorAtRoom(...)` and `Hotel.reserveRoomAtFloor(...)`.
   - `Hotel.totalLosses()` and `Hotel.totalProfits()` (is there any collection method that also helps us improve the declarativeness of these implementations?)
   - `Hotel.isEmpty()`, `Hotel.totalRooms()`, `Hotel.totalRoomsOccupied()` and `Hotel.totalRoomsReserved()` (first let's improve the declarativeness of these methods!).
8. Bonus Track: Only if you finished everything above and have time and energy left, improve the tests by preventing them from breaking encapsulation and removing the repeated code you consider necessary. This only adds points; it does not subtract points if you do not do it.

Work in the Gradle project in the current directory; it is the only place your work is read from. The code is in src/main/java/simshotels and the tests in src/test/java/simshotels, both in the package simshotels. Run the tests with `gradle test` (Gradle is on the PATH). Do not create files outside this project.
