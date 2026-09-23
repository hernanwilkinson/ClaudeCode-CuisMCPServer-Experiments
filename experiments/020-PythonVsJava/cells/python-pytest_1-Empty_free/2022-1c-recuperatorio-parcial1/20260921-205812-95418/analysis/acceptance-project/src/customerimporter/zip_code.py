from abc import ABC, abstractmethod


class ZipCode(ABC):

    _code = None

    # instance creation

    @classmethod
    def for_(cls, a_zip_code):
        for a_zip_code_class in cls.__subclasses__():
            if a_zip_code_class.is_for(a_zip_code): return a_zip_code_class.with_code(a_zip_code)
        raise RuntimeError(cls.invalid_zip_code_type_error_description())

    @classmethod
    def with_code(cls, a_zip_code):
        cls.assert_is_valid_code(a_zip_code)
        return cls(a_zip_code)

    # error messages

    @classmethod
    def invalid_zip_code_type_error_description(cls):
        # the text the tests expect for a zip code that is neither old nor new
        return "Invalid identification type"

    @classmethod
    @abstractmethod
    def invalid_code_error_description(cls):
        pass

    # initialization

    def __init__(self, a_zip_code):
        self._code = a_zip_code

    # type

    @classmethod
    @abstractmethod
    def is_for(cls, a_zip_code):
        pass

    # code - validation

    @classmethod
    @abstractmethod
    def assert_is_valid_code(cls, a_zip_code):
        pass

    @classmethod
    def assert_valid_code(cls, a_condition):
        if not a_condition: raise RuntimeError(cls.invalid_code_error_description())

    # code

    def code(self):
        return self._code

    @abstractmethod
    def new_zip_code_if_none(self, a_none_block):
        pass

    @abstractmethod
    def old_zip_code_if_none(self, a_none_block):
        pass

    @abstractmethod
    def is_new(self):
        pass

    @abstractmethod
    def is_old(self):
        pass
