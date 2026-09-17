# CustomerImporter (Java translation of `CustomerImporter-Recu-1er-Parcial.st`)

Java 17+ / JUnit 5 / Gradle translation of the Cuis Smalltalk starting code. The
translation was kept as close as possible to the original, and the starting code's
design smells (`if` chains on type codes, `instanceof` checks, duplicated validation
code) were then removed; see "Design after the refactoring" at the end.

Run the tests:

```
cd exercises/2022-1c-recuperatorio-parcial1/java
/Users/hernan/Documents/Cuis/ClaudeCode-MCPServer-Test/tools/gradle/bin/gradle test -q
```

(or any Gradle 8+/9 with `gradle test`). All 29 tests in `ImportTest` pass.

## Layout

- `src/main/java/customerimporter/` — one public class per Smalltalk class:
  `Address`, `Customer`, `CustomerImporter`, `CustomerSystem`, `PersistentCustomerSystem`,
  `TransientCustomerSystem`, `DataBaseSession`, `Environment`, `DevelopmentEnvironment`,
  `IntegrationEnvironment`, plus the classes introduced by the refactoring:
  `Identification`, `DNI`, `CUIT`, `ZipCode`, `OldZipCode`, `NewZipCode` and `Characters`.
- `src/test/java/customerimporter/ImportTest.java` — the 29 tests, same names, same
  assertions, same fixture data, same helper methods (`shouldFailImporting`,
  `assertAddressOf`, ...).
- Smalltalk method categories are kept as `// category` comments inside each class
  (including the misfiled `cuitWithInvalidHeader` under `// tests` and the `twon` typo).

## Translation decisions that are not one to one

(Points 8 to 10 describe the starting code; the refactoring replaced them, see the last section.)

1. **Instance creation / `initialize`.** `CustomerImporter class>>from:into:` and
   `DataBaseSession class>>for:` are static factory methods that call a private
   constructor holding the body of `initializeFrom:into:` / `initializeFor:`.
   `Customer>>initialize` became the public no-arg constructor. `Customer new` /
   `Address new` are `new Customer()` / `new Address()`.
2. **`DataBaseSession for:`** could not keep its name because `for` is a Java keyword; it is
   `DataBaseSession.forConfiguration(aConfiguration)`. The configuration is a
   `List<Class<?>>` (`Array with: Address with: Customer` -> `Arrays.asList(Address.class, Customer.class)`).
3. **`self error: '...'`** -> `throw new RuntimeException("...")` with the exact same
   message. In the tests, `should:raise: Error - MessageNotUnderstood withMessageText:` /
   `withExceptionDo:` became `assertThrows(RuntimeException.class, ...)` plus
   `assertEquals(message, anError.getMessage())`.
4. **`subclassResponsibility`** -> `abstract` methods (`CustomerSystem`, `Environment`).
5. **`ReadStream on: '...'`** -> `new BufferedReader(new StringReader("..."))`.
   `readStream nextLine` -> `readLine()` (returns `null` at end, like `nextLine` returns
   `nil`); its checked `IOException` is wrapped in a `RuntimeException` in
   `hasLineToImport`. Multi-line string literals use `\n`.
6. **`line findTokens: $,`** -> `StringTokenizer(line, ",")` collected into a
   `List<String>` (`StringTokenizer`, like `findTokens:`, drops empty tokens; `String.split`
   does not). `record second` ... `record sixth` -> `record.get(1)` ... `record.get(5)`.
7. **Blocks.** Where the Smalltalk passes a block, Java passes a lambda:
   `ifNone:` blocks are `Supplier<...>` (`addressAt(aStreetName, aNoneBlock)`,
   `dniNumberIfNone`, `cuitNumberIfNone`, `oldZipCodeIfNone`, `newZipCodeIfNone`);
   the `asserting:` block of `shouldFailImporting` is a `Runnable`; the `select:` condition
   in `DataBaseSession.select` is a `Predicate<T>`. `[ self fail ]` is `() -> fail()`.
8. **`allSatisfy: [ :c | c isDigit ]`** -> `aString.chars().allMatch(c -> Character.isDigit(c))`
   (same one-line closure shape, kept duplicated in every place the original has it).
   `x between: a and: b` -> `(x >= a && x <= b)`. `first: 2` -> `substring(0, 2)`;
   `copyFrom: 4 to: size - 2` -> `substring(3, length() - 2)`; `copyFrom: 2 to: 5` ->
   `substring(1, 5)`; `last: 3` -> `substring(length() - 3)`; `third`/`penultimate`/`last`
   -> `charAt(2)` / `charAt(length() - 2)` / `charAt(length() - 1)`.
   `{ '20'. '23'. ... } includes:` -> `Arrays.asList("20", "23", ...).contains(...)`.
9. **Dynamic typing of `zipCode`.** `Address.zipCode` is an `Object` holding either an
   `Integer` (old zip code) or a `String` (new zip code), exactly as in the Smalltalk;
   `isKindOf: Integer` / `isKindOf: String` are `instanceof Integer` / `instanceof String`.
   Consequently `importedZipCode` in `importAddress` is an `Object` and the
   `between: 1000 and: 9999` check casts it to `Integer`; `zipCode:` takes an `Object`,
   `oldZipCodeIfNone:` / `newZipCodeIfNone:` / `dniNumberIfNone:` / `cuitNumberIfNone:`
   return `Object`. `Integer readFrom: aString readStream` / `aString asNumber` ->
   `Integer.parseInt(aString)`. `streetNumber` is an `int`.
10. **Type-code strings.** `identificationType` stays a `String` compared with
    `.equals("D")` / `.equals("C")` (the Smalltalk compares with `= 'D'`), and the record
    type checks are `record.get(0).equals("C")` / `.equals("A")`.
