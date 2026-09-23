from surveycrawler.ground import Ground


class FirmSand(Ground):

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        a_crawler.move_to(a_crawler.position().plus(a_direction))

    # facing

    def turn_crawler(self, a_crawler, a_turn):
        a_crawler.turn_to(a_turn)
