from abc import abstractmethod

from customerimporter.typed_value import TypedValue


class Identification(TypedValue):

    # instance creation

    @classmethod
    def for_(cls, an_identification_type, an_identification_number):
        return cls._type_representing(an_identification_type)(an_identification_number)

    @classmethod
    def can_represent(cls, an_identification_type):
        return cls.type_code() == an_identification_type

    @classmethod
    @abstractmethod
    def type_code(cls):
        pass

    # error messages

    @classmethod
    def invalid_type_error_description(cls):
        return "Invalid identification type"

    # identification

    def is_for(self, an_identification_type, an_identification_number):
        return self.type_code() == an_identification_type and self.number() == an_identification_number

    def number(self):
        return self._value

    # cuit

    def cuit_number_if_none(self, a_none_closure):
        return a_none_closure()

    def has_cuit_as_identification(self):
        return False

    # dni

    def dni_number_if_none(self, a_none_block):
        return a_none_block()

    def has_dni_as_identification(self):
        return False
