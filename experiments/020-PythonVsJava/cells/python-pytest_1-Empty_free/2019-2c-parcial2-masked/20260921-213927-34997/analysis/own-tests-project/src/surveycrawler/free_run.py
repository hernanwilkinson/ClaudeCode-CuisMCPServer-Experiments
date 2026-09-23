from surveycrawler.crawler_run import CrawlerRun
from surveycrawler.guarded_run import GuardedRun


class FreeRun(CrawlerRun):
    """A run where the crawler keeps whatever it did before something went wrong."""

    # command processing

    def process_commands(self, a_command_stream):
        for a_character in a_command_stream:
            self.process_character(a_character, a_command_stream)

    # executing

    def execute(self, a_command):
        a_command.execute(self._crawler)

    def start_guarded_run(self, a_command_stream):
        self.forget_last_command()
        GuardedRun(self._crawler).process(a_command_stream)

    def slide_on(self, a_silt, a_direction):
        self._crawler.displace(a_direction.times(a_silt.slide_distance()))
