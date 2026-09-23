from surveycrawler.crawler_run import CrawlerRun


class FreeRun(CrawlerRun):

    # undoing

    def register_undo(self, an_undo_action):
        pass

    # guarded run

    def start_guarded_run(self, a_crawler):
        from surveycrawler.guarded_run import GuardedRun

        return GuardedRun()

    def end_guarded_run(self, a_crawler):
        a_crawler.signal_invalid_command()

    def finish(self, a_crawler):
        pass

    # error handling

    def handle_error(self, a_crawler):
        pass

    # moving

    def slide_crawler_to(self, a_crawler, a_position):
        a_crawler.change_position_to(a_position)
