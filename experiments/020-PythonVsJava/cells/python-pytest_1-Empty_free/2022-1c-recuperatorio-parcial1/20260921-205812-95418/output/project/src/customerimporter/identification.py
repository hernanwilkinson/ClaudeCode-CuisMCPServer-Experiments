from abc import ABC, abstractmethod


class Identification(ABC):

    _number = None

    # instance creation

    @classmethod
    def for_(cls, an_identification_type, an_identification_number):
        for an_identification_class in cls.__subclasses__():
            if an_identification_class.is_for(an_identification_type): return an_identification_class.with_number(an_identification_number)
        raise RuntimeError(cls.invalid_identification_type_error_description())

    @classmethod
    def with_number(cls, an_identification_number):
        cls.assert_is_valid_number(an_identification_number)
        return cls(an_identification_number)

    # error messages

    @classmethod
    def invalid_identification_type_error_description(cls):
        return "Invalid identification type"

    @classmethod
    @abstractmethod
    def invalid_number_error_description(cls):
        pass

    # initialization

    def __init__(self, an_identification_number):
        self._number = an_identification_number

    # type

    @classmethod
    @abstractmethod
    def identification_type(cls):
        pass

    @classmethod
    def is_for(cls, an_identification_type):
        return cls.identification_type() == an_identification_type

    # number - validation

    @classmethod
    @abstractmethod
    def assert_is_valid_number(cls, an_identification_number):
        pass

    @classmethod
    def assert_valid_number(cls, a_condition):
        if not a_condition: raise RuntimeError(cls.invalid_number_error_description())

    # number

    def number(self):
        return self._number

    @abstractmethod
    def cuit_number_if_none(self, a_none_block):
        pass

    @abstractmethod
    def dni_number_if_none(self, a_none_block):
        pass

    @abstractmethod
    def is_cuit(self):
        pass

    @abstractmethod
    def is_dni(self):
        pass
