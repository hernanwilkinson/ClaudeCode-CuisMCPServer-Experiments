class CrawlerFacing:

    # instance creation

    @classmethod
    def facing(cls, a_facing_name):
        from surveycrawler.survey_crawler import SurveyCrawler

        for a_crawler_facing_class in cls.__subclasses__():
            if a_crawler_facing_class.is_for(a_facing_name):
                return a_crawler_facing_class()
        raise RuntimeError(SurveyCrawler.invalid_facing_error_description())

    # facing name

    @classmethod
    def facing_name(cls):
        raise NotImplementedError()

    # direction

    def direction(self):
        raise NotImplementedError()

    def opposite_direction(self):
        return self.direction().times(-1)

    # facing

    def turn_counter_clockwise(self, a_crawler):
        raise NotImplementedError()

    def turn_clockwise(self, a_crawler):
        raise NotImplementedError()

    # testing

    def is_facing(self, a_facing_name):
        return self.is_for(a_facing_name)

    @classmethod
    def is_for(cls, a_facing_name):
        return cls.facing_name() == a_facing_name

    # moving

    def retreat(self, a_crawler):
        a_crawler.move_towards(self.opposite_direction())

    def advance(self, a_crawler):
        a_crawler.move_towards(self.direction())
