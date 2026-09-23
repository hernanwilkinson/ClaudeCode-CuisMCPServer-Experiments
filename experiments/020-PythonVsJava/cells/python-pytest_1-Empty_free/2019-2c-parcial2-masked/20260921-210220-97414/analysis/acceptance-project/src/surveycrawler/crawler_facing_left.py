from surveycrawler.crawler_facing import CrawlerFacing
from surveycrawler.point import Point


class CrawlerFacingLeft(CrawlerFacing):

    # facing name

    @classmethod
    def facing_name(cls):
        return "Left"

    # direction

    def direction(self):
        return Point(-1, 0)

    # facing

    def turn_counter_clockwise(self, a_crawler):
        a_crawler.face_down()

    def turn_clockwise(self, a_crawler):
        a_crawler.face_up()
