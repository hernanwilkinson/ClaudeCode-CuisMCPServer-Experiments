from surveycrawler.crawler_command import CrawlerCommand


class TurnCounterClockwiseCommand(CrawlerCommand):

    # command character

    @classmethod
    def character(cls):
        return 'g'

    # executing

    def execute(self, a_crawler):
        a_crawler.turn_counter_clockwise()

    def undo(self, a_crawler):
        a_crawler.undo_turn_counter_clockwise()
