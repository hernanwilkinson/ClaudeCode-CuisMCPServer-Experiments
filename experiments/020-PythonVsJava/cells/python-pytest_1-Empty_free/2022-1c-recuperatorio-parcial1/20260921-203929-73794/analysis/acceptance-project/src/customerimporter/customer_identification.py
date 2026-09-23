from abc import abstractmethod

from customerimporter.imported_value import ImportedValue


class CustomerIdentification(ImportedValue):

    # instance creation

    @classmethod
    def for_type_and_number(cls, an_identification_type, an_identification_number):
        return cls.subclass_such_that(
            lambda an_identification_class: an_identification_class.type_code() == an_identification_type
        ).for_value(an_identification_number)

    # type

    @classmethod
    @abstractmethod
    def type_code(cls):
        pass

    # identification

    def number(self):
        return self.value()

    def cuit_number_if_none(self, a_none_block):
        return a_none_block()

    def dni_number_if_none(self, a_none_block):
        return a_none_block()

    def is_cuit(self):
        return False

    def is_dni(self):
        return False
