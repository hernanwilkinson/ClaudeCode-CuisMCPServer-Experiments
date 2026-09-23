# Sims Hotels (Java translation)

Java + JUnit 5 + Gradle translation of `starting/ISW1-2024-1C-Parcial.st` (the Cuis Smalltalk
starting code of the exercise). The classes (`Hotel`, `Floor`, `Room` and their three test
classes), method names, instance variables, responsibilities, error strings, duplicated code,
index loops and the 39 tests are the same as in the Smalltalk version, including its design
smells: this is a refactoring exercise and the Java code carries the same technical debt.

## Run the tests

```
cd exercises/2024-1c-parcial1/java
/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/tools/gradle/bin/gradle test
```

## Translation decisions that are not one to one

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

## After iteration 1 (the refactoring)

The notes above describe the *starting* code. The current code differs in:

- **Instance creation.** `Floor.withNumberOfRoomsAndPrices(aNumberOfRooms, aPriceList)` and
  `Hotel.withFloors(aFloorsCollection)` are the only way to create a floor / a hotel: the
  assertions run before the object exists and the constructors are private, so there are no
  half-initialized instances and no `setNumberOfRooms` / `setPrices` / `setFloors` setters.
- **Room states.** `Room` no longer keeps a nullable `guest` string: it delegates to a
  `RoomState` (`AvailableRoomState`, `ReservedRoomState`, `OccupiedRoomState` — the last one
  is the only one that knows the guest type). `receive`, `receiveWithReservation` and `reserve`
  answer the next state, and the errors of the transitions that are not allowed are the
  default implementations in `RoomState`. `Room.RESERVED`, `Room.guestType()` and the
  `guest == null` checks are gone.
- **`Room.lossUsingIfAbsentGuestType(...)`** exists now (max price for an available room, 0 for
  a reserved or occupied one) and `Floor.totalLosses()` uses it, the same way `totalProfits()`
  uses `profitUsingIfAbsentGuestType(...)`.
- **Encapsulation.** `Floor.rooms()` no longer exists. `Floor` understands `receiveAtRoom:`,
  `receiveWithReservationAtRoom:`, `reserveRoom:`, `isAvailable()` and its totals, so neither
  `Hotel` nor the tests reach into the rooms collection. The "room number does not exist" error
  moved from `Hotel` to `Floor` (same message text), because the floor is the one that knows
  its rooms.
- **No duplicated traversals.** `Hotel` keeps no `availableRoomsCount` cache (it asks the
  floors), the index `whileTrue:` loops are gone and both classes sum with a single private
  `totalOfFloors` / `totalOfRooms` / `totalRoomsThat` method.
- **Tests.** The three test classes share the object creation helpers in `SimsHotelsTest`,
  `RoomTest` tests 13, 14 and 15 no longer use `shouldFail`, and `FloorTest` gained
  `test10CannotReceiveAGuestInANonexistentRoom` (40 tests in total).
