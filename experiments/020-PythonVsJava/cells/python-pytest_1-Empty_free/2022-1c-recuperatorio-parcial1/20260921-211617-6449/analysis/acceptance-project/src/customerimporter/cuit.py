from customerimporter.identification import Identification


class Cuit(Identification):

    # type

    @classmethod
    def type_code(cls):
        return "C"

    # validation

    @classmethod
    def assert_valid(cls, a_number):
        # "23-25666777-9" size 13
        cls._assert_size_between(a_number, cls.minimum_size(), cls.maximum_size())
        cls._assert_has_separators(a_number)
        cls._assert_has_valid_prefix(a_number)
        cls._assert_all_digits(cls.verification_digit_of(a_number))
        cls._assert_all_digits(cls.body_of(a_number))

    @classmethod
    def maximum_size(cls):
        return 13

    @classmethod
    def minimum_size(cls):
        return 12

    @classmethod
    def separator(cls):
        return "-"

    @classmethod
    def valid_prefixes(cls):
        return ["20", "23", "24", "25", "26", "27", "30", "33", "34"]

    # validation - private

    @classmethod
    def _assert_has_separators(cls, a_number):
        if a_number[2] != cls.separator() or a_number[-2] != cls.separator(): cls._signal_invalid_value()

    @classmethod
    def _assert_has_valid_prefix(cls, a_number):
        if cls.prefix_of(a_number) not in cls.valid_prefixes(): cls._signal_invalid_value()

    # error messages

    @classmethod
    def invalid_value_error_description(cls):
        return "Invalid CUIT number"

    # number

    @classmethod
    def body_of(cls, a_number):
        return a_number[3:-2]

    @classmethod
    def prefix_of(cls, a_number):
        return a_number[:2]

    @classmethod
    def verification_digit_of(cls, a_number):
        return a_number[-1:]

    def cuit_number_if_none(self, a_none_block):
        return self.number()

    # testing

    def is_cuit(self):
        return True
