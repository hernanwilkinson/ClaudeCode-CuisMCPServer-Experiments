from customerimporter.customer_identification import CustomerIdentification


class Cuit(CustomerIdentification):

    # type

    @classmethod
    def type_code(cls):
        return "C"

    # identification

    def cuit_number_if_none(self, a_none_block):
        return self.number()

    def is_cuit(self):
        return True

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid CUIT number"

    # validation

    @classmethod
    def valid_headers(cls):
        return ["20", "23", "24", "25", "26", "27", "30", "33", "34"]

    @classmethod
    def assert_is_valid(cls, an_identification_number):
        # "23-25666777-9" size 13
        cls._assert_that(len(an_identification_number) >= 12 and len(an_identification_number) <= 13)
        cls._assert_that(an_identification_number[2] == "-" and an_identification_number[-2] == "-")
        cls._assert_that(an_identification_number[:2] in cls.valid_headers())
        cls._assert_that(an_identification_number[-1].isdigit())
        cls._assert_that(cls._are_all_digits(an_identification_number[3:-2]))
