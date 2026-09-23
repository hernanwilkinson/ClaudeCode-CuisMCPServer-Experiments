from simshotels.floor import Floor
from simshotels.hotel import Hotel


class SimsHotelsTestSupport:
    """Guest types, prices and instance creation shared by RoomTest, FloorTest and HotelTest."""

    # create

    def create_floor_with_and(self, a_number_of_rooms, a_price_list):
        return Floor(a_number_of_rooms, a_price_list)

    def create_default_floor(self):
        return self.create_floor_with_and(self.default_number_of_rooms(), self.default_price_list())

    def create_hotel_with(self, a_floors_collection):
        return Hotel(a_floors_collection)

    def default_number_of_rooms(self):
        return 10

    def default_price_list(self):
        price_list = {}
        price_list[self.guest_type_vacation()] = self.min_price_in_list()
        price_list[self.guest_type_conference()] = self.max_price_in_list()
        return price_list

    def guest_type_conference(self):
        return "conferenceGuest"

    def guest_type_vacation(self):
        return "vacationGuest"

    def max_price_in_list(self):
        return 200

    def min_price_in_list(self):
        return 100
