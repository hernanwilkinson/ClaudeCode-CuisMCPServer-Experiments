from surveycrawler.crawler_run import CrawlerRun


class NormalRun(CrawlerRun):

    # guarded run

    def start_guarded_run(self, a_crawler):
        a_crawler.begin_guarded_run()

    def end_guarded_run(self, a_crawler):
        a_crawler.signal_invalid_command()

    def finish(self, a_crawler):
        pass

    # undoing

    def register_undo(self, an_undo_action):
        pass

    def handle_error(self, a_crawler):
        pass

    # moving

    def slide_crawler_towards(self, a_crawler, a_direction, a_silt):
        a_number_of_cells = a_silt.number_of_cells_to_slide()
        a_crawler.move_to(a_crawler.position().plus(a_direction.times(a_number_of_cells)))
