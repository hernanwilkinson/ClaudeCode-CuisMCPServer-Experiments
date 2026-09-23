from surveycrawler.crawler_facing import CrawlerFacing


class CrawlerFacingDown(CrawlerFacing):

    # facing name

    @classmethod
    def facing_name(cls):
        return "Down"

    # moving

    def retreat(self, a_crawler):
        a_crawler.move_up()

    def advance(self, a_crawler):
        a_crawler.move_down()

    # facing

    def turn_counter_clockwise(self, a_crawler):
        a_crawler.face_right()

    def turn_clockwise(self, a_crawler):
        a_crawler.face_left()
