from customerimporter.zip_code import ZipCode


class OldZipCode(ZipCode):

    # type

    @classmethod
    def can_handle(cls, a_zip_code):
        return a_zip_code[:1].isdigit()

    # validation

    @classmethod
    def assert_valid(cls, a_zip_code):
        cls._assert_number_between(a_zip_code, cls.minimum_code(), cls.maximum_code())

    @classmethod
    def maximum_code(cls):
        return 9999

    @classmethod
    def minimum_code(cls):
        return 1000

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid old zipcode"

    # code

    def code(self):
        return int(self._value)

    def old_code_if_none(self, a_none_block):
        return self.code()

    # testing

    def is_old(self):
        return True
