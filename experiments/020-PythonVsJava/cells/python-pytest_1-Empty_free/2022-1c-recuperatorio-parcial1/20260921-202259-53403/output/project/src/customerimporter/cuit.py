from customerimporter.identification import Identification


class Cuit(Identification):

    # type

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

    @classmethod
    def assert_is_valid(cls, a_number):
        # "23-25666777-9" size 13
        cls.assert_size_is_between(a_number, 12, 13)
        cls.assert_that(a_number[2] == "-" and a_number[-2] == "-")
        cls.assert_that(a_number[:2] in cls.valid_headers())
        cls.assert_that(a_number[-1].isdigit())
        cls.assert_all_are_digits(a_number[3:-2])

    # testing

    def is_cuit(self):
        return True

    # number

    def cuit_number_if_none(self, a_none_closure):
        return self.number()
