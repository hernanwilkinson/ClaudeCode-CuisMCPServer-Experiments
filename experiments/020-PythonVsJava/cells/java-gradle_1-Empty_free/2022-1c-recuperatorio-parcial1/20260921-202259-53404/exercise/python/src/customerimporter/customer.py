class Customer:

    _id = None
    _first_name = None
    _last_name = None
    _identification_type = None
    _identification_number = None
    _addresses = None

    # initialization

    def __init__(self):
        super().__init__()
        self._addresses = []

    # addresses

    def add_address(self, an_address):
        self._addresses.append(an_address)

    def address_at(self, a_street_name, a_none_block):
        for address in self._addresses:
            if address.is_at(a_street_name): return address
        return a_none_block()

    def addresses(self):
        return self._addresses

    def is_addresses_empty(self):
        return len(self._addresses) == 0

    # name

    def first_name(self):
        return self._first_name

    def set_first_name(self, a_name):
        self._first_name = a_name

    def last_name(self):
        return self._last_name

    def set_last_name(self, a_last_name):
        self._last_name = a_last_name

    # identification

    def cuit_number_if_none(self, a_none_closure):
        if self.has_cuit_as_identification():
            return self._identification_number
        else:
            return a_none_closure()

    def dni_number_if_none(self, a_none_block):
        if self.has_dni_as_identification():
            return int(self._identification_number)
        else:
            return a_none_block()

    def has_cuit_as_identification(self):
        return self._identification_type == "C"

    def has_dni_as_identification(self):
        return self._identification_type == "D"

    def identification_number(self):
        return self._identification_number

    def set_identification_number(self, an_identification_number):
        self._identification_number = an_identification_number

    def identification_type(self):
        return self._identification_type

    def set_identification_type(self, an_identification_type):
        self._identification_type = an_identification_type
