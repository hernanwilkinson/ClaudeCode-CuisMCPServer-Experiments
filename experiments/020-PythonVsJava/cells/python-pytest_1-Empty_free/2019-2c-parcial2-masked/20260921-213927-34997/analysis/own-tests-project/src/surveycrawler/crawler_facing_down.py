from surveycrawler.crawler_facing import CrawlerFacing
from surveycrawler.point import Point


class CrawlerFacingDown(CrawlerFacing):

    # facing name

    @classmethod
    def facing_name(cls):
        return "Down"

    # moving

    def advance_direction(self):
        return Point(0, -1)

    # facing

    def turn_counter_clockwise(self, a_crawler):
        a_crawler.face_right()

    def turn_clockwise(self, a_crawler):
        a_crawler.face_left()
