# Customer Importer, step 1: put the import under test and decouple it from the file

This is the first of the four iterations of the Customer Importer exercise (see `10pines-c17-customerimporter` for the whole exercise). Initial code is provided (`starting/10Pines-C17.st`).

## Context

Working with existing code. Problem: I have to fix a bug / add functionality... but I can't modify code without writing a test first... but I can't write the test because there are too many dependencies (or the code is so complicated that I don't understand it)... and I must break those dependencies (or modify the code to understand it)... but I can't modify code without writing a test first...

The problem is bad design: not understandable code (bad names, poor distribution of responsibilities, little cohesion) and a lot of coupling (references to external resources, poor functional decomposition). The solution: refactoring, test doubles, break dependencies. Maintenance rules: identify the change points, identify the test points, break dependencies (refactoring and other techniques), write tests, make the changes.

## The example: Customer Import

The system imports customers and their addresses from a CSV file. File format:

```
C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,1636,BsAs
A,Maipu,888,Florida,1122,Buenos Aires
C,Juan,Perez,C,23-25666777-9
A,Alem,1122,CABA,1001,CABA
```

Lines starting with `C` are customers (`C,firstName,lastName,identificationType,identificationNumber`); lines starting with `A` are the addresses of the customer above them (`A,streetName,streetNumber,town,zipCode,province`).

There is a "main" to run the import (`Customer class>>importCustomers`; the only test, `ImportTest>>test01Import`, just runs it). But... does it work correctly?

Design problems: `importCustomers` is too long and difficult to understand; it is coupled to the input file; it is coupled to the database; it opens the database connection; it handles the transaction; it is a GOD method.

## What the starting code contains (`starting/10Pines-C17.st`, category `10Pines-C17`)

- `ImportTest` (TestCase): one test, `test01Import`, that evaluates `Customer importCustomers` and asserts nothing.
- `Address`: accessors for `streetName`, `streetNumber`, `town`, `zipCode`, `province`; an `id` instance variable set by the session.
- `Customer`: accessors for `firstName`, `lastName`, `identificationType`, `identificationNumber`; `addresses` (an OrderedCollection) with `addAddress:` and `addresses`; `initialize`.
- `Customer class>>importCustomers`: opens `'input.txt'` with `StandardFileStream new open: 'input.txt' forWrite: false`, creates `DataBaseSession for: (Array with: Address with: Customer)`, begins a transaction, reads the stream line by line with `nextLine`, splits each line with `findTokens: $,`, creates a `Customer` for lines beginning with `'C'` and an `Address` added to the last created customer for lines beginning with `'A'`, persists each customer, commits, closes the session and the stream. It has two bugs on purpose: the identification number is taken from the fourth field (`customerData fourth`) instead of the fifth, and the province from the fourth field (`addressData fourth`) instead of the sixth.
- `DataBaseSession`: an in-memory stand-in for a database session: `for:`, `beginTransaction`, `commit` (persists the addresses of the customers), `close`, `persist:` (assigns an `id`, stores the object in a per-class `Set`, persists a customer's addresses), `select:ofType:`, `selectAllOfType:`. Every `persist:` and `select` waits 100 milliseconds to simulate a slow database.

The `input.txt` file that the main reads is not part of the given code; its content is the five lines above.

## The task: 1st iteration

Customer Import:

- We must be sure that it imports the data correctly.
- We must decouple it from the input file and be able to run it with other types of input (the Spanish deck says: we have been asked to also import using sockets).
- We do not have time to make the implementation nicer! We must be sure it works as expected.

Suggested sequence:

1. Move `importCustomers` to the test scope to remove its coupling with the database.
2. Convert `session` into an instance variable.
3. Extract the database initialization and the transaction start to a set-up method; remove the method call.
4. Extract the transaction commit and the database close to a tear-down method; remove the method call.
5. Write the test assertions...

Write the test assertions:

6. Verify that two customers were imported.
7. Verify that the first customer was imported correctly.
8. Verify that more than one customer can be imported.
9. Fix two bugs.
10. Parameterize the input.
11. Generalize the input type to use a string reader and decouple from the file.
12. Parameterize the session.

Then:

13. Convert `importCustomers` into a Method Object.
14. Make the test declarative: Extract Method to assert the number of imported customers; Extract Method to look for a customer; Extract Method to assert an address was imported correctly; Extract Method to assert a customer was imported correctly.

Refactorings presented for this iteration, to be applied with the IDE rather than by editing text: Rename; Extract Method (some IDEs detect the repetition in other places); Move Method / Move Instance Method; Convert Local to Field / Introduce Field (it can move the initialization of the variable); Extract to Local / Introduce Variable; Introduce Parameter (replaces the selected code with a parameter and adds it to all senders with the replaced code as argument); Change Method Signature; Generalize Declared Type / Use Base Type Where Possible; Inline; and Extract to Local + Extract Method + Inline, used together to extract code that is not in a rectangular selection.

## Reference solution (`solution/10Pines-C17-35.st`; `solution/steps/` has the 35 snapshots taken in class)

1 green test. `ImportTest` gets a `session` instance variable, `setUp` (creates the `DataBaseSession` and begins the transaction), `tearDown` (commits and closes), `validImportData` (a `ReadStream on:` the five CSV lines), and `test01Import` evaluates `CustomerImporter valueFrom: self validImportData into: session` and then `assertImportedRightNumberOfCustomers` (2 customers via `session selectAllOfType: Customer`), `assertPepeSanchezWasImportedCorrecty` and `assertJuanPerezWasImportedCorrectly`, built on `assertCustomerWithIdentificationType:number:hasFirstName:lastName:` (which looks the customer up with `session select:ofType:`) and `assertAddressOf:at:hasNumber:town:zipCode:province:`. The import becomes the method object `CustomerImporter` (`from:into:`, `valueFrom:into:`, `value`) that reads from any stream and persists into the given session; the two bugs are fixed (`fifth` and `sixth`); `Customer>>addressAt:ifNone:` and `Address>>isAt:` are added for the assertions.
