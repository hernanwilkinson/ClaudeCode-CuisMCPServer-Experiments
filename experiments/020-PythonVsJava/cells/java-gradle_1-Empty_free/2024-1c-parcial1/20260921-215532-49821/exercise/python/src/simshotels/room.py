class Room:

    RESERVED = "reserved"

    def __init__(self):
        self._guest = None

    # guests

    def guest_type(self):
        return self._guest

    def receive(self, a_guest_type):
        # Room Occupied
        if self._guest is not None or Room.RESERVED == self._guest:
            raise RuntimeError(Room.room_is_not_empty_error_description())
        else:
            self._guest = a_guest_type

    def receive_with_reservation(self, a_guest_type):
        # Room Reserved
        if Room.RESERVED == self._guest:
            self._guest = a_guest_type
        else:
            raise RuntimeError(Room.room_is_not_reserved_error_description())

    def reserve(self):
        # Room Occupied
        if self._guest is not None or Room.RESERVED == self._guest:
            raise RuntimeError(Room.room_is_not_empty_error_description())
        else:
            self._guest = Room.RESERVED

    # testing

    def is_available(self):
        return self._guest is None

    def is_occupied(self):
        return self._guest is not None or Room.RESERVED == self._guest

    def is_reserved(self):
        return Room.RESERVED == self._guest

    # accounting

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        # Room Available
        if self._guest is None:
            return 0

        # Room Reserved
        if Room.RESERVED == self._guest:
            return min(a_price_list.values()) // 2

        # Room Occupied
        if self._guest is not None or Room.RESERVED == self._guest:
            if self._guest in a_price_list:
                return a_price_list[self._guest]
            else:
                return unknown_guest_type_block()

    # error messages (class side)

    @staticmethod
    def room_is_not_empty_error_description():
        return "Room is not empty."

    @staticmethod
    def room_is_not_reserved_error_description():
        return "Room is not reserved."
