# Sims Hotels (Python translation)

Python + pytest translation of `starting/ISW1-2024-1C-Parcial.st` (the Cuis Smalltalk starting
code of the exercise), done as a faithful port of the Java translation in `../java` so that the two
can be compared. The classes (`Hotel`, `Floor`, `Room` and their three test classes), method names
(in snake_case), instance variables, responsibilities, error strings, duplicated code, index loops,
method-category comments and the 39 tests are the same as in the Java version, including its design
smells: this is a refactoring exercise and the Python code carries the same technical debt. Where
Java had to add something only because the language forced it, the Python follows the Smalltalk
original instead (see below).

Layout: one module per Java class in `src/simshotels/` (`hotel.py`, `floor.py`, `room.py`); the
tests are the classes `HotelTest`, `FloorTest` and `RoomTest` in `tests/test_hotel.py`,
`tests/test_floor.py` and `tests/test_room.py`. Standard library only.

## First iteration: the refactoring

The technical debt listed below has been paid; everything from "Translation decisions that are not
one to one" on describes the **starting** code and is kept as the record of where this came from.
What the model looks like now:

- **Instance creation.** `Floor.with_rooms_and_prices(a_number_of_rooms, a_price_list)` and
  `Hotel.with_floors(a_floors_collection)` validate and answer an initialized instance; the setters
  `set_number_of_rooms`, `set_prices` and `set_floors` are gone, so a `Floor` or a `Hotel` cannot
  exist half built.
- **The state of a room is an object.** `Room` delegates to a `RoomState`, whose subclasses are
  `AvailableRoom`, `ReservedRoom` and `OccupiedRoom` (the last one is the only one that knows a
  guest type). Each state answers the state the room has to change to, or signals the error when
  the transition is not allowed (the default in `RoomState`), so `receive`, `receive_with_reservation`
  and `reserve` no longer repeat conditions: `None` and the guest type `"reserved"` are gone.
- **`Room.loss_using_if_absent_guest_type`** exists and is polymorphic on the state (the max price
  for an available room, 0 for a reserved or occupied one), so `Floor.total_losses` asks its rooms
  instead of computing the loss itself, as `Floor.total_profits` already did.
- **Encapsulation.** `Floor.rooms()` no longer exists. `Floor` answers `receive_at_room`,
  `receive_with_reservation_at_room`, `reserve_room` and its totals, and it is the one that signals
  `Room number does not exist`; `Hotel` only talks to its floors (`floor_at` signals `Floor number
  does not exist`).
- **No repeated code, and declarative.** The three `Hotel` guest methods are one line each;
  `Hotel.total_of` and `Floor.total_rooms_that` take a block, and `is_empty` is `all(...)`. The
  counter `_available_rooms_count` is gone: `total_rooms_available` is asked to the floors, which
  ask their rooms, so it cannot get out of sync.
- **Tests.** They use the creation messages and the `Floor` protocol instead of reaching into
  `floor.rooms()`, tests 13, 14 and 15 of `RoomTest` assert the losses instead of `should_fail`
  (which was deleted, it has no users left), and the creation methods and guest types they shared
  live in `HotelsTestSupport` (`tests/hotels_test_support.py`), the superclass of the three test
  classes.

## Run the tests

```
cd exercises/2024-1c-parcial1/python
python3 -m pytest -q
```

`pyproject.toml` sets `pythonpath = ["src"]` and makes pytest collect the plain classes
`HotelTest`, `FloorTest` and `RoomTest` (`python_classes = ["*Test"]`) and their `test*` methods.

## Translation decisions that are not one to one

- **Names.** Java camelCase names are snake_case, for methods and parameters alike:
  `receiveAtFloorAtRoom(aGuestType, aFloorNumber, aRoomNumber)` is
  `receive_at_floor_at_room(a_guest_type, a_floor_number, a_room_number)`,
  `profitUsingIfAbsentGuestType` is `profit_using_if_absent_guest_type`, `createFloorWithAnd` is
  `create_floor_with_and`, `shouldFail` is `should_fail`. Test names are the snake_case of the Java
  names, keeping the number glued to `test` (`test01CannotCreateFloorWithoutRooms` is
  `test01_cannot_create_floor_without_rooms`), typos included (`..._no_interger_number_of_rooms`,
  `..._cero_pesos`).
- **Instance variables.** They carry a leading underscore (`_rooms`, `_prices`, `_floors`,
  `_available_rooms_count`, `_guest`), the Python convention for Java's `private`. It is also
  needed: `Floor` has both an instance variable `rooms` and an accessor `rooms()`, and in Python an
  attribute `rooms` would hide the method. Private helper methods (`initialize_rooms_with`,
  `initialize_with`) and the test helpers keep their names without an underscore.
- **Constructors.** Python has no field declarations, so `Floor`, `Room` and `Hotel` have an
  `__init__` that sets their instance variables to `None`, which is what the Java fields (and the
  Smalltalk `nil` instance variables) start as. `Hotel.__init__` is the Java `Hotel()` constructor
  (`Hotel>>initialize`) plus `self._floors = None`. `Room`'s `_guest` starting at `None` is what
  makes a new room available. There are still no class-side instance creation messages (that is
  tasks 1 and 2): `Floor()` / `Room()` / `Hotel()` followed by the same setters. `set_floors`
  returns `self` because the tests chain `Hotel().set_floors(floors)`.
- **Money.** Plain `int` pesos, as in Java; prices are a `dict` from guest type to `int`.
  `Collections.max(prices.values())` / `Collections.min(aPriceList.values())` are
  `max(self._prices.values())` / `min(a_price_list.values())`. Java's integer `/ 2` is `// 2` (in
  `Room.profit_using_if_absent_guest_type` and in `RoomTest.test10`) so that the result stays an
  `int` (`50`), as in Java.
