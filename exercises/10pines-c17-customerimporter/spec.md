# Customer Importer (four iterations)

This exercise is done in four iterations ("steps") on the same code base; each iteration is also available as its own exercise (`10pines-c17-customerimporter-1` to `-4`), where the previous iteration's solution is the starting code.

## Context: working with existing code

Problem: I have to fix a bug... but I can't modify code without writing a test first... but I can't write the test because there are too many dependencies that prevent it... and I must break those dependencies to be able to test... but I can't modify code without writing a test first...

Problem: I have to add new functionality... but I can't modify code without writing a test first... but I can't write the test because the code is very complicated, I don't understand it... and I must modify it to understand it... but I can't modify code without writing a test first...

Problem: bad design:

- Not understandable code (bad names, poor distribution of responsibilities, little cohesion, etc.).
- A lot of coupling (references to external resources, poor functional decomposition, etc.).

Solution: refactoring, test doubles ("objetos simuladores"), break dependencies.

Code maintenance rules: identify the change points; identify the test points; break dependencies (refactoring and other techniques); write tests; make the changes.

## The example: Customer Import

The system imports customers and their addresses from a CSV file. File format:

```
C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,1636,BsAs
A,Maipu,888,Florida,1122,Buenos Aires
C,Juan,Perez,C,23-25666777-9
A,Alem,1122,CABA,1001,CABA
```

- Lines starting with `C` are customers: `C,firstName,lastName,identificationType,identificationNumber`.
- Lines starting with `A` are the addresses of the customer above them: `A,streetName,streetNumber,town,zipCode,province`.

There is a "main" to run the import. But... does it work correctly?

Design problems:

- `importCustomers` is too long, it is difficult to understand.
- It is coupled to the input file.
- It is coupled to the database.
- It opens the database connection.
- It handles the transaction.
- It is a GOD method.

## The initial code (`starting/10Pines-C17.st`, category `10Pines-C17`)

- `ImportTest` (TestCase) with one test, `test01Import`, that only evaluates `Customer importCustomers` and asserts nothing.
- `Address` with accessors for `streetName`, `streetNumber`, `town`, `zipCode`, `province` (and an `id` instance variable set by the session).
- `Customer` with accessors for `firstName`, `lastName`, `identificationType`, `identificationNumber`, an `addresses` collection (`addAddress:`, `addresses`) and `initialize`.
- `Customer class>>importCustomers`: opens `'input.txt'` with `StandardFileStream new open: 'input.txt' forWrite: false`, creates a `DataBaseSession for: (Array with: Address with: Customer)`, begins a transaction, reads the file line by line with `nextLine`, splits each line with `findTokens: $,`, builds a `Customer` for `C` lines and an `Address` (added to the last customer) for `A` lines, persists the customers, commits, closes the session and the stream. It contains two bugs on purpose: the identification number is taken from the fourth field instead of the fifth, and the province from the fourth field instead of the sixth.
- `DataBaseSession`: an in-memory stand-in for a database session (`for:`, `beginTransaction`, `commit`, `close`, `persist:`, `select:ofType:`, `selectAllOfType:`) that assigns ids and sleeps 100 milliseconds on every persist and select to simulate a slow database.

The CSV file `input.txt` the main reads is not part of the given code; its content is the five lines shown above.

## Step 1 - 1st iteration

Customer Import:

- We must be sure that it imports the data correctly.
- We must decouple it from the input file and be able to run it with other types of input.
- We do not have time to make the implementation nicer! We must be sure it works as expected.

Suggested sequence:

- Move `importCustomers` to the test scope to remove its coupling with the database.
- Convert `session` into an instance variable.
- Extract the database initialization and the transaction start to a set-up method; remove the method call.
- Extract the transaction commit and the database close to a tear-down method; remove the method call.
- Write the test assertions...

Write the test assertions:

- Verify that two customers were imported.
- Verify that the first customer was imported correctly.
- Verify that more than one customer can be imported.
- Fix two bugs.
- Parameterize the input.
- Generalize the input type to use a string reader and decouple from the file.
- Parameterize the session.

Then:

- Convert `importCustomers` into a Method Object.
- Make the test declarative:
  - Extract Method to assert the number of imported customers.
  - Extract Method to look for a customer.
  - Extract Method to assert an address was imported correctly.
  - Extract Method to assert a customer was imported correctly.

Refactorings presented for this iteration, as a catalogue of IDE refactorings to use instead of editing text:

- Rename: renames the selected element and the references to it.
- Extract Method: creates a new method from the selected code and replaces the selected code with the message send that executes the new method. Some IDEs detect the code repetition in different places (for example IntelliJ).
- Move Method / Move Instance Method: moves the selected method to a class that must be visible from the context in which it is moved; modifies all references to the moved method.
- Convert Local to Field / Introduce Field: converts a local variable into an instance variable; it can move the initialization of the variable.
- Extract to Local / Introduce Variable: extracts the selected code to a local variable initialized with that code.
- Introduce Parameter: replaces the selected code with a reference to a parameter and modifies all senders by adding that parameter, whose value will be the replaced code.
- Change Method Signature / Change Signature: allows you to modify the elements that define a method (return type, parameters, and so on) and modifies all the senders according to the new definition; when you add parameters you can indicate with which code the senders should be updated.
- Generalize Declared Type / Type Migration / Use Base Type Where Possible: allows you to replace the type of a variable with some supertype.
- Inline: copies the code represented by the method or variable to the places where that method or variable is referenced.
- Extract to Local + Extract Method + Inline: used together to extract code that is not in a rectangular selection (code that is scattered).

