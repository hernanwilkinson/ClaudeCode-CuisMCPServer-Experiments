from surveycrawler.ground_type import GroundType


class FirmSand(GroundType):

    # moving

    def move_crawler_to(self, a_crawler, a_position, a_direction):
        a_crawler.change_position_to(a_position)

    # facing

    def turn_crawler_with(self, a_crawler, a_turn):
        a_turn()
