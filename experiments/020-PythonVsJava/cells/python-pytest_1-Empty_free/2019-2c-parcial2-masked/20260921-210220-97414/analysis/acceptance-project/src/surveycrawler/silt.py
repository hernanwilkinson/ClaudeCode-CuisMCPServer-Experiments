from random import Random

from surveycrawler.ground import Ground


class Silt(Ground):

    # instance creation

    @classmethod
    def with_random(cls, a_random):
        return cls(a_random)

    # initialization

    def __init__(self, a_random=None):
        self._random = Random() if a_random is None else a_random

    # sliding

    @classmethod
    def slide_limit(cls):
        return 10

    def slide_cells(self):
        return self._random.randrange(self.slide_limit()) + 1

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        a_crawler.slide_towards(a_direction, self)

    # testing

    def assert_can_be_occupied(self):
        pass  # silt does not affect turning
