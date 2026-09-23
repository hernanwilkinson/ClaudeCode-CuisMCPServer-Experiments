# CustomerImporter (Python translation of `CustomerImporter-Recu-1er-Parcial.st`)

Python 3 / pytest translation of the Cuis Smalltalk starting code, made as a faithful port of
the Java translation in `../java` (same classes, same methods, same instance variables, same
error strings, same comments, same 29 tests in the same order). Standard library only.

The starting code came with the design smells the exam asks to remove (`if` / `elif` chains on
type codes, `isinstance` checks, duplicated validation code, long `import_customer` /
`import_address` methods); they were solved as described in [Solution](#solution), without
touching `tests/test_import.py`. The rest of this README documents the translation decisions of
the starting code, which still hold.

Run the tests:

```
cd exercises/2022-1c-recuperatorio-parcial1/python
python3 -m pytest -q
```

(needs pytest; `pyproject.toml` puts `src` on the path and collects `tests/test_*.py`,
classes ending in `Test` and functions starting with `test`). All 29 tests in `ImportTest` pass.

## Solution

The identification type and the zip code type are objects now, so nobody asks for a type to
decide what to do:

- `imported_value.py` (`ImportedValue`) — abstract superclass of both hierarchies. It knows how
  to create an instance out of what was read from a record: `_type_that_can_handle` answers the
  subclass that `can_handle` the imported value (like `Environment.current` does with
  `is_current`) and raises `invalid_type_error_description` when there is none, and `with_value`
  validates the value (`assert_valid`) before creating the instance, so a half valid
  identification or zip code cannot exist. It also holds the validations that were repeated
  along `import_customer` and `import_address` (`_assert_all_digits`, `_assert_all_letters`,
  `_assert_number_between`, `_assert_size_between`, `_assert_size_is`), each of them signalling
  the `invalid_value_error_description` of the concrete type being created.
- `identification.py` (`Identification`) with `dni.py` (`Dni`) and `cuit.py` (`Cuit`) — created
  with `Identification.for_(an_identification_type, a_number)`; subclasses are chosen by their
  `type_code` (`"D"` / `"C"`). `Customer` holds one of them instead of the type and the number,
  and delegates `identification_type`, `identification_number`, `has_dni_as_identification`,
  `has_cuit_as_identification`, `dni_number_if_none` and `cuit_number_if_none` to it. Only `Dni`
  answers itself for `is_dni` / `dni_number_if_none`, only `Cuit` for `is_cuit` /
  `cuit_number_if_none`; the superclass answers the `False` / the none block for the rest.
- `zip_code.py` (`ZipCode`) with `old_zip_code.py` (`OldZipCode`) and `new_zip_code.py`
  (`NewZipCode`) — created with `ZipCode.for_(a_zip_code)`; subclasses are chosen by looking at
  the first character (digit / letter), which is what the `if` did. `Address` holds one of them
  instead of an `int` or a `str`, so the `isinstance` checks of `has_old_zip_code` /
  `has_new_zip_code` are gone, and `zip_code()` answers `code()`, the `int` of the old ones and
  the `str` of the new ones. A new zip code is validated as an old zip code between letters:
  `NewZipCode.assert_valid` reuses `OldZipCode.minimum_code` / `maximum_code` for its four
  digits (and therefore signals *its own* `"Invalid new zipcode"`).
- `customer_importer.py` — `import_customer` and `import_address` do not validate anything
  anymore; they just ask `Identification.for_(...)` and `ZipCode.for_(...)` for the object to
  set, which is all the importer should know about types.

Two notes on the error messages, kept as they are because the tests cannot be changed: an
unknown zip code type answers `"Invalid identification type"` (test29), and the exhaustive
`if` / `elif` of the record type in `_import_record` is part of the given starting code, not of
what the exam asks to fix.

## Layout

- `src/customerimporter/` — one module per Java class, module names in snake_case, class names
  unchanged: `address.py` (`Address`), `customer.py` (`Customer`), `customer_importer.py`
  (`CustomerImporter`), `customer_system.py` (`CustomerSystem`), `persistent_customer_system.py`
  (`PersistentCustomerSystem`), `transient_customer_system.py` (`TransientCustomerSystem`),
  `data_base_session.py` (`DataBaseSession`), `environment.py` (`Environment`),
  `development_environment.py` (`DevelopmentEnvironment`), `integration_environment.py`
  (`IntegrationEnvironment`), plus the seven classes of the solution above. `__init__.py`
  imports all of them, which is what makes `__subclasses__` see them (see 14).
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
   `set_zip_code`, `identification` / `set_identification`, ...). They stay methods
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
12. **Dynamic typing of `zip_code`.** In the Smalltalk and in the Java (`Object zipCode`)
    `Address.zipCode` holds either an `int` (old zip code) or a `str` (new zip code), and
    `instanceof Integer` / `instanceof String` (`isKindOf:`) tell them apart. The solution
    replaces that with a `ZipCode` instance; it is `ZipCode.code()` (the Java cast
    `(Integer) importedZipCode`) that answers the `int` or the `str`.
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
