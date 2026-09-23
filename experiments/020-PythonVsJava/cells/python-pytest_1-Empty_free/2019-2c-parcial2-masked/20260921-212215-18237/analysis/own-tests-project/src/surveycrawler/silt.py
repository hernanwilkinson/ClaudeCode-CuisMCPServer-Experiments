import random

from surveycrawler.ground_type import GroundType


class Silt(GroundType):

    # instance creation

    @classmethod
    def with_random(cls, a_random):
        return cls(a_random)

    # sliding

    @classmethod
    def sliding_limit(cls):
        return 10

    # initialization

    def __init__(self, a_random=None):
        self._random = a_random if a_random is not None else random.Random()

    # moving

    def move_crawler_to(self, a_crawler, a_position, a_direction):
        a_slide = a_direction.times(self._random.randrange(self.sliding_limit()))
        a_crawler.slide_to(a_position.plus(a_slide))

    # facing

    def turn_crawler_with(self, a_crawler, a_turn):
        a_turn()
