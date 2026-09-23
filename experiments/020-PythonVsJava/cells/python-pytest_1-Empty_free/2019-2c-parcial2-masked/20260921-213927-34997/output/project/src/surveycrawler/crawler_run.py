from surveycrawler.crawler_command import CrawlerCommand
from surveycrawler.no_command import NoCommand

# imported so that CrawlerCommand.for_character finds them among the subclasses of CrawlerCommand
from surveycrawler.advance_command import AdvanceCommand
from surveycrawler.retreat_command import RetreatCommand
from surveycrawler.turn_clockwise_command import TurnClockwiseCommand
from surveycrawler.turn_counter_clockwise_command import TurnCounterClockwiseCommand


class CrawlerRun:
    """The processing of a sequence of commands by a crawler.

    It knows how to turn the characters of the sequence into commands and what to do with what
    happens while they are executed, which is what distinguishes a free run from a guarded run.
    """

    # instance creation

    def __init__(self, a_crawler):
        self._crawler = a_crawler
        self._last_command = NoCommand()

    # command processing

    def process(self, a_command_stream):
        a_previous_run = self._crawler.current_run()
        self._crawler.begin_run(self)
        try:
            self.process_commands(a_command_stream)
        finally:
            self._crawler.begin_run(a_previous_run)

    def process_commands(self, a_command_stream):
        raise NotImplementedError()

    def process_character(self, a_character, a_command_stream):
        if self.is_repetition(a_character):
            self.repeat_last_command(int(a_character))
            return
        if self.is_guarded_run_start(a_character):
            self.start_guarded_run(a_command_stream)
            return

        self.process_new_command(CrawlerCommand.for_character(a_character))

    def process_new_command(self, a_command):
        self.execute(a_command)
        self._last_command = a_command

    def repeat_last_command(self, a_digit):
        self._last_command.repeat(self, self.repetitions_for(a_digit))
        self.forget_last_command()

    def forget_last_command(self):
        self._last_command = NoCommand()

    # testing

    def is_repetition(self, a_character):
        return a_character.isdigit()

    def is_guarded_run_start(self, a_character):
        return a_character == '('

    def is_guarded_run_end(self, a_character):
        return a_character == ')'

    @classmethod
    def repetitions_for(cls, a_digit):
        # 2 is added to the digit to maximize the number of repetitions: repeating 0 times makes
        # no sense and repeating 1 time is the same as sending the command twice
        return a_digit + 2

    # executing

    def execute(self, a_command):
        raise NotImplementedError()

    def start_guarded_run(self, a_command_stream):
        raise NotImplementedError()

    def slide_on(self, a_silt, a_direction):
        raise NotImplementedError()

    # exceptions

    def signal_invalid_command(self):
        self._crawler.signal_invalid_command()
