class Hotel:

    # initialization

    def __init__(self):
        self._floors = []

    # accounting

    def total_losses(self):
        return sum(floor.total_losses() for floor in self._floors)

    def total_profits(self):
        return sum(floor.total_profits() for floor in self._floors)

    # setters

    def set_floors(self, a_floors_collection):
        Hotel.assert_have_floors(a_floors_collection)

        self._floors = a_floors_collection

        return self

    # totals

    def total_rooms(self):
        return sum(floor.total_rooms() for floor in self._floors)

    def total_rooms_available(self):
        return sum(floor.total_rooms_available() for floor in self._floors)

    def total_rooms_occupied(self):
        return sum(floor.total_rooms_occupied() for floor in self._floors)

    def total_rooms_reserved(self):
        return sum(floor.total_rooms_reserved() for floor in self._floors)

    # testing

    def is_empty(self):
        return all(floor.is_available() for floor in self._floors)

    # guests

    def receive_at_floor_at_room(self, a_guest_type, a_floor_number, a_room_number):
        floor = self._get_floor(a_floor_number)
        floor.receive_at_room(a_guest_type, a_room_number)

    def receive_with_reservation_at_floor_at_room(self, a_guest_type, a_floor_number, a_room_number):
        floor = self._get_floor(a_floor_number)
        floor.receive_with_reservation_at_room(a_guest_type, a_room_number)

    def reserve_room_at_floor(self, a_room_number, a_floor_number):
        floor = self._get_floor(a_floor_number)
        floor.reserve_room(a_room_number)

    # private

    def _get_floor(self, a_floor_number):
        if a_floor_number < 1 or a_floor_number > len(self._floors):
            Hotel.signal_floor_number_does_not_exist()
        return self._floors[a_floor_number - 1]

    # assertions (class side)

    @staticmethod
    def assert_have_floors(a_floors_collection):
        if len(a_floors_collection) == 0:
            Hotel.signal_no_floors()

    # error description (class side)

    @staticmethod
    def floor_number_does_not_exist_error_description():
        return "Floor number does not exist"

    @staticmethod
    def no_floors_error_description():
        return "Cannot have a Hotel without floors"

    @staticmethod
    def room_number_does_not_exist_error_description():
        return "Room number does not exist"

    # exceptions (class side)

    @staticmethod
    def signal_floor_number_does_not_exist():
        raise RuntimeError(Hotel.floor_number_does_not_exist_error_description())

    @staticmethod
    def signal_no_floors():
        raise RuntimeError(Hotel.no_floors_error_description())

    @staticmethod
    def signal_room_number_does_not_exist():
        raise RuntimeError(Hotel.room_number_does_not_exist_error_description())
