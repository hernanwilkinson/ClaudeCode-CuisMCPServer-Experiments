from surveycrawler.crawler_facing import CrawlerFacing
from surveycrawler.crawler_facing_right import CrawlerFacingRight
from surveycrawler.crawler_facing_up import CrawlerFacingUp
from surveycrawler.crawler_facing_down import CrawlerFacingDown
from surveycrawler.crawler_facing_left import CrawlerFacingLeft
from surveycrawler.firm_sand_sonar import FirmSandSonar
from surveycrawler.normal_run import NormalRun


class SurveyCrawler:

    # instance creation

    @classmethod
    def at_facing(cls, a_position, a_facing_name):
        return cls.at_facing_with_sonar(a_position, a_facing_name, FirmSandSonar())

    @classmethod
    def at_facing_with_sonar(cls, a_position, a_facing_name, a_sonar):
        return cls(a_position, CrawlerFacing.facing(a_facing_name), a_sonar)

    @classmethod
    def invalid_facing_error_description(cls):
        return "Invalid facing"

    # exceptions

    @classmethod
    def invalid_command_error_description(cls):
        return "Invalid command"

    def signal_invalid_command(self):
        raise RuntimeError(self.invalid_command_error_description())

    # initialization

    def __init__(self, a_position, a_facing, a_sonar):
        self._position = a_position
        self._facing = a_facing
        self._sonar = a_sonar
        self._run = NormalRun(self)

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
        self.assert_can_turn()
        self.turn_counter_clockwise_ignoring_ground()

    def turn_clockwise(self):
        self.assert_can_turn()
        self.turn_clockwise_ignoring_ground()

    def turn_counter_clockwise_ignoring_ground(self):
        self._facing.turn_counter_clockwise(self)

    def turn_clockwise_ignoring_ground(self):
        self._facing.turn_clockwise(self)

    # testing

    def is_at_facing(self, a_position, a_facing_name):
        return self._position == a_position and self._facing.is_facing(a_facing_name)

    def assert_can_turn(self):
        self.current_ground().assert_can_be_occupied()

    # ground detection

    def ground_at(self, a_position):
        return self._sonar.ground_at(a_position)

    def current_ground(self):
        return self.ground_at(self._position)

    # moving

    def retreat(self):
        self._facing.retreat(self)

    def advance(self):
        self._facing.advance(self)

    def move_towards(self, a_direction):
        self.ground_at(self._position.plus(a_direction)).move_crawler_towards(self, a_direction)

    def move_cells_towards(self, a_number_of_cells, a_direction):
        self._position = self._position.plus(a_direction.times(a_number_of_cells))

    def move_one_cell_forward(self):
        self.move_cells_towards(1, self._facing.direction())

    def move_one_cell_backward(self):
        self.move_cells_towards(1, self._facing.opposite_direction())

    def slide_towards(self, a_direction, a_silt):
        self._run.slide_towards(a_direction, a_silt)

    # command processing

    def process(self, a_sequence_of_commands):
        self.change_run_to(NormalRun(self))
        try:
            for a_character in a_sequence_of_commands:
                self._run.process(a_character)
            self._run.finish()
        finally:
            self.change_run_to(NormalRun(self))

    def change_run_to(self, a_run):
        self._run = a_run
