from customerimporter.old_zip_code import OldZipCode
from customerimporter.zip_code import ZipCode


class NewZipCode(ZipCode):

    # type

    @classmethod
    def can_handle(cls, a_zip_code):
        return a_zip_code[:1].isalpha()

    # validation

    @classmethod
    def assert_valid(cls, a_zip_code):
        # "B1636BBE" is the old zip code 1636 between one and three letters
        cls._assert_size_is(a_zip_code, cls.size())
        cls._assert_number_between(cls.old_zip_code_of(a_zip_code), OldZipCode.minimum_code(), OldZipCode.maximum_code())
        cls._assert_all_letters(cls.last_letters_of(a_zip_code))

    @classmethod
    def size(cls):
        return 8

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid new zipcode"

    # code

    @classmethod
    def last_letters_of(cls, a_zip_code):
        return a_zip_code[-3:]

    @classmethod
    def old_zip_code_of(cls, a_zip_code):
        return a_zip_code[1:5]

    def code(self):
        return self._value

    def new_code_if_none(self, a_none_block):
        return self.code()

    # testing

    def is_new(self):
        return True
