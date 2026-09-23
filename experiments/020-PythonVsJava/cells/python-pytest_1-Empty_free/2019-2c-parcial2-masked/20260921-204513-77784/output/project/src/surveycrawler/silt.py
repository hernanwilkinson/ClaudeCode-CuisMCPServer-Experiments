import random

from surveycrawler.ground import Ground


class Silt(Ground):

    # instance creation

    @classmethod
    def sliding_randomly(cls):
        return cls(random.Random())

    @classmethod
    def sliding_with(cls, a_random):
        return cls(a_random)

    # initialization

    def __init__(self, a_random):
        self._random = a_random

    # sliding

    @classmethod
    def max_number_of_cells_to_slide(cls):
        return 10

    def number_of_cells_to_slide(self):
        return self._random.randrange(self.max_number_of_cells_to_slide()) + 1

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        a_crawler.slide_towards(a_direction, self)

    # facing

    def assert_crawler_can_turn(self, a_crawler):
        pass
