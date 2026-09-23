from surveycrawler.crawler_command import CrawlerCommand


class RetreatCommand(CrawlerCommand):

    # command character

    @classmethod
    def command_character(cls):
        return 't'

    # executing

    def execute(self, a_crawler):
        a_crawler.retreat()
