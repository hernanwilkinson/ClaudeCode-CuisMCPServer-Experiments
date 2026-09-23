from surveycrawler.crawler_facing import CrawlerFacing
from surveycrawler.crawler_facing_right import CrawlerFacingRight
from surveycrawler.crawler_facing_up import CrawlerFacingUp
from surveycrawler.crawler_facing_down import CrawlerFacingDown
from surveycrawler.crawler_facing_left import CrawlerFacingLeft
from surveycrawler.firm_sand_sonar import FirmSandSonar
from surveycrawler.free_run import FreeRun


class SurveyCrawler:

    # instance creation

    @classmethod
    def at_facing(cls, a_position, a_facing_name):
        return cls.at_facing_with_sonar(a_position, a_facing_name, FirmSandSonar())

    @classmethod
    def at_facing_with_sonar(cls, a_position, a_facing_name, a_sonar):
        return cls(a_position, CrawlerFacing.facing(a_facing_name), a_sonar)

    # initialization

    def __init__(self, a_position, a_facing, a_sonar):
        self._position = a_position
        self._facing = a_facing
        self._sonar = a_sonar
        self._run = FreeRun(self)

    # exceptions

    @classmethod
    def invalid_facing_error_description(cls):
        return "Invalid facing"

    @classmethod
    def invalid_command_error_description(cls):
        return "Invalid command"

    @classmethod
    def can_not_move_over_boulder_error_description(cls):
        return "Can not move over a boulder"

    @classmethod
    def can_not_turn_over_boulder_error_description(cls):
        return "Can not turn over a boulder"

    @classmethod
    def unpredictable_movement_error_description(cls):
        return "Can not move over silt during a guarded run"

    @classmethod
    def nested_guarded_run_error_description(cls):
        return "Can not start a guarded run inside another guarded run"

    @classmethod
    def unfinished_guarded_run_error_description(cls):
        return "Guarded run was not finished"

    def signal_invalid_command(self):
        raise RuntimeError(self.invalid_command_error_description())

    def signal_can_not_move_over_boulder(self):
        raise RuntimeError(self.can_not_move_over_boulder_error_description())

    def signal_can_not_turn_over_boulder(self):
        raise RuntimeError(self.can_not_turn_over_boulder_error_description())

    def signal_unpredictable_movement(self):
        raise RuntimeError(self.unpredictable_movement_error_description())

    def signal_nested_guarded_run(self):
        raise RuntimeError(self.nested_guarded_run_error_description())

    def signal_unfinished_guarded_run(self):
        raise RuntimeError(self.unfinished_guarded_run_error_description())

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
        self.current_ground().turn_crawler_counter_clockwise(self)

    def turn_clockwise(self):
        self.current_ground().turn_crawler_clockwise(self)

    def turn_facing_counter_clockwise(self):
        self._facing.turn_counter_clockwise(self)

    def turn_facing_clockwise(self):
        self._facing.turn_clockwise(self)

    # testing

    def is_at_facing(self, a_position, a_facing_name):
        return self._position == a_position and self._facing.is_facing(a_facing_name)

    # ground

    def current_ground(self):
        return self._sonar.ground_at(self._position)

    # moving

    def advance(self):
        self.move_towards(self._facing.advance_direction())

    def retreat(self):
        self.move_towards(self._facing.retreat_direction())

    def move_towards(self, a_direction):
        a_ground = self._sonar.ground_at(self._position.plus(a_direction))
        a_ground.move_crawler_towards(self, a_direction)

    def slide_towards(self, a_direction, a_silt):
        self._run.slide_on(a_silt, a_direction)

    def displace(self, a_direction):
        self._position = self._position.plus(a_direction)

    # undoing

    def undo_advance(self):
        # the crawler retraces its own path, so the sonar is not asked again
        self.displace(self._facing.retreat_direction())

    def undo_retreat(self):
        self.displace(self._facing.advance_direction())

    def undo_turn_clockwise(self):
        self.turn_facing_counter_clockwise()

    def undo_turn_counter_clockwise(self):
        self.turn_facing_clockwise()

    # command processing

    def process(self, a_sequence_of_commands):
        FreeRun(self).process(iter(a_sequence_of_commands))

    def current_run(self):
        return self._run

    def begin_run(self, a_run):
        self._run = a_run
