from surveycrawler.crawler_facing import CrawlerFacing
from surveycrawler.crawler_facing_right import CrawlerFacingRight
from surveycrawler.crawler_facing_up import CrawlerFacingUp
from surveycrawler.crawler_facing_down import CrawlerFacingDown
from surveycrawler.crawler_facing_left import CrawlerFacingLeft
from surveycrawler.crawler_command import CrawlerCommand
# the command subclasses are imported so CrawlerCommand.for_character finds them
from surveycrawler.advance_command import AdvanceCommand
from surveycrawler.retreat_command import RetreatCommand
from surveycrawler.turn_clockwise_command import TurnClockwiseCommand
from surveycrawler.turn_counter_clockwise_command import TurnCounterClockwiseCommand
from surveycrawler.start_guarded_run_command import StartGuardedRunCommand
from surveycrawler.end_guarded_run_command import EndGuardedRunCommand
from surveycrawler.clockwise_turn import ClockwiseTurn
from surveycrawler.counter_clockwise_turn import CounterClockwiseTurn
from surveycrawler.normal_run import NormalRun
from surveycrawler.guarded_run import GuardedRun
from surveycrawler.sonar import Sonar


class SurveyCrawler:

    # instance creation

    @classmethod
    def at_facing(cls, a_position, a_facing_name):
        return cls.at_facing_sonar(a_position, a_facing_name, Sonar.on_firm_sand())

    @classmethod
    def at_facing_sonar(cls, a_position, a_facing_name, a_sonar):
        return cls(a_position, CrawlerFacing.facing(a_facing_name), a_sonar)

    # error descriptions

    @classmethod
    def invalid_facing_error_description(cls):
        return "Invalid facing"

    @classmethod
    def invalid_command_error_description(cls):
        return "Invalid command"

    @classmethod
    def boulder_found_error_description(cls):
        return "Boulder found"

    @classmethod
    def can_not_move_on_silt_during_a_guarded_run_error_description(cls):
        return "Can not move on silt during a guarded run"

    @classmethod
    def can_not_start_a_guarded_run_during_a_guarded_run_error_description(cls):
        return "Can not start a guarded run during a guarded run"

    @classmethod
    def guarded_run_not_finished_error_description(cls):
        return "Guarded run not finished"

    # exceptions

    def signal_invalid_command(self):
        raise RuntimeError(self.invalid_command_error_description())

    def signal_boulder_found(self):
        raise RuntimeError(self.boulder_found_error_description())

    def signal_can_not_move_on_silt_during_a_guarded_run(self):
        raise RuntimeError(self.can_not_move_on_silt_during_a_guarded_run_error_description())

    def signal_can_not_start_a_guarded_run_during_a_guarded_run(self):
        raise RuntimeError(self.can_not_start_a_guarded_run_during_a_guarded_run_error_description())

    def signal_guarded_run_not_finished(self):
        raise RuntimeError(self.guarded_run_not_finished_error_description())

    # initialization

    def __init__(self, a_position, a_facing, a_sonar):
        self._position = a_position
        self._facing = a_facing
        self._sonar = a_sonar
        self._run = NormalRun()

    # accessing

    def position(self):
        return self._position

    def facing(self):
        return self._facing

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
        self.turn(CounterClockwiseTurn())

    def turn_clockwise(self):
        self.turn(ClockwiseTurn())

    def turn(self, a_turn):
        self.ground_at(self._position).turn_crawler(self, a_turn)

    def turn_to(self, a_turn):
        self._run.register_undo(lambda: a_turn.inverted().apply_to(self))
        a_turn.apply_to(self)

    # testing

    def is_at_facing(self, a_position, a_facing_name):
        return self._position == a_position and self._facing.is_facing(a_facing_name)

    # sensing

    def ground_at(self, a_position):
        return self._sonar.ground_at(a_position)

    # moving

    def retreat(self):
        self.move_towards(self._facing.retreat_direction())

    def advance(self):
        self.move_towards(self._facing.advance_direction())

    def move_towards(self, a_direction):
        a_position_to_move_to = self._position.plus(a_direction)
        self.ground_at(a_position_to_move_to).move_crawler_towards(self, a_direction)

    def slide_towards(self, a_direction, a_silt):
        self._run.slide_crawler_towards(self, a_direction, a_silt)

    def move_to(self, a_position):
        a_previous_position = self._position
        self._run.register_undo(lambda: self.move_back_to(a_previous_position))
        self._position = a_position

    def move_back_to(self, a_position):
        self._position = a_position

    # guarded run

    def start_guarded_run(self):
        self._run.start_guarded_run(self)

    def end_guarded_run(self):
        self._run.end_guarded_run(self)

    def begin_guarded_run(self):
        self._run = GuardedRun()

    def begin_normal_run(self):
        self._run = NormalRun()

    # command processing

    def process(self, a_sequence_of_commands):
        try:
            self.interpret(a_sequence_of_commands)
            self._run.finish(self)
        except RuntimeError:
            self._run.handle_error(self)
            raise

    def interpret(self, a_sequence_of_commands):
        a_last_command = CrawlerCommand.no_command()
        for a_character in a_sequence_of_commands:
            if a_character.isdigit():
                a_last_command.repeat(CrawlerCommand.number_of_repetitions_of(a_character), self)
                a_last_command = CrawlerCommand.no_command()
            else:
                a_last_command = CrawlerCommand.for_character(a_character)
                a_last_command.execute(self)
