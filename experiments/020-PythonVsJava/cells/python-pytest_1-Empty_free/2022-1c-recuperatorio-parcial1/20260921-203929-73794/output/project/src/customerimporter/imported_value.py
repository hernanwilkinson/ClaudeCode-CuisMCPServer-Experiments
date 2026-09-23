from abc import ABC, abstractmethod


class ImportedValue(ABC):

    # Value of a record field whose kind is only known when importing it. Each subclass
    # knows how to recognize itself, how to validate the imported text and which error
    # description to use when the text is not valid for it.

    _value = None

    # instance creation

    @classmethod
    def for_value(cls, an_imported_text):
        cls.assert_is_valid(an_imported_text)
        return cls(an_imported_text)

    @classmethod
    def subclass_such_that(cls, a_condition):
        for a_subclass in cls.__subclasses__():
            if a_condition(a_subclass): return a_subclass
        raise RuntimeError(cls.invalid_type_error_description())

    # initialization

    def __init__(self, an_imported_text):
        self._value = type(self)._value_from(an_imported_text)

    @classmethod
    def _value_from(cls, an_imported_text):
        return an_imported_text

    # value

    def value(self):
        return self._value

    # error messages

    @classmethod
    def invalid_type_error_description(cls):
        return "Invalid identification type"

    @classmethod
    @abstractmethod
    def invalid_value_error_description(cls):
        pass

    # validation

    @classmethod
    @abstractmethod
    def assert_is_valid(cls, an_imported_text):
        pass

    # validation - private

    @classmethod
    def _assert_that(cls, a_condition):
        if not a_condition: raise RuntimeError(cls.invalid_value_error_description())

    @classmethod
    def _are_all_digits(cls, an_imported_text):
        return an_imported_text != "" and all(a_char.isdigit() for a_char in an_imported_text)

    @classmethod
    def _are_all_letters(cls, an_imported_text):
        return an_imported_text != "" and all(a_char.isalpha() for a_char in an_imported_text)
