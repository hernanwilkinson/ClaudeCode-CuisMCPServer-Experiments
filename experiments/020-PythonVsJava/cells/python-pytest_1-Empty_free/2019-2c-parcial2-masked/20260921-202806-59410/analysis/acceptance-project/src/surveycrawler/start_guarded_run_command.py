from surveycrawler.crawler_command import CrawlerCommand


class StartGuardedRunCommand(CrawlerCommand):

    # command character

    @classmethod
    def command_character(cls):
        return '('

    # repeating

    def repeat(self, a_number_of_repetitions, a_crawler):
        a_crawler.signal_invalid_command()

    # executing

    def execute(self, a_crawler):
        a_crawler.start_guarded_run()
