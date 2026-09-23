from abc import ABC, abstractmethod


class Environment(ABC):

    # current

    @classmethod
    def current(cls):
        for an_environment_class in cls.__subclasses__():
            if an_environment_class.is_current(): return an_environment_class()
        raise RuntimeError("Object is not in the collection.")

    @classmethod
    @abstractmethod
    def is_current(cls):
        pass

    # customer system

    @abstractmethod
    def create_customer_system(self):
        pass
