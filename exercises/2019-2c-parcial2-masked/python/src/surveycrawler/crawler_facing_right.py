from surveycrawler.crawler_facing import CrawlerFacing


class CrawlerFacingRight(CrawlerFacing):

    # facing name

    @classmethod
    def facing_name(cls):
        return "Right"

    # moving

    def retreat(self, a_crawler):
        a_crawler.move_left()

    def advance(self, a_crawler):
        a_crawler.move_right()

    # facing

    def turn_counter_clockwise(self, a_crawler):
        a_crawler.face_up()

    def turn_clockwise(self, a_crawler):
        a_crawler.face_down()
