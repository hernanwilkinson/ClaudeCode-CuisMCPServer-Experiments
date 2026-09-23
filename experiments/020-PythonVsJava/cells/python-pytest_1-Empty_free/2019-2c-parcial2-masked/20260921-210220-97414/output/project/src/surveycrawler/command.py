class Command:

    # instance creation

    @classmethod
    def for_character(cls, a_character):
        # imported here and not at the top of the file to avoid the circular reference
        # Command -> SurveyCrawler -> NormalRun -> Command
        from surveycrawler.survey_crawler import SurveyCrawler

        for a_command_class in cls.__subclasses__():
            if a_command_class.is_for(a_character):
                return a_command_class()
        raise RuntimeError(SurveyCrawler.invalid_command_error_description())

    # character

    @classmethod
    def character(cls):
        raise NotImplementedError()

    # testing

    @classmethod
    def is_for(cls, a_character):
        return cls.character() == a_character

    # executing

    def execute_on(self, a_crawler):
        raise NotImplementedError()

    def undo_on(self, a_crawler):
        raise NotImplementedError()
