import io

import pytest

from customerimporter.customer_importer import CustomerImporter
from customerimporter.environment import Environment


class ImportTest:

    _system = None

    # tests

    def cuit_with_invalid_header(self):
        return io.StringIO(
"C,Pepe,Sanchez,C,19-25666777-9")

    def test01_valid_data_is_imported_correctly(self):

        CustomerImporter.value_from(self.valid_import_data(), self._system)

        self.assert_imported_right_number_of_customers()
        self.assert_pepe_sanchez_was_imported_correcty()
        self.assert_juan_perez_was_imported_correctly()

    def test02_can_not_import_address_without_customer(self):

        with pytest.raises(RuntimeError) as an_error:
            CustomerImporter.value_from(self.address_without_customer_data(), self._system)
        assert CustomerImporter.can_not_import_address_without_customer_error_description() == str(an_error.value)

    def test03_does_not_import_records_starting_with_c_but_more_characters(self):

        self.should_fail_importing(
            self.invalid_customer_record_start_data(),
            CustomerImporter.invalid_record_type_error_description(),
            lambda: self.assert_no_customer_was_imported())

    def test04_does_not_import_records_starting_with_a_but_more_characters(self):

        self.should_fail_importing(
            self.invalid_address_record_start_data(),
            CustomerImporter.invalid_record_type_error_description(),
            lambda: self.assert_imported_one_customer_without_address())

    def test05_can_not_import_address_record_with_less_than_six_fields(self):

        self.should_fail_importing(
            self.address_record_with_less_than_six_fields(),
            CustomerImporter.invalid_address_record_error_description(),
            lambda: self.assert_imported_one_customer_without_address())

    def test06_can_not_import_address_record_with_more_than_six_fields(self):

        self.should_fail_importing(
            self.address_record_with_more_than_six_fields(),
            CustomerImporter.invalid_address_record_error_description(),
            lambda: self.assert_imported_one_customer_without_address())

    def test07_can_not_import_customer_record_with_less_than_five_fields(self):

        self.should_fail_importing(
            self.customer_record_with_less_than_five_fields(),
            CustomerImporter.invalid_customer_record_error_description(),
            lambda: self.assert_no_customer_was_imported())

    def test08_can_not_import_customer_record_with_more_than_five_fields(self):

        self.should_fail_importing(
            self.customer_record_with_more_than_five_fields(),
            CustomerImporter.invalid_customer_record_error_description(),
            lambda: self.assert_no_customer_was_imported())

    def test09_cannot_import_empty_line(self):

        self.should_fail_importing(
            self.empty_line(),
            CustomerImporter.invalid_record_type_error_description(),
            lambda: self.assert_no_customer_was_imported())

    def test10_dni_cannot_be_less_than_one(self):

        self.should_fail_importing(
            self.less_than_one_dni(),
            "Invalid DNI number",
            lambda: self.assert_no_customer_was_imported())

    def test11_dni_cannot_be_bigger_than_99999999(self):

        self.should_fail_importing(
            self.bigger_than_valid_dni_number(),
            "Invalid DNI number",
            lambda: self.assert_no_customer_was_imported())

    def test12_dni_must_be_all_digits(self):

        self.should_fail_importing(
            self.dni_without_digit(),
            "Invalid DNI number",
            lambda: self.assert_no_customer_was_imported())

    def test13_cuit_size_cannot_be_less_than_12(self):

        self.should_fail_importing(
            self.less_than_12_cuit_size(),
            "Invalid CUIT number",
            lambda: self.assert_no_customer_was_imported())

    def test14_cuit_size_cannot_be_bigger_than_13(self):

        self.should_fail_importing(
            self.bigger_than_13_cuit_size(),
            "Invalid CUIT number",
            lambda: self.assert_no_customer_was_imported())

    def test15_cuit_must_have_dash_at_thrid_position(self):

        self.should_fail_importing(
            self.cuit_without_dash_in_third_position(),
            "Invalid CUIT number",
            lambda: self.assert_no_customer_was_imported())

    def test16_cuit_must_have_dash_at_penultimate_position(self):

        self.should_fail_importing(
            self.cuit_without_dash_an_penultimate_position(),
            "Invalid CUIT number",
            lambda: self.assert_no_customer_was_imported())

    def test17_cuit_must_have_valid_header(self):

        self.should_fail_importing(
            self.cuit_with_invalid_header(),
            "Invalid CUIT number",
            lambda: self.assert_no_customer_was_imported())

    def test18_cuit_must_have_digit_at_end(self):

        self.should_fail_importing(
            self.cuit_without_digit_at_end(),
            "Invalid CUIT number",
            lambda: self.assert_no_customer_was_imported())

    def test19_cuit_must_have_all_digits(self):

        self.should_fail_importing(
            self.cuit_without_all_digits(),
            "Invalid CUIT number",
            lambda: self.assert_no_customer_was_imported())

    def test20_old_zip_code_must_be_all_digits(self):

        self.should_fail_importing(
            self.old_zip_code_with_letters(),
            "Invalid old zipcode",
            lambda: self.assert_imported_one_customer_without_address())

    def test21_old_zip_must_be_bigger_than_999(self):

        self.should_fail_importing(
            self.old_zip_smaller_than_1000(),
            "Invalid old zipcode",
            lambda: self.assert_imported_one_customer_without_address())

    def test22_old_zip_must_be_less_than_10000(self):

        self.should_fail_importing(
            self.old_zip_bigger_than_9999(),
            "Invalid old zipcode",
            lambda: self.assert_imported_one_customer_without_address())

    def test23_new_zip_code_size_cannot_be_less_than_8(self):

        self.should_fail_importing(
            self.new_zip_code_with_size_less_than_8(),
            "Invalid new zipcode",
            lambda: self.assert_imported_one_customer_without_address())

    def test24_new_zip_code_size_cannot_be_bigger_than_8(self):

        self.should_fail_importing(
            self.new_zip_code_with_size_bigger_than_8(),
            "Invalid new zipcode",
            lambda: self.assert_imported_one_customer_without_address())

    def test25_new_zip_code_4_digits_after_first_letter(self):

        self.should_fail_importing(
            self.new_zip_code_without_four_digits(),
            "Invalid new zipcode",
            lambda: self.assert_imported_one_customer_without_address())

    def test26_new_zip_code_4_digits_must_be_bigger_than_999(self):

        self.should_fail_importing(
            self.new_zip_code_four_digits_less_than_1000(),
            "Invalid new zipcode",
            lambda: self.assert_imported_one_customer_without_address())

    def test27_new_zip_code_must_end_with_3_letters(self):

        self.should_fail_importing(
            self.new_zip_code_without_ending_3_letters(),
            "Invalid new zipcode",
            lambda: self.assert_imported_one_customer_without_address())

    def test28_id_type_must_be_dni_or_cuit(self):

        self.should_fail_importing(
            self.invalid_id_type(),
            "Invalid identification type",
            lambda: self.assert_no_customer_was_imported())

    def test29_zip_code_must_be_old_or_new(self):

        self.should_fail_importing(
            self.invalid_id_zip_code(),
            "Invalid identification type",
            lambda: self.assert_imported_one_customer_without_address())

    # assertions

    def assert_address_of(self, imported_customer, a_street_name, a_number, a_town, a_zip_code, a_province):

        imported_address = imported_customer.address_at(a_street_name, lambda: pytest.fail())
        assert a_street_name == imported_address.street_name()
        assert a_number == imported_address.street_number()
        assert a_town == imported_address.town()
        assert a_zip_code == imported_address.zip_code()
        assert a_province == imported_address.province()

        return imported_address

    def assert_customer_with_identification_type(self, an_id_type, an_id_number, a_first_name, a_last_name):

        imported_customer = self._system.customer_with_identification_type(an_id_type, an_id_number)

        assert a_first_name == imported_customer.first_name()
        assert a_last_name == imported_customer.last_name()
        assert an_id_type == imported_customer.identification_type()
        assert an_id_number == imported_customer.identification_number()

        return imported_customer

    def assert_imported_one_customer_without_address(self):

        assert 1 == self._system.number_of_customers()
        imported_customer = self._system.customer_with_identification_type("D", "22333444")
        assert imported_customer.is_addresses_empty()

    def assert_imported_right_number_of_customers(self):

        assert 2 == self._system.number_of_customers()

    def assert_juan_perez_was_imported_correctly(self):

        imported_customer = self.assert_customer_with_identification_type("C", "23-25666777-9", "Juan", "Perez")

        assert not imported_customer.has_dni_as_identification()
        assert "No dni" == imported_customer.dni_number_if_none(lambda: "No dni")
        assert imported_customer.has_cuit_as_identification()
        assert "23-25666777-9" == imported_customer.cuit_number_if_none(lambda: pytest.fail())

        address = self.assert_address_of(imported_customer, "Alem", 1122, "CABA", 1001, "CABA")

        assert address.has_old_zip_code()
        assert 1001 == address.old_zip_code_if_none(lambda: pytest.fail())
        assert not address.has_new_zip_code()
        assert "has old zipcode" == address.new_zip_code_if_none(lambda: "has old zipcode")

    def assert_no_customer_was_imported(self):

        assert 0 == self._system.number_of_customers()

    def assert_pepe_sanchez_was_imported_correcty(self):

        imported_customer = self.assert_customer_with_identification_type("D", "22333444", "Pepe", "Sanchez")

        assert imported_customer.has_dni_as_identification()
        assert 22333444 == imported_customer.dni_number_if_none(lambda: pytest.fail())
        assert not imported_customer.has_cuit_as_identification()
        assert "No cuit" == imported_customer.cuit_number_if_none(lambda: "No cuit")

        address = self.assert_address_of(imported_customer, "San Martin", 3322, "Olivos", "B1636BBE", "BsAs")
        assert not address.has_old_zip_code()
        assert "has new zipcode" == address.old_zip_code_if_none(lambda: "has new zipcode")
        assert address.has_new_zip_code()
        assert "B1636BBE" == address.new_zip_code_if_none(lambda: pytest.fail())

        self.assert_address_of(imported_customer, "Maipu", 888, "Florida", 1122, "Buenos Aires")

    def should_fail_importing(self, a_read_stream, an_error_message_text, an_assertion_block):

        with pytest.raises(RuntimeError) as an_error:
            CustomerImporter.value_from(a_read_stream, self._system)
        assert an_error_message_text == str(an_error.value)
        an_assertion_block()

    # setUp/tearDown

    def setup_method(self):

        self._system = Environment.current().create_customer_system()
        self._system.start()
        self._system.begin_transaction()

    def teardown_method(self):

        self._system.commit()
        self._system.stop()

    # test data

    def address_record_with_less_than_six_fields(self):

        return io.StringIO("C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,1636")

    def address_record_with_more_than_six_fields(self):

        return io.StringIO("C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,1636,BsAs,x")

    def address_without_customer_data(self):

        return io.StringIO("A,San Martin,3322,Olivos,1636,BsAs")

    def bigger_than_13_cuit_size(self):

        return io.StringIO(
"C,Pepe,Sanchez,C,23-25666777-99")

    def bigger_than_valid_dni_number(self):

        return io.StringIO(
"C,Pepe,Sanchez,D,1000000000")

    def cuit_without_all_digits(self):

        return io.StringIO(
"C,Pepe,Sanchez,C,23-a5666777-9")

    def cuit_without_dash_an_penultimate_position(self):

        return io.StringIO(
"C,Pepe,Sanchez,C,23-2566677799")

    def cuit_without_dash_in_third_position(self):

        return io.StringIO(
"C,Pepe,Sanchez,C,2325666777-99")

    def cuit_without_digit_at_end(self):

        return io.StringIO(
"C,Pepe,Sanchez,C,23-25666777-a")

    def customer_record_with_less_than_five_fields(self):

        return io.StringIO("C,Pepe,Sanchez,D")

    def customer_record_with_more_than_five_fields(self):

        return io.StringIO("C,Pepe,Sanchez,D,22333444,x")

    def dni_without_digit(self):

        return io.StringIO(
"C,Pepe,Sanchez,D,2233344a")

    def empty_line(self):

        return io.StringIO("\n")

    def invalid_address_record_start_data(self):

        return io.StringIO("C,Pepe,Sanchez,D,22333444\n" +
"AA,San Martin,3322,Olivos,1636,BsAs")

    def invalid_customer_record_start_data(self):

        return io.StringIO("CC,Pepe,Sanchez,D,22333444")

    def invalid_id_type(self):
        return io.StringIO(
"C,Pepe,Sanchez,A,22333444")

    def invalid_id_zip_code(self):
        return io.StringIO(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,+1636BBE,BsAs")

    def less_than_12_cuit_size(self):

        return io.StringIO(
"C,Pepe,Sanchez,C,23-25666777-")

    def less_than_one_dni(self):

        return io.StringIO(
"C,Pepe,Sanchez,D,0")

    def new_zip_code_four_digits_less_than_1000(self):

        return io.StringIO(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,B0999BBE,BsAs")

    def new_zip_code_with_size_bigger_than_8(self):

        return io.StringIO(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,B1636BBEE,BsAs")

    def new_zip_code_with_size_less_than_8(self):

        return io.StringIO(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,B1636BB,BsAs")

    def new_zip_code_without_ending_3_letters(self):
        return io.StringIO(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,B1636B2E,BsAs")

    def new_zip_code_without_four_digits(self):
        return io.StringIO(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,B1a36BBE,BsAs")

    def old_zip_bigger_than_9999(self):

        return io.StringIO(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,10000,BsAs")

    def old_zip_code_with_letters(self):

        return io.StringIO(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,1a00,BsAs")

    def old_zip_smaller_than_1000(self):

        return io.StringIO(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,999,BsAs")

    def valid_import_data(self):

        return io.StringIO(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,B1636BBE,BsAs\n" +
"A,Maipu,888,Florida,1122,Buenos Aires\n" +
"C,Juan,Perez,C,23-25666777-9\n" +
"A,Alem,1122,CABA,1001,CABA")
