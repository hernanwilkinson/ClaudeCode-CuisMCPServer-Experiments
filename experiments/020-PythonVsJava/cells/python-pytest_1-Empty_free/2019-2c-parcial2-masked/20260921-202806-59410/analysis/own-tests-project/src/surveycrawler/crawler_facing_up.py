from surveycrawler.point import Point
from surveycrawler.crawler_facing import CrawlerFacing


class CrawlerFacingUp(CrawlerFacing):

    # facing name

    @classmethod
    def facing_name(cls):
        return "Up"

    # moving

    def advance_direction(self):
        return Point(0, 1)

    # facing

    def turn_counter_clockwise(self, a_crawler):
        a_crawler.face_left()

    def turn_clockwise(self, a_crawler):
        a_crawler.face_right()
