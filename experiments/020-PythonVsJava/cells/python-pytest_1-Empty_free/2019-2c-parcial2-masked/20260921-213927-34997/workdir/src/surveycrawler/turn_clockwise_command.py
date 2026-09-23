from surveycrawler.crawler_command import CrawlerCommand


class TurnClockwiseCommand(CrawlerCommand):

    # command character

    @classmethod
    def character(cls):
        return 'h'

    # executing

    def execute(self, a_crawler):
        a_crawler.turn_clockwise()

    def undo(self, a_crawler):
        a_crawler.undo_turn_clockwise()
