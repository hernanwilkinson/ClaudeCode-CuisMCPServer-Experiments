from surveycrawler.crawler_command import CrawlerCommand


class TurnClockwiseCommand(CrawlerCommand):

    # command character

    @classmethod
    def command_character(cls):
        return 'h'

    # executing

    def execute(self, a_crawler):
        a_crawler.turn_clockwise()
