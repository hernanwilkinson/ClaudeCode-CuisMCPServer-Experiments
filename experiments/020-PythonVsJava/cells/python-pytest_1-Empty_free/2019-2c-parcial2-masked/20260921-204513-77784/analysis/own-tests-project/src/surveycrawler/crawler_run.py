class CrawlerRun:

    # command processing

    def process_command(self, a_crawler, a_command):
        if a_crawler.is_start_guarded_run_command(a_command):
            self.start_guarded_run(a_crawler)
            return
        if a_crawler.is_finish_guarded_run_command(a_command):
            self.finish_guarded_run(a_crawler)
            return

        a_crawler.process_movement_command(a_command)

    def start_guarded_run(self, a_crawler):
        raise NotImplementedError()

    def finish_guarded_run(self, a_crawler):
        raise NotImplementedError()

    def assert_is_finished(self, a_crawler):
        raise NotImplementedError()

    # moving

    def slide_crawler_towards(self, a_crawler, a_direction, a_silt):
        raise NotImplementedError()

    # undoing

    def register_movement(self, a_movement):
        raise NotImplementedError()

    def undo_movements(self, a_crawler):
        raise NotImplementedError()
