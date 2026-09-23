from surveycrawler.crawler_turn import CrawlerTurn


class CounterClockwiseTurn(CrawlerTurn):

    # turning

    def apply_to(self, a_crawler):
        a_crawler.facing().turn_counter_clockwise(a_crawler)

    def inverted(self):
        from surveycrawler.clockwise_turn import ClockwiseTurn

        return ClockwiseTurn()
