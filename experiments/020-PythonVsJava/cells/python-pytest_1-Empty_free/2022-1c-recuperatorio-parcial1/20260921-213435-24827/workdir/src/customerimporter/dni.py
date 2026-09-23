from customerimporter.identification import Identification


class Dni(Identification):

    # instance creation

    @classmethod
    def type_code(cls):
        return "D"

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid DNI number"

    # validation

    def assert_is_valid(self):
        self._assert_that(self._are_all_digits(self._value))
        self._assert_that(self.dni_number() >= 1 and self.dni_number() <= 99999999)

    # dni

    def dni_number(self):
        return int(self._value)

    def dni_number_if_none(self, a_none_block):
        return self.dni_number()

    def has_dni_as_identification(self):
        return True
