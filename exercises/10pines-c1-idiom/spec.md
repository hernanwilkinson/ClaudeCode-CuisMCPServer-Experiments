# CustomerBook test idioms

## Statement

A `CustomerBook` that keeps customer names is given together with four passing tests. The tests contain duplicated code: remove it, keeping the four tests green and without changing what they verify.

The behaviour the tests describe:

1. Adding a customer (`addCustomerNamed: 'John Lennon'`) to an empty book must not take more than 50 milliseconds.
2. Removing a customer (`removeCustomerNamed:`) that was previously added must not take more than 100 milliseconds.
3. It is not possible to add a customer with an empty name: `addCustomerNamed: ''` raises an `Error` whose `messageText` is `CustomerBook customerCanNotBeEmptyErrorMessage` (`'Customer name cannot be empty'`), and the book stays empty.
4. It is not possible to remove a customer that is not in the book: after adding `'John Lennon'`, `removeCustomerNamed: 'Paul McCartney'` raises a `NotFound` error whose `messageText` is `CustomerBook customerDoesNotExistErrorMessage` (`'Customer does not exist'`), the book still has 1 customer and still includes `'John Lennon'`.

The duplication to remove is of two kinds, each appearing twice:

- The timing idiom (tests 1 and 2): read `Time millisecondClockValue` before, run the operation, read it after, and assert that the difference is smaller than the limit. Only the operation and the limit change.
- The "should raise" idiom (tests 3 and 4): evaluate `[ operation. self fail ] on: Error do: [ :anError | assertions ]`. Only the operation, the expected exception class and the assertions change.

Remove the duplicated code:

1. Copy the repeated code to "one place".
2. Parametrise what changes — for that, "we need an abstraction for the code: a block or closure".
3. Give it a name! ("The most difficult part because it means that we understood the repeated code meaning.")
4. Replace the repeated code by the use of the new abstraction.

The reference solution keeps `NotFound` and `CustomerBook` untouched and adds two assertion methods to `IdiomTest`: `assertExecuting: aBlock doesNotTakeMoreThan: anAmountOfClockTime` and `assert: aFailingBlock raises: anExceptionClass andVerify: anAssertionBlock`, so that each test becomes the setup plus one call to the named idiom.

## What the given code contains

`Idiom-Exercise.st` (category `Idiom-Exercise`) defines:

- `NotFound`, an `Error` subclass (with instance variables `object signaler`), whose comment says it "was created for the purposes of the exercise".
- `IdiomTest`, a `TestCase` with the four tests `test01AddingCustomerShouldNotTakeMoreThan50Milliseconds`, `test02RemovingCustomerShouldNotTakeMoreThan100Milliseconds`, `test03CanNotAddACustomerWithEmptyName`, `test04CanNotRemoveAndInvalidCustomer` (sic), and the factory method `emptyCustomerBook` (`CustomerBook new`). The timing tests multiply the clock values by `millisecond` and compare with `50 * millisecond` / `100 * millisecond`.
- `CustomerBook`, with an `OrderedCollection` of names (`customers`): `addCustomerNamed:` (asserts the name is not empty and the customer does not exist), `removeCustomerNamed:` (asserts the customer exists), `numberOfCustomers`, `includesCustomerNamed:`, `isEmpty`, the assertion methods `assertNameNotEmpty:`, `assertCustomerDoesNotExist:`, `assertCustomerExists:`, the signalling methods `signalCustomerNameCannotBeEmpty`, `signalCustomerAlreadyExists`, `signalCustomerDoesNotExist` (the last one signals `NotFound`), and the class-side error messages `customerCanNotBeEmptyErrorMessage`, `customerAlreadyExistsErrorMessage`, `customerDoesNotExistErrorMessage`.

All four tests pass with the given code; the work is only in `IdiomTest`.
