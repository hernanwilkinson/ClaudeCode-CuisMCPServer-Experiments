from customerimporter.zip_code import ZipCode


class OldZipCode(ZipCode):

    # instance creation

    @classmethod
    def can_represent(cls, a_zip_code):
        return a_zip_code[0].isdigit()

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid old zipcode"

    # validation

    def assert_is_valid(self):
        self._assert_that(self._are_all_digits(self._value))
        self._assert_that(self.code() >= 1000 and self.code() <= 9999)

    # zip code

    def code(self):
        return int(self._value)

    # old zip code

    def has_old_zip_code(self):
        return True

    def old_zip_code_if_none(self, a_none_block):
        return self.code()
