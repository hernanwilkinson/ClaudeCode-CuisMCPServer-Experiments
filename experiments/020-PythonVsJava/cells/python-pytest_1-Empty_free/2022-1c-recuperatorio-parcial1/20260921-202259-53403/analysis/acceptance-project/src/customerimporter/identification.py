from abc import abstractmethod

from customerimporter.imported_value import ImportedValue


class Identification(ImportedValue):

    # instance creation

    @classmethod
    def for_type_and_number(cls, an_identification_type, an_identification_number):
        return cls.class_handling(an_identification_type).with_value(an_identification_number)

    # type

    @classmethod
    def can_handle(cls, an_identification_type):
        return an_identification_type == cls.type_code()

    @classmethod
    @abstractmethod
    def type_code(cls):
        pass

    def identification_type(self):
        return type(self).type_code()

    # testing

    def is_cuit(self):
        return False

    def is_dni(self):
        return False

    def is_of_type_and_number(self, an_identification_type, an_identification_number):
        return self.identification_type() == an_identification_type and self.number() == an_identification_number

    # number

    def cuit_number_if_none(self, a_none_closure):
        return a_none_closure()

    def dni_number_if_none(self, a_none_block):
        return a_none_block()

    def number(self):
        return self.value()
