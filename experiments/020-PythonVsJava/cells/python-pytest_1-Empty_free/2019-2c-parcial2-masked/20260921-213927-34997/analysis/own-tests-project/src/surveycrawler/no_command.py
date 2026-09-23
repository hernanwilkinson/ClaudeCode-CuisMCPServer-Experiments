from surveycrawler.crawler_command import CrawlerCommand


class NoCommand(CrawlerCommand):
    """The absence of a command to repeat, so repeating it is an invalid command."""

    # testing

    @classmethod
    def is_for(cls, a_character):
        return False

    # executing

    def repeat(self, a_run, a_number_of_repetitions):
        a_run.signal_invalid_command()
