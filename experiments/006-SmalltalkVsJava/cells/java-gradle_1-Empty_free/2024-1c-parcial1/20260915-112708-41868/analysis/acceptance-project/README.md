# Sims Hotels (Java translation)

Java + JUnit 5 + Gradle translation of `starting/ISW1-2024-1C-Parcial.st` (the Cuis Smalltalk
starting code of the exercise). The classes (`Hotel`, `Floor`, `Room` and their three test
classes), method names, responsibilities, error strings and the 39 tests come from the Smalltalk
version. The starting code carried the same technical debt as the original (nullable guests,
setters instead of instance creation messages, index loops, duplicated code); the first iteration
of the refactoring has already been done, see below.

## Run the tests

```
cd exercises/2024-1c-parcial1/java
/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/tools/gradle/bin/gradle test
```

## The refactoring (first iteration)

The technical debt listed below has been paid; the 39 tests are the same ones and still pass.

- **Instance creation.** `Floor.with(aNumberOfRooms, aPriceList)` and `Hotel.with(aFloorsCollection)`
  are the only ways of creating a floor and a hotel: they check the preconditions and then use a
  private constructor, so a `Floor`/`Hotel` cannot exist half initialized. `setNumberOfRooms`,
  `setPrices` and `setFloors` are gone.
- **Room states.** `Room` no longer uses `null`/`"reserved"` as guest: it delegates to a `RoomState`
  (`AvailableRoom`, `OccupiedRoom`, `ReservedRoom`). Each state answers the state the room ends up
  in after `receive`, `receiveWithReservation` and `reserve`, and knows its own profit and loss;
  `RoomState` implements the "the room does not accept this" behaviour once, for every state that
  needs it. `Room.RESERVED` and `Room>>guestType` no longer exist.
- **`Room>>lossUsing:ifAbsentGuestType:`** is implemented (it was a stub that signalled): the max
  price in the list for an available room and 0 pesos for an occupied or a reserved one. Tests 13,
  14 and 15 of `RoomTest` assert it instead of expecting a failure, so `shouldFail` is gone.
