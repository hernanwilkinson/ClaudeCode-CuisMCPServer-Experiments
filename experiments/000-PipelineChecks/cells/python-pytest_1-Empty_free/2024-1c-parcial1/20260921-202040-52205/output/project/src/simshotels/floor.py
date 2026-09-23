from simshotels.room import Room


class Floor:

    def __init__(self, a_number_of_rooms=None, a_price_list=None):
        self._rooms = []
        self._prices = {}
        if a_number_of_rooms is not None and a_price_list is not None:
            self.set_number_of_rooms(a_number_of_rooms)
            self.set_prices(a_price_list)

    # testing

    def is_available(self):
        return self.total_rooms() == self.total_rooms_available()

    # accessing

    def rooms(self):
        return self._rooms

    # room operations

    def receive_at_room(self, a_guest_type, a_room_number):
        if a_room_number < 1 or a_room_number > len(self._rooms):
            Floor.signal_room_number_does_not_exist()
        room = self._rooms[a_room_number - 1]
        room.receive(a_guest_type)

    def receive_with_reservation_at_room(self, a_guest_type, a_room_number):
        if a_room_number < 1 or a_room_number > len(self._rooms):
            Floor.signal_room_number_does_not_exist()
        room = self._rooms[a_room_number - 1]
        room.receive_with_reservation(a_guest_type)

    def reserve_room(self, a_room_number):
        if a_room_number < 1 or a_room_number > len(self._rooms):
            Floor.signal_room_number_does_not_exist()
        room = self._rooms[a_room_number - 1]
        room.reserve()

    # accounting

    def total_losses(self):
        return sum(room.loss_using_if_absent_guest_type(self._prices, lambda: Floor.signal_unknown_guest_type()) for room in self._rooms)

    def total_profits(self):
        return sum(room.profit_using_if_absent_guest_type(self._prices, lambda: Floor.signal_unknown_guest_type()) for room in self._rooms if room.is_occupied())

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
        return sum(1 for room in self._rooms if room.is_available())

    def total_rooms_occupied(self):
        return sum(1 for room in self._rooms if room.is_occupied())

    def total_rooms_reserved(self):
        return sum(1 for room in self._rooms if room.is_reserved())

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
    def room_number_does_not_exist_error_description():
        return "Room number does not exist"

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
    def signal_room_number_does_not_exist():
        raise RuntimeError(Floor.room_number_does_not_exist_error_description())

    @staticmethod
    def signal_unknown_guest_type():
        raise RuntimeError(Floor.unknown_guest_type_error_description())
