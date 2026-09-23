from surveycrawler.ground_type import GroundType


class Boulder(GroundType):

    # moving

    def move_crawler_to(self, a_crawler, a_position, a_direction):
        a_crawler.signal_boulder_found()

    # facing

    def turn_crawler_with(self, a_crawler, a_turn):
        a_crawler.signal_boulder_found()
