from customerimporter.identification import Identification


class Dni(Identification):

    # error messages

    @classmethod
    def invalid_number_error_description(cls):
        return "Invalid DNI number"

    # type

    @classmethod
    def identification_type(cls):
        return "D"

    # number - validation

    @classmethod
    def assert_is_valid_number(cls, an_identification_number):
        cls.assert_valid_number(an_identification_number.isdigit())
        dni_number = int(an_identification_number)
        cls.assert_valid_number(dni_number >= 1 and dni_number <= 99999999)

    # number

    def cuit_number_if_none(self, a_none_block):
        return a_none_block()

    def dni_number_if_none(self, a_none_block):
        return int(self._number)

    def is_cuit(self):
        return False

    def is_dni(self):
        return True
