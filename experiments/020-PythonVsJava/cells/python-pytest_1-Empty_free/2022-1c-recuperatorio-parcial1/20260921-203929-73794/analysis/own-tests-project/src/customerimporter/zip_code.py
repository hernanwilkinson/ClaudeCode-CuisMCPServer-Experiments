from abc import abstractmethod

from customerimporter.imported_value import ImportedValue


class ZipCode(ImportedValue):

    # instance creation

    @classmethod
    def for_code(cls, an_imported_zip_code):
        return cls.subclass_such_that(
            lambda a_zip_code_class: a_zip_code_class.recognizes(an_imported_zip_code)
        ).for_value(an_imported_zip_code)

    # type

    @classmethod
    @abstractmethod
    def recognizes(cls, an_imported_zip_code):
        pass

    def is_new(self):
        return False

    def is_old(self):
        return False

    # zip code

    def new_zip_code_if_none(self, a_none_block):
        return a_none_block()

    def old_zip_code_if_none(self, a_none_block):
        return a_none_block()

    # validation - private

    @classmethod
    def _is_old_zip_code_number(cls, an_imported_text):
        return cls._are_all_digits(an_imported_text) and int(an_imported_text) >= 1000 and int(an_imported_text) <= 9999
