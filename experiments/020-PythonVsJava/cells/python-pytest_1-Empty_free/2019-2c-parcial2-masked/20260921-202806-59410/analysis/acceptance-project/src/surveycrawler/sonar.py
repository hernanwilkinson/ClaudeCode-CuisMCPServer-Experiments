from surveycrawler.firm_sand import FirmSand


class Sonar:

    # instance creation

    @classmethod
    def on_firm_sand(cls):
        return cls.with_grounds({})

    @classmethod
    def with_grounds(cls, a_dictionary_of_grounds_by_position):
        return cls(a_dictionary_of_grounds_by_position)

    # initialization

    def __init__(self, a_dictionary_of_grounds_by_position):
        self._grounds_by_position = dict(a_dictionary_of_grounds_by_position)

    # sensing

    def ground_at(self, a_position):
        return self._grounds_by_position.get(a_position, FirmSand())
