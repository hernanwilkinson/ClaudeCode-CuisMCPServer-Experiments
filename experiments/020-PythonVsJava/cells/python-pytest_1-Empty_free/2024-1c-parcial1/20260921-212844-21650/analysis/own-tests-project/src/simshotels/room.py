class Room:

    # initialization

    def __init__(self):
        self._state = AvailableRoom()

    # guests

    def receive(self, a_guest_type):
        self._state = self._state.receive(a_guest_type)

    def receive_with_reservation(self, a_guest_type):
        self._state = self._state.receive_with_reservation(a_guest_type)

    def reserve(self):
        self._state = self._state.reserve()

    # testing

    def is_available(self):
        return self._state.is_available()

    def is_occupied(self):
        return self._state.is_occupied()

    def is_reserved(self):
        return self._state.is_reserved()

    # accounting

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return self._state.profit_using_if_absent_guest_type(a_price_list, unknown_guest_type_block)

    def loss_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return self._state.loss_using_if_absent_guest_type(a_price_list, unknown_guest_type_block)

    # error messages (class side)

    @staticmethod
    def room_is_not_empty_error_description():
        return "Room is not empty."

    @staticmethod
    def room_is_not_reserved_error_description():
        return "Room is not reserved."

    # exceptions (class side)

    @staticmethod
    def signal_room_is_not_empty():
        raise RuntimeError(Room.room_is_not_empty_error_description())

    @staticmethod
    def signal_room_is_not_reserved():
        raise RuntimeError(Room.room_is_not_reserved_error_description())


class RoomState:
    """How a Room behaves while it is available, reserved or occupied.

    Each subclass answers the state the room moves to; the transitions it does not
    understand are the invalid ones and are rejected here, for every state alike.
    """

    # guests

    def receive(self, a_guest_type):
        Room.signal_room_is_not_empty()

    def receive_with_reservation(self, a_guest_type):
        Room.signal_room_is_not_reserved()

    def reserve(self):
        Room.signal_room_is_not_empty()

    # testing

    def is_available(self):
        return False

    def is_occupied(self):
        return False

    def is_reserved(self):
        return False


class AvailableRoom(RoomState):

    # guests

    def receive(self, a_guest_type):
        return OccupiedRoom(a_guest_type)

    def reserve(self):
        return ReservedRoom()

    # testing

    def is_available(self):
        return True

    # accounting

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return 0

    def loss_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return max(a_price_list.values())


class ReservedRoom(RoomState):

    # guests

    def receive_with_reservation(self, a_guest_type):
        return OccupiedRoom(a_guest_type)

    # testing

    def is_occupied(self):
        return True

    def is_reserved(self):
        return True

    # accounting

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return min(a_price_list.values()) // 2

    def loss_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return 0


class OccupiedRoom(RoomState):

    # initialization

    def __init__(self, a_guest_type):
        self._guest_type = a_guest_type

    # testing

    def is_occupied(self):
        return True

    # accounting

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        if self._guest_type in a_price_list:
            return a_price_list[self._guest_type]
        else:
            return unknown_guest_type_block()

    def loss_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return 0
