from simshotels.room import Room


class Floor:

    def __init__(self):
        self._rooms = None
        self._prices = None

    # testing

    def is_available(self):
        return self.total_rooms() == self.total_rooms_available()

    # accessing

    def rooms(self):
        return self._rooms

    # accounting

    def total_losses(self):
        total = 0
        for room in self._rooms:
            if room.is_available():
                total = total + max(self._prices.values())

        return total

    def total_profits(self):
        total = 0
        for room in self._rooms:
            if room.is_occupied():
                room_total = room.profit_using_if_absent_guest_type(self._prices, lambda: Floor.signal_unknown_guest_type())
                total = total + room_total

        return total

    # setters

    def set_number_of_rooms(self, a_number_of_rooms):
        Floor.assert_is_positive_if_false(a_number_of_rooms, lambda: Floor.signal_number_of_rooms_must_be_positive())
        Floor.assert_is_integer_if_false(a_number_of_rooms, lambda: Floor.signal_number_of_rooms_must_be_integer())

        self.initialize_rooms_with(a_number_of_rooms)

    def set_prices(self, a_price_list):
        if len(a_price_list) == 0:
            Floor.signal_no_prices()

        for price in a_price_list.values():
            Floor.assert_is_positive_if_false(price, lambda: Floor.signal_price_must_be_positive())

        self.initialize_with(a_price_list)

    # totals

    def total_rooms(self):
        return len(self._rooms)

    def total_rooms_available(self):
        count = 0
        for room in self._rooms:
            if room.is_available():
                count = count + 1
        return count

    def total_rooms_occupied(self):
        count = 0
        for room in self._rooms:
            if room.is_occupied():
                count = count + 1
        return count

    def total_rooms_reserved(self):
        count = 0
        for room in self._rooms:
            if room.is_reserved():
                count = count + 1
        return count

    # initialization

    def initialize_rooms_with(self, a_number_of_rooms):
        self._rooms = []

        ix = 1
        while ix <= a_number_of_rooms:
            self._rooms.append(Room())
            ix = ix + 1

    def initialize_with(self, a_price_list):
        self._prices = a_price_list

    # assertions (class side)

    @staticmethod
    def assert_is_integer_if_false(a_number, signals_block):
        if not (isinstance(a_number, int) and not isinstance(a_number, bool)):
            signals_block()

    @staticmethod
    def assert_is_positive_if_false(a_number, signals_block):
        if not (a_number > 0):
            signals_block()

    # error messages (class side)

    @staticmethod
    def number_of_rooms_must_be_integer_error_description():
        return "Number of rooms must be integer"

    @staticmethod
    def number_of_rooms_must_be_positive_error_description():
        return "The number of rooms must be positive"

    @staticmethod
    def price_must_be_integer_error_description():
        return "Price must be integer"

    @staticmethod
    def price_must_be_positive_error_description():
        return "Price must be positive"

    @staticmethod
    def prices_list_cannot_be_empty_error_description():
        return "Prices List must not be empty"

    @staticmethod
    def unknown_guest_type_error_description():
        return "The guest type is unknown"

    # exceptions (class side)

    @staticmethod
    def signal_no_prices():
        raise RuntimeError(Floor.prices_list_cannot_be_empty_error_description())

    @staticmethod
    def signal_number_of_rooms_must_be_integer():
        raise RuntimeError(Floor.number_of_rooms_must_be_integer_error_description())

    @staticmethod
    def signal_number_of_rooms_must_be_positive():
        raise RuntimeError(Floor.number_of_rooms_must_be_positive_error_description())

    @staticmethod
    def signal_price_must_be_integer():
        raise RuntimeError(Floor.price_must_be_integer_error_description())

    @staticmethod
    def signal_price_must_be_positive():
        raise RuntimeError(Floor.price_must_be_positive_error_description())

    @staticmethod
    def signal_unknown_guest_type():
        raise RuntimeError(Floor.unknown_guest_type_error_description())
