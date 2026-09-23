from surveycrawler.command import Command


class NoCommand(Command):

    # testing

    @classmethod
    def is_for(cls, a_character):
        return False  # there is no character for a command that was never given

    # executing

    def execute_on(self, a_crawler):
        a_crawler.signal_invalid_command()

    def undo_on(self, a_crawler):
        pass  # it was never executed, so there is nothing to undo
