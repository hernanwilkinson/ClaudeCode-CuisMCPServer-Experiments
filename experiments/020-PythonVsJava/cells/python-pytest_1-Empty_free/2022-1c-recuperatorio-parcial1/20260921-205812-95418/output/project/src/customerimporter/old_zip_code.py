from customerimporter.zip_code import ZipCode


class OldZipCode(ZipCode):

    # error messages

    @classmethod
    def invalid_code_error_description(cls):
        return "Invalid old zipcode"

    # type

    @classmethod
    def is_for(cls, a_zip_code):
        return a_zip_code[0].isdigit()

    # code - validation

    @classmethod
    def assert_is_valid_code(cls, a_zip_code):
        cls.assert_valid_code(a_zip_code.isdigit())
        imported_zip_code = int(a_zip_code)
        cls.assert_valid_code(imported_zip_code >= 1000 and imported_zip_code <= 9999)

    # initialization

    def __init__(self, a_zip_code):
        super().__init__(int(a_zip_code))

    # code

    def new_zip_code_if_none(self, a_none_block):
        return a_none_block()

    def old_zip_code_if_none(self, a_none_block):
        return self._code

    def is_new(self):
        return False

    def is_old(self):
        return True
