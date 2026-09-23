from surveycrawler.crawler_run import CrawlerRun


class GuardedRun(CrawlerRun):
    """A run where the crawler returns to the position and facing it had when the run started if
    something goes wrong, by undoing the commands it already executed."""

    # instance creation

    def __init__(self, a_crawler):
        super().__init__(a_crawler)
        self._executed_commands = []

    # command processing

    def process_commands(self, a_command_stream):
        try:
            for a_character in a_command_stream:
                if self.is_guarded_run_end(a_character):
                    return
                self.process_character(a_character, a_command_stream)

            self._crawler.signal_unfinished_guarded_run()
        except RuntimeError:
            self.undo()
            raise

    # executing

    def execute(self, a_command):
        a_command.execute(self._crawler)
        self._executed_commands.append(a_command)

    def start_guarded_run(self, a_command_stream):
        self._crawler.signal_nested_guarded_run()

    def slide_on(self, a_silt, a_direction):
        self._crawler.signal_unpredictable_movement()

    # undoing

    def undo(self):
        while self._executed_commands:
            self._executed_commands.pop().undo(self._crawler)
