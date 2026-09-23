from surveycrawler.point import Point
from surveycrawler.crawler_facing import CrawlerFacing
from surveycrawler.crawler_facing_right import CrawlerFacingRight
from surveycrawler.crawler_facing_up import CrawlerFacingUp
from surveycrawler.crawler_facing_down import CrawlerFacingDown
from surveycrawler.crawler_facing_left import CrawlerFacingLeft
from surveycrawler.crawler_clockwise_turn import CrawlerClockwiseTurn
from surveycrawler.crawler_counter_clockwise_turn import CrawlerCounterClockwiseTurn
from surveycrawler.crawler_displacement import CrawlerDisplacement
from surveycrawler.guarded_run import GuardedRun
from surveycrawler.normal_run import NormalRun
from surveycrawler.sonar import Sonar


class SurveyCrawler:

    # instance creation

    @classmethod
    def at_facing(cls, a_position, a_facing_name):
        return cls.at_facing_sonar(a_position, a_facing_name, Sonar.all_firm_sand())

    @classmethod
    def at_facing_sonar(cls, a_position, a_facing_name, a_sonar):
        return cls(a_position, CrawlerFacing.facing(a_facing_name), a_sonar)

    @classmethod
    def invalid_facing_error_description(cls):
        return "Invalid facing"

    # exceptions

    def invalid_command_error_description(self):
        return "Invalid command"

    def boulder_found_error_description(self):
        return "Boulder found"

    def can_not_slide_during_guarded_run_error_description(self):
        return "Can not move on silt during a guarded run"

    def guarded_run_already_started_error_description(self):
        return "Can not start a guarded run during a guarded run"

    def guarded_run_not_started_error_description(self):
        return "Can not finish a guarded run that has not started"

    def unfinished_guarded_run_error_description(self):
        return "Guarded run not finished"

    def signal_invalid_command(self):
        raise RuntimeError(self.invalid_command_error_description())

    def signal_boulder_found(self):
        raise RuntimeError(self.boulder_found_error_description())

    def signal_can_not_slide_during_guarded_run(self):
        raise RuntimeError(self.can_not_slide_during_guarded_run_error_description())

    def signal_guarded_run_already_started(self):
        raise RuntimeError(self.guarded_run_already_started_error_description())

    def signal_guarded_run_not_started(self):
        raise RuntimeError(self.guarded_run_not_started_error_description())

    def signal_unfinished_guarded_run(self):
        raise RuntimeError(self.unfinished_guarded_run_error_description())

    # initialization

    def __init__(self, a_position, a_facing, a_sonar):
        self._position = a_position
        self._facing = a_facing
        self._sonar = a_sonar
        self._current_run = NormalRun()
        self._last_repeatable_command = None

    # facing

    def face_right(self):
        self._facing = CrawlerFacingRight()

    def face_up(self):
        self._facing = CrawlerFacingUp()

    def face_down(self):
        self._facing = CrawlerFacingDown()

    def face_left(self):
        self._facing = CrawlerFacingLeft()

    def turn_counter_clockwise(self):
        self.ground_at_position().assert_crawler_can_turn(self)
        self.turn_facing_counter_clockwise()
        self._current_run.register_movement(CrawlerCounterClockwiseTurn())

    def turn_clockwise(self):
        self.ground_at_position().assert_crawler_can_turn(self)
        self.turn_facing_clockwise()
        self._current_run.register_movement(CrawlerClockwiseTurn())

    def turn_facing_counter_clockwise(self):
        self._facing.turn_counter_clockwise(self)

    def turn_facing_clockwise(self):
        self._facing.turn_clockwise(self)

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

    def is_repetition_command(self, a_command):
        return a_command.isdigit()

    def is_start_guarded_run_command(self, a_command):
        return a_command == '('

    def is_finish_guarded_run_command(self, a_command):
        return a_command == ')'

    # sensing

    def ground_at(self, a_position):
        return self._sonar.ground_at(a_position)

    def ground_at_position(self):
        return self.ground_at(self._position)

    # moving

    def retreat(self):
        self._facing.retreat(self)

    def move_right(self):
        self.move_towards(Point(1, 0))

    def advance(self):
        self._facing.advance(self)

    def move_up(self):
        self.move_towards(Point(0, 1))

    def move_down(self):
        self.move_towards(Point(0, -1))

    def move_left(self):
        self.move_towards(Point(-1, 0))

    def move_towards(self, a_direction):
        self.ground_at(self._position.plus(a_direction)).move_crawler_towards(self, a_direction)

    def move_one_cell_towards(self, a_direction):
        self.move_cells_towards(1, a_direction)

    def slide_towards(self, a_direction, a_silt):
        self._current_run.slide_crawler_towards(self, a_direction, a_silt)

    def move_cells_towards(self, a_number_of_cells, a_direction):
        a_displacement = a_direction.times(a_number_of_cells)
        self.move_by(a_displacement)
        self._current_run.register_movement(CrawlerDisplacement(a_displacement))

    def move_by(self, a_displacement):
        self._position = self._position.plus(a_displacement)

    # guarded run

    def start_normal_run(self):
        self._current_run = NormalRun()
        self.forget_last_repeatable_command()

    def start_guarded_run(self):
        self._current_run = GuardedRun()
        self.forget_last_repeatable_command()

    def finish_guarded_run(self):
        self._current_run = NormalRun()
        self.forget_last_repeatable_command()

    # command processing

    def process(self, a_sequence_of_commands):
        self.start_normal_run()
        try:
            for a_command in a_sequence_of_commands:
                self._current_run.process_command(self, a_command)
            self._current_run.assert_is_finished(self)
        except RuntimeError:
            self._current_run.undo_movements(self)
            self.start_normal_run()
            raise

    def process_movement_command(self, a_command):
        if self.is_repetition_command(a_command):
            self.repeat_last_repeatable_command(int(a_command))
            return

        self.process_command(a_command)
        self._last_repeatable_command = a_command

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

        self.signal_invalid_command()

    # command repetition

    @classmethod
    def number_of_repetitions_added_to_digit(cls):
        return 2

    def forget_last_repeatable_command(self):
        self._last_repeatable_command = None

    def repeat_last_repeatable_command(self, a_number_of_repetitions):
        if self._last_repeatable_command is None:
            self.signal_invalid_command()

        a_command = self._last_repeatable_command
        self.forget_last_repeatable_command()
        for _ in range(a_number_of_repetitions + self.number_of_repetitions_added_to_digit()):
            self.process_command(a_command)
