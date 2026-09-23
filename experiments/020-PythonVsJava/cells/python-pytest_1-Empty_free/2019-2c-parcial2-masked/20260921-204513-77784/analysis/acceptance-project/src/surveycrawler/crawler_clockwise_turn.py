from surveycrawler.crawler_movement import CrawlerMovement


class CrawlerClockwiseTurn(CrawlerMovement):

    # undoing

    def undo(self, a_crawler):
        a_crawler.turn_facing_counter_clockwise()
