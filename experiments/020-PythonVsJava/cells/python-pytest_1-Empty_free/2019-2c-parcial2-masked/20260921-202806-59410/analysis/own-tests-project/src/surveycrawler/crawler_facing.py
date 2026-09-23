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

    def advance_direction(self):
        raise NotImplementedError()

    def retreat_direction(self):
        return self.advance_direction().inverted()
