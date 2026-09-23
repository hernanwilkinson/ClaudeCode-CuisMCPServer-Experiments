from customerimporter.address import Address
from customerimporter.customer import Customer
from customerimporter.customer_system import CustomerSystem
from customerimporter.data_base_session import DataBaseSession


class PersistentCustomerSystem(CustomerSystem):

    _session = None

    # customers

    def add(self, a_customer):
        self._session.persist(a_customer)

    def customer_with_identification_type(self, an_id_type, an_id_number):
        return next(iter(self._session
            .select(lambda a_customer: a_customer.is_identified_by(an_id_type, an_id_number), Customer)))

    def number_of_customers(self):
        return len(self._session.select_all_of_type(Customer))

    # transactions

    def begin_transaction(self):
        self._session.begin_transaction()

    def commit(self):
        self._session.commit()

    # system lifecycle

    def start(self):
        self._session = DataBaseSession.for_configuration([Address, Customer])

    def stop(self):
        self._session.close()
