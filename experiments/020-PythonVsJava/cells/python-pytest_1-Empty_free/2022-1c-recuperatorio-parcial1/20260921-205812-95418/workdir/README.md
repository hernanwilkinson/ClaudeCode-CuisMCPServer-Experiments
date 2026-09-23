# CustomerImporter (Python translation of `CustomerImporter-Recu-1er-Parcial.st`)

Python 3 / pytest translation of the Cuis Smalltalk starting code, made as a faithful port of
the Java translation in `../java` (same classes, same methods, same instance variables, same
error strings, same comments, same 29 tests in the same order), including its design smells:
`if` / `elif` chains on type codes, `isinstance` checks, duplicated validation code, long
`import_customer` / `import_address` methods. Standard library only. Those smells have since
been removed: see [Design after the exercise](#design-after-the-exercise-removing-the-type-ifs)
at the end, which supersedes points 11 and 12 below.

Run the tests:

```
cd exercises/2022-1c-recuperatorio-parcial1/python
python3 -m pytest -q
```

(needs pytest; `pyproject.toml` puts `src` on the path and collects `tests/test_*.py`,
classes ending in `Test` and functions starting with `test`). All 29 tests in `ImportTest` pass.

## Layout

- `src/customerimporter/` — one module per Java class, module names in snake_case, class names
  unchanged: `address.py` (`Address`), `customer.py` (`Customer`), `customer_importer.py`
  (`CustomerImporter`), `customer_system.py` (`CustomerSystem`), `persistent_customer_system.py`
  (`PersistentCustomerSystem`), `transient_customer_system.py` (`TransientCustomerSystem`),
  `data_base_session.py` (`DataBaseSession`), `environment.py` (`Environment`),
  `development_environment.py` (`DevelopmentEnvironment`), `integration_environment.py`
  (`IntegrationEnvironment`). `__init__.py` imports all ten classes.
- `tests/test_import.py` — the test class `ImportTest` (a plain class, not a
  `unittest.TestCase`) with the 29 tests, same order, same assertions, same fixture data and
  the same helper methods (`should_fail_importing`, `assert_address_of`, ...).
- The Smalltalk method categories are kept as `# category` comments inside each class, as the
  Java keeps them as `// category` comments (including the misfiled `cuit_with_invalid_header`
  under `# tests` and the `twon` typo). Method order inside each class is the Java order.

## Translation decisions that are not one to one

1. **Naming.** Every Java method, variable and parameter name is converted to snake_case,
   keeping the Smalltalk-style `a`/`an` parameter names and the typos (`twon`,
   `assert_pepe_sanchez_was_imported_correcty`, `test15_..._thrid_position`,
   `cuit_without_dash_an_penultimate_position`). Acronyms become one lowercase word:
   `hasDNIAsIdentification` -> `has_dni_as_identification`, `hasCUITAsIdentification` ->
   `has_cuit_as_identification`, `dniNumberIfNone` -> `dni_number_if_none`. Digits are separated
   by an underscore (`lessThan12CuitSize` -> `less_than_12_cuit_size`,
   `test25NewZipCode4DigitsAfterFirstLetter` -> `test25_new_zip_code_4_digits_after_first_letter`),
   except the test number, which stays glued to `test` (`test01_...`).
2. **Accessors.** Python has no overloading, so the Java pairs `firstName()` / `firstName(aName)`
   (Smalltalk `firstName` / `firstName:`) are `first_name()` / `set_first_name(a_name)`, and the
   same for every getter/setter pair (`street_name` / `set_street_name`, `zip_code` /
   `set_zip_code`, `identification_type` / `set_identification_type`, ...). They stay methods
   (no properties).
3. **Keywords as names.** `CustomerImporter.from(...)` (Smalltalk `from:into:`) is
   `CustomerImporter.from_(...)` because `from` is a Python keyword; `valueFrom` is `value_from`.
   `DataBaseSession.forConfiguration` keeps the Java name as `for_configuration` (`for` is a
   keyword in both languages). `importCustomer` / `importAddress` are `import_customer` /
   `import_address`.
4. **Class-side methods.** The Java `public static` methods (Smalltalk class-side methods
   `from:into:`, `valueFrom:into:`, the four `...ErrorDescription`, `for:`) are `@classmethod`s.
   Where the Smalltalk writes `self class invalidCustomerRecordErrorDescription` (Java: an
   unqualified static call), Python writes `type(self).invalid_customer_record_error_description()`.
5. **Instance creation / `initialize`.** `CustomerImporter.from_` and
   `DataBaseSession.for_configuration` call `cls(...)`, whose `__init__` holds the body of
   `initializeFrom:into:` / `initializeFor:` (the Java private constructors; Python cannot make
   `__init__` private). `Customer.__init__` is the Java no-arg constructor (`super().__init__()`
   plus `self._addresses = []`). `Address`, `PersistentCustomerSystem` and
   `TransientCustomerSystem` have no `__init__`, as they have no constructor in Java.
6. **Instance variables.** Java `private` fields are `_`-prefixed attributes. Python has no
   field declarations, so each class lists its Java fields, in the Java order, as class
   attributes initialized to `None` (`_id = None`, `_street_name = None`, ...). This keeps the
   field list visible (including the never-read `_id` of `Address` and `Customer`, only written
   by `DataBaseSession`) and gives every field the Smalltalk default `nil`, which
   `assert_customer_was_imported` relies on (`self._new_customer is None`). Java's `int`
   fields (`id`, `streetNumber`) therefore start as `None` instead of `0`, as in the Smalltalk.
7. **Local variables.** The Java local declarations without value (`String idType;`,
   `Address newAddress;`, `Customer importedCustomer;`, `Set<Object> table;` ...) are dropped;
   the variables are assigned where the Java assigns them.
8. **Errors.** `throw new RuntimeException("...")` (Smalltalk `self error: '...'`) is
   `raise RuntimeError("...")` with the exact same message. `RuntimeError` rather than
   `Exception` keeps the Smalltalk `Error - MessageNotUnderstood` intent: a typo raising
   `AttributeError` or a `TypeError` is not caught by the tests. The Java
   `NoSuchElementException("Object is not in the collection.")` of `detect:` without `ifNone:`
   (`TransientCustomerSystem.customer_with_identification_type`, `Environment.current`) is
   `RuntimeError("Object is not in the collection.")`. The Java checked-exception plumbing
   (`IOException` in `hasLineToImport`, `InterruptedException` in `delay`,
   `ReflectiveOperationException` in `defineIdOf`) has no Python counterpart and is gone.
9. **Streams and lines.** `new BufferedReader(new StringReader("..."))` (Smalltalk
   `ReadStream on: '...'`) is `io.StringIO("...")`, with the same `\n`-separated data and the
   same `+` concatenation of lines. `readLine()` (`nextLine`) is `readline()`, which answers `""`
   at the end instead of `null`/`nil` and keeps the `"\n"` terminator; therefore
   `_has_line_to_import` returns `self._line != ""` and `_create_record` strips the terminator
   before splitting (`self._line.rstrip("\n")`). An empty line (`"\n"`) is thus still a line
   with an empty record, as in Java and Smalltalk.
10. **`findTokens: $,`** (Java `StringTokenizer(line, ",")`) is
    `[token for token in self._line.rstrip("\n").split(",") if token != ""]`, which drops empty
    tokens like `findTokens:` and `StringTokenizer` do (plain `split` does not).
    `record.get(1)` ... `record.get(5)` (`record second` ... `record sixth`) are `self._record[1]`
    ... `self._record[5]`; `record.size()` / `isEmpty()` are `len(self._record)` /
    `len(self._record) == 0`.
11. **Characters and strings.** `idNumber.chars().allMatch(idChar -> Character.isDigit(idChar))`
    (`allSatisfy: [ :idChar | idChar isDigit ]`) is `all(id_char.isdigit() for id_char in id_number)`,
    kept duplicated wherever the original has it; `Character.isLetter` is `str.isalpha`.
    `x >= a && x <= b` (`between:and:`) stays `x >= a and x <= b`. Slices use Python indexing:
    `substring(0, 2)` (`first: 2`) -> `[:2]`, `substring(3, length() - 2)` (`copyFrom: 4 to: size - 2`)
    -> `[3:-2]`, `substring(1, 5)` (`copyFrom: 2 to: 5`) -> `[1:5]`, `substring(length() - 3)`
    (`last: 3`) -> `[-3:]`, `charAt(2)` / `charAt(length() - 2)` / `charAt(length() - 1)`
    (`third` / `penultimate` / `last`) -> `[2]` / `[-2]` / `[-1]`. `Arrays.asList("20", ...).contains(x)`
    (`{ '20'. ... } includes:`) is `x in ["20", ...]`. `Integer.parseInt` (`asNumber`,
    `Integer readFrom:`) is `int(...)`. `.equals(...)` is `==`.
12. **Dynamic typing of `zip_code`.** As in the Smalltalk and in the Java (`Object zipCode`),
    `Address._zip_code` holds either an `int` (old zip code) or a `str` (new zip code);
    `instanceof Integer` / `instanceof String` (`isKindOf:`) are `isinstance(..., int)` /
    `isinstance(..., str)`. The Java cast `(Integer) importedZipCode` disappears.
13. **Blocks.** Java lambdas (`Supplier`, `Runnable`, `Predicate`) are Python callables
    (`lambda`), evaluated with `a_none_block()`, `an_assertion_block()`, `a_condition(an_object)`.
    `() -> fail()` (`[ self fail ]`) is `lambda: pytest.fail()`. `DataBaseSession.select` keeps
    the Java argument order `(a_condition, a_type)` of `select:ofType:`.
14. **`Environment.current` and `is_current`.** Here Python can do what Java could not and is
    back to the Smalltalk design: `is_current` is a class-side method (`@classmethod`) of each
    subclass, and `current` iterates `cls.__subclasses__()` (Smalltalk `self subclasses`) and
    answers a new instance of the first one that is current, instead of the Java hard-coded list
    of instances. `IntegrationEnvironment.is_current` is `not DevelopmentEnvironment.is_current()`
    (Smalltalk `DevelopmentEnvironment isCurrent not`). `__subclasses__` only sees imported
    subclasses; importing any `customerimporter` module runs the package `__init__.py`, which
    imports both.
15. **Abstract methods.** Java `abstract` (Smalltalk `subclassResponsibility`) in `CustomerSystem`
    and `Environment` is `abc.ABC` plus `@abstractmethod` with a `pass` body.
16. **`DataBaseSession`.** `tables` is a `dict` from class to `set`, keyed by `type(an_object)`;
    `getOrDefault(..., emptySet())` (`at:ifAbsent: [#()]`) is `.get(..., set())`;
    `computeIfAbsent(..., new HashSet)` (`at:ifAbsentPut: [Set new]`) is `.setdefault(..., set())`;
    `new HashSet<>(...)` (`copy`) is `set(...)`; `Thread.sleep(100)` (`(Delay forMilliseconds: 100) wait`)
    is `time.sleep(0.1)`; the reflective write of the `id` field (`instVarNamed: 'id' put:`)
    is `setattr(an_object, "_id", ...)`. Empty Java methods (`beginTransaction`, `close`, and
    `TransientCustomerSystem.beginTransaction` / `commit`) have a `pass` body. The Java generics
    and the `(Customer)` casts disappear. The configuration `Arrays.asList(Address.class, Customer.class)`
    is `[Address, Customer]`. `.iterator().next()` (`anyOne`) is `next(iter(...))`.
17. **Collections.** `ArrayList` (`OrderedCollection`) is `list` (`add` -> `append`,
    `size()` -> `len`, `isEmpty()` -> `len(...) == 0`); `HashSet` (`Set`) is `set`.
    For-each loops with early return (`detect:ifNone:`, `detect:`) stay `for` loops.
18. **Visibility.** Java `private` methods (the `evaluating - private` and
    `persistence - private` categories) are `_`-prefixed: `_assert_record_not_empty`,
    `_create_record`, `_has_line_to_import`, `_import_record`, `_define_id_of`, `_delay`,
    `_objects_of_type`, `_persist_addresses_of`. Everything else is public.
19. **Test framework.** `@BeforeEach setUp` / `@AfterEach tearDown` are `setup_method` /
    `teardown_method`; `assertEquals(expected, actual)` is `assert expected == actual` (same
    operand order); `assertTrue(x)` / `assertFalse(x)` are `assert x` / `assert not x`;
    `fail()` is `pytest.fail()`; `assertThrows(RuntimeException.class, ...)` followed by
    `assertEquals(message, anError.getMessage())` is
    `with pytest.raises(RuntimeError) as an_error:` followed by
    `assert message == str(an_error.value)`. The test instance variable `system` is
    `self._system` (declared as a class attribute like the source classes). Helper methods that
    return the assertion result in Smalltalk are procedures, as in Java.
20. **Type hints and docstrings.** None, to keep the code as close to the Java/Smalltalk text
    as possible; the Java static types that document intent (`Object zipCode`,
    `Supplier<Object>`, ...) are described above instead.
21. `spec-python.md` (next to `spec-java.md`) is the Java statement with only the Java-specific
    names adapted (`import_customer`, `import_address`, the pytest project instead of the
    Gradle project).


## Design after the exercise (removing the type IFs)

The `if` / `elif` chains on the identification type (`"D"` / `"C"`) and on the zip code type
(first character a digit / a letter), and the validation code repeated inside them, are gone.
The tests are untouched.

### Identification

`Identification` (abstract) with the concrete subclasses `Dni` and `Cuit`, one module each
(`identification.py`, `dni.py`, `cuit.py`). Each subclass knows its own code
(`identification_type()`: `"D"` / `"C"`), its own error description
(`invalid_number_error_description()`: `"Invalid DNI number"` / `"Invalid CUIT number"`), how to
validate a number (`assert_is_valid_number`) and how to answer the queries the tests make:
`is_dni` / `is_cuit` and `dni_number_if_none` / `cuit_number_if_none`. Nothing compares type
codes any more, except `Identification.is_for`.

`Identification.for_(an_identification_type, an_identification_number)` looks the type up among
`cls.__subclasses__()` — the same idiom `Environment.current` already used — and answers
`SomeSubclass.with_number(...)`, which validates before creating the instance; if no subclass
`is_for` the code, it raises `"Invalid identification type"`. An `Identification` is therefore
always valid once created.

The repeated `raise RuntimeError("Invalid ... number")` of every validation is one inherited
method, `Identification.assert_valid_number(a_condition)`, which raises the error description of
the receiver's class, so each subclass validation is a list of conditions. The four copies of
`all(id_char.isdigit() for id_char in ...)` are `str.isdigit()` on the whole string (and
`str.isalpha()` for the letters of the new zip code).

`Customer` keeps a single `_identification` instead of `_identification_type` and
`_identification_number`, and delegates to it; `identification_type()` and
`identification_number()` still answer the code and the number the tests expect. The duplicated
`identification_type() == ... and identification_number() == ...` of
`TransientCustomerSystem.customer_with_identification_type` and of
`PersistentCustomerSystem.customer_with_identification_type` is now
`Customer.is_identified_by(an_id_type, an_id_number)`.

### Zip code

The same structure: `ZipCode` (abstract) with `OldZipCode` and `NewZipCode`
(`zip_code.py`, `old_zip_code.py`, `new_zip_code.py`). `ZipCode.for_(a_zip_code)` asks each
subclass `is_for(a_zip_code)` (first character a digit / a letter) instead of deciding with an
`if`, validates with `assert_is_valid_code` and, as `Identification` does, raises the repeated
error description from the inherited `assert_valid_code(a_condition)`. `OldZipCode` holds the
number (`int`), `NewZipCode` the string, so `Address._zip_code` is a `ZipCode` and no longer an
`int`-or-`str` checked with `isinstance`; `Address` delegates `zip_code()`, `has_old_zip_code` /
`has_new_zip_code` and `old_zip_code_if_none` / `new_zip_code_if_none`.

`ZipCode.invalid_zip_code_type_error_description()` answers `"Invalid identification type"`: the
message is wrong for a zip code, but `test29_zip_code_must_be_old_or_new` expects that text and
the tests have to be kept as they are.

### Importing

`CustomerImporter.import_customer` and `import_address` no longer validate: they read the record
and ask `Identification.for_` / `ZipCode.for_` for an object, which validates itself. Adding a
new identification type or a new kind of zip code means adding a subclass (and importing it in
`__init__.py`, which is what makes `__subclasses__` see it) without touching `CustomerImporter`,
`Customer` or `Address`.

### What was left alone

- `CustomerImporter._import_record` still dispatches on `"C"` / `"A"` with
  `is_customer_record` / `is_address_record`. That is the record grammar of the file and the
  design of the original code, not something the new developer added.
- `DataBaseSession.persist` still uses `isinstance(an_object, Customer)`. It simulates the
  database, and the alternative (double dispatch) would push persistence knowledge into
  `Customer` and `Address`.
- The remaining `if`s are guards (`assert_valid_customer_record`, `assert_valid_number`, ...)
  and searches (`Customer.address_at`, the `for_` lookups), not type-code conditionals.
