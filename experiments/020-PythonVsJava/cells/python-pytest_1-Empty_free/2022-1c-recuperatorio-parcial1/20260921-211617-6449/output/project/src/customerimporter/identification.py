from abc import abstractmethod

from customerimporter.imported_value import ImportedValue


class Identification(ImportedValue):

    # instance creation

    @classmethod
    def for_(cls, an_identification_type, a_number):
        return cls._type_that_can_handle(an_identification_type).with_value(a_number)

    # type

    @classmethod
    def can_handle(cls, an_identification_type):
        return cls.type_code() == an_identification_type

    @classmethod
    @abstractmethod
    def type_code(cls):
        pass

    # error messages

    @classmethod
    def invalid_type_error_description(cls):
        return "Invalid identification type"

    # number

    def cuit_number_if_none(self, a_none_block):
        return a_none_block()

    def dni_number_if_none(self, a_none_block):
        return a_none_block()

    def number(self):
        return self._value

    # testing

    def is_cuit(self):
        return False

    def is_dni(self):
        return False
