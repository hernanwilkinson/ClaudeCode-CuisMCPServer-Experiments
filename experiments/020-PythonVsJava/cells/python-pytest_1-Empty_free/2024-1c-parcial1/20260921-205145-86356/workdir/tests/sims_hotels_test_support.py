from simshotels.floor import Floor


class SimsHotelsTestSupport:
    """Guest types, prices and creation methods shared by the three test cases."""

    # create

    def create_floor_with_and(self, a_number_of_rooms, a_price):
        return Floor.with_rooms_and_prices(a_number_of_rooms, a_price)

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
