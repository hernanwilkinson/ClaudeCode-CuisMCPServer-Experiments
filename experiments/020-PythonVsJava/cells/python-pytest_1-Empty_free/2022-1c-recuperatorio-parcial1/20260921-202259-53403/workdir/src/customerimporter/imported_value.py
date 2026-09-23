from abc import ABC, abstractmethod


class ImportedValue(ABC):

    _value = None

    # instance creation

    @classmethod
    def class_handling(cls, a_criteria):
        for an_imported_value_class in cls.__subclasses__():
            if an_imported_value_class.can_handle(a_criteria): return an_imported_value_class
        raise RuntimeError(cls.invalid_type_error_description())

    @classmethod
    def with_value(cls, a_value):
        cls.assert_is_valid(a_value)
        return cls(a_value)

    # error messages

    # the same description for every hierarchy, as the tests expect it
    # both for an unknown identification type and for an unknown zip code type

    @classmethod
    def invalid_type_error_description(cls):
        return "Invalid identification type"

    @classmethod
    @abstractmethod
    def invalid_value_error_description(cls):
        pass

    # type

    @classmethod
    @abstractmethod
    def can_handle(cls, a_criteria):
        pass

    # validation

    @classmethod
    @abstractmethod
    def assert_is_valid(cls, a_value):
        pass

    @classmethod
    def assert_all_are_digits(cls, a_string):
        cls.assert_that(all(a_char.isdigit() for a_char in a_string))

    @classmethod
    def assert_all_are_letters(cls, a_string):
        cls.assert_that(all(a_char.isalpha() for a_char in a_string))

    @classmethod
    def assert_is_between(cls, a_number, a_min_value, a_max_value):
        cls.assert_that(a_number >= a_min_value and a_number <= a_max_value)

    @classmethod
    def assert_size_is(cls, a_string, a_size):
        cls.assert_that(len(a_string) == a_size)

    @classmethod
    def assert_size_is_between(cls, a_string, a_min_size, a_max_size):
        cls.assert_is_between(len(a_string), a_min_size, a_max_size)

    @classmethod
    def assert_that(cls, a_condition):
        if not a_condition: raise RuntimeError(cls.invalid_value_error_description())

    # initialization

    def __init__(self, a_value):
        self._value = a_value

    # value

    def value(self):
        return self._value
