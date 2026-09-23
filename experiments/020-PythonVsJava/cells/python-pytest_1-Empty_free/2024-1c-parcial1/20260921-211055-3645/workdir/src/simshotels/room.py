class Room:

    # initialization

    def __init__(self):
        self._state = AvailableRoom()

    # guests

    def guest_type(self):
        return self._state.guest_type()

    def receive(self, a_guest_type):
        self.change_state_to(self._state.receive(a_guest_type))

    def receive_with_reservation(self, a_guest_type):
        self.change_state_to(self._state.receive_with_reservation(a_guest_type))

    def reserve(self):
        self.change_state_to(self._state.reserve())

    # testing

    def is_available(self):
        return self._state.is_available()

    def is_occupied(self):
        return self._state.is_occupied()

    def is_reserved(self):
        return self._state.is_reserved()

    # accounting

    def loss_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return self._state.loss_using_if_absent_guest_type(a_price_list, unknown_guest_type_block)

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return self._state.profit_using_if_absent_guest_type(a_price_list, unknown_guest_type_block)

    # changing state

    def change_state_to(self, a_room_state):
        self._state = a_room_state

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
    """The state of a Room. Its subclasses are the three states a Room can be in:
    available, reserved and occupied. Each state knows which transitions it accepts
    and answers the new state the Room has to change to."""

    # guests

    def guest_type(self):
        return None

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

    def loss_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return max(a_price_list.values())

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return 0


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

    def loss_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return 0

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return min(a_price_list.values()) // 2


class OccupiedRoom(RoomState):

    # initialization

    def __init__(self, a_guest_type):
        self._guest_type = a_guest_type

    # guests

    def guest_type(self):
        return self._guest_type

    # testing

    def is_occupied(self):
        return True

    # accounting

    def loss_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        return 0

    def profit_using_if_absent_guest_type(self, a_price_list, unknown_guest_type_block):
        if self._guest_type in a_price_list:
            return a_price_list[self._guest_type]
        else:
            return unknown_guest_type_block()
