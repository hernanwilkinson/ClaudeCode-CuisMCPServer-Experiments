class Ground:

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        raise NotImplementedError()

    # facing

    def turn_crawler(self, a_crawler, a_turn):
        raise NotImplementedError()
