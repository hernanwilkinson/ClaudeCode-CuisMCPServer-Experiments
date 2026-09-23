import random

from surveycrawler.ground import Ground


class Silt(Ground):

    # sliding limit

    @classmethod
    def max_number_of_cells_to_slide(cls):
        return 10

    # initialization

    def __init__(self, a_randomizer=None):
        self._randomizer = random.Random() if a_randomizer is None else a_randomizer

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        a_crawler.slide_towards(a_direction, self)

    def number_of_cells_to_slide(self):
        return self._randomizer.randrange(self.max_number_of_cells_to_slide()) + 1

    # facing

    def turn_crawler(self, a_crawler, a_turn):
        a_crawler.turn_to(a_turn)
