from customerimporter.identification import Identification


class Dni(Identification):

    # type

    @classmethod
    def type_code(cls):
        return "D"

    # validation

    @classmethod
    def assert_valid(cls, a_number):
        cls._assert_number_between(a_number, cls.minimum_number(), cls.maximum_number())

    @classmethod
    def maximum_number(cls):
        return 99999999

    @classmethod
    def minimum_number(cls):
        return 1

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid DNI number"

    # number

    def dni_number_if_none(self, a_none_block):
        return int(self.number())

    # testing

    def is_dni(self):
        return True
