from surveycrawler.crawler_facing import CrawlerFacing


class CrawlerFacingLeft(CrawlerFacing):

    # facing name

    @classmethod
    def facing_name(cls):
        return "Left"

    # moving

    def retreat(self, a_crawler):
        a_crawler.move_right()

    def advance(self, a_crawler):
        a_crawler.move_left()

    # facing

    def turn_counter_clockwise(self, a_crawler):
        a_crawler.face_down()

    def turn_clockwise(self, a_crawler):
        a_crawler.face_up()
