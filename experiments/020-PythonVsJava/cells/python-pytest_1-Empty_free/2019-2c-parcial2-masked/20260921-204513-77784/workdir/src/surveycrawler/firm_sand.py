from surveycrawler.ground import Ground


class FirmSand(Ground):

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        a_crawler.move_one_cell_towards(a_direction)

    # facing

    def assert_crawler_can_turn(self, a_crawler):
        pass
