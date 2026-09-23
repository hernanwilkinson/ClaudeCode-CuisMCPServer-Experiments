from customerimporter.zip_code import ZipCode


class OldZipCode(ZipCode):

    # type

    @classmethod
    def recognizes(cls, an_imported_zip_code):
        return an_imported_zip_code[:1].isdigit()

    def is_old(self):
        return True

    # initialization

    @classmethod
    def _value_from(cls, an_imported_zip_code):
        return int(an_imported_zip_code)

    # zip code

    def old_zip_code_if_none(self, a_none_block):
        return self.value()

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid old zipcode"

    # validation

    @classmethod
    def assert_is_valid(cls, an_imported_zip_code):
        cls._assert_that(cls._is_old_zip_code_number(an_imported_zip_code))
