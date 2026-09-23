from customerimporter.identification import Identification


class Cuit(Identification):

    # instance creation

    @classmethod
    def type_code(cls):
        return "C"

    @classmethod
    def valid_headers(cls):
        return ["20", "23", "24", "25", "26", "27", "30", "33", "34"]

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid CUIT number"

    # validation

    def assert_is_valid(self):
        # "23-25666777-9" size 13
        self._assert_that(len(self._value) >= 12 and len(self._value) <= 13)
        self._assert_that(self._value[2] == "-" and self._value[-2] == "-")
        self._assert_that(self._value[:2] in type(self).valid_headers())
        self._assert_that(self._value[-1].isdigit())
        self._assert_that(self._are_all_digits(self._value[3:-2]))

    # cuit

    def cuit_number(self):
        return self._value

    def cuit_number_if_none(self, a_none_closure):
        return self.cuit_number()

    def has_cuit_as_identification(self):
        return True
