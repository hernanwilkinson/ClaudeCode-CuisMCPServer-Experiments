from surveycrawler.firm_sand import FirmSand
from surveycrawler.sonar import Sonar


class GroundMapSonar(Sonar):

    # instance creation

    @classmethod
    def with_grounds_at(cls, a_ground_by_position):
        return cls(a_ground_by_position)

    # initialization

    def __init__(self, a_ground_by_position):
        self._grounds = a_ground_by_position

    # ground detection

    def ground_at(self, a_position):
        return self._grounds.get(a_position, FirmSand())
