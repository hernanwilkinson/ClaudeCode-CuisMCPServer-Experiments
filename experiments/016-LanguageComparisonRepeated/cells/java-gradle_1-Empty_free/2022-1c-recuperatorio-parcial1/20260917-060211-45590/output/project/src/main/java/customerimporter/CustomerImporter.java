package customerimporter;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class CustomerImporter {

    private BufferedReader readStream;
    private Customer newCustomer;
    private String line;
    private List<String> record;
    private CustomerSystem system;

    // instance creation

    public static CustomerImporter from(BufferedReader aReadStream, CustomerSystem aCustomerSystem) {
        return new CustomerImporter(aReadStream, aCustomerSystem);
    }

    // importing

    public static void valueFrom(BufferedReader aReadStream, CustomerSystem aCustomerSystem) {
        from(aReadStream, aCustomerSystem).value();
    }

    // error messages

    public static String canNotImportAddressWithoutCustomerErrorDescription() {
        return "Cannot import address without customer";
    }

    public static String invalidAddressRecordErrorDescription() {
        return "Address record has to have six fields";
    }

    public static String invalidCustomerRecordErrorDescription() {
        return "Invalid Customer record";
    }

    public static String invalidRecordTypeErrorDescription() {
        return "Invalid record type";
    }

    // initialization

    private CustomerImporter(BufferedReader aReadStream, CustomerSystem aCustomerSystem) {
        readStream = aReadStream;
        system = aCustomerSystem;
    }

    // evaluating

    public void value() {
        while (hasLineToImport()) {
            createRecord();
            importRecord();
        }
    }

    // customer

    public void assertValidCustomerRecord() {
        assertRecordSize(5, invalidCustomerRecordErrorDescription());
    }

    public void importCustomer() {
        assertValidCustomerRecord();

        newCustomer = new Customer();
        newCustomer.firstName(record.get(1));
        newCustomer.lastName(record.get(2));
        newCustomer.identification(Identification.of(record.get(3), record.get(4)));

        system.add(newCustomer);
    }

    public boolean isCustomerRecord() {
        return record.get(0).equals("C");
    }

    // address

    public void assertCustomerWasImported() {
        if (newCustomer == null) throw new RuntimeException(canNotImportAddressWithoutCustomerErrorDescription());
    }

    public void assertValidAddressRecord() {
        assertRecordSize(6, invalidAddressRecordErrorDescription());
    }

    public void importAddress() {
        Address newAddress;

        assertCustomerWasImported();
        assertValidAddressRecord();

        newAddress = new Address();
        newAddress.streetName(record.get(1));
        newAddress.streetNumber(Integer.parseInt(record.get(2)));
        newAddress.town(record.get(3));
        newAddress.zipCode(ZipCode.from(record.get(4)));
        newAddress.province(record.get(5));

        newCustomer.addAddress(newAddress);
    }

    public boolean isAddressRecord() {
        return record.get(0).equals("A");
    }

    // evaluating - private

    private void assertRecordSize(int aSize, String anErrorDescription) {
        if (record.size() != aSize) throw new RuntimeException(anErrorDescription);
    }

    private void assertRecordNotEmpty() {
        if (record.isEmpty()) throw new RuntimeException(invalidRecordTypeErrorDescription());
    }

    private List<String> createRecord() {
        record = new ArrayList<>();
        StringTokenizer tokens = new StringTokenizer(line, ",");
        while (tokens.hasMoreTokens()) {
            record.add(tokens.nextToken());
        }
        return record;
    }

    private boolean hasLineToImport() {
        try {
            line = readStream.readLine();
        } catch (IOException anIOException) {
            throw new RuntimeException(anIOException);
        }
        return line != null;
    }

    private void importRecord() {
        assertRecordNotEmpty();

        if (isCustomerRecord()) { importCustomer(); return; }
        if (isAddressRecord()) { importAddress(); return; }

        throw new RuntimeException(invalidRecordTypeErrorDescription());
    }
}
