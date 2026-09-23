from surveycrawler.command import Command


class AdvanceCommand(Command):

    # character

    @classmethod
    def character(cls):
        return 'a'

    # executing

    def execute_on(self, a_crawler):
        a_crawler.advance()

    def undo_on(self, a_crawler):
        a_crawler.move_one_cell_backward()
