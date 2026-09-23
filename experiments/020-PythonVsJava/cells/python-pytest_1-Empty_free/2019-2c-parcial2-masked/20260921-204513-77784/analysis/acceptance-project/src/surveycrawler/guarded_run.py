from surveycrawler.crawler_run import CrawlerRun


class GuardedRun(CrawlerRun):

    # initialization

    def __init__(self):
        self._movements = []

    # command processing

    def start_guarded_run(self, a_crawler):
        a_crawler.signal_guarded_run_already_started()

    def finish_guarded_run(self, a_crawler):
        a_crawler.finish_guarded_run()

    def assert_is_finished(self, a_crawler):
        a_crawler.signal_unfinished_guarded_run()

    # moving

    def slide_crawler_towards(self, a_crawler, a_direction, a_silt):
        a_crawler.signal_can_not_slide_during_guarded_run()

    # undoing

    def register_movement(self, a_movement):
        self._movements.append(a_movement)

    def undo_movements(self, a_crawler):
        while self._movements:
            self._movements.pop().undo(a_crawler)
