class CrawlerRun:

    # guarded run

    def start_guarded_run(self, a_crawler):
        raise NotImplementedError()

    def end_guarded_run(self, a_crawler):
        raise NotImplementedError()

    def finish(self, a_crawler):
        raise NotImplementedError()

    # undoing

    def register_undo(self, an_undo_action):
        raise NotImplementedError()

    def handle_error(self, a_crawler):
        raise NotImplementedError()

    # moving

    def slide_crawler_towards(self, a_crawler, a_direction, a_silt):
        raise NotImplementedError()
