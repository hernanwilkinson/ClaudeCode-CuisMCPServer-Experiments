from customerimporter.zip_code import ZipCode


class NewZipCode(ZipCode):

    # type

    @classmethod
    def recognizes(cls, an_imported_zip_code):
        return an_imported_zip_code[:1].isalpha()

    def is_new(self):
        return True

    # zip code

    def new_zip_code_if_none(self, a_none_block):
        return self.value()

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid new zipcode"

    # validation

    @classmethod
    def size(cls):
        # "B1636BBE" size 8
        return 8

    @classmethod
    def assert_is_valid(cls, an_imported_zip_code):
        cls._assert_that(len(an_imported_zip_code) == cls.size())
        cls._assert_that(cls._is_old_zip_code_number(cls._old_zip_code_part_of(an_imported_zip_code)))
        cls._assert_that(cls._are_all_letters(an_imported_zip_code[-3:]))

    # validation - private

    @classmethod
    def _old_zip_code_part_of(cls, an_imported_zip_code):
        return an_imported_zip_code[1:5]
