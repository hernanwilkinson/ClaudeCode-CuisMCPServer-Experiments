from surveycrawler.ground import Ground


class TraversableGround(Ground):
    """Ground the crawler can stand on, and therefore turn on."""

    # facing

    def turn_crawler_clockwise(self, a_crawler):
        a_crawler.turn_facing_clockwise()

    def turn_crawler_counter_clockwise(self, a_crawler):
        a_crawler.turn_facing_counter_clockwise()
