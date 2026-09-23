from surveycrawler.advance_command import AdvanceCommand
from surveycrawler.command import Command
from surveycrawler.no_command import NoCommand
from surveycrawler.retreat_command import RetreatCommand
from surveycrawler.turn_clockwise_command import TurnClockwiseCommand
from surveycrawler.turn_counter_clockwise_command import TurnCounterClockwiseCommand


class Run:

    # initialization

    def __init__(self, a_crawler):
        self._crawler = a_crawler
        self._last_command = NoCommand()

    # testing

    def is_repetition(self, a_character):
        return a_character.isdigit()

    def is_start_of_guarded_run(self, a_character):
        return a_character == '('

    def is_end_of_guarded_run(self, a_character):
        return a_character == ')'

    # command processing

    def process(self, a_character):
        if self.is_repetition(a_character):
            self.repeat_last_command(int(a_character))
            return
        if self.is_start_of_guarded_run(a_character):
            self.start_guarded_run()
            return
        if self.is_end_of_guarded_run(a_character):
            self.end_guarded_run()
            return

        self.execute_new_command(Command.for_character(a_character))

    def execute_new_command(self, a_command):
        self.execute(a_command)
        self._last_command = a_command

    def repeat_last_command(self, a_digit):
        a_command = self._last_command
        self._last_command = NoCommand()  # a repetition can not be repeated, it is a single digit
        for _ in range(self.number_of_repetitions_of(a_digit)):
            self.execute(a_command)

    def number_of_repetitions_of(self, a_digit):
        # 2 is added to maximize the number of repetitions: repeating 0 times makes no sense and
        # repeating 1 time is the same as sending the command twice
        return a_digit + 2

    # executing

    def execute(self, a_command):
        raise NotImplementedError()

    # guarded run

    def start_guarded_run(self):
        raise NotImplementedError()

    def end_guarded_run(self):
        raise NotImplementedError()

    def finish(self):
        raise NotImplementedError()

    # moving

    def slide_towards(self, a_direction, a_silt):
        raise NotImplementedError()
