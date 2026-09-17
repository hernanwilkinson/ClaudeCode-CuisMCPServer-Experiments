package customerimporter;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.junit.jupiter.api.Assertions.fail;

import java.io.BufferedReader;
import java.io.StringReader;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class ImportTest {

    private CustomerSystem system;

    // tests

    public BufferedReader cuitWithInvalidHeader() {
        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,C,19-25666777-9"));
    }

    @Test
    public void test01ValidDataIsImportedCorrectly() {

        CustomerImporter.valueFrom(validImportData(), system);

        assertImportedRightNumberOfCustomers();
        assertPepeSanchezWasImportedCorrecty();
        assertJuanPerezWasImportedCorrectly();
    }

    @Test
    public void test02CanNotImportAddressWithoutCustomer() {

        RuntimeException anError = assertThrows(RuntimeException.class,
            () -> CustomerImporter.valueFrom(addressWithoutCustomerData(), system));
        assertEquals(CustomerImporter.canNotImportAddressWithoutCustomerErrorDescription(), anError.getMessage());

    }

    @Test
    public void test03DoesNotImportRecordsStartingWithCButMoreCharacters() {

        shouldFailImporting(
            invalidCustomerRecordStartData(),
            CustomerImporter.invalidRecordTypeErrorDescription(),
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test04DoesNotImportRecordsStartingWithAButMoreCharacters() {

        shouldFailImporting(
            invalidAddressRecordStartData(),
            CustomerImporter.invalidRecordTypeErrorDescription(),
            () -> assertImportedOneCustomerWithoutAddress());

    }

    @Test
    public void test05CanNotImportAddressRecordWithLessThanSixFields() {

        shouldFailImporting(
            addressRecordWithLessThanSixFields(),
            CustomerImporter.invalidAddressRecordErrorDescription(),
            () -> assertImportedOneCustomerWithoutAddress());

    }

    @Test
    public void test06CanNotImportAddressRecordWithMoreThanSixFields() {

        shouldFailImporting(
            addressRecordWithMoreThanSixFields(),
            CustomerImporter.invalidAddressRecordErrorDescription(),
            () -> assertImportedOneCustomerWithoutAddress());

    }

    @Test
    public void test07CanNotImportCustomerRecordWithLessThanFiveFields() {

        shouldFailImporting(
            customerRecordWithLessThanFiveFields(),
            CustomerImporter.invalidCustomerRecordErrorDescription(),
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test08CanNotImportCustomerRecordWithMoreThanFiveFields() {

        shouldFailImporting(
            customerRecordWithMoreThanFiveFields(),
            CustomerImporter.invalidCustomerRecordErrorDescription(),
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test09CannotImportEmptyLine() {

        shouldFailImporting(
            emptyLine(),
            CustomerImporter.invalidRecordTypeErrorDescription(),
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test10DNICannotBeLessThanOne() {

        shouldFailImporting(
            lessThanOneDNI(),
            "Invalid DNI number",
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test11DNICannotBeBiggerThan99999999() {

        shouldFailImporting(
            biggerThanValidDNINumber(),
            "Invalid DNI number",
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test12DNIMustBeAllDigits() {

        shouldFailImporting(
            dniWithoutDigit(),
            "Invalid DNI number",
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test13CuitSizeCannotBeLessThan12() {

        shouldFailImporting(
            lessThan12CuitSize(),
            "Invalid CUIT number",
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test14CuitSizeCannotBeBiggerThan13() {

        shouldFailImporting(
            biggerThan13CuitSize(),
            "Invalid CUIT number",
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test15CuitMustHaveDashAtThridPosition() {

        shouldFailImporting(
            cuitWithoutDashInThirdPosition(),
            "Invalid CUIT number",
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test16CuitMustHaveDashAtPenultimatePosition() {

        shouldFailImporting(
            cuitWithoutDashAnPenultimatePosition(),
            "Invalid CUIT number",
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test17CuitMustHaveValidHeader() {

        shouldFailImporting(
            cuitWithInvalidHeader(),
            "Invalid CUIT number",
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test18CuitMustHaveDigitAtEnd() {

        shouldFailImporting(
            cuitWithoutDigitAtEnd(),
            "Invalid CUIT number",
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test19CuitMustHaveAllDigits() {

        shouldFailImporting(
            cuitWithoutAllDigits(),
            "Invalid CUIT number",
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test20OldZipCodeMustBeAllDigits() {

        shouldFailImporting(
            oldZipCodeWithLetters(),
            "Invalid old zipcode",
            () -> assertImportedOneCustomerWithoutAddress());

    }

    @Test
    public void test21OldZipMustBeBiggerThan999() {

        shouldFailImporting(
            oldZipSmallerThan1000(),
            "Invalid old zipcode",
            () -> assertImportedOneCustomerWithoutAddress());

    }

    @Test
    public void test22OldZipMustBeLessThan10000() {

        shouldFailImporting(
            oldZipBiggerThan9999(),
            "Invalid old zipcode",
            () -> assertImportedOneCustomerWithoutAddress());

    }

    @Test
    public void test23NewZipCodeSizeCannotBeLessThan8() {

        shouldFailImporting(
            newZipCodeWithSizeLessThan8(),
            "Invalid new zipcode",
            () -> assertImportedOneCustomerWithoutAddress());

    }

    @Test
    public void test24NewZipCodeSizeCannotBeBiggerThan8() {

        shouldFailImporting(
            newZipCodeWithSizeBiggerThan8(),
            "Invalid new zipcode",
            () -> assertImportedOneCustomerWithoutAddress());

    }

    @Test
    public void test25NewZipCode4DigitsAfterFirstLetter() {

        shouldFailImporting(
            newZipCodeWithoutFourDigits(),
            "Invalid new zipcode",
            () -> assertImportedOneCustomerWithoutAddress());

    }

    @Test
    public void test26NewZipCode4DigitsMustBeBiggerThan999() {

        shouldFailImporting(
            newZipCodeFourDigitsLessThan1000(),
            "Invalid new zipcode",
            () -> assertImportedOneCustomerWithoutAddress());

    }

    @Test
    public void test27NewZipCodeMustEndWith3Letters() {

        shouldFailImporting(
            newZipCodeWithoutEnding3Letters(),
            "Invalid new zipcode",
            () -> assertImportedOneCustomerWithoutAddress());

    }

    @Test
    public void test28IdTypeMustBeDNIOrCuit() {

        shouldFailImporting(
            invalidIdType(),
            "Invalid identification type",
            () -> assertNoCustomerWasImported());

    }

    @Test
    public void test29ZipCodeMustBeOldOrNew() {

        shouldFailImporting(
            invalidIdZipCode(),
            "Invalid identification type",
            () -> assertImportedOneCustomerWithoutAddress());

    }

    // assertions

    public Address assertAddressOf(Customer importedCustomer, String aStreetName, int aNumber, String aTown, Object aZipCode, String aProvince) {

        Address importedAddress;

        importedAddress = importedCustomer.addressAt(aStreetName, () -> fail());
        assertEquals(aStreetName, importedAddress.streetName());
        assertEquals(aNumber, importedAddress.streetNumber());
        assertEquals(aTown, importedAddress.town());
        assertEquals(aZipCode, importedAddress.zipCode());
        assertEquals(aProvince, importedAddress.province());

        return importedAddress;

    }

    public Customer assertCustomerWithIdentificationType(String anIdType, String anIdNumber, String aFirstName, String aLastName) {

        Customer importedCustomer;

        importedCustomer = system.customerWithIdentificationType(anIdType, anIdNumber);

        assertEquals(aFirstName, importedCustomer.firstName());
        assertEquals(aLastName, importedCustomer.lastName());
        assertEquals(anIdType, importedCustomer.identificationType());
        assertEquals(anIdNumber, importedCustomer.identificationNumber());

        return importedCustomer;

    }

    public void assertImportedOneCustomerWithoutAddress() {

        Customer importedCustomer;

        assertEquals(1, system.numberOfCustomers());
        importedCustomer = system.customerWithIdentificationType("D", "22333444");
        assertTrue(importedCustomer.isAddressesEmpty());
    }

    public void assertImportedRightNumberOfCustomers() {

        assertEquals(2, system.numberOfCustomers());
    }

    public void assertJuanPerezWasImportedCorrectly() {

        Customer importedCustomer;
        Address address;

        importedCustomer = assertCustomerWithIdentificationType("C", "23-25666777-9", "Juan", "Perez");

        assertFalse(importedCustomer.hasDNIAsIdentification());
        assertEquals("No dni", importedCustomer.dniNumberIfNone(() -> "No dni"));
        assertTrue(importedCustomer.hasCUITAsIdentification());
        assertEquals("23-25666777-9", importedCustomer.cuitNumberIfNone(() -> fail()));

        address = assertAddressOf(importedCustomer, "Alem", 1122, "CABA", 1001, "CABA");

        assertTrue(address.hasOldZipCode());
        assertEquals(1001, address.oldZipCodeIfNone(() -> fail()));
        assertFalse(address.hasNewZipCode());
        assertEquals("has old zipcode", address.newZipCodeIfNone(() -> "has old zipcode"));
    }

    public void assertNoCustomerWasImported() {

        assertEquals(0, system.numberOfCustomers());
    }

    public void assertPepeSanchezWasImportedCorrecty() {

        Customer importedCustomer;
        Address address;

        importedCustomer = assertCustomerWithIdentificationType("D", "22333444", "Pepe", "Sanchez");

        assertTrue(importedCustomer.hasDNIAsIdentification());
        assertEquals(22333444, importedCustomer.dniNumberIfNone(() -> fail()));
        assertFalse(importedCustomer.hasCUITAsIdentification());
        assertEquals("No cuit", importedCustomer.cuitNumberIfNone(() -> "No cuit"));

        address = assertAddressOf(importedCustomer, "San Martin", 3322, "Olivos", "B1636BBE", "BsAs");
        assertFalse(address.hasOldZipCode());
        assertEquals("has new zipcode", address.oldZipCodeIfNone(() -> "has new zipcode"));
        assertTrue(address.hasNewZipCode());
        assertEquals("B1636BBE", address.newZipCodeIfNone(() -> fail()));

        assertAddressOf(importedCustomer, "Maipu", 888, "Florida", 1122, "Buenos Aires");
    }

    public void shouldFailImporting(BufferedReader aReadStream, String anErrorMessageText, Runnable anAssertionBlock) {

        RuntimeException anError = assertThrows(RuntimeException.class,
            () -> CustomerImporter.valueFrom(aReadStream, system));
        assertEquals(anErrorMessageText, anError.getMessage());
        anAssertionBlock.run();

    }

    // setUp/tearDown

    @BeforeEach
    public void setUp() {

        system = Environment.current().createCustomerSystem();
        system.start();
        system.beginTransaction();
    }

    @AfterEach
    public void tearDown() {

        system.commit();
        system.stop();
    }

    // test data

    public BufferedReader addressRecordWithLessThanSixFields() {

        return new BufferedReader(new StringReader("C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,1636"));
    }

    public BufferedReader addressRecordWithMoreThanSixFields() {

        return new BufferedReader(new StringReader("C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,1636,BsAs,x"));
    }

    public BufferedReader addressWithoutCustomerData() {

        return new BufferedReader(new StringReader("A,San Martin,3322,Olivos,1636,BsAs"));
    }

    public BufferedReader biggerThan13CuitSize() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,C,23-25666777-99"));
    }

    public BufferedReader biggerThanValidDNINumber() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,1000000000"));
    }

    public BufferedReader cuitWithoutAllDigits() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,C,23-a5666777-9"));
    }

    public BufferedReader cuitWithoutDashAnPenultimatePosition() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,C,23-2566677799"));
    }

    public BufferedReader cuitWithoutDashInThirdPosition() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,C,2325666777-99"));
    }

    public BufferedReader cuitWithoutDigitAtEnd() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,C,23-25666777-a"));
    }

    public BufferedReader customerRecordWithLessThanFiveFields() {

        return new BufferedReader(new StringReader("C,Pepe,Sanchez,D"));
    }

    public BufferedReader customerRecordWithMoreThanFiveFields() {

        return new BufferedReader(new StringReader("C,Pepe,Sanchez,D,22333444,x"));
    }

    public BufferedReader dniWithoutDigit() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,2233344a"));
    }

    public BufferedReader emptyLine() {

        return new BufferedReader(new StringReader("\n"));
    }

    public BufferedReader invalidAddressRecordStartData() {

        return new BufferedReader(new StringReader("C,Pepe,Sanchez,D,22333444\n" +
"AA,San Martin,3322,Olivos,1636,BsAs"));
    }

    public BufferedReader invalidCustomerRecordStartData() {

        return new BufferedReader(new StringReader("CC,Pepe,Sanchez,D,22333444"));
    }

    public BufferedReader invalidIdType() {
        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,A,22333444"));
    }

    public BufferedReader invalidIdZipCode() {
        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,+1636BBE,BsAs"));
    }

    public BufferedReader lessThan12CuitSize() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,C,23-25666777-"));
    }

    public BufferedReader lessThanOneDNI() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,0"));
    }

    public BufferedReader newZipCodeFourDigitsLessThan1000() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,B0999BBE,BsAs"));
    }

    public BufferedReader newZipCodeWithSizeBiggerThan8() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,B1636BBEE,BsAs"));
    }

    public BufferedReader newZipCodeWithSizeLessThan8() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,B1636BB,BsAs"));
    }

    public BufferedReader newZipCodeWithoutEnding3Letters() {
        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,B1636B2E,BsAs"));
    }

    public BufferedReader newZipCodeWithoutFourDigits() {
        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,B1a36BBE,BsAs"));
    }

    public BufferedReader oldZipBiggerThan9999() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,10000,BsAs"));
    }

    public BufferedReader oldZipCodeWithLetters() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,1a00,BsAs"));
    }

    public BufferedReader oldZipSmallerThan1000() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,999,BsAs"));
    }

    public BufferedReader validImportData() {

        return new BufferedReader(new StringReader(
"C,Pepe,Sanchez,D,22333444\n" +
"A,San Martin,3322,Olivos,B1636BBE,BsAs\n" +
"A,Maipu,888,Florida,1122,Buenos Aires\n" +
"C,Juan,Perez,C,23-25666777-9\n" +
"A,Alem,1122,CABA,1001,CABA"));
    }
}
