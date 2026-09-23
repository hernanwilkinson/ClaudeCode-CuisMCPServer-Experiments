from surveycrawler.run import Run


class GuardedRun(Run):

    # exceptions

    @classmethod
    def guarded_run_already_started_error_description(cls):
        return "Can not start a guarded run during a guarded run"

    @classmethod
    def unfinished_guarded_run_error_description(cls):
        return "The guarded run was not finished"

    @classmethod
    def can_not_slide_on_silt_error_description(cls):
        return "Can not move on silt during a guarded run"

    def signal_guarded_run_already_started(self):
        raise RuntimeError(self.guarded_run_already_started_error_description())

    def signal_unfinished_guarded_run(self):
        raise RuntimeError(self.unfinished_guarded_run_error_description())

    def signal_can_not_slide_on_silt(self):
        raise RuntimeError(self.can_not_slide_on_silt_error_description())

    # initialization

    def __init__(self, a_crawler):
        super().__init__(a_crawler)
        self._executed_commands = []

    # command processing

    def process(self, a_character):
        try:
            super().process(a_character)
        except RuntimeError:
            self.undo()
            raise

    # executing

    def execute(self, a_command):
        a_command.execute_on(self._crawler)
        self._executed_commands.append(a_command)

    def undo(self):
        for a_command in reversed(self._executed_commands):
            a_command.undo_on(self._crawler)
        self._executed_commands = []

    # guarded run

    def start_guarded_run(self):
        self.signal_guarded_run_already_started()

    def end_guarded_run(self):
        # imported here and not at the top of the file to avoid the circular reference
        # GuardedRun -> NormalRun -> GuardedRun
        from surveycrawler.normal_run import NormalRun

        self._crawler.change_run_to(NormalRun(self._crawler))

    def finish(self):
        self.undo()
        self.signal_unfinished_guarded_run()

    # moving

    def slide_towards(self, a_direction, a_silt):
        self.signal_can_not_slide_on_silt()  # sliding on silt is unpredictable
