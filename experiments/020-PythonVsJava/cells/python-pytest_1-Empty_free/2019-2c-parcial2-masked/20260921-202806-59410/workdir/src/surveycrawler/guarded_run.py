from surveycrawler.crawler_run import CrawlerRun


class GuardedRun(CrawlerRun):

    # initialization

    def __init__(self):
        self._undo_actions = []

    # guarded run

    def start_guarded_run(self, a_crawler):
        a_crawler.signal_can_not_start_a_guarded_run_during_a_guarded_run()

    def end_guarded_run(self, a_crawler):
        a_crawler.begin_normal_run()

    def finish(self, a_crawler):
        a_crawler.signal_guarded_run_not_finished()

    # undoing

    def register_undo(self, an_undo_action):
        self._undo_actions.append(an_undo_action)

    def handle_error(self, a_crawler):
        a_crawler.begin_normal_run()
        self.undo_all()

    def undo_all(self):
        for an_undo_action in reversed(self._undo_actions):
            an_undo_action()
        self._undo_actions = []

    # moving

    def slide_crawler_towards(self, a_crawler, a_direction, a_silt):
        a_crawler.signal_can_not_move_on_silt_during_a_guarded_run()
