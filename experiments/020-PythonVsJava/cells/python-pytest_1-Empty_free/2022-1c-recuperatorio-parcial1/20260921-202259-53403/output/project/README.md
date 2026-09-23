# CustomerImporter (Python translation of `CustomerImporter-Recu-1er-Parcial.st`)

Python 3 / pytest translation of the Cuis Smalltalk starting code, made as a faithful port of
the Java translation in `../java` (same classes, same methods, same instance variables, same
error strings, same comments, same 29 tests in the same order), including its design smells:
`if` / `elif` chains on type codes, `isinstance` checks, duplicated validation code, long
`import_customer` / `import_address` methods. Standard library only.

**Those smells are gone now**: the identification types and the zip code types are two class
hierarchies and the `if` chains were replaced by polymorphism, without touching the tests.
See [Solution: types as objects](#solution-types-as-objects) at the end. The sections below
still describe the translation of the starting code.

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

## Solution: types as objects

The `if` / `elif` chains of `import_customer` and `import_address` decided *which type* a
record field was, *validated* it according to that type and then let `Customer` / `Address`
ask again (`_identification_type == "D"`, `isinstance(_zip_code, int)`) every time somebody
needed the value. Each of those decisions is now a class, and the answer is given by the
object itself.

- `Identification` (abstract) with `Dni` and `Cuit`. A `Customer` holds one `Identification`
  instead of the `_identification_type` / `_identification_number` pair.
- `ZipCode` (abstract) with `OldZipCode` and `NewZipCode`. An `Address` holds one `ZipCode`.
- `ImportedValue` (abstract), the common superclass of `Identification` and `ZipCode`: both
  hierarchies pick the subclass that handles a record field, validate the field with that
  subclass's rules and create the object, so that lives in one place.

### Removed `if`s

| Was | Now |
| --- | --- |
| `if id_type == "D" ... elif id_type == "C" ... else error` | `Identification.for_type_and_number(...)`, which asks each subclass `can_handle(a_type)` |
| `if zip_code[0].isdigit() ... elif zip_code[0].isalpha() ... else error` | `ZipCode.for_zip_code(...)`, which asks each subclass `can_handle(a_zip_code)` |
| `Customer.dni_number_if_none` / `cuit_number_if_none` testing the type code | the same messages sent to the `Identification`; `Identification` answers the none block, `Dni` / `Cuit` answer the number |
| `Customer.has_dni_as_identification` / `has_cuit_as_identification` comparing `"D"` / `"C"` | `is_dni()` / `is_cuit()`, `False` in `Identification` and `True` in the subclass |
| `Address.old_zip_code_if_none` / `new_zip_code_if_none` and `has_old_zip_code` / `has_new_zip_code` using `isinstance` | the same messages sent to the `ZipCode`, resolved the same way |

The subclass lookup is the one already used by `Environment.current`: iterate
`cls.__subclasses__()` and take the first one that answers `can_handle`, instead of a list of
type codes written somewhere. Adding a third identification type means adding one class and no
change anywhere else. As with `Environment`, `__subclasses__()` only sees imported classes, so
`__init__.py` imports the seven new ones.

### Removed duplicated code

- The five copies of `all(... .isdigit() ...)` / `isalpha()` / `x >= a and x <= b` and the
  nineteen copies of `raise RuntimeError("Invalid ... ")` are now
  `assert_all_are_digits`, `assert_all_are_letters`, `assert_is_between`, `assert_size_is`,
  `assert_size_is_between` and `assert_that` in `ImportedValue`. They raise
  `invalid_value_error_description()`, which each concrete class answers, so a validation rule
  never repeats the error text: `Dni.assert_is_valid` reads
  `assert_all_are_digits(a_number)` + `assert_is_between(int(a_number), 1, 99999999)`.
- The four digits inside a new zip code are validated exactly like an old zip code, so both
  call `ZipCode.assert_is_valid_zip_code_number` (each one reporting its own error).
- `PersistentCustomerSystem` and `TransientCustomerSystem` repeated the same
  `identification_type() == ... and identification_number() == ...`; both now ask
  `a_customer.is_identified_by(an_id_type, an_id_number)`.

### What was left alone

- The tests, byte for byte.
- `"Invalid identification type"` is also the error for a zip code that is neither old nor new
  (`test29`), as in the starting code, so `invalid_type_error_description` is defined once in
  `ImportedValue`.
- `Customer.identification_type()` and `Address.zip_code()` keep answering `"D"` / `"C"` and an
  `int` / `str`, because the tests assert on those values; they delegate to the type object.
- `_import_record`'s `is_customer_record` / `is_address_record` and `DataBaseSession`'s
  `isinstance(an_object, Customer)` come from the starting code, not from the new
  functionality, and are the record parser and the persistence framework rather than the
  identification / zip code types the exam is about.
