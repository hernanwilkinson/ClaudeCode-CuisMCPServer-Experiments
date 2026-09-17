# Customer Importer, step 2: make it understandable and robust

This is the second of the four iterations of the Customer Importer exercise (see `10pines-c17-customerimporter`). The solution of step 1 is provided as starting code (`starting/10Pines-C17-35.st`).

## Reminder of the domain

The system imports customers and their addresses from a CSV input. Lines starting with `C` are customers (`C,firstName,lastName,identificationType,identificationNumber`, five fields); lines starting with `A` are addresses of the customer above them (`A,streetName,streetNumber,town,zipCode,province`, six fields):

```
C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,1636,BsAs
A,Maipu,888,Florida,1122,Buenos Aires
C,Juan,Perez,C,23-25666777-9
A,Alem,1122,CABA,1001,CABA
```

## What the starting code contains (`starting/10Pines-C17-35.st`, category `10Pines-C17`, result of step 1)

- `ImportTest` (TestCase, instance variable `session`): `setUp` creates `DataBaseSession for: (Array with: Address with: Customer)` and begins a transaction; `tearDown` commits and closes it; `validImportData` answers a `ReadStream on:` the five lines above; the only test, `test01Import`, evaluates `CustomerImporter valueFrom: self validImportData into: session` and asserts with `assertImportedRightNumberOfCustomers` (2), `assertPepeSanchezWasImportedCorrecty` and `assertJuanPerezWasImportedCorrectly`, which use `assertCustomerWithIdentificationType:number:hasFirstName:lastName:`, `customerWithIdentificationType:number:` (a `session select:ofType:`) and `assertAddressOf:at:hasNumber:town:zipCode:province:`.
- `CustomerImporter`: a method object created with `from: aReadStream into: aSession` (`valueFrom:into:` creates it and sends `value`). `value` is still the old loop: reads a line with `nextLine`, `[ line notNil ] whileTrue:`, splits the line with `findTokens: $,` twice (once in each `if`), builds a `Customer` when the line `beginsWith: 'C'` and an `Address` (added to `newCustomer`) when it `beginsWith: 'A'`, persists the customers in the session. The two field-index bugs of the initial code are fixed.
- `Customer` (with `addressAt:ifNone:`), `Address` (with `isAt:`) and `DataBaseSession` (in-memory simulated database that waits 100 ms on each `persist:` and select) as in the initial code.

## The task: 2nd iteration

Customer Import:

- Sometimes it does not import anything and we do not know why!
- We have some bug reports with exceptions such as `NullPointerException` and `IndexOutOfBound` (in Smalltalk: `nil doesNotUnderstand:` when an address comes before any customer, and errors from `second`/`fifth`/`sixth` on records with too few fields).
- Solve it and make it nice!

Suggested sequence:

1. Remove the `split` duplication (the line is tokenized in both ifs).
2. Make all variables local to the object, not to the method (line, record, the customer being imported become instance variables of the importer).
3. Give meaning to the record-type conditions (`beginsWith: 'C'` / `beginsWith: 'A'`).
4. Give meaning to each body of the ifs.
5. Give meaning to each part of the body of the while.
6. Remove the read-line duplication (the line is read before the loop and at its end).

Robustness:

7. The import does not support an invalid input format. For example, the customer record can be smaller or bigger.
8. Make the import robust regarding invalid input.

The catalogue of refactorings (Rename, Extract Method, Move Method, Convert Local to Field, Extract to Local, Introduce Parameter, Change Signature, Generalize Declared Type, Inline, and Extract to Local + Extract Method + Inline for scattered code) applies here as well.

## Reference solution (`solution/10Pines-C17-60.st`; `solution/steps/` has the 25 snapshots 36-60 taken in class)

9 green tests in `ImportTest`: `test01ValidDataIsImportedCorrectly`; `test02CanNotImportAddressWithoutCustomer` (`'Cannot import address without customer'`); `test03DoesNotImportRecordsStartingWithCButMoreCharacters` and `test04DoesNotImportRecordsStartingWithAButMoreCharacters` (a record type must be exactly `C` or `A`, otherwise `'Invalid record type'`); `test05`/`test06` address records with less or more than six fields (`'Address record has to have six fields'`); `test07`/`test08` customer records with less or more than five fields (`'Invalid Customer record'`); `test09CannotImportEmptyLine` (`'Invalid record type'`). The tests use `shouldFailImporting:messageText:asserting:` and check what was imported before the failure (`assertNoCustomerWasImported`, `assertImportedOneCustomerWithoutAddress`, with `Customer>>isAddressesEmpty`). `CustomerImporter` keeps `line`, `record` and `newCustomer` as instance variables; `value` is `[ self hasLineToImport ] whileTrue: [ self createRecord. self importRecord ]`; `importRecord` asserts the record is not empty and dispatches on `isCustomerRecord` (`record first = 'C'`) / `isAddressRecord` to `importCustomer` / `importAddress`, which first assert the record size (5 / 6) and, for addresses, that a customer was imported; every error message is a class-side `...ErrorDescription` method.
