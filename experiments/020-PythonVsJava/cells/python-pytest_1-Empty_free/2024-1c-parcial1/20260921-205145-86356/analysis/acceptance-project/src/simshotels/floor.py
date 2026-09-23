from simshotels.room import Room


class Floor:

    # instance creation (class side)

    @classmethod
    def with_rooms_and_prices(cls, a_number_of_rooms, a_price_list):
        cls.assert_is_valid_number_of_rooms(a_number_of_rooms)
        cls.assert_is_valid_price_list(a_price_list)

        return cls(a_number_of_rooms, a_price_list)

    # initialization

    def __init__(self, a_number_of_rooms, a_price_list):
        self._rooms = [Room() for _ in range(a_number_of_rooms)]
        self._prices = a_price_list

    # testing

    def is_available(self):
        return self.total_rooms() == self.total_rooms_available()

    # guests

    def receive_at_room(self, a_guest_type, a_room_number):
        self.room_at(a_room_number).receive(a_guest_type)

    def receive_with_reservation_at_room(self, a_guest_type, a_room_number):
        self.room_at(a_room_number).receive_with_reservation(a_guest_type)

    def reserve_room(self, a_room_number):
        self.room_at(a_room_number).reserve()

    # private

    def room_at(self, a_room_number):
        if a_room_number < 1 or a_room_number > self.total_rooms():
            Floor.signal_room_number_does_not_exist()

        return self._rooms[a_room_number - 1]

    # accounting

    def total_losses(self):
        return self.total_of(lambda room: room.loss_using_if_absent_guest_type(
            self._prices, lambda: Floor.signal_unknown_guest_type()))

    def total_profits(self):
        return self.total_of(lambda room: room.profit_using_if_absent_guest_type(
            self._prices, lambda: Floor.signal_unknown_guest_type()))

    # totals

    def total_rooms(self):
        return len(self._rooms)

    def total_rooms_available(self):
        return self.total_rooms_satisfying(lambda room: room.is_available())

    def total_rooms_occupied(self):
        return self.total_rooms_satisfying(lambda room: room.is_occupied())

    def total_rooms_reserved(self):
        return self.total_rooms_satisfying(lambda room: room.is_reserved())

    def total_rooms_satisfying(self, a_condition):
        return self.total_of(lambda room: 1 if a_condition(room) else 0)

    def total_of(self, a_room_amount):
        return sum(map(a_room_amount, self._rooms))

    # assertions (class side)

    @staticmethod
    def assert_is_integer_if_false(a_number, signals_block):
        if not (isinstance(a_number, int) and not isinstance(a_number, bool)):
            signals_block()

    @staticmethod
    def assert_is_positive_if_false(a_number, signals_block):
        if not (a_number > 0):
            signals_block()

    @staticmethod
    def assert_is_valid_number_of_rooms(a_number_of_rooms):
        Floor.assert_is_positive_if_false(a_number_of_rooms, lambda: Floor.signal_number_of_rooms_must_be_positive())
        Floor.assert_is_integer_if_false(a_number_of_rooms, lambda: Floor.signal_number_of_rooms_must_be_integer())

    @staticmethod
    def assert_is_valid_price_list(a_price_list):
        if len(a_price_list) == 0:
            Floor.signal_no_prices()

        for price in a_price_list.values():
            Floor.assert_is_positive_if_false(price, lambda: Floor.signal_price_must_be_positive())

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
