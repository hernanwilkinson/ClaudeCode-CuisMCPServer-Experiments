class Ground:
    """The type of ground the sonar detects at a position.

    It knows what happens to a crawler that tries to move to it or to turn while standing on it.
    """

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        raise NotImplementedError()

    # facing

    def turn_crawler_clockwise(self, a_crawler):
        raise NotImplementedError()

    def turn_crawler_counter_clockwise(self, a_crawler):
        raise NotImplementedError()
