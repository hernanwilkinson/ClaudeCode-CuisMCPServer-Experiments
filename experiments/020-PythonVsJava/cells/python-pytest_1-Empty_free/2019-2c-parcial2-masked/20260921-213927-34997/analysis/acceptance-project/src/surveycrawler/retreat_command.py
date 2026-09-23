from surveycrawler.crawler_command import CrawlerCommand


class RetreatCommand(CrawlerCommand):

    # command character

    @classmethod
    def character(cls):
        return 't'

    # executing

    def execute(self, a_crawler):
        a_crawler.retreat()

    def undo(self, a_crawler):
        a_crawler.undo_retreat()
