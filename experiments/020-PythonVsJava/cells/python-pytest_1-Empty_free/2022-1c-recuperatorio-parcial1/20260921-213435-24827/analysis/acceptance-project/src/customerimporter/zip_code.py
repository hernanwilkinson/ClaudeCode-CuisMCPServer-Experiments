from abc import abstractmethod

from customerimporter.typed_value import TypedValue


class ZipCode(TypedValue):

    # instance creation

    @classmethod
    def for_(cls, a_zip_code):
        return cls._type_representing(a_zip_code)(a_zip_code)

    # error messages

    @classmethod
    def invalid_type_error_description(cls):
        # the message the tests expect for a zip code that is neither old nor new
        return "Invalid identification type"

    # zip code

    @abstractmethod
    def code(self):
        pass

    # new zip code

    def has_new_zip_code(self):
        return False

    def new_zip_code_if_none(self, a_none_block):
        return a_none_block()

    # old zip code

    def has_old_zip_code(self):
        return False

    def old_zip_code_if_none(self, a_none_block):
        return a_none_block()
