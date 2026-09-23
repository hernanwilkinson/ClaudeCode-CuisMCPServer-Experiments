from surveycrawler.firm_sand import FirmSand


class Sonar:

    # instance creation

    @classmethod
    def all_firm_sand(cls):
        return cls({})

    @classmethod
    def with_ground_types(cls, a_ground_type_by_position):
        return cls(dict(a_ground_type_by_position))

    # initialization

    def __init__(self, a_ground_type_by_position):
        self._ground_type_by_position = a_ground_type_by_position

    # sounding

    def ground_type_at(self, a_position):
        return self._ground_type_by_position.get(a_position, FirmSand())
