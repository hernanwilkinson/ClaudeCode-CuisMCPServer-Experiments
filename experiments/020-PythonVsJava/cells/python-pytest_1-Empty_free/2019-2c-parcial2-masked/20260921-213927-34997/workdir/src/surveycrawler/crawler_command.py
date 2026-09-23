class CrawlerCommand:
    """One of the commands a crawler understands.

    It knows how to execute itself on a crawler and how to undo that execution.
    """

    # instance creation

    @classmethod
    def for_character(cls, a_character):
        from surveycrawler.survey_crawler import SurveyCrawler

        for a_command_class in cls.__subclasses__():
            if a_command_class.is_for(a_character):
                return a_command_class()
        raise RuntimeError(SurveyCrawler.invalid_command_error_description())

    # command character

    @classmethod
    def character(cls):
        raise NotImplementedError()

    # testing

    @classmethod
    def is_for(cls, a_character):
        return cls.character() == a_character

    # executing

    def execute(self, a_crawler):
        raise NotImplementedError()

    def undo(self, a_crawler):
        raise NotImplementedError()

    def repeat(self, a_run, a_number_of_repetitions):
        for _ in range(a_number_of_repetitions):
            a_run.execute(self)
