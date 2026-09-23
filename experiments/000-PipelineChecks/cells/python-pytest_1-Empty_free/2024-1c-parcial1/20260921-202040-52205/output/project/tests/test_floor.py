import pytest

from simshotels.floor import Floor


class FloorTest:

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
        floor = self.create_floor_with_and(10, self.default_price_list())

        assert floor.is_available()
        assert 0 == floor.total_rooms_occupied()
        assert 0 == floor.total_rooms_reserved()

    def test05_when_a_floor_receives_a_guest_in_a_room_reduces_the_available_rooms_by_one_and_increase_occupied_by_one(self):
        rooms_number = 10
        floor = self.create_floor_with_and(rooms_number, self.default_price_list())

        floor.receive_at_room(self.guest_type_vacation(), 1)

        assert rooms_number - 1 == floor.total_rooms_available()
        assert 1 == floor.total_rooms_occupied()
        assert 0 == floor.total_rooms_reserved()

    def test06_when_a_floor_receives_on_reservation_a_guest_in_a_room_keeps_the_available_rooms_and_occupied_and_reduces_the_reserved_by_one(self):
        rooms_number = 10
        floor = self.create_floor_with_and(rooms_number, self.default_price_list())

        floor.reserve_room(1)

        rooms_available = floor.total_rooms_available()
        rooms_occupied = floor.total_rooms_occupied()
        rooms_reserved = floor.total_rooms_reserved()

        floor.receive_with_reservation_at_room(self.guest_type_vacation(), 1)

        assert rooms_available == floor.total_rooms_available()
        assert rooms_occupied == floor.total_rooms_occupied()
        assert rooms_reserved - 1 == floor.total_rooms_reserved()

    def test07_when_a_room_is_reserved_the_floor_available_rooms_reduces_by_one_and_increase_reserved_and_occupied_by_one(self):
        rooms_number = 10
        floor = self.create_floor_with_and(rooms_number, self.default_price_list())

        floor.reserve_room(1)

        assert rooms_number - 1 == floor.total_rooms_available()
        assert 1 == floor.total_rooms_occupied()
        assert 1 == floor.total_rooms_reserved()

    def test08_total_profit_should_be_the_sum_of_occupied_rooms_profits(self):
        rooms_number = 10
        floor = self.create_floor_with_and(rooms_number, self.default_price_list())

        floor.receive_at_room(self.guest_type_vacation(), 1)
        floor.receive_at_room(self.guest_type_conference(), 2)
        floor.reserve_room(3)

        assert 100 + 200 + 50 == floor.total_profits()

    def test09_total_losses_should_be_the_sum_of_available_rooms_losses(self):
        rooms_number = 10
        floor = self.create_floor_with_and(rooms_number, self.default_price_list())

        floor.receive_at_room(self.guest_type_vacation(), 1)
        floor.receive_at_room(self.guest_type_conference(), 2)
        floor.reserve_room(3)

        assert 200 * 7 == floor.total_losses()

    # create

    def create_floor_with_and(self, a_number_of_rooms, a_price):
        floor = Floor()
        floor.set_number_of_rooms(a_number_of_rooms)
        floor.set_prices(a_price)

        return floor

    def default_price_list(self):
        price_list = {}
        price_list[self.guest_type_vacation()] = 100
        price_list[self.guest_type_conference()] = 200
        return price_list

    def guest_type_conference(self):
        return "conferenceGuest"

    def guest_type_vacation(self):
        return "vacationGuest"
