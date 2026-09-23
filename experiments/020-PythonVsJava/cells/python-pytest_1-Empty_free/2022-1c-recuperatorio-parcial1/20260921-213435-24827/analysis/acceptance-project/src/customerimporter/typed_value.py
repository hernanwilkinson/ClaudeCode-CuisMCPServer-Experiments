from abc import ABC, abstractmethod


class TypedValue(ABC):

    _value = None

    # instance creation - private

    @classmethod
    def _type_representing(cls, a_type_description):
        for a_type in cls.__subclasses__():
            if a_type.can_represent(a_type_description): return a_type
        raise RuntimeError(cls.invalid_type_error_description())

    @classmethod
    @abstractmethod
    def can_represent(cls, a_type_description):
        pass

    # initialization

    def __init__(self, a_value):
        self._value = a_value
        self.assert_is_valid()

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

    @abstractmethod
    def assert_is_valid(self):
        pass

    # validation - private

    def _assert_that(self, a_condition):
        if not a_condition: raise RuntimeError(type(self).invalid_value_error_description())

    @classmethod
    def _are_all_digits(cls, a_string):
        return all(a_char.isdigit() for a_char in a_string)

    @classmethod
    def _are_all_letters(cls, a_string):
        return all(a_char.isalpha() for a_char in a_string)
