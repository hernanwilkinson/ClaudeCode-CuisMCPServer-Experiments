from customerimporter.zip_code import ZipCode


class OldZipCode(ZipCode):

    # type

    @classmethod
    def can_handle(cls, a_zip_code):
        return a_zip_code[0].isdigit()

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid old zipcode"

    # validation

    @classmethod
    def assert_is_valid(cls, a_zip_code):
        cls.assert_is_valid_zip_code_number(a_zip_code)

    # testing

    def is_old(self):
        return True

    # zip code

    def old_zip_code_if_none(self, a_none_block):
        return self.value()

    def value(self):
        return int(self._value)
