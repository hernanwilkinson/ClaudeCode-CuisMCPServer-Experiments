from customerimporter.identification import Identification


class Dni(Identification):

    # type

    @classmethod
    def type_code(cls):
        return "D"

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid DNI number"

    # validation

    @classmethod
    def assert_is_valid(cls, a_number):
        cls.assert_all_are_digits(a_number)
        cls.assert_is_between(int(a_number), 1, 99999999)

    # testing

    def is_dni(self):
        return True

    # number

    def dni_number_if_none(self, a_none_block):
        return int(self.number())
