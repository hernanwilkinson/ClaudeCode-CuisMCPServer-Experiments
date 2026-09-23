from surveycrawler.crawler_movement import CrawlerMovement


class CrawlerDisplacement(CrawlerMovement):

    # initialization

    def __init__(self, a_displacement):
        self._displacement = a_displacement

    # undoing

    def undo(self, a_crawler):
        a_crawler.move_by(self._displacement.negated())
