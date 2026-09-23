from surveycrawler.crawler_movement import CrawlerMovement


class CrawlerCounterClockwiseTurn(CrawlerMovement):

    # undoing

    def undo(self, a_crawler):
        a_crawler.turn_facing_clockwise()
