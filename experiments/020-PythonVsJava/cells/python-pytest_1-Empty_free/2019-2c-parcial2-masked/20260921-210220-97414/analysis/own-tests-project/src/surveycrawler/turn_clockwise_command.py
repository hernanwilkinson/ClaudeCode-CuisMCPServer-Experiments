from surveycrawler.command import Command


class TurnClockwiseCommand(Command):

    # character

    @classmethod
    def character(cls):
        return 'h'

    # executing

    def execute_on(self, a_crawler):
        a_crawler.turn_clockwise()

    def undo_on(self, a_crawler):
        a_crawler.turn_counter_clockwise_ignoring_ground()
