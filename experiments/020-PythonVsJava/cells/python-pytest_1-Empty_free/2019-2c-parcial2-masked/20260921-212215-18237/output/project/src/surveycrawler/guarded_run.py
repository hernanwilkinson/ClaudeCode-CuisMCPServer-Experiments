from surveycrawler.crawler_run import CrawlerRun
from surveycrawler.free_run import FreeRun


class GuardedRun(CrawlerRun):

    # initialization

    def __init__(self):
        self._undo_actions = []

    # undoing

    def register_undo(self, an_undo_action):
        self._undo_actions.append(an_undo_action)

    def undo_all(self):
        for an_undo_action in reversed(self._undo_actions):
            an_undo_action()

    # guarded run

    def start_guarded_run(self, a_crawler):
        a_crawler.signal_guarded_run_inside_guarded_run()

    def end_guarded_run(self, a_crawler):
        return FreeRun()

    def finish(self, a_crawler):
        a_crawler.signal_unfinished_guarded_run()

    # error handling

    def handle_error(self, a_crawler):
        a_crawler.change_to_free_run()
        self.undo_all()

    # moving

    def slide_crawler_to(self, a_crawler, a_position):
        a_crawler.signal_silt_found()
