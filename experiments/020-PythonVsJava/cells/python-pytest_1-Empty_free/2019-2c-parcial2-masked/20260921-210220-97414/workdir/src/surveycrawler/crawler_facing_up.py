from surveycrawler.crawler_facing import CrawlerFacing
from surveycrawler.point import Point


class CrawlerFacingUp(CrawlerFacing):

    # facing name

    @classmethod
    def facing_name(cls):
        return "Up"

    # direction

    def direction(self):
        return Point(0, 1)

    # facing

    def turn_counter_clockwise(self, a_crawler):
        a_crawler.face_left()

    def turn_clockwise(self, a_crawler):
        a_crawler.face_right()
