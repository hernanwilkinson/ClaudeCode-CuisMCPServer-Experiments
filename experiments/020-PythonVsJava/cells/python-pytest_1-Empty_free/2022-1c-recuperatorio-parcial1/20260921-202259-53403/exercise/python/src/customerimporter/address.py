class Address:

    _id = None
    _street_name = None
    _street_number = None
    _town = None
    _zip_code = None
    _province = None

    # province

    def province(self):
        return self._province

    def set_province(self, a_province):
        self._province = a_province

    # street

    def is_at(self, a_street_name):
        return self._street_name == a_street_name

    def street_name(self):
        return self._street_name

    def set_street_name(self, a_street_name):
        self._street_name = a_street_name

    def street_number(self):
        return self._street_number

    def set_street_number(self, a_street_number):
        self._street_number = a_street_number

    # twon

    def town(self):
        return self._town

    def set_town(self, a_town):
        self._town = a_town

    # zip code

    def has_new_zip_code(self):
        return isinstance(self._zip_code, str)

    def has_old_zip_code(self):
        return isinstance(self._zip_code, int)

    def new_zip_code_if_none(self, a_none_block):
        if self.has_new_zip_code():
            return self._zip_code
        else:
            return a_none_block()

    def old_zip_code_if_none(self, a_none_block):
        if self.has_old_zip_code():
            return self._zip_code
        else:
            return a_none_block()

    def zip_code(self):
        return self._zip_code

    def set_zip_code(self, a_zip_code):
        self._zip_code = a_zip_code
