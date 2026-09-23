from surveycrawler.crawler_facing import CrawlerFacing


class CrawlerFacingUp(CrawlerFacing):

    # facing name

    @classmethod
    def facing_name(cls):
        return "Up"

    # moving

    def retreat(self, a_crawler):
        a_crawler.move_down()

    def advance(self, a_crawler):
        a_crawler.move_up()

    # facing

    def turn_counter_clockwise(self, a_crawler):
        a_crawler.face_left()

    def turn_clockwise(self, a_crawler):
        a_crawler.face_right()
