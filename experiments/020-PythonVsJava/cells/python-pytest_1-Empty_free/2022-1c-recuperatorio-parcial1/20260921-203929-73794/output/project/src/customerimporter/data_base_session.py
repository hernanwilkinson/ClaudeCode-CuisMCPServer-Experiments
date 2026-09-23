import time

from customerimporter.customer import Customer


class DataBaseSession:

    _configuration = None
    _tables = None
    _id = None

    # instance creation

    @classmethod
    def for_configuration(cls, a_configuration):
        return cls(a_configuration)

    # initialization

    def __init__(self, a_configuration):
        self._configuration = a_configuration
        self._tables = {}
        self._id = 0

    # transaction management

    def begin_transaction(self):
        pass

    def commit(self):
        for a_customer in self._tables.get(Customer, set()): self._persist_addresses_of(a_customer)

    # closing

    def close(self):
        pass

    # persistence - private

    def _define_id_of(self, an_object):
        setattr(an_object, "_id", self.new_id_for(an_object))

    def _delay(self):
        time.sleep(0.1)

    def _objects_of_type(self, a_type):
        return self._tables.get(a_type, set())

    def _persist_addresses_of(self, an_object_with_addresses):
        for an_address in an_object_with_addresses.addresses(): self.persist(an_address)

    # id

    def new_id_for(self, an_object):
        self._id = self._id + 1
        return self._id

    # persistance

    def persist(self, an_object):
        self._delay()
        table = self._tables.setdefault(type(an_object), set())

        self._define_id_of(an_object)
        table.add(an_object)

        if isinstance(an_object, Customer): self._persist_addresses_of(an_object)

    # selecting

    def select(self, a_condition, a_type):
        self._delay()
        selected = set()
        for an_object in self._objects_of_type(a_type):
            if a_condition(an_object): selected.add(an_object)
        return selected

    def select_all_of_type(self, a_type):
        self._delay()
        return set(self._objects_of_type(a_type))
