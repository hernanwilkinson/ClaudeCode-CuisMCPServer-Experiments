class Customer:

    _id = None
    _first_name = None
    _last_name = None
    _identification = None
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
        return self._identification.cuit_number_if_none(a_none_closure)

    def dni_number_if_none(self, a_none_block):
        return self._identification.dni_number_if_none(a_none_block)

    def has_cuit_as_identification(self):
        return self._identification.is_cuit()

    def has_dni_as_identification(self):
        return self._identification.is_dni()

    def identification(self):
        return self._identification

    def set_identification(self, an_identification):
        self._identification = an_identification

    def identification_number(self):
        return self._identification.number()

    def identification_type(self):
        return self._identification.type_code()
