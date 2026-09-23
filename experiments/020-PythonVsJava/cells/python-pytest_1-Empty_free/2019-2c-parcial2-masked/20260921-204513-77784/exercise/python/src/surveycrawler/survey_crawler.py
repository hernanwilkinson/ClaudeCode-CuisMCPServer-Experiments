from surveycrawler.point import Point
from surveycrawler.crawler_facing import CrawlerFacing
from surveycrawler.crawler_facing_right import CrawlerFacingRight
from surveycrawler.crawler_facing_up import CrawlerFacingUp
from surveycrawler.crawler_facing_down import CrawlerFacingDown
from surveycrawler.crawler_facing_left import CrawlerFacingLeft


class SurveyCrawler:

    # instance creation

    @classmethod
    def at_facing(cls, a_position, a_facing_name):
        return cls(a_position, CrawlerFacing.facing(a_facing_name))

    @classmethod
    def invalid_facing_error_description(cls):
        return "Invalid facing"

    # exceptions

    def invalid_command_error_description(self):
        return "Invalid command"

    def signal_invalid_command(self):
        raise RuntimeError(self.invalid_command_error_description())

    # initialization

    def __init__(self, a_position, a_facing):
        self._position = a_position
        self._facing = a_facing

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
        self._facing.turn_counter_clockwise(self)

    def turn_clockwise(self):
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

    # moving

    def retreat(self):
        self._facing.retreat(self)

    def move_right(self):
        self._position = self._position.plus(Point(1, 0))

    def advance(self):
        self._facing.advance(self)

    def move_up(self):
        self._position = self._position.plus(Point(0, 1))

    def move_down(self):
        self._position = self._position.plus(Point(0, -1))

    def move_left(self):
        self._position = self._position.plus(Point(-1, 0))

    # command processing

    def process(self, a_sequence_of_commands):
        for a_command in a_sequence_of_commands:
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

        self.signal_invalid_command()
