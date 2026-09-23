from surveycrawler.crawler_command import CrawlerCommand


class EndGuardedRunCommand(CrawlerCommand):

    # command character

    @classmethod
    def command_character(cls):
        return ')'

    # repeating

    def repeat(self, a_number_of_repetitions, a_crawler):
        a_crawler.signal_invalid_command()

    # executing

    def execute(self, a_crawler):
        a_crawler.end_guarded_run()
