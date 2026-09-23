from surveycrawler.crawler_turn import CrawlerTurn


class ClockwiseTurn(CrawlerTurn):

    # turning

    def apply_to(self, a_crawler):
        a_crawler.facing().turn_clockwise(a_crawler)

    def inverted(self):
        from surveycrawler.counter_clockwise_turn import CounterClockwiseTurn

        return CounterClockwiseTurn()
