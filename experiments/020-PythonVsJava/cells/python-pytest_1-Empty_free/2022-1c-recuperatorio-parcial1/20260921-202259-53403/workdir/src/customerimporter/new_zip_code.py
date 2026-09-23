from customerimporter.zip_code import ZipCode


class NewZipCode(ZipCode):

    # type

    @classmethod
    def can_handle(cls, a_zip_code):
        return a_zip_code[0].isalpha()

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid new zipcode"

    # validation

    @classmethod
    def assert_is_valid(cls, a_zip_code):
        # "B1636BBE" size 8
        cls.assert_size_is(a_zip_code, 8)
        cls.assert_is_valid_zip_code_number(a_zip_code[1:5])
        cls.assert_all_are_letters(a_zip_code[-3:])

    # testing

    def is_new(self):
        return True

    # zip code

    def new_zip_code_if_none(self, a_none_block):
        return self.value()
