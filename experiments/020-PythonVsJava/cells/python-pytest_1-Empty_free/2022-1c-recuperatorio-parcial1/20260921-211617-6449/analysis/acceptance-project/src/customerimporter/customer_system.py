from abc import ABC, abstractmethod


class CustomerSystem(ABC):

    # customers

    @abstractmethod
    def add(self, a_customer):
        pass

    @abstractmethod
    def customer_with_identification_type(self, an_id_type, an_id_number):
        pass

    @abstractmethod
    def number_of_customers(self):
        pass

    # transactions

    @abstractmethod
    def begin_transaction(self):
        pass

    @abstractmethod
    def commit(self):
        pass

    # system lifecycle

    @abstractmethod
    def start(self):
        pass

    @abstractmethod
    def stop(self):
        pass
