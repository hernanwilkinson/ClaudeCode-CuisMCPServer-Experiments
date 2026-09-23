from surveycrawler.ground import Ground


class FirmSand(Ground):

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        a_crawler.move_cells_towards(1, a_direction)

    # testing

    def assert_can_be_occupied(self):
        pass  # firm sand can always be occupied


