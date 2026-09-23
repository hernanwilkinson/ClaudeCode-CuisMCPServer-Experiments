from abc import ABC, abstractmethod


class ImportedValue(ABC):

    _value = None

    # instance creation

    @classmethod
    def with_value(cls, a_value):
        cls.assert_valid(a_value)
        return cls(a_value)

    # type

    @classmethod
    @abstractmethod
    def can_handle(cls, an_imported_value):
        pass

    @classmethod
    def _type_that_can_handle(cls, an_imported_value):
        for a_subclass in cls.__subclasses__():
            if a_subclass.can_handle(an_imported_value): return a_subclass
        raise RuntimeError(cls.invalid_type_error_description())

    # error messages

    @classmethod
    @abstractmethod
    def invalid_type_error_description(cls):
        pass

    @classmethod
    @abstractmethod
    def invalid_value_error_description(cls):
        pass

    # validation

    @classmethod
    @abstractmethod
    def assert_valid(cls, an_imported_value):
        pass

    # validation - private

    @classmethod
    def _assert_all_digits(cls, a_string):
        if not all(a_char.isdigit() for a_char in a_string): cls._signal_invalid_value()

    @classmethod
    def _assert_all_letters(cls, a_string):
        if not all(a_char.isalpha() for a_char in a_string): cls._signal_invalid_value()

    @classmethod
    def _assert_number_between(cls, a_string, a_minimum, a_maximum):
        cls._assert_all_digits(a_string)
        if not (a_minimum <= int(a_string) <= a_maximum): cls._signal_invalid_value()

    @classmethod
    def _assert_size_between(cls, a_string, a_minimum, a_maximum):
        if not (a_minimum <= len(a_string) <= a_maximum): cls._signal_invalid_value()

    @classmethod
    def _assert_size_is(cls, a_string, a_size):
        cls._assert_size_between(a_string, a_size, a_size)

    @classmethod
    def _signal_invalid_value(cls):
        raise RuntimeError(cls.invalid_value_error_description())

    # initialization

    def __init__(self, a_value):
        super().__init__()
        self._value = a_value
