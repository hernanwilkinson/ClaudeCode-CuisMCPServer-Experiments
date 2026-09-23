from surveycrawler.ground import Ground


class Boulder(Ground):

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        a_crawler.signal_boulder_found()

    # facing

    def assert_crawler_can_turn(self, a_crawler):
        a_crawler.signal_boulder_found()
