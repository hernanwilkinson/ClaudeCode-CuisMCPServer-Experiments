from surveycrawler.firm_sand import FirmSand
from surveycrawler.sonar import Sonar


class FirmSandSonar(Sonar):
    """A sonar for a seabed that is firm sand everywhere."""

    # detecting

    def ground_at(self, a_position):
        return FirmSand()
