from customerimporter.zip_code import ZipCode


class NewZipCode(ZipCode):

    # error messages

    @classmethod
    def invalid_code_error_description(cls):
        return "Invalid new zipcode"

    # type

    @classmethod
    def is_for(cls, a_zip_code):
        return a_zip_code[0].isalpha()

    # code - validation

    @classmethod
    def assert_is_valid_code(cls, a_zip_code):
        # "B1636BBE" size 8
        cls.assert_valid_code(len(a_zip_code) == 8)
        new_zipcode_old_zip_code = a_zip_code[1:5]
        cls.assert_valid_code(new_zipcode_old_zip_code.isdigit())
        cls.assert_valid_code(int(new_zipcode_old_zip_code) > 999)
        cls.assert_valid_code(a_zip_code[-3:].isalpha())

    # code

    def new_zip_code_if_none(self, a_none_block):
        return self._code

    def old_zip_code_if_none(self, a_none_block):
        return a_none_block()

    def is_new(self):
        return True

    def is_old(self):
        return False
