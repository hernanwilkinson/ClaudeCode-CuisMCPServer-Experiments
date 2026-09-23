class GroundType:

    # moving

    def move_crawler_to(self, a_crawler, a_position, a_direction):
        raise NotImplementedError()

    # facing

    def turn_crawler_with(self, a_crawler, a_turn):
        raise NotImplementedError()
