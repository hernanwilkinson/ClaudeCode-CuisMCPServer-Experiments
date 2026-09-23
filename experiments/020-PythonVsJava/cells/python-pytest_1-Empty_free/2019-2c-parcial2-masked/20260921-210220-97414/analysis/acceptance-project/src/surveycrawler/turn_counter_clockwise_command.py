from surveycrawler.command import Command


class TurnCounterClockwiseCommand(Command):

    # character

    @classmethod
    def character(cls):
        return 'g'

    # executing

    def execute_on(self, a_crawler):
        a_crawler.turn_counter_clockwise()

    def undo_on(self, a_crawler):
        a_crawler.turn_clockwise_ignoring_ground()