11. **`detect:` without `ifNone:`** (`TransientCustomerSystem>>customerWithIdentificationType:number:`,
    `Environment class>>current`) -> for-each loop with early return, then
    `throw new NoSuchElementException("Object is not in the collection.")` (the Cuis message).
    `detect:ifNone:` -> loop, then `aNoneBlock.get()`. `select:` -> loop with `if` into a
    new `HashSet`. `anyOne` -> `.iterator().next()`.
12. **`Environment class>>current` and `isCurrent`.** Java has no `subclasses` and static
    methods are not polymorphic, so `current()` iterates over a hard-coded list of one
    instance of each subclass (`new DevelopmentEnvironment(), new IntegrationEnvironment()`)
    and `isCurrent` is an (abstract) instance method instead of a class-side one.
    `DevelopmentEnvironment isCurrent not` -> `!new DevelopmentEnvironment().isCurrent()`.
13. **`DataBaseSession`** is fully in memory in the Smalltalk too, so it is translated as
    is and nothing throws `UnsupportedOperationException`: `tables` is a
    `Map<Class<?>, Set<Object>>` keyed by `anObject.getClass()`; `at:ifAbsent: [#()]` ->
    `getOrDefault(..., Collections.emptySet())`; `at:ifAbsentPut: [Set new]` ->
    `computeIfAbsent(..., k -> new HashSet<>())`; `copy` -> `new HashSet<>(...)`;
    `(Delay forMilliseconds: 100) wait` -> `Thread.sleep(100)` (its `InterruptedException`
    wrapped in a `RuntimeException`); `anObject instVarNamed: 'id' put:` -> reflection on the
    private `id` field (`getDeclaredField("id")`, `setAccessible(true)`, `set`).
    `select:ofType:` / `selectAllOfType:` / `objectsOfType:` are generic in the type
    (`Class<T>` -> `Collection<T>`) to avoid casts at the call site.
    `persistAddressesOf:` takes a `Customer` (the only class with `addresses`).
14. **`id` instance variables** of `Address` and `Customer` are `int` fields that nothing in
    the classes reads or writes (only `DataBaseSession` sets them reflectively), as in the
    Smalltalk where they are only written through `instVarNamed:put:`.
15. **Accessors.** `firstName` / `firstName:` -> overloaded `firstName()` /
    `firstName(aName)`, and so on for every getter/setter pair.
16. **Visibility.** Everything the Smalltalk exposes is `public`; the methods in the
    `evaluating - private` and `persistence - private` categories are `private`.
17. **Test framework.** `setUp` / `tearDown` -> `@BeforeEach` / `@AfterEach`; `assert:equals:`
    -> `assertEquals(expected, actual)`; `assert:` / `deny:` -> `assertTrue` / `assertFalse`;
    `self fail` -> `fail()`. Helper methods that in Smalltalk return the assertion result
    (`assertNoCustomerWasImported`, ...) are `void`.
18. `spec-java.md` (next to `spec.md`) is the same statement with only the Smalltalk-specific
    wording adapted ("added protocol" -> "added methods"; the file-in reference -> this
    Gradle project).

## Design after the refactoring

The `if` chains on type codes and the `instanceof` checks were replaced by two hierarchies,
and the duplicated validation code was moved into them.

- **`Identification`** (abstract) with `DNI` and `CUIT`. `Identification.forTypeAndNumber(aType, aNumber)`
  looks the creator of the type up in a map keyed by each subclass's `TYPE`
  (`Optional...orElseThrow` raises `"Invalid identification type"` for an unknown type),
  creates the identification and sends it `assertIsValid`, which every subclass implements
  with its own validations. `assertThat` lives in the superclass and raises the subclass's
  `invalidNumberErrorDescription` ("Invalid DNI number" / "Invalid CUIT number"), so no error
  message is repeated. `isDNI` / `isCUIT` / `dniNumberIfNone` / `cuitNumberIfNone` return the
  "is not of that type" answer in `Identification` and are overridden only by the class they
  belong to.
- **`ZipCode`** (abstract) with `OldZipCode` (a number between 1000 and 9999) and
  `NewZipCode` (`B1636BBE`). `ZipCode.from(aZipCode)` detects the first creator whose
  `appliesTo` holds — `OldZipCode` starts with a digit, `NewZipCode` with a letter — and then
  validates the same way as `Identification`. `isOld` / `isNew` / `oldZipCodeIfNone` /
  `newZipCodeIfNone` are polymorphic, and `value` answers the `Integer` or the `String` the
  tests expect from `Address>>zipCode`.
- **`Customer`** holds an `Identification` and **`Address`** holds a `ZipCode`; they keep the
  methods the tests use (`hasDNIAsIdentification`, `identificationType`, `hasOldZipCode`, ...)
  by delegating to them. `Customer>>isIdentifiedBy:` removed the condition that
  `TransientCustomerSystem` and `PersistentCustomerSystem` repeated.
- **`CustomerImporter`** no longer knows about identification or zip code types:
  `importCustomer` sends `Identification.forTypeAndNumber(...)` and `importAddress` sends
  `ZipCode.from(...)`. `assertValidCustomerRecord` and `assertValidAddressRecord` share
  `assertRecordHasNumberOfFields`.
- **`Characters`** has the `areAllDigits` / `areAllLetters` checks that were repeated in every
  validation.

The `if` on the record type (`isCustomerRecord` / `isAddressRecord`) in `importRecord` comes from
the starting code, not from the new functionality, and was left as it was.

Two things could not be improved because the tests have to be kept as they are:
`Address>>zipCode` answers an `Integer` or a `String` (not the `ZipCode`), and the error raised
when a zip code is neither old nor new is `"Invalid identification type"`
(`ZipCode.invalidZipCodeTypeErrorDescription`).
