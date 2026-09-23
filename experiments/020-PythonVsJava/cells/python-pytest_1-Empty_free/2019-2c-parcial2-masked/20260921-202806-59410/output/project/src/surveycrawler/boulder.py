from surveycrawler.ground import Ground


class Boulder(Ground):

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        a_crawler.signal_boulder_found()

    # facing

    def turn_crawler(self, a_crawler, a_turn):
        a_crawler.signal_boulder_found()
