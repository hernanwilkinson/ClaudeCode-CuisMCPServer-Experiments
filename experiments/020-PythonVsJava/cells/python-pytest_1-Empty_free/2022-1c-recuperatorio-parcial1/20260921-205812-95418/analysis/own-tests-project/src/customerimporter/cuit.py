from customerimporter.identification import Identification


class Cuit(Identification):

    # error messages

    @classmethod
    def invalid_number_error_description(cls):
        return "Invalid CUIT number"

    # type

    @classmethod
    def identification_type(cls):
        return "C"

    # number - validation

    @classmethod
    def assert_is_valid_number(cls, an_identification_number):
        # "23-25666777-9" size 13
        cls.assert_valid_number(len(an_identification_number) >= 12 and len(an_identification_number) <= 13)
        cls.assert_valid_number(an_identification_number[2] == "-" and an_identification_number[-2] == "-")
        cls.assert_valid_number(an_identification_number[:2] in cls.valid_headers())
        cls.assert_valid_number(an_identification_number[-1].isdigit())
        cls.assert_valid_number(an_identification_number[3:-2].isdigit())

    @classmethod
    def valid_headers(cls):
        return ["20", "23", "24", "25", "26", "27", "30", "33", "34"]

    # number

    def cuit_number_if_none(self, a_none_block):
        return self._number

    def dni_number_if_none(self, a_none_block):
        return a_none_block()

    def is_cuit(self):
        return True

    def is_dni(self):
        return False
