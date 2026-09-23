from surveycrawler.crawler_command import CrawlerCommand


class TurnCounterClockwiseCommand(CrawlerCommand):

    # command character

    @classmethod
    def command_character(cls):
        return 'g'

    # executing

    def execute(self, a_crawler):
        a_crawler.turn_counter_clockwise()
