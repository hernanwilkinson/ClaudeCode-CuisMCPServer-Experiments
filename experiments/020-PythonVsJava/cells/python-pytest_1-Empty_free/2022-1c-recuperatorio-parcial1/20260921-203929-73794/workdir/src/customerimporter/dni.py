from customerimporter.customer_identification import CustomerIdentification


class Dni(CustomerIdentification):

    # type

    @classmethod
    def type_code(cls):
        return "D"

    # identification

    def dni_number_if_none(self, a_none_block):
        return int(self.number())

    def is_dni(self):
        return True

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid DNI number"

    # validation

    @classmethod
    def assert_is_valid(cls, an_identification_number):
        cls._assert_that(cls._are_all_digits(an_identification_number))
        cls._assert_that(int(an_identification_number) >= 1 and int(an_identification_number) <= 99999999)
