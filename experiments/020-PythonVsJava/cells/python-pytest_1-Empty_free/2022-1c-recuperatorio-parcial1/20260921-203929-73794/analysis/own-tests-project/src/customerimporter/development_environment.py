from customerimporter.environment import Environment
from customerimporter.transient_customer_system import TransientCustomerSystem


class DevelopmentEnvironment(Environment):

    # current

    @classmethod
    def is_current(cls):
        return True

    # customer system

    def create_customer_system(self):
        return TransientCustomerSystem()
