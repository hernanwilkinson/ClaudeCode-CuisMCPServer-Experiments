from surveycrawler.crawler_command import CrawlerCommand


class AdvanceCommand(CrawlerCommand):

    # command character

    @classmethod
    def character(cls):
        return 'a'

    # executing

    def execute(self, a_crawler):
        a_crawler.advance()

    def undo(self, a_crawler):
        a_crawler.undo_advance()
