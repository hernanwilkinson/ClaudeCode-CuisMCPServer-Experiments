import pytest

from simshotels.room import Room
from sims_hotels_test_support import SimsHotelsTestSupport


class RoomTest(SimsHotelsTestSupport):

    # testing

    def test01_new_rooms_are_available(self):
        room = Room()

        assert room.is_available()

        assert not room.is_occupied()
        assert not room.is_reserved()

    def test02_receiving_a_guest_makes_the_room_occupied(self):
        room = Room()

        room.receive(self.guest_type_vacation())

        assert room.is_occupied()

        assert not room.is_available()
        assert not room.is_reserved()

    def test03_reserving_a_room_makes_the_room_reserved_and_occupied(self):
        room = Room()

        room.reserve()

        assert room.is_reserved()
        assert room.is_occupied()

        assert not room.is_available()

    def test04_cannot_receive_a_guest_in_a_occupied_room(self):
        room = Room()

        room.receive(self.guest_type_vacation())

        with pytest.raises(RuntimeError) as error:
            room.receive(self.guest_type_vacation())

        assert Room.room_is_not_empty_error_description() == str(error.value)

        assert room.is_occupied()

        assert not room.is_available()
        assert not room.is_reserved()

    def test05_cannot_receive_a_guest_in_a_reserved_room(self):
        room = Room()

        room.reserve()

        with pytest.raises(RuntimeError) as error:
            room.receive(self.guest_type_vacation())

        assert Room.room_is_not_empty_error_description() == str(error.value)

        assert room.is_reserved()
        assert room.is_occupied()

        assert not room.is_available()

    def test06_receiving_on_reservation_makes_the_room_occupied(self):
        room = Room()

        room.reserve()

        room.receive_with_reservation(self.guest_type_vacation())

        assert room.is_occupied()

        assert not room.is_reserved()
        assert not room.is_available()

    def test07_cannot_receive_on_reservation_an_available_room(self):
        room = Room()

        with pytest.raises(RuntimeError) as error:
            room.receive_with_reservation(self.guest_type_vacation())

        assert Room.room_is_not_reserved_error_description() == str(error.value)

        assert room.is_available()

        assert not room.is_reserved()
        assert not room.is_occupied()

    def test08_cannot_receive_on_reservation_an_occupied_room(self):
        room = Room()

        room.receive(self.guest_type_vacation())

        with pytest.raises(RuntimeError) as error:
            room.receive_with_reservation(self.guest_type_vacation())

        assert Room.room_is_not_reserved_error_description() == str(error.value)

        assert room.is_occupied()

        assert not room.is_reserved()
        assert not room.is_available()

    def test09_profit_of_available_room_is_cero_pesos(self):
        room = Room()

        assert 0 == room.profit_using_if_absent_guest_type(self.default_price_list(), lambda: pytest.fail())

    def test10_profit_of_reserved_room_is_half_the_min_price_in_list(self):
        room = Room()

        room.reserve()

        assert self.min_price_in_list() // 2 == room.profit_using_if_absent_guest_type(self.default_price_list(), lambda: pytest.fail())

    def test11_profit_of_occupied_room_depends_on_guest_type(self):
        room_with_conference_guest = Room()
        room_with_conference_guest.receive(self.guest_type_conference())

        room_with_vacation_guest = Room()
        room_with_vacation_guest.receive(self.guest_type_vacation())

        assert self.default_price_list()[self.guest_type_conference()] == \
            room_with_conference_guest.profit_using_if_absent_guest_type(self.default_price_list(), lambda: pytest.fail())

        assert self.default_price_list()[self.guest_type_vacation()] == \
            room_with_vacation_guest.profit_using_if_absent_guest_type(self.default_price_list(), lambda: pytest.fail())

    def test12_no_profit_on_occupied_room_by_unknown_guest_type(self):
        room = Room()
        room.receive("unknownGuest")

        def unknown_guest_type_block():
            raise RoomTest.UnknownGuestTypeDetected()

        try:
            room.profit_using_if_absent_guest_type(self.default_price_list(), unknown_guest_type_block)
        except RoomTest.UnknownGuestTypeDetected:
            return

        # we should not get here
        pytest.fail("should not calculate profit on room occupied by unknown guest type")

    def test13_losses_of_available_room_is_the_max_price_in_list(self):
        room = Room()

        assert self.max_price_in_list() == room.loss_using_if_absent_guest_type(self.default_price_list(), lambda: pytest.fail())

    def test14_losses_of_reserved_room_is_cero_pesos(self):
        room = Room()

        room.reserve()

        assert 0 == room.loss_using_if_absent_guest_type(self.default_price_list(), lambda: pytest.fail())

    def test15_losses_of_occupied_room_is_cero_pesos(self):
        room = Room()

        room.receive(self.guest_type_vacation())

        assert 0 == room.loss_using_if_absent_guest_type(self.default_price_list(), lambda: pytest.fail())

    def test16_cannot_reserve_when_reserved(self):
        room = Room()

        room.reserve()

        with pytest.raises(RuntimeError) as an_error:
            room.reserve()

        assert Room.room_is_not_empty_error_description() == str(an_error.value)
        assert room.is_reserved()

    def test17_cannot_reserve_when_occupied(self):
        room = Room()

        room.receive(self.guest_type_vacation())

        with pytest.raises(RuntimeError) as an_error:
            room.reserve()

        assert Room.room_is_not_empty_error_description() == str(an_error.value)
        assert room.is_occupied()

    # support

    # the Python stand-in for the non-local return `[ ^self ]` of test12
    class UnknownGuestTypeDetected(Exception):
        pass
