from abc import abstractmethod

from customerimporter.imported_value import ImportedValue


class ZipCode(ImportedValue):

    # instance creation

    @classmethod
    def for_(cls, a_zip_code):
        return cls._type_that_can_handle(a_zip_code).with_value(a_zip_code)

    # error messages

    @classmethod
    def invalid_type_error_description(cls):
        # the tests expect the same description used for an invalid identification type
        return "Invalid identification type"

    # code

    @abstractmethod
    def code(self):
        pass

    def new_code_if_none(self, a_none_block):
        return a_none_block()

    def old_code_if_none(self, a_none_block):
        return a_none_block()

    # testing

    def is_new(self):
        return False

    def is_old(self):
        return False