- **Encapsulation.** `Floor>>rooms` is gone. `Floor` understands `receiveAtRoom`,
  `receiveWithReservationAtRoom`, `reserveRoom` (`Hotel` delegates to them, so the hotel no longer
  reaches into the floor's rooms) and answers the room number error, which `Hotel` re-publishes as
  `Hotel.roomNumberDoesNotExistErrorDescription()`. The tests use these messages too.
- **Totals.** `Hotel` has no `availableRoomsCount` to keep up to date any more: every total
  (`totalRooms`, `totalRoomsAvailable`, `totalRoomsOccupied`, `totalRoomsReserved`, `totalProfits`,
  `totalLosses`) is the sum of the same total of each floor, and `isEmpty` is `allMatch`. `Floor`
  counts its rooms with `filter`/`count` and adds up the profit and the loss of *every* room
  (an available room has no profit, an occupied or reserved one has no loss).

## Translation decisions that are not one to one

The following describes the starting code (the Smalltalk version and its Java translation); the
points about the setters, the nullable `guest`, `#reserved` and the `lossUsing...` stub no longer
apply after the refactoring described above.

- **Money.** The Smalltalk uses Aconcagua measures (`100*peso`, `0*peso`, `minPriceInList / 2`).
  They are plain `int` pesos in Java (`100`, `0`, `minPriceInList() / 2`); prices are a
  `HashMap<String, Integer>`. `prices values max` / `aPriceList values min` are
  `Collections.max(prices.values())` / `Collections.min(aPriceList.values())`.
- **Guest types and the reserved state.** The symbols `#vacationGuest`, `#conferenceGuest`,
  `#unknownGuest` are the `String`s `"vacationGuest"`, `"conferenceGuest"`, `"unknownGuest"`.
  `#reserved` is the `String` constant `Room.RESERVED` (`"reserved"`), compared with `equals`
  (written `RESERVED.equals(guest)` so that a `null` guest compares as `false`, as `nil = #reserved`
  does). `Room`'s `guest` stays a nullable `String`: `null` means available.
- **Number of rooms.** `setNumberOfRooms:` must accept `1.5` (test 02) and check `isInteger`, so
  its parameter is `java.lang.Number`; `assertIsInteger:ifFalse:` checks `aNumber instanceof Integer`
  and `assertIsPositive:ifFalse:` checks `aNumber.doubleValue() > 0`. The loop that creates the
  rooms uses `aNumberOfRooms.intValue()`. The test helpers `createFloorWith:and:` take a `Number`
  for the same reason.
- **Blocks.** The blocks passed to `assertIsPositive:ifFalse:` / `assertIsInteger:ifFalse:` are
  `Runnable`s and the `ifAbsentGuestType:` block is a `java.util.function.Supplier<Integer>`
  (`at:ifAbsent:` returns the block's value). Because the `signal...` methods are `void`, the
  block in `Floor>>totalProfits` is written `() -> { Floor.signalUnknownGuestType(); return null; }`.
  In the tests `[ self fail ]` is `() -> fail()`.
- **`Room>>profitUsing:ifAbsentGuestType:` return type.** The Smalltalk method falls off the end
  (implicitly answering `self`) when none of its three `if`s matches; Java needs a return statement
  there, so the method returns `Integer` and ends with `return null;`. `at: guest ifAbsent:` is
  written as `containsKey` / `get` / block.
- **`Room>>lossUsing:ifAbsentGuestType:` does not exist in the Smalltalk** (tests 13, 14 and 15 of
  `RoomTest` raise `MessageNotUnderstood` inside `shouldFail:`). Java cannot compile a call to a
  missing method, so `Room` has a stub `lossUsingIfAbsentGuestType(...)` that throws
  `UnsupportedOperationException("Room does not understand lossUsingIfAbsentGuestType")`.
  `shouldFail:` (in Cuis: `self should: aBlock raise: Exception`) is the `RoomTest` helper
  `shouldFail(Executable)` that does `assertThrows(Throwable.class, aBlock)`. "Add the missing
  message in Room" therefore means "replace the stub".
- **Non-local return in test 12.** `[ ^self ]` has no Java equivalent; the block throws a private
  `UnknownGuestTypeDetected` exception that the test catches and returns from, so the trailing
  `fail("should not calculate profit ...")` is reached only if the block was not evaluated.
- **1-based indexes.** Floor and room numbers in the `Hotel` API stay 1-based (`atFloor: 1 atRoom: 2`
  is `receiveAtFloorAtRoom(guestType, 1, 2)`); the `whileTrue:` index loops keep `ix = 1 ..
  size` and access `floors.get(ix - 1)` / `rooms().get(jx - 1)`. `floors at: n ifAbsent: [...]` is a
  bounds check followed by the same `signal...` call and then `get(n - 1)`. The tests that reach into
  `floor rooms at: 1` ("Tech Debt") use `floor.rooms().get(0)` (0-based `ArrayList` index).
- **Keyword selectors.** Multi-keyword selectors are concatenated, keeping the `a`/`an` parameter
  names: `receive:atFloor:atRoom:` is `receiveAtFloorAtRoom(aGuestType, aFloorNumber, aRoomNumber)`,
  `receiveWithReservation:atFloor:atRoom:` is `receiveWithReservationAtFloorAtRoom(...)`,
  `reserveRoom:atFloor:` is `reserveRoomAtFloor(aRoomNumber, aFloorNumber)`,
  `profitUsing:ifAbsentGuestType:` is `profitUsingIfAbsentGuestType(...)`,
  `assertIsPositive:ifFalse:` is `assertIsPositiveIfFalse(...)`, `createFloorWith:and:` is
  `createFloorWithAnd(...)`. Single-keyword ones keep their name (`receive`, `setFloors`, ...).
- **Instance creation.** There are no class-side instance creation messages in the original
  (that is tasks 1 and 2): `Floor new` / `Room new` / `Hotel new` are `new Floor()` / `new Room()`
  / `new Hotel()` followed by the same setters. `Hotel>>initialize` is the `Hotel()` constructor.
  `setFloors:` returns `this` because the tests chain `Hotel new setFloors: floors`.
- **Class-side methods** (`...ErrorDescription`, `signal...`, `assert...`) are `public static`.
  `Floor class>>signalUnknownGuestType` sends `self class unknownGuestTypeErrorDescription`, which in
  Smalltalk is a latent bug (the metaclass does not understand it; no test reaches it); Java calls
  `Floor.unknownGuestTypeErrorDescription()` directly.
- **Errors.** `self error: aString` is `throw new RuntimeException(aString)`; the message strings are
  unchanged. `should:raise: Error - MessageNotUnderstood withMessageText:` /
  `withExceptionDo:` is `assertThrows(RuntimeException.class, ...)` followed by
  `assertEquals(description, error.getMessage())` and the same assertions.
- **Assertions.** `self assert: aBoolean` is `assertTrue`, `self deny:` is `assertFalse`,
  `assert:equals:` is `assertEquals(expected, actual)`, `failWith:` is `fail(message)`.
- **Iteration.** `rooms do: [...]` and `floors do: [...]` are for-each loops; `rooms count: [...]`
  is a for-each loop with a counter; the `whileTrue:` index loops in `Hotel` stay `while` loops.
- **Collections.** `OrderedCollection` is `ArrayList`, `Dictionary` is `HashMap`;
  `OrderedCollection with:with:` is `new ArrayList<>()` plus `add` calls.
- **Method categories** (`'guests'`, `'totals'`, ...) are kept only as comments inside each class.
- **Unused code kept as in the original:** `Room>>guestType`, `Floor class>>signalPriceMustBeInteger`,
  `Floor class>>priceMustBeIntegerErrorDescription`.