## Step 2 - 2nd iteration

Customer Import:

- Sometimes it does not import anything and we do not know why!
- We have some bug reports with exceptions such as `NullPointerException` and `IndexOutOfBound`.
- Solve it and make it nice!

Suggested sequence:

- Remove the `split` duplication.
- Make all variables local to the object, not to the method.
- Give meaning to the record-type conditions.
- Give meaning to each body of the ifs.
- Give meaning to each part of the body of the while.
- Remove the read-line duplication.

Robustness:

- The import does not support an invalid input format. For example, the customer record can be smaller or bigger.
- Make the import robust regarding invalid input.

## Step 3 - 3rd iteration

Customer Import:

- The tests do not meet the rule that they must be fast...
- ... they are coupled with the database!
- Make the tests run faster by decoupling them from the database...
- ... but remember that sometimes you have to test with the database... when you are in the integration environment.

Notes: bad smell "the tests take too much time to run": they are coupled with an external resource, decouple them; use fake objects (in-memory database, etc.). "TearDown": generally not used because of the garbage collector; used to release external resources, but remember that we should not use external resources in programmer tests, so tear-down is a bad smell. Fixtures: favor transient fixtures (created on each test, kept in memory); avoid persistent fixtures, and even more the shared ones (slower test execution, no parallelization, imposed execution order, erratic tests).

Refactorings presented for this iteration:

- Encapsulate Field: references to instance variables are replaced by getters and setters.
- Encapsulate Field + Move: allows you to move instance variables to other classes.
- Extract Interface: allows you to create an interface from part of the protocol defined in a class.
- Extract Interface + Generalize Declared Type: used to create polymorphic hierarchies.
- Extract Class / Extract Delegate: creates one class from another, indicating which instance variables (fields/attributes) and methods to move to the new class.

## Step 4 - 4th iteration

It is not a Customer Import anymore... now it is an ERP system!!

- Our beloved sellers give us work to do all the time! They sold the system as an ERP system, so we have to implement the Suppliers import.

Supplier:

```java
@Entity
@Table( name = "SUPPLIERS" )
public class Supplier {
    @Id @GeneratedValue
    private long id;
    @NotEmpty
    private String name;
    @Pattern(regexp="D|C")
    private String identificationType;
    @NotEmpty
    private String identificationNumber;
    @OneToMany(cascade = CascadeType.ALL)
    private Set<Address> addresses;
    @OneToMany(cascade = CascadeType.ALL)
    private Set<Customer> customers;
}
```

That is: a supplier has a name (not empty), an identification type (`D` or `C`), an identification number (not empty), a set of addresses and a set of customers.

Supplier import file format:

```
S,Supplier1,D,123
NC,Pepe,Sanchez,D,22333444
EC,D,5456774
A,San Martin,3322,Olivos,1636,BsAs
A,Maipu,888,Florida,1122,Buenos Aires
```

- `S,name,identificationType,identificationNumber`: a supplier.
- `NC,firstName,lastName,identificationType,identificationNumber`: a new customer of the supplier above (same fields as a `C` record of the customer import; the customer must be created and added to the supplier).
- `EC,identificationType,identificationNumber`: an existing customer of the supplier above (the customer must already exist in the system and is added to the supplier).
- `A,streetName,streetNumber,town,zipCode,province`: an address of the supplier above.

Refactorings presented for this iteration:

- Extract Parameter Object / Extract Class from Parameters: creates an abstraction from a set of parameters of a method and replaces the senders with the instantiation of the new abstraction.
- Extract Superclass: same as Extract Interface but with classes.
- Extract Class: creates a new class from instance variables and methods.
- Pull Up: moves instance variables and/or methods to the superclass; the method can be declared abstract in the superclass.
- Push Down: moves instance variables and/or methods to the subclass.

## Reference solution (`solution/10Pines-C17-130.st`)

The last snapshot of the fourth iteration, 40 green tests in five test classes (`CustomerImportTest`, `SupplierImporterTest`, `CustomerSystemTest`, `PartyIdentificationTest`, `SupplierTest`). Its design: `Party` (addresses, identification) with subclasses `Customer` (`firstName:lastName:identifiedAs:`) and `Supplier` (`named:identifiedAs:`, customers); `PartyIdentification` value object (type and number, trimmed, not empty, `=`/`hash`); `PartyImporter` (method object reading records from a stream, abstract `importNotEmptyRecord` and `signalInvalidCustomerRecord`) with subclasses `CustomerImporter` (`C`/`A` records) and `SupplierImporter` (`S`/`A`/`NC`/`EC` records); `System` > `RootSystem` > `ErpSystem` with `PersistentErpSystem` (a `DataBaseSession`) and `TransientErpSystem` (in memory), each owning a `CustomerSystem` and a `SupplierSystem` sub-system (`SubSystem asSubsystemOf:`) in persistent and transient flavours; and `Environment current createErpSystem`, where `DevelopmentEnvironment` (the current one) creates the transient system and `IntegrationEnvironment` the persistent one. All error messages are class-side `...ErrorDescription` methods.
