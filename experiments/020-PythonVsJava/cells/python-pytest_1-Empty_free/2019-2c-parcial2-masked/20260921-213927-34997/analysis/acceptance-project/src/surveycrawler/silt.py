import random

from surveycrawler.traversable_ground import TraversableGround


class Silt(TraversableGround):
    """The crawler slides an unpredictable number of positions when it moves over silt.

    Turning is not affected by silt, so it is inherited from TraversableGround.
    """

    # instance creation

    def __init__(self, a_random=None):
        self._random = random.Random() if a_random is None else a_random

    # sliding

    @classmethod
    def sliding_limit(cls):
        return 10

    def slide_distance(self):
        return self._random.randrange(self.sliding_limit()) + 1

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        a_crawler.slide_towards(a_direction, self)
