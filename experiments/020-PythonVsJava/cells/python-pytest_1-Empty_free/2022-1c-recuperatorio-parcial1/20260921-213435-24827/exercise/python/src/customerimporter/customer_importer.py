from customerimporter.address import Address
from customerimporter.customer import Customer


class CustomerImporter:

    _read_stream = None
    _new_customer = None
    _line = None
    _record = None
    _system = None

    # instance creation

    @classmethod
    def from_(cls, a_read_stream, a_customer_system):
        return cls(a_read_stream, a_customer_system)

    # importing

    @classmethod
    def value_from(cls, a_read_stream, a_customer_system):
        cls.from_(a_read_stream, a_customer_system).value()

    # error messages

    @classmethod
    def can_not_import_address_without_customer_error_description(cls):
        return "Cannot import address without customer"

    @classmethod
    def invalid_address_record_error_description(cls):
        return "Address record has to have six fields"

    @classmethod
    def invalid_customer_record_error_description(cls):
        return "Invalid Customer record"

    @classmethod
    def invalid_record_type_error_description(cls):
        return "Invalid record type"

    # initialization

    def __init__(self, a_read_stream, a_customer_system):
        self._read_stream = a_read_stream
        self._system = a_customer_system

    # evaluating

    def value(self):
        while self._has_line_to_import():
            self._create_record()
            self._import_record()

    # customer

    def assert_valid_customer_record(self):
        if len(self._record) != 5: raise RuntimeError(type(self).invalid_customer_record_error_description())

    def import_customer(self):
        self.assert_valid_customer_record()

        self._new_customer = Customer()
        self._new_customer.set_first_name(self._record[1])
        self._new_customer.set_last_name(self._record[2])
        id_type = self._record[3]
        id_number = self._record[4]

        if id_type == "D":
            if not all(id_char.isdigit() for id_char in id_number): raise RuntimeError("Invalid DNI number")
            dni_number = int(id_number)
            if not (dni_number >= 1 and dni_number <= 99999999): raise RuntimeError("Invalid DNI number")
        elif id_type == "C":
            # "23-25666777-9" size 13
            if not (len(id_number) >= 12 and len(id_number) <= 13): raise RuntimeError("Invalid CUIT number")
            if not (id_number[2] == "-" and id_number[-2] == "-"): raise RuntimeError("Invalid CUIT number")
            if not id_number[:2] in ["20", "23", "24", "25", "26", "27", "30", "33", "34"]: raise RuntimeError("Invalid CUIT number")
            if not id_number[-1].isdigit(): raise RuntimeError("Invalid CUIT number")
            if not all(id_char.isdigit() for id_char in id_number[3:-2]): raise RuntimeError("Invalid CUIT number")
        else:
            raise RuntimeError("Invalid identification type")

        self._new_customer.set_identification_type(id_type)
        self._new_customer.set_identification_number(id_number)
        self._system.add(self._new_customer)

    def is_customer_record(self):
        return self._record[0] == "C"

    # address

    def assert_customer_was_imported(self):
        if self._new_customer is None: raise RuntimeError(type(self).can_not_import_address_without_customer_error_description())

    def assert_valid_address_record(self):
        if len(self._record) != 6: raise RuntimeError(type(self).invalid_address_record_error_description())

    def import_address(self):
        self.assert_customer_was_imported()
        self.assert_valid_address_record()

        new_address = Address()
        new_address.set_street_name(self._record[1])
        new_address.set_street_number(int(self._record[2]))
        new_address.set_town(self._record[3])

        zip_code = self._record[4]

        if zip_code[0].isdigit():
            if not all(a_char.isdigit() for a_char in zip_code): raise RuntimeError("Invalid old zipcode")
            imported_zip_code = int(zip_code)
            if not (imported_zip_code >= 1000 and imported_zip_code <= 9999): raise RuntimeError("Invalid old zipcode")
        elif zip_code[0].isalpha():
            if len(zip_code) != 8: raise RuntimeError("Invalid new zipcode")
            new_zipcode_old_zip_code = zip_code[1:5]
            if not all(a_char.isdigit() for a_char in new_zipcode_old_zip_code): raise RuntimeError("Invalid new zipcode")
            if not (int(new_zipcode_old_zip_code) > 999): raise RuntimeError("Invalid new zipcode")
            if not all(a_char.isalpha() for a_char in zip_code[-3:]): raise RuntimeError("Invalid new zipcode")
            imported_zip_code = zip_code
        else:
            raise RuntimeError("Invalid identification type")

        new_address.set_zip_code(imported_zip_code)
        new_address.set_province(self._record[5])

        self._new_customer.add_address(new_address)

    def is_address_record(self):
        return self._record[0] == "A"

    # evaluating - private

    def _assert_record_not_empty(self):
        if len(self._record) == 0: raise RuntimeError(type(self).invalid_record_type_error_description())

    def _create_record(self):
        self._record = [token for token in self._line.rstrip("\n").split(",") if token != ""]
        return self._record

    def _has_line_to_import(self):
        self._line = self._read_stream.readline()
        return self._line != ""

    def _import_record(self):
        self._assert_record_not_empty()

        if self.is_customer_record(): self.import_customer(); return
        if self.is_address_record(): self.import_address(); return

        raise RuntimeError(type(self).invalid_record_type_error_description())
