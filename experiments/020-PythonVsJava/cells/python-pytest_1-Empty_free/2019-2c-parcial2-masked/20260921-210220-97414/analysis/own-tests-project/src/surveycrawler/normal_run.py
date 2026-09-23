from surveycrawler.run import Run


class NormalRun(Run):

    # executing

    def execute(self, a_command):
        a_command.execute_on(self._crawler)

    # guarded run

    def start_guarded_run(self):
        # imported here and not at the top of the file to avoid the circular reference
        # NormalRun -> GuardedRun -> NormalRun
        from surveycrawler.guarded_run import GuardedRun

        self._crawler.change_run_to(GuardedRun(self._crawler))

    def end_guarded_run(self):
        self._crawler.signal_invalid_command()  # no guarded run was started

    def finish(self):
        pass  # there is nothing to finish

    # moving

    def slide_towards(self, a_direction, a_silt):
        self._crawler.move_cells_towards(a_silt.slide_cells(), a_direction)
