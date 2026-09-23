from simshotels.floor import Floor
from simshotels.hotel import Hotel


class SimsHotelsTestSupport:
    # the objects and guest types the three test classes share

    # create

    def create_floor_with_and(self, a_number_of_rooms, a_price):
        return Floor.with_number_of_rooms_and_prices(a_number_of_rooms, a_price)

    def create_hotel(self):
        return self.create_hotel_with([self.create_floor_with_and(10, self.default_price_list()),
                                       self.create_floor_with_and(1, self.default_price_list())])

    def create_hotel_with(self, a_floors_collection):
        return Hotel.with_floors(a_floors_collection)

    def default_price_list(self):
        return {self.guest_type_vacation(): self.min_price_in_list(),
                self.guest_type_conference(): self.max_price_in_list()}

    def guest_type_conference(self):
        return "conferenceGuest"

    def guest_type_vacation(self):
        return "vacationGuest"

    def guest_type_unknown(self):
        return "unknownGuest"

    def max_price_in_list(self):
        return 200

    def min_price_in_list(self):
        return 100
