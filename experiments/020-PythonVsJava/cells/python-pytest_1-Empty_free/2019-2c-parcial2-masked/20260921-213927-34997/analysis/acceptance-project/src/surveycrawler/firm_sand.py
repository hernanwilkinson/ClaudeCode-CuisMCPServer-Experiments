from surveycrawler.traversable_ground import TraversableGround


class FirmSand(TraversableGround):
    """The crawler moves over firm sand exactly one position per command."""

    # moving

    def move_crawler_towards(self, a_crawler, a_direction):
        a_crawler.displace(a_direction)
