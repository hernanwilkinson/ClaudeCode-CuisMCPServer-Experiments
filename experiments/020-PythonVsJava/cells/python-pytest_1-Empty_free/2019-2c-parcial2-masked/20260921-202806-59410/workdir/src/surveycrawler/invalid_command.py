from surveycrawler.crawler_command import CrawlerCommand


class InvalidCommand(CrawlerCommand):

    # testing

    @classmethod
    def is_for(cls, a_character):
        return False

    # repeating

    def repeat(self, a_number_of_repetitions, a_crawler):
        a_crawler.signal_invalid_command()

    # executing

    def execute(self, a_crawler):
        a_crawler.signal_invalid_command()
