import pytest

from hotels_test_support import HotelsTestSupport
from simshotels.hotel import Hotel
from simshotels.room import Room


class HotelTest(HotelsTestSupport):

    # testing

    def test01_cannot_create_hotel_without_floors(self):
        with pytest.raises(RuntimeError) as error:
            Hotel.with_floors([])
        assert Hotel.no_floors_error_description() == str(error.value)

    def test02_new_hotels_are_empty(self):
        hotel = self.create_hotel()

        assert hotel.is_empty()

    def test03_hotel_can_receive_a_type_of_guest_in_room_at_floor(self):
        hotel = self.create_hotel()

        assert hotel.total_rooms() == hotel.total_rooms_available()

        hotel.receive_at_floor_at_room(self.guest_type_vacation(), 1, 2)

        assert hotel.total_rooms() - 1 == hotel.total_rooms_available()
        assert 0 == hotel.total_rooms_reserved()
        assert 1 == hotel.total_rooms_occupied()

    def test04_hotel_can_take_a_reservation_for_a_room_at_floor(self):
        hotel = self.create_hotel()

        assert hotel.total_rooms() == hotel.total_rooms_available()

        hotel.reserve_room_at_floor(2, 1)

        assert hotel.total_rooms() - 1 == hotel.total_rooms_available()
        assert 1 == hotel.total_rooms_reserved()
        assert 1 == hotel.total_rooms_occupied()

    def test05_hotel_can_receive_with_reservation_a_type_of_guest_in_room_at_floor(self):
        hotel = self.create_hotel()

        assert hotel.total_rooms() == hotel.total_rooms_available()

        hotel.reserve_room_at_floor(2, 1)
        hotel.receive_with_reservation_at_floor_at_room(self.guest_type_vacation(), 1, 2)

        assert hotel.total_rooms() - 1 == hotel.total_rooms_available()
        assert 0 == hotel.total_rooms_reserved()
        assert 1 == hotel.total_rooms_occupied()

    def test06_hotel_cannot_receive_with_reservation_without_previous_reservation(self):
        hotel = self.create_hotel()

        assert hotel.total_rooms() == hotel.total_rooms_available()

        with pytest.raises(RuntimeError) as error:
            hotel.receive_with_reservation_at_floor_at_room(self.guest_type_vacation(), 1, 2)

        assert Room.room_is_not_reserved_error_description() == str(error.value)

        assert hotel.total_rooms() == hotel.total_rooms_available()
        assert 0 == hotel.total_rooms_reserved()
        assert 0 == hotel.total_rooms_occupied()

    def test07_hotel_profits_are_the_sum_of_each_floor_profits(self):
        floor1 = self.create_floor_with_and(10, self.default_price_list())
        floor2 = self.create_floor_with_and(10, self.default_price_list())

        hotel = self.create_hotel_with(floor1, floor2)

        hotel.receive_at_floor_at_room(self.guest_type_vacation(), 1, 1)
        hotel.receive_at_floor_at_room(self.guest_type_conference(), 2, 1)

        assert floor1.total_profits() + floor2.total_profits() == hotel.total_profits()

    def test08_hotel_losses_are_the_sum_of_each_floor_losses(self):
        floor1 = self.create_floor_with_and(10, self.default_price_list())
        floor2 = self.create_floor_with_and(10, self.default_price_list())

        hotel = self.create_hotel_with(floor1, floor2)

        hotel.receive_at_floor_at_room(self.guest_type_vacation(), 1, 1)
        hotel.receive_at_floor_at_room(self.guest_type_conference(), 2, 1)

        hotel.reserve_room_at_floor(4, 1)
        hotel.reserve_room_at_floor(2, 2)

        assert floor1.total_losses() + floor2.total_losses() == hotel.total_losses()

    def test09_hotel_cannot_reserve_a_nonexistent_room(self):
        hotel = self.create_hotel_with(self.create_floor_with_and(10, self.default_price_list()))

        with pytest.raises(RuntimeError) as error:
            hotel.reserve_room_at_floor(42, 1)

        assert Hotel.room_number_does_not_exist_error_description() == str(error.value)

        assert hotel.total_rooms() == hotel.total_rooms_available()
        assert 0 == hotel.total_rooms_reserved()
        assert 0 == hotel.total_rooms_occupied()

    def test10_hotel_cannot_reserve_a_nonexistent_floor(self):
        hotel = self.create_hotel_with(self.create_floor_with_and(10, self.default_price_list()))

        with pytest.raises(RuntimeError) as error:
            hotel.reserve_room_at_floor(1, 42)

        assert Hotel.floor_number_does_not_exist_error_description() == str(error.value)

        assert hotel.total_rooms() == hotel.total_rooms_available()
        assert 0 == hotel.total_rooms_reserved()
        assert 0 == hotel.total_rooms_occupied()

    def test11_hotel_cannot_receive_at_nonexistent_room(self):
        hotel = self.create_hotel_with(self.create_floor_with_and(10, self.default_price_list()))

        with pytest.raises(RuntimeError) as error:
            hotel.receive_at_floor_at_room(self.guest_type_vacation(), 1, 42)

        assert Hotel.room_number_does_not_exist_error_description() == str(error.value)

        assert hotel.total_rooms() == hotel.total_rooms_available()
        assert 0 == hotel.total_rooms_reserved()
        assert 0 == hotel.total_rooms_occupied()

    def test12_hotel_cannot_receive_at_nonexistent_floor(self):
        hotel = self.create_hotel_with(self.create_floor_with_and(10, self.default_price_list()))

        with pytest.raises(RuntimeError) as error:
            hotel.receive_at_floor_at_room(self.guest_type_vacation(), 42, 1)

        assert Hotel.floor_number_does_not_exist_error_description() == str(error.value)

        assert hotel.total_rooms() == hotel.total_rooms_available()
        assert 0 == hotel.total_rooms_reserved()
        assert 0 == hotel.total_rooms_occupied()

    def test13_hotel_cannot_receive_with_reservation_at_nonexistent_room(self):
        hotel = self.create_hotel_with(self.create_floor_with_and(10, self.default_price_list()))

        hotel.reserve_room_at_floor(1, 1)

        with pytest.raises(RuntimeError) as error:
            hotel.receive_with_reservation_at_floor_at_room(self.guest_type_vacation(), 1, 42)

        assert Hotel.room_number_does_not_exist_error_description() == str(error.value)

        assert hotel.total_rooms() - 1 == hotel.total_rooms_available()
        assert 1 == hotel.total_rooms_reserved()
        assert 1 == hotel.total_rooms_occupied()

    # create

    def create_hotel(self):
        return self.create_hotel_with(
            self.create_floor_with_and(10, self.default_price_list()),
            self.create_floor_with_and(1, self.default_price_list()))
