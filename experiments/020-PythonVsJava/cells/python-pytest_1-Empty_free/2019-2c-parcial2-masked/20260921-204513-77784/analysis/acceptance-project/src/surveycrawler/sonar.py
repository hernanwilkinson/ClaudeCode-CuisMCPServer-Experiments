from surveycrawler.firm_sand import FirmSand


class Sonar:

    # instance creation

    @classmethod
    def all_firm_sand(cls):
        return cls({})

    @classmethod
    def with_grounds(cls, a_ground_by_position):
        return cls(a_ground_by_position)

    # initialization

    def __init__(self, a_ground_by_position):
        self._ground_by_position = dict(a_ground_by_position)

    # sensing

    def ground_at(self, a_position):
        if a_position in self._ground_by_position:
            return self._ground_by_position[a_position]
        return FirmSand()
