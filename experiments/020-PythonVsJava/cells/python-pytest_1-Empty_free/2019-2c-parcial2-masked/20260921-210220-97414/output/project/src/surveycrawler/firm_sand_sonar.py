from surveycrawler.firm_sand import FirmSand
from surveycrawler.sonar import Sonar


class FirmSandSonar(Sonar):

    # ground detection

    def ground_at(self, a_position):
        return FirmSand()
