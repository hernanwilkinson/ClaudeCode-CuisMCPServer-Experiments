from customerimporter.zip_code import ZipCode


class NewZipCode(ZipCode):

    # instance creation

    @classmethod
    def can_represent(cls, a_zip_code):
        return a_zip_code[0].isalpha()

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid new zipcode"

    # validation

    def assert_is_valid(self):
        # "B1636BBE" size 8
        self._assert_that(len(self._value) == 8)
        self._assert_that(self._are_all_digits(self._old_zip_code_part()))
        self._assert_that(int(self._old_zip_code_part()) > 999)
        self._assert_that(self._are_all_letters(self._value[-3:]))

    # validation - private

    def _old_zip_code_part(self):
        return self._value[1:5]

    # zip code

    def code(self):
        return self._value

    # new zip code

    def has_new_zip_code(self):
        return True

    def new_zip_code_if_none(self, a_none_block):
        return self.code()
