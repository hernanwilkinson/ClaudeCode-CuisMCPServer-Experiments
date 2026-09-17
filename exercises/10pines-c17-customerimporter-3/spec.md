# Customer Importer, step 3: decouple the tests from the database

This is the third of the four iterations of the Customer Importer exercise (see `10pines-c17-customerimporter`). The solution of step 2 (which includes step 1) is provided as starting code (`starting/10Pines-C17-60.st`).

## What the starting code contains (`starting/10Pines-C17-60.st`, category `10Pines-C17`, result of steps 1 and 2)

- `ImportTest` (TestCase, instance variable `session`): `setUp` creates `DataBaseSession for: (Array with: Address with: Customer)` and begins a transaction, `tearDown` commits and closes it. 9 tests: `test01ValidDataIsImportedCorrectly` (two customers, Pepe Sanchez with two addresses and Juan Perez with one), `test02CanNotImportAddressWithoutCustomer`, `test03`/`test04` records whose type starts with `C`/`A` but has more characters, `test05`/`test06` address records with less/more than six fields, `test07`/`test08` customer records with less/more than five fields, `test09CannotImportEmptyLine`. Assertions go through `session selectAllOfType: Customer` (`numberOfCustomers`) and `session select:ofType:` (`customerWithIdentificationType:number:`); `shouldFailImporting:messageText:asserting:` checks the error text and the partial import.
- `CustomerImporter`: method object `valueFrom: aReadStream into: aSession`; instance variables `session readStream newCustomer line record`; `value` loops `hasLineToImport` / `createRecord` / `importRecord`; `importRecord` asserts the record is not empty and dispatches on `isCustomerRecord` / `isAddressRecord` to `importCustomer` (asserts five fields, creates the `Customer`, `session persist:`) and `importAddress` (asserts a customer was imported and six fields); class-side error descriptions `canNotImportAddressWithoutCustomerErrorDescription`, `invalidRecordTypeErrorDescription`, `invalidAddressRecordErrorDescription`, `invalidCustomerRecordErrorDescription`.
- `Customer` (`addressAt:ifNone:`, `isAddressesEmpty`, accessors), `Address` (`isAt:`, accessors).
- `DataBaseSession`: the simulated database, which waits 100 milliseconds on every `persist:`, `select:ofType:` and `selectAllOfType:`, so the 9 tests take several seconds.

## The task: 3rd iteration

Customer Import:

- The tests do not meet the rule that they must be fast...
- ... they are coupled with the database!
- Make the tests run faster by decoupling them from the database...
- ... but remember that sometimes you have to test with the database... when you are in the integration environment.

Notes this iteration relies on:

- Bad smell "the tests take too much time to run". Reason: 1. they are coupled with an external resource, decouple them; 2. use fake objects (in-memory database, etc.).
- TearDown: generally not used because of the garbage collector; used to release external resources, but remember that we should not use external resources in programmer tests; conclusion: tear-down is a bad smell.
- Fixtures: transient (created on each test, stay in memory), persistent fresh (persisted on each test, new ones in every test), persistent shared (shared between tests). Favor transient fixtures: they avoid coupling between tests, allow parallel execution and do not imply an execution order. Avoid persistent fixtures, even more the shared ones: slower execution, no parallelization, imposed order, erratic tests.

Refactorings presented for this iteration:

- Encapsulate Field: references to instance variables are replaced by getters and setters.
- Encapsulate Field + Move: allows you to move instance variables to other classes.
- Extract Interface: allows you to create an interface from part of the protocol defined in a class.
- Extract Interface + Generalize Declared Type: used to create polymorphic hierarchies.
- Extract Class / Extract Delegate: creates one class from another, indicating which instance variables and methods to move to the new class.

## Reference solution (`solution/10Pines-C17-76.st`; `solution/steps/` has the 16 snapshots 61-76 taken in class)

Same 9 tests, now green in memory. The importer and the tests no longer talk to a `DataBaseSession` but to a `CustomerSystem` (abstract: `start`, `stop`, `beginTransaction`, `commit`, `add:`, `customerWithIdentificationType:number:`, `numberOfCustomers`) with two implementations: `PersistentCustomerSystem` (creates the `DataBaseSession` in `start`, closes it in `stop`, delegates transactions and queries to it) and `TransientCustomerSystem` (an `OrderedCollection` of customers, empty transactions). `CustomerImporter valueFrom: aReadStream into: aCustomerSystem` sends `system add: newCustomer`. `ImportTest>>setUp` does `system := Environment current createCustomerSystem. system start. system beginTransaction`, and `tearDown` `system commit. system stop`; `Environment class>>current` answers the instance of the subclass whose `isCurrent` is true: `DevelopmentEnvironment` (`isCurrent ^true`, creates a `TransientCustomerSystem`) or `IntegrationEnvironment` (`isCurrent ^DevelopmentEnvironment isCurrent not`, creates a `PersistentCustomerSystem`), so the same tests run against the real database in the integration environment.
