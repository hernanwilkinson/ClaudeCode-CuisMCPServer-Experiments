from surveycrawler.ground import Ground


class Boulder(Ground):
    """The crawler can neither move to a boulder nor turn while standing on one."""

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        a_crawler.signal_can_not_move_over_boulder()

    # facing

    def turn_crawler_clockwise(self, a_crawler):
        a_crawler.signal_can_not_turn_over_boulder()

    def turn_crawler_counter_clockwise(self, a_crawler):
        a_crawler.signal_can_not_turn_over_boulder()
