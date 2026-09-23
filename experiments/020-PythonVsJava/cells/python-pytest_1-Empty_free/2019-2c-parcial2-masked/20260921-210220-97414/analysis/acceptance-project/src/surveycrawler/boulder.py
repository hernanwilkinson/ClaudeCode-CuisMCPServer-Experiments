from surveycrawler.ground import Ground


class Boulder(Ground):

    # exceptions

    @classmethod
    def boulder_found_error_description(cls):
        return "Can not move nor turn on a boulder"

    def signal_boulder_found(self):
        raise RuntimeError(self.boulder_found_error_description())

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        self.signal_boulder_found()

    # testing

    def assert_can_be_occupied(self):
        self.signal_boulder_found()
