from simshotels.floor import Floor


class Hotel:

    # instance creation (class side)

    @classmethod
    def with_floors(cls, a_floors_collection):
        Hotel.assert_have_floors(a_floors_collection)

        return cls(a_floors_collection)

    # initialization

    def __init__(self, a_floors_collection):
        self._floors = a_floors_collection

    # testing

    def is_empty(self):
        return all(floor.is_available() for floor in self._floors)

    # accounting

    def total_losses(self):
        return self.total_of(lambda floor: floor.total_losses())

    def total_profits(self):
        return self.total_of(lambda floor: floor.total_profits())

    # totals

    def total_rooms(self):
        return self.total_of(lambda floor: floor.total_rooms())

    def total_rooms_available(self):
        return self.total_of(lambda floor: floor.total_rooms_available())

    def total_rooms_occupied(self):
        return self.total_of(lambda floor: floor.total_rooms_occupied())

    def total_rooms_reserved(self):
        return self.total_of(lambda floor: floor.total_rooms_reserved())

    def total_of(self, a_floor_total):
        return sum(a_floor_total(floor) for floor in self._floors)

    # guests

    def receive_at_floor_at_room(self, a_guest_type, a_floor_number, a_room_number):
        self.floor_at(a_floor_number).receive_at_room(a_guest_type, a_room_number)

    def receive_with_reservation_at_floor_at_room(self, a_guest_type, a_floor_number, a_room_number):
        self.floor_at(a_floor_number).receive_with_reservation_at_room(a_guest_type, a_room_number)

    def reserve_room_at_floor(self, a_room_number, a_floor_number):
        self.floor_at(a_floor_number).reserve_room(a_room_number)

    # accessing floors

    def floor_at(self, a_floor_number):
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

    # the rooms of a floor are the floor's responsibility, so is the error
    @staticmethod
    def room_number_does_not_exist_error_description():
        return Floor.room_number_does_not_exist_error_description()

    # exceptions (class side)

    @staticmethod
    def signal_floor_number_does_not_exist():
        raise RuntimeError(Hotel.floor_number_does_not_exist_error_description())

    @staticmethod
    def signal_no_floors():
        raise RuntimeError(Hotel.no_floors_error_description())
