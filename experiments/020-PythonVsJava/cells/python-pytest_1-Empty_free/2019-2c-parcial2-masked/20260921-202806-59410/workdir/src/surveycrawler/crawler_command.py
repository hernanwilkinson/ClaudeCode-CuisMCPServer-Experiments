class CrawlerCommand:

    # instance creation

    @classmethod
    def for_character(cls, a_character):
        from surveycrawler.invalid_command import InvalidCommand

        for a_crawler_command_class in cls.__subclasses__():
            if a_crawler_command_class.is_for(a_character):
                return a_crawler_command_class()
        return InvalidCommand()

    @classmethod
    def no_command(cls):
        from surveycrawler.invalid_command import InvalidCommand

        return InvalidCommand()

    # command character

    @classmethod
    def command_character(cls):
        raise NotImplementedError()

    # testing

    @classmethod
    def is_for(cls, a_character):
        return cls.command_character() == a_character

    # repeating

    @classmethod
    def number_of_repetitions_of(cls, a_digit_character):
        return int(a_digit_character) + 2

    def repeat(self, a_number_of_repetitions, a_crawler):
        for _ in range(a_number_of_repetitions):
            self.execute(a_crawler)

    # executing

    def execute(self, a_crawler):
        raise NotImplementedError()
