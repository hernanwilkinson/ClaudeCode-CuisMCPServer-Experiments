class Hotel:

    # initialization

    def __init__(self, a_floors_collection):
        Hotel.assert_have_floors(a_floors_collection)

        self._floors = a_floors_collection

    # testing

    def is_empty(self):
        return all(floor.is_available() for floor in self._floors)

    # accounting

    def total_losses(self):
        return self._total_of_floors(lambda floor: floor.total_losses())

    def total_profits(self):
        return self._total_of_floors(lambda floor: floor.total_profits())

    # totals

    def total_rooms(self):
        return self._total_of_floors(lambda floor: floor.total_rooms())

    def total_rooms_available(self):
        return self._total_of_floors(lambda floor: floor.total_rooms_available())

    def total_rooms_occupied(self):
        return self._total_of_floors(lambda floor: floor.total_rooms_occupied())

    def total_rooms_reserved(self):
        return self._total_of_floors(lambda floor: floor.total_rooms_reserved())

    # guests

    def receive_at_floor_at_room(self, a_guest_type, a_floor_number, a_room_number):
        self._at_floor_at_room_do(
            a_floor_number,
            a_room_number,
            lambda floor, room_number: floor.receive_at_room(a_guest_type, room_number))

    def receive_with_reservation_at_floor_at_room(self, a_guest_type, a_floor_number, a_room_number):
        self._at_floor_at_room_do(
            a_floor_number,
            a_room_number,
            lambda floor, room_number: floor.receive_with_reservation_at_room(a_guest_type, room_number))

    def reserve_room_at_floor(self, a_room_number, a_floor_number):
        self._at_floor_at_room_do(
            a_floor_number,
            a_room_number,
            lambda floor, room_number: floor.reserve_room(room_number))

    # private

    def _total_of_floors(self, an_amount_block):
        return sum(an_amount_block(floor) for floor in self._floors)

    def _at_floor_at_room_do(self, a_floor_number, a_room_number, an_action_block):
        floor = self._floor_at(a_floor_number)
        Hotel.assert_room_number_exists_in(a_room_number, floor)

        return an_action_block(floor, a_room_number)

    def _floor_at(self, a_floor_number):
        if not (1 <= a_floor_number <= len(self._floors)):
            Hotel.signal_floor_number_does_not_exist()

        return self._floors[a_floor_number - 1]

    # assertions (class side)

    @staticmethod
    def assert_have_floors(a_floors_collection):
        if len(a_floors_collection) == 0:
            Hotel.signal_no_floors()

    @staticmethod
    def assert_room_number_exists_in(a_room_number, a_floor):
        if not a_floor.has_room_number(a_room_number):
            Hotel.signal_room_number_does_not_exist()

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
