import pytest

from simshotels.floor import Floor
from sims_hotels_test_support import SimsHotelsTestSupport


class FloorTest(SimsHotelsTestSupport):

    # testing

    def test01_cannot_create_floor_without_rooms(self):
        with pytest.raises(RuntimeError) as error:
            self.create_floor_with_and(0, self.default_price_list())
        assert Floor.number_of_rooms_must_be_positive_error_description() == str(error.value)

    def test02_cannot_create_floor_with_no_interger_number_of_rooms(self):
        with pytest.raises(RuntimeError) as error:
            self.create_floor_with_and(1.5, self.default_price_list())
        assert Floor.number_of_rooms_must_be_integer_error_description() == str(error.value)

    def test03_cannot_create_floor_without_prices(self):
        with pytest.raises(RuntimeError) as error:
            self.create_floor_with_and(10, {})
        assert Floor.prices_list_cannot_be_empty_error_description() == str(error.value)

    def test04_when_a_floor_is_created_all_the_rooms_are_available(self):
        floor = self.create_default_floor()

        assert floor.is_available()
        assert 0 == floor.total_rooms_occupied()
        assert 0 == floor.total_rooms_reserved()

    def test05_when_a_floor_receives_a_guest_in_a_room_reduces_the_available_rooms_by_one_and_increase_occupied_by_one(self):
        floor = self.create_default_floor()

        floor.receive_at_room(self.guest_type_vacation(), 1)

        assert self.default_number_of_rooms() - 1 == floor.total_rooms_available()
        assert 1 == floor.total_rooms_occupied()
        assert 0 == floor.total_rooms_reserved()

    def test06_when_a_floor_receives_on_reservation_a_guest_in_a_room_keeps_the_available_rooms_and_occupied_and_reduces_the_reserved_by_one(self):
        floor = self.create_default_floor()

        floor.reserve_room(1)

        rooms_available = floor.total_rooms_available()
        rooms_occupied = floor.total_rooms_occupied()
        rooms_reserved = floor.total_rooms_reserved()

        floor.receive_with_reservation_at_room(self.guest_type_vacation(), 1)

        assert rooms_available == floor.total_rooms_available()
        assert rooms_occupied == floor.total_rooms_occupied()
        assert rooms_reserved - 1 == floor.total_rooms_reserved()

    def test07_when_a_room_is_reserved_the_floor_available_rooms_reduces_by_one_and_increase_reserved_and_occupied_by_one(self):
        floor = self.create_default_floor()

        floor.reserve_room(1)

        assert self.default_number_of_rooms() - 1 == floor.total_rooms_available()
        assert 1 == floor.total_rooms_occupied()
        assert 1 == floor.total_rooms_reserved()

    def test08_total_profit_should_be_the_sum_of_occupied_rooms_profits(self):
        floor = self.create_floor_with_two_guests_and_one_reservation()

        assert self.max_price_in_list() + self.min_price_in_list() + self.min_price_in_list() // 2 == floor.total_profits()

    def test09_total_losses_should_be_the_sum_of_available_rooms_losses(self):
        floor = self.create_floor_with_two_guests_and_one_reservation()

        assert self.max_price_in_list() * (self.default_number_of_rooms() - 3) == floor.total_losses()

    # create

    def create_floor_with_two_guests_and_one_reservation(self):
        floor = self.create_default_floor()

        floor.receive_at_room(self.guest_type_vacation(), 1)
        floor.receive_at_room(self.guest_type_conference(), 2)
        floor.reserve_room(3)

        return floor
