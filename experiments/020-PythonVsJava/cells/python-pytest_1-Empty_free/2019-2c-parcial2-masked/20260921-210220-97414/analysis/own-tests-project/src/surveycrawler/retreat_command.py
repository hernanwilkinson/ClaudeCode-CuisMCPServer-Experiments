from surveycrawler.command import Command


class RetreatCommand(Command):

    # character

    @classmethod
    def character(cls):
        return 't'

    # executing

    def execute_on(self, a_crawler):
        a_crawler.retreat()

    def undo_on(self, a_crawler):
        a_crawler.move_one_cell_forward()
