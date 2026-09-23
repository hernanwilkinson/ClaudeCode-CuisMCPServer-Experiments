class Room:

    RESERVED = "reserved"

    def __init__(self):
        self._guest = None

    # guests

    def guest_type(self):
        return self._guest

    def receive(self, a_guest_type):
        if not self.is_available():
            raise RuntimeError(Room.room_is_not_empty_error_description())
        self._guest = a_guest_type

    def receive_with_reservation(self, a_guest_type):
        if not self.is_reserved():
            raise RuntimeError(Room.room_is_not_reserved_error_description())
        self._guest = a_guest_type

    def reserve(self):
        if not self.is_available():
            raise RuntimeError(Room.room_is_not_empty_error_description())
        self._guest = Room.RESERVED

    # testing

    def is_available(self):
        return self._guest is None

    def is_occupied(self):
        return self._guest is not None

    def is_reserved(self):
        return self._guest == Room.RESERVED

    # accounting

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        if self.is_available():
            return 0
        if self.is_reserved():
            return min(a_price_list.values()) // 2
        if self._guest in a_price_list:
            return a_price_list[self._guest]
        else:
            return unknown_guest_type_block()

    def loss_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        if self.is_available():
            return max(a_price_list.values())
        return 0

    # error messages (class side)

    @staticmethod
    def room_is_not_empty_error_description():
        return "Room is not empty."

    @staticmethod
    def room_is_not_reserved_error_description():
        return "Room is not reserved."
