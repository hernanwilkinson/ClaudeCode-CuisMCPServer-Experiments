class Hotel:

    # initialization

    def __init__(self):
        self._floors = None
        self._available_rooms_count = 0

    # accounting

    def total_losses(self):
        acc = 0
        for floor in self._floors:
            acc = acc + floor.total_losses()

        return acc

    def total_profits(self):
        acc = 0
        for floor in self._floors:
            acc = acc + floor.total_profits()

        return acc

    # setters

    def set_floors(self, a_floors_collection):
        Hotel.assert_have_floors(a_floors_collection)

        self._floors = a_floors_collection

        self._available_rooms_count = self.total_rooms()

        return self

    # totals

    def total_rooms(self):
        acc = 0

        ix = 1
        while ix <= len(self._floors):
            floor = self._floors[ix - 1]

            jx = 1
            while jx <= len(floor.rooms()):
                acc = acc + 1

                jx = jx + 1

            ix = ix + 1

        return acc

    def total_rooms_available(self):
        return self._available_rooms_count

    def total_rooms_occupied(self):
        acc = 0

        ix = 1
        while ix <= len(self._floors):
            floor = self._floors[ix - 1]

            jx = 1
            while jx <= len(floor.rooms()):
                room = floor.rooms()[jx - 1]
                if room.is_occupied():
                    acc = acc + 1

                jx = jx + 1

            ix = ix + 1

        return acc

    def total_rooms_reserved(self):
        acc = 0

        ix = 1
        while ix <= len(self._floors):
            floor = self._floors[ix - 1]

            jx = 1
            while jx <= len(floor.rooms()):
                room = floor.rooms()[jx - 1]
                if room.is_reserved():
                    acc = acc + 1

                jx = jx + 1

            ix = ix + 1

        return acc

    # testing

    def is_empty(self):
        acc = True

        ix = 1
        while ix <= len(self._floors):
            floor = self._floors[ix - 1]

            jx = 1
            while jx <= len(floor.rooms()):
                room = floor.rooms()[jx - 1]
                acc = acc and room.is_available()

                jx = jx + 1

            ix = ix + 1

        return acc

    # guests

    def receive_at_floor_at_room(self, a_guest_type, a_floor_number, a_room_number):
        if a_floor_number < 1 or a_floor_number > len(self._floors):
            Hotel.signal_floor_number_does_not_exist()
        floor = self._floors[a_floor_number - 1]
        if a_room_number < 1 or a_room_number > len(floor.rooms()):
            Hotel.signal_room_number_does_not_exist()
        room = floor.rooms()[a_room_number - 1]

        room.receive(a_guest_type)

        self._available_rooms_count = self._available_rooms_count - 1

    def receive_with_reservation_at_floor_at_room(self, a_guest_type, a_floor_number, a_room_number):
        if a_floor_number < 1 or a_floor_number > len(self._floors):
            Hotel.signal_floor_number_does_not_exist()
        floor = self._floors[a_floor_number - 1]
        if a_room_number < 1 or a_room_number > len(floor.rooms()):
            Hotel.signal_room_number_does_not_exist()
        room = floor.rooms()[a_room_number - 1]

        room.receive_with_reservation(a_guest_type)

    def reserve_room_at_floor(self, a_room_number, a_floor_number):
        if a_floor_number < 1 or a_floor_number > len(self._floors):
            Hotel.signal_floor_number_does_not_exist()
        floor = self._floors[a_floor_number - 1]
        if a_room_number < 1 or a_room_number > len(floor.rooms()):
            Hotel.signal_room_number_does_not_exist()
        room = floor.rooms()[a_room_number - 1]

        room.reserve()

        self._available_rooms_count = self._available_rooms_count - 1

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
