# CustomerImporter (Java translation of `CustomerImporter-Recu-1er-Parcial.st`)

Java 17+ / JUnit 5 / Gradle translation of the Cuis Smalltalk starting code, **refactored**:
the `if` chains on type codes, the `instanceof` checks and the duplicated validation code the
starting code had were replaced by two polymorphic hierarchies (see "Design after the
refactor" at the end). The 29 tests are the ones given with the exercise, unchanged.

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
  `IntegrationEnvironment`.
- `src/test/java/customerimporter/ImportTest.java` — the 29 tests, same names, same
  assertions, same fixture data, same helper methods (`shouldFailImporting`,
  `assertAddressOf`, ...).
- Smalltalk method categories are kept as `// category` comments inside each class
  (including the misfiled `cuitWithInvalidHeader` under `// tests` and the `twon` typo).

## Translation decisions that are not one to one

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

## Design after the refactor

The starting code decided what an identification and what a zip code were with `if`
chains inside `CustomerImporter>>importCustomer` / `importAddress`, and then asked those
types again with `instanceof` in `Customer` and `Address`. Two hierarchies replace them:

- `Identification` (abstract) with `DNI` and `CUIT`. `Identification.ofType(aType, aNumber)`
  is the only place that looks at the type code: it finds the creation for the code (or
  fails with `Invalid identification type`) and the created object validates its own number.
  `isDNI` / `isCUIT` / `dniNumberIfNone` / `cuitNumberIfNone` are polymorphic; the
  superclass holds the "not of this kind" answers, so a new identification type only has to
  say what it *is*.
- `ZipCode` (abstract) with `OldZipCode` and `NewZipCode`, same shape. `ZipCode.from(aCode)`
  picks the first subclass that can represent the code (each one answers `canRepresent`),
  and the created object validates itself. `value()` answers the `Integer` / `String` the
  tests expect.

`Customer` and `Address` no longer know about type codes: they hold an `Identification` /
a `ZipCode` and delegate (`hasDNIAsIdentification` -> `identification.isDNI()`,
`hasOldZipCode` -> `zipCode.isOld()`, ...). Both are created through a factory method with
all their parts, so there are no half built objects and no setters.

Duplication removed: the five/four repeated `self error:` per validation became a single
`assertIsValidNumber` / `assertIsValid` guard in each superclass plus one intention
revealing predicate per rule; the repeated `allSatisfy: [:c | c isDigit]` became
`Strings.hasOnlyDigits` / `hasOnlyLetters`; and the identification condition that
`TransientCustomerSystem` and `PersistentCustomerSystem` both had is now
`Customer>>isIdentifiedAs:`.

Kept as it was (it is the design of the original exercise, not part of what had to be
fixed): the record type dispatch in `CustomerImporter>>importRecord`, `Environment.current`
and `DataBaseSession`. `ZipCode.invalidZipCodeTypeErrorDescription` still answers
`'Invalid identification type'` because that is the text the given tests expect for a zip
code that is neither old nor new.
