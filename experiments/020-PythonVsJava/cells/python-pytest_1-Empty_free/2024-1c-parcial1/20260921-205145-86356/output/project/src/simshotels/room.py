class Room:

    # initialization

    def __init__(self):
        self._state = AvailableRoomState()

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
    """The state of a Room. Each subclass knows which transitions it accepts,
    whether the room is available/occupied/reserved and what it earns or loses."""

    # guests (only the transitions a state accepts are redefined by it)

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
        return not self.is_available()

    def is_reserved(self):
        return False

    # accounting

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        raise NotImplementedError("Subclass responsibility")

    def loss_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        # only an available room loses money
        return 0


class AvailableRoomState(RoomState):

    # guests

    def receive(self, a_guest_type):
        return OccupiedRoomState(a_guest_type)

    def reserve(self):
        return ReservedRoomState()

    # testing

    def is_available(self):
        return True

    # accounting

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return 0

    def loss_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return max(a_price_list.values())


class ReservedRoomState(RoomState):

    # guests

    def receive_with_reservation(self, a_guest_type):
        return OccupiedRoomState(a_guest_type)

    # testing

    def is_reserved(self):
        return True

    # accounting

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return min(a_price_list.values()) // 2


class OccupiedRoomState(RoomState):

    # initialization

    def __init__(self, a_guest_type):
        self._guest_type = a_guest_type

    # accounting

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        if self._guest_type in a_price_list:
            return a_price_list[self._guest_type]
        else:
            return unknown_guest_type_block()
