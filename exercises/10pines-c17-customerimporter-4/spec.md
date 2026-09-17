# Customer Importer, step 4: it is an ERP system now, import the suppliers

This is the last of the four iterations of the Customer Importer exercise (see `10pines-c17-customerimporter`). The solution of step 3 (which includes steps 1 and 2) is provided as starting code (`starting/10Pines-C17-76.st`).

## What the starting code contains (`starting/10Pines-C17-76.st`, category `10Pines-C17`, result of steps 1-3)

- `ImportTest` (TestCase, instance variable `system`): `setUp` does `system := Environment current createCustomerSystem. system start. system beginTransaction`; `tearDown` does `system commit. system stop`. 9 tests: valid data (two customers, Pepe Sanchez `D 22333444` with addresses San Martin 3322 Olivos 1636 BsAs and Maipu 888 Florida 1122 Buenos Aires, Juan Perez `C 23-25666777-9` with Alem 1122 CABA 1001 CABA), address without customer, record types `CC`/`AA`, address records with less/more than six fields, customer records with less/more than five fields, empty line. Assertions use `system numberOfCustomers` and `system customerWithIdentificationType:number:`.
- `CustomerImporter`: method object `valueFrom: aReadStream into: aCustomerSystem` (instance variables `readStream newCustomer line record system`); `value` loops `hasLineToImport` / `createRecord` (`findTokens: $,`) / `importRecord`; `importRecord` asserts the record is not empty and dispatches on `isCustomerRecord` (`record first = 'C'`) / `isAddressRecord` (`'A'`) to `importCustomer` (`assertValidCustomerRecord`: five fields; creates the `Customer` with setters; `system add: newCustomer`) and `importAddress` (`assertCustomerWasImported`, `assertValidAddressRecord`: six fields; `newCustomer addAddress:`); otherwise signals `invalidRecordTypeErrorDescription`. Class-side error descriptions: `'Cannot import address without customer'`, `'Invalid record type'`, `'Address record has to have six fields'`, `'Invalid Customer record'`.
- `CustomerSystem` (abstract: `start`, `stop`, `beginTransaction`, `commit`, `add:`, `customerWithIdentificationType:number:`, `numberOfCustomers`) with `PersistentCustomerSystem` (owns a `DataBaseSession for: (Array with: Address with: Customer)` created in `start`) and `TransientCustomerSystem` (an `OrderedCollection`).
- `Environment` (`Environment class>>current` answers a new instance of the subclass whose class-side `isCurrent` is true; `createCustomerSystem`), `DevelopmentEnvironment` (`isCurrent ^true`, transient system) and `IntegrationEnvironment` (`isCurrent ^DevelopmentEnvironment isCurrent not`, persistent system).
- `Customer` (setters `firstName:`, `lastName:`, `identificationType:`, `identificationNumber:`, `addAddress:`, `addressAt:ifNone:`, `isAddressesEmpty`), `Address` (setters and `isAt:`), `DataBaseSession` (the simulated database that waits 100 ms per operation; `persist:` also persists the addresses of an object that `isKindOf: Customer`).

## The task: 4th iteration

It is not a Customer Import anymore... now it is an ERP system!!

- Our beloved sellers give us work to do all the time! They sold the system as an ERP system, so we have to implement the Suppliers import.

Supplier, given as a Java JPA entity:

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

- `S,name,identificationType,identificationNumber`: a supplier (four fields).
- `NC,firstName,lastName,identificationType,identificationNumber`: a new customer of the supplier above (the same five fields as a `C` record of the customer import); the customer is created, added to the system and to the supplier.
- `EC,identificationType,identificationNumber`: an existing customer of the supplier above (three fields); the customer identified that way must already exist in the system and is added to the supplier.
- `A,streetName,streetNumber,town,zipCode,province`: an address of the supplier above (six fields). The example brackets the `NC` and `EC` lines as "Customers of the Supplier" and the `A` lines as "Addresses of the Supplier".

The same robustness expected of the customer import applies: invalid record types and records with the wrong number of fields must be rejected with a meaningful error, and the import must be testable in memory and against the database (the system is chosen by the `Environment`).

Refactorings presented for this iteration:

- Extract Parameter Object / Extract Class from Parameters: creates an abstraction from a set of parameters of a method and replaces the senders with the instantiation of the new abstraction.
- Extract Superclass: same as Extract Interface but with classes.
- Extract Class: creates a new class from instance variables and methods.
- Pull Up: moves instance variables and/or methods to the superclass; the method can be declared abstract in the superclass.
- Push Down: moves instance variables and/or methods to the subclass.

## Reference solution (`solution/10Pines-C17-130.st`; `solution/steps/` has the 54 snapshots 77-130 taken in class)

40 green tests in five test classes:

- `CustomerImportTest`: the 9 tests of step 3, now on `Environment current createErpSystem` and its `customerSystem`, with identifications compared as `PartyIdentification` objects.
- `SupplierImporterTest` (18 tests): imports a supplier record (`system numberOfSuppliers`, `supplierIdentifiedAs: 'D' number: '123'`, `isNamed:`, `isCustomersEmpty`, `isAddressesEmpty`); rejects `SA` record types, supplier records with three or five fields (`'Supplier record must have four fields'`); imports a supplier address and rejects `AA` and address records with five or seven fields; imports a new customer (`NC`) that then exists in the customer system and in the supplier, rejecting `NCx`, four or six fields (`'Invalid new customer record'`) and a new customer that already exists (`'Customer already exists'`); imports an existing customer (`EC`) previously added to the customer system, rejecting `ECx`, two or four fields (`'Invalid existing customer record'`) and a customer that does not exist (`'Customer does not exists'`).
- `CustomerSystemTest`: `customerIdentifiedAs:` signals `'Customer not found'`.
- `PartyIdentificationTest` (7 tests): equality and hash by type and number, empty type or number rejected (`'Type cannot be empty'`, `'Number cannot be empty'`), type and number trimmed.
- `SupplierTest` (5 tests): `isNamed:` and `isIdentifiedAs:`.

Design: `Party` (addresses and `identification`, `isIdentifiedAs:`) with subclasses `Customer` (`firstName:lastName:identifiedAs:`) and `Supplier` (`named:identifiedAs:`, `addCustomer:`, `customerIdentifiedAs:`, `isCustomersEmpty`); `PartyIdentification type:number:` value object; `PartyImporter` (method object with `value`, the record loop, address import and `createCustomer`, abstract `importNotEmptyRecord` and `signalInvalidCustomerRecord`) with subclasses `CustomerImporter` (`C`, `A`) and `SupplierImporter` (`S`, `A`, `NC`, `EC`); `System` > `RootSystem` (transactions) > `ErpSystem` (`customerSystem`, `supplierSystem`, starts and stops both) with `PersistentErpSystem` (one `DataBaseSession for: (Array with: Address with: Customer with: Supplier)` shared by its sub-systems) and `TransientErpSystem`; `SubSystem asSubsystemOf:` > `CustomerSystem` (`customerIdentifiedAs:ifNone:`) and `SupplierSystem` (delegates customer look-ups to the parent's customer system), each with persistent and transient subclasses; `Environment>>createErpSystem` replaces `createCustomerSystem`.
