from surveycrawler.point import Point
from surveycrawler.crawler_facing import CrawlerFacing
from surveycrawler.crawler_facing_right import CrawlerFacingRight
from surveycrawler.crawler_facing_up import CrawlerFacingUp
from surveycrawler.crawler_facing_down import CrawlerFacingDown
from surveycrawler.crawler_facing_left import CrawlerFacingLeft
from surveycrawler.free_run import FreeRun
from surveycrawler.sonar import Sonar


class SurveyCrawler:

    # instance creation

    @classmethod
    def at_facing(cls, a_position, a_facing_name):
        return cls.at_facing_with_sonar(a_position, a_facing_name, Sonar.all_firm_sand())

    @classmethod
    def at_facing_with_sonar(cls, a_position, a_facing_name, a_sonar):
        return cls(a_position, CrawlerFacing.facing(a_facing_name), a_sonar)

    @classmethod
    def invalid_facing_error_description(cls):
        return "Invalid facing"

    # exceptions

    def invalid_command_error_description(self):
        return "Invalid command"

    def boulder_found_error_description(self):
        return "Can not move to or turn on a boulder"

    def silt_found_error_description(self):
        return "Can not move on silt during a guarded run"

    def guarded_run_inside_guarded_run_error_description(self):
        return "Can not start a guarded run during a guarded run"

    def unfinished_guarded_run_error_description(self):
        return "Guarded run was not finished"

    def signal_invalid_command(self):
        raise RuntimeError(self.invalid_command_error_description())

    def signal_boulder_found(self):
        raise RuntimeError(self.boulder_found_error_description())

    def signal_silt_found(self):
        raise RuntimeError(self.silt_found_error_description())

    def signal_guarded_run_inside_guarded_run(self):
        raise RuntimeError(self.guarded_run_inside_guarded_run_error_description())

    def signal_unfinished_guarded_run(self):
        raise RuntimeError(self.unfinished_guarded_run_error_description())

    # initialization

    def __init__(self, a_position, a_facing, a_sonar):
        self._position = a_position
        self._facing = a_facing
        self._sonar = a_sonar
        self._run = FreeRun()

    # facing

    def face_right(self):
        self.change_facing_to(CrawlerFacingRight())

    def face_up(self):
        self.change_facing_to(CrawlerFacingUp())

    def face_down(self):
        self.change_facing_to(CrawlerFacingDown())

    def face_left(self):
        self.change_facing_to(CrawlerFacingLeft())

    def change_facing_to(self, a_facing):
        # the undo of a turn is turning back to the facing it had before turning
        a_previous_facing = self._facing
        self._facing = a_facing
        self._run.register_undo(lambda: self.change_facing_to(a_previous_facing))

    def turn_counter_clockwise(self):
        self.ground_type_at(self._position).turn_crawler_with(
            self, lambda: self._facing.turn_counter_clockwise(self))

    def turn_clockwise(self):
        self.ground_type_at(self._position).turn_crawler_with(
            self, lambda: self._facing.turn_clockwise(self))

    # testing

    def is_at_facing(self, a_position, a_facing_name):
        return self._position == a_position and self._facing.is_facing(a_facing_name)

    def is_retreat_command(self, a_command):
        return a_command == 't'

    def is_advance_command(self, a_command):
        return a_command == 'a'

    def is_turn_counter_clockwise_command(self, a_command):
        return a_command == 'g'

    def is_turn_clockwise_command(self, a_command):
        return a_command == 'h'

    def is_start_guarded_run_command(self, a_command):
        return a_command == '('

    def is_end_guarded_run_command(self, a_command):
        return a_command == ')'

    def is_repeatable_command(self, a_command):
        return (self.is_advance_command(a_command)
                or self.is_retreat_command(a_command)
                or self.is_turn_clockwise_command(a_command)
                or self.is_turn_counter_clockwise_command(a_command))

    # sounding

    def ground_type_at(self, a_position):
        return self._sonar.ground_type_at(a_position)

    # moving

    def retreat(self):
        self._facing.retreat(self)

    def move_right(self):
        self.move_in_direction(Point(1, 0))

    def advance(self):
        self._facing.advance(self)

    def move_up(self):
        self.move_in_direction(Point(0, 1))

    def move_down(self):
        self.move_in_direction(Point(0, -1))

    def move_left(self):
        self.move_in_direction(Point(-1, 0))

    def move_in_direction(self, a_direction):
        a_new_position = self._position.plus(a_direction)
        self.ground_type_at(a_new_position).move_crawler_to(self, a_new_position, a_direction)

    def slide_to(self, a_position):
        self._run.slide_crawler_to(self, a_position)

    def change_position_to(self, a_position):
        # the undo of a movement is the opposite movement, the one back to where it was
        a_previous_position = self._position
        self._position = a_position
        self._run.register_undo(lambda: self.change_position_to(a_previous_position))

    # guarded run

    def change_to_free_run(self):
        self._run = FreeRun()

    def start_guarded_run(self):
        self._run = self._run.start_guarded_run(self)

    def end_guarded_run(self):
        self._run = self._run.end_guarded_run(self)

    # command processing

    def process(self, a_sequence_of_commands):
        self.change_to_free_run()
        try:
            self.process_commands(a_sequence_of_commands)
        except RuntimeError:
            self._run.handle_error(self)
            raise

    def process_commands(self, a_sequence_of_commands):
        a_last_command = self.no_command()
        for a_command in a_sequence_of_commands:
            a_last_command = self.process_command_or_repetition(a_command, a_last_command)
        self._run.finish(self)

    def no_command(self):
        return ''

    def process_command_or_repetition(self, a_command, a_last_command):
        if a_command.isdigit():
            self.repeat_command_times(a_last_command, int(a_command) + 2)
            return self.no_command()

        self.process_command(a_command)
        return a_command

    def repeat_command_times(self, a_command, a_number_of_times):
        if not self.is_repeatable_command(a_command):
            self.signal_invalid_command()

        for a_repetition in range(a_number_of_times):
            self.process_command(a_command)

    def process_command(self, a_command):
        if self.is_advance_command(a_command):
            self.advance()
            return
        if self.is_retreat_command(a_command):
            self.retreat()
            return
        if self.is_turn_clockwise_command(a_command):
            self.turn_clockwise()
            return
        if self.is_turn_counter_clockwise_command(a_command):
            self.turn_counter_clockwise()
            return
        if self.is_start_guarded_run_command(a_command):
            self.start_guarded_run()
            return
        if self.is_end_guarded_run_command(a_command):
            self.end_guarded_run()
            return

        self.signal_invalid_command()
