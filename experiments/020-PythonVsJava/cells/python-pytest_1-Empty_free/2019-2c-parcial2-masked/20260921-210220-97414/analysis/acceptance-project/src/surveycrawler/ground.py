class Ground:

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        raise NotImplementedError()

    # testing

    def assert_can_be_occupied(self):
        raise NotImplementedError()
