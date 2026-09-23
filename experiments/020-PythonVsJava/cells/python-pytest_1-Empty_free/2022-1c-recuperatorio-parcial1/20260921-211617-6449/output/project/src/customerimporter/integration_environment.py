from customerimporter.development_environment import DevelopmentEnvironment
from customerimporter.environment import Environment
from customerimporter.persistent_customer_system import PersistentCustomerSystem


class IntegrationEnvironment(Environment):

    # current

    @classmethod
    def is_current(cls):
        return not DevelopmentEnvironment.is_current()

    # customer system

    def create_customer_system(self):
        return PersistentCustomerSystem()
