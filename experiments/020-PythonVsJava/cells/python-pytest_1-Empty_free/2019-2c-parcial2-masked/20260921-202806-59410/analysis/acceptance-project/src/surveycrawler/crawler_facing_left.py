from surveycrawler.point import Point
from surveycrawler.crawler_facing import CrawlerFacing


class CrawlerFacingLeft(CrawlerFacing):

    # facing name

    @classmethod
    def facing_name(cls):
        return "Left"

    # moving

    def advance_direction(self):
        return Point(-1, 0)

    # facing

    def turn_counter_clockwise(self, a_crawler):
        a_crawler.face_down()

    def turn_clockwise(self, a_crawler):
        a_crawler.face_up()
