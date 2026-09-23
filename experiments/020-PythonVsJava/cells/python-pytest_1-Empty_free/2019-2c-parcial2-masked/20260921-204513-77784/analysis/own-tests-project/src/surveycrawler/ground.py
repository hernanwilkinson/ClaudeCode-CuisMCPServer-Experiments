class Ground:

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        raise NotImplementedError()

    # facing

    def assert_crawler_can_turn(self, a_crawler):
        raise NotImplementedError()
