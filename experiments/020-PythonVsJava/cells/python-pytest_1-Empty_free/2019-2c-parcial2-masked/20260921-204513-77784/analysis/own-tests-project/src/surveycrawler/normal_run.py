from surveycrawler.crawler_run import CrawlerRun


class NormalRun(CrawlerRun):

    # command processing

    def start_guarded_run(self, a_crawler):
        a_crawler.start_guarded_run()

    def finish_guarded_run(self, a_crawler):
        a_crawler.signal_guarded_run_not_started()

    def assert_is_finished(self, a_crawler):
        pass

    # moving

    def slide_crawler_towards(self, a_crawler, a_direction, a_silt):
        a_crawler.move_cells_towards(a_silt.number_of_cells_to_slide(), a_direction)

    # undoing

    def register_movement(self, a_movement):
        pass

    def undo_movements(self, a_crawler):
        pass
