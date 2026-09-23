from customerimporter.imported_value import ImportedValue


class ZipCode(ImportedValue):

    # instance creation

    @classmethod
    def for_zip_code(cls, a_zip_code):
        return cls.class_handling(a_zip_code).with_value(a_zip_code)

    # validation

    # the four digits of the old zip code, also inside the new one

    @classmethod
    def assert_is_valid_zip_code_number(cls, a_zip_code_number):
        cls.assert_all_are_digits(a_zip_code_number)
        cls.assert_is_between(int(a_zip_code_number), 1000, 9999)

    # testing

    def is_new(self):
        return False

    def is_old(self):
        return False

    # zip code

    def new_zip_code_if_none(self, a_none_block):
        return a_none_block()

    def old_zip_code_if_none(self, a_none_block):
        return a_none_block()
