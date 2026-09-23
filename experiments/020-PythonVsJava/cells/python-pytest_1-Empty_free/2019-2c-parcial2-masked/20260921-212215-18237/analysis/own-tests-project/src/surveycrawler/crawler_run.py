class CrawlerRun:

    # undoing

    def register_undo(self, an_undo_action):
        raise NotImplementedError()

    # guarded run

    def start_guarded_run(self, a_crawler):
        raise NotImplementedError()

    def end_guarded_run(self, a_crawler):
        raise NotImplementedError()

    def finish(self, a_crawler):
        raise NotImplementedError()

    # error handling

    def handle_error(self, a_crawler):
        raise NotImplementedError()

    # moving

    def slide_crawler_to(self, a_crawler, a_position):
        raise NotImplementedError()
