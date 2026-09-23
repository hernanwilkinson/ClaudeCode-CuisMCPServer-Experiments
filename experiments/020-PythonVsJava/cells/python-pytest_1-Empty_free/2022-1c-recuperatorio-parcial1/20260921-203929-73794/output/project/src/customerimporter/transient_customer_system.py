from customerimporter.customer_system import CustomerSystem


class TransientCustomerSystem(CustomerSystem):

    _customers = None

    # system lifecycle

    def start(self):
        self._customers = []

    def stop(self):
        self._customers = None

    # transactions

    def begin_transaction(self):
        pass

    def commit(self):
        pass

    # customers

    def add(self, a_customer):
        self._customers.append(a_customer)

    def customer_with_identification_type(self, an_id_type, an_id_number):
        for a_customer in self._customers:
            if a_customer.identification_type() == an_id_type and a_customer.identification_number() == an_id_number: return a_customer
        raise RuntimeError("Object is not in the collection.")

    def number_of_customers(self):
        return len(self._customers)