- **Guest types and the reserved state.** The guest types are the strings `"vacationGuest"`,
  `"conferenceGuest"`, `"unknownGuest"`. `#reserved` is the class constant `Room.RESERVED`
  (`"reserved"`), compared with `==` and written `Room.RESERVED == self._guest` as in Java; a
  `None` guest compares as `False`. `null` is `None`, and `guest != null` / `guest == null` are
  `self._guest is not None` / `self._guest is None`.
- **Number of rooms.** `set_number_of_rooms` accepts `1.5` (test 02) because Python is dynamically
  typed, so there is no `Number` parameter type. `assert_is_integer_if_false` checks
  `isinstance(a_number, int) and not isinstance(a_number, bool)`: `bool` is a subclass of `int` in
  Python, while `true isInteger` is false in Smalltalk and a Java `Boolean` is not an `Integer`.
  `assert_is_positive_if_false` checks `a_number > 0`. The loop that creates the rooms compares
  `ix <= a_number_of_rooms` directly, as the Smalltalk does, with no `intValue()`.
- **Blocks.** The blocks passed to `assert_is_positive_if_false` / `assert_is_integer_if_false`
  and the `if_absent_guest_type` block are `lambda`s called with `()`. The block in
  `Floor.total_profits` is `lambda: Floor.signal_unknown_guest_type()`, as in Smalltalk: Java's
  `{ ...; return null; }` wrapper is not needed. In the tests `[ self fail ]` is
  `lambda: pytest.fail()`. A Java lambda with a statement body becomes a nested `def` (Python
  lambdas hold one expression only): the block of test 12 and the blocks passed to `should_fail`
  in tests 13, 14 and 15 (named `a_block`).
- **`Room.profit_using_if_absent_guest_type` return value.** When none of its three `if`s
  matches, the method falls off the end as the Smalltalk does (answering `None` instead of
  `self`); Java's trailing `return null;` is not needed. `at: guest ifAbsent:` is written as in
  Java: `in` / `[]` / block.
- **`Room.loss_using_if_absent_guest_type` does not exist**, as in the Smalltalk original.
  Java needed a stub that throws `UnsupportedOperationException` only to compile the tests; Python
  does not, so the method is missing and tests 13, 14 and 15 of `RoomTest` raise `AttributeError`
  inside `should_fail`, as `MessageNotUnderstood` is raised in Cuis. "Add the missing method in
  Room" means exactly that. `should_fail` (in Cuis: `self should: aBlock raise: Exception`; in Java
  `assertThrows(Throwable.class, aBlock)`) is `with pytest.raises(BaseException): a_block()`;
  `BaseException` plays the role of `Throwable`, so it also catches `pytest.fail()`'s exception,
  which does not derive from `Exception`.
- **Non-local return in test 12.** `[ ^self ]` has no Python equivalent either; as in Java, the
  block raises a private exception `RoomTest.UnknownGuestTypeDetected` (a class nested in
  `RoomTest`) that the test catches and returns from, so the trailing
  `pytest.fail("should not calculate profit ...")` is reached only if the block was not evaluated.
- **1-based indexes.** Floor and room numbers in the `Hotel` API stay 1-based
  (`receive_at_floor_at_room(guest_type, 1, 2)`); the `while` index loops keep `ix = 1 .. size`
  and access `self._floors[ix - 1]` / `floor.rooms()[jx - 1]`, and the bounds checks before
  `[a_floor_number - 1]` / `[a_room_number - 1]` are the same as in Java. The tests that reach into
  `floor rooms at: 1` ("Tech Debt") use `floor.rooms()[0]` (0-based list index).
- **Class-side methods** (`..._error_description`, `signal_...`, `assert_...`) are
  `@staticmethod`s called through the class name (`Floor.signal_no_prices()`), as the Java `public
  static` ones are. `Floor.signal_unknown_guest_type` calls `Floor.unknown_guest_type_error_description()`
  directly, as Java does (the Smalltalk `self class unknownGuestTypeErrorDescription` is a latent bug
  that no test reaches).
- **Errors.** `throw new RuntimeException(aString)` is `raise RuntimeError(a_string)`; the message
  strings are unchanged. `assertThrows(RuntimeException.class, ...)` followed by
  `assertEquals(description, error.getMessage())` is `with pytest.raises(RuntimeError) as error:`
  followed by `assert description == str(error.value)` and the same assertions.
- **Assertions.** `assertTrue(x)` is `assert x`, `assertFalse(x)` is `assert not x`,
  `assertEquals(expected, actual)` is `assert expected == actual` (same order), `fail(message)` is
  `pytest.fail(message)`. There is no `@BeforeEach` in the Java tests, so no `setup_method`.
- **Local variables.** Java's separate declarations (`Floor floor;`, `int acc;` then `acc = 0;`)
  have no Python counterpart; each variable starts at its first assignment.
- **Collections.** `ArrayList` is `list` (`add` is `append`, `size()` is `len(...)`, `get(i)` is
  `[i]`, `isEmpty()` is `len(...) == 0`), `HashMap` is `dict` (`put` is item assignment, `new
  HashMap<>()` is `{}`). The for-each loops and counting loops stay `for` loops.
- **Method categories** (`guests`, `totals`, ...) are kept as comments inside each class, as in Java.
- **Unused code kept as in the original:** `Room.guest_type`, `Floor.signal_price_must_be_integer`,
  `Floor.price_must_be_integer_error_description`.
