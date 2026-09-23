package customerimporter;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
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
        if (record.size() != 5) throw new RuntimeException(invalidCustomerRecordErrorDescription());
    }

    public void importCustomer() {
        String idType;
        String idNumber;

        assertValidCustomerRecord();

        newCustomer = new Customer();
        newCustomer.firstName(record.get(1));
        newCustomer.lastName(record.get(2));
        idType = record.get(3);
        idNumber = record.get(4);

        if (idType.equals("D")) {
            int dniNumber;
            if (!idNumber.chars().allMatch(idChar -> Character.isDigit(idChar))) throw new RuntimeException("Invalid DNI number");
            dniNumber = Integer.parseInt(idNumber);
            if (!(dniNumber >= 1 && dniNumber <= 99999999)) throw new RuntimeException("Invalid DNI number");
        } else if (idType.equals("C")) {
            // "23-25666777-9" size 13
            if (!(idNumber.length() >= 12 && idNumber.length() <= 13)) throw new RuntimeException("Invalid CUIT number");
            if (!(idNumber.charAt(2) == '-' && idNumber.charAt(idNumber.length() - 2) == '-')) throw new RuntimeException("Invalid CUIT number");
            if (!Arrays.asList("20", "23", "24", "25", "26", "27", "30", "33", "34").contains(idNumber.substring(0, 2))) throw new RuntimeException("Invalid CUIT number");
            if (!Character.isDigit(idNumber.charAt(idNumber.length() - 1))) throw new RuntimeException("Invalid CUIT number");
            if (!idNumber.substring(3, idNumber.length() - 2).chars().allMatch(idChar -> Character.isDigit(idChar))) throw new RuntimeException("Invalid CUIT number");
        } else {
            throw new RuntimeException("Invalid identification type");
        }

        newCustomer.identificationType(idType);
        newCustomer.identificationNumber(idNumber);
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
        if (record.size() != 6) throw new RuntimeException(invalidAddressRecordErrorDescription());
    }

    public void importAddress() {
        Address newAddress;
        String zipCode;
        Object importedZipCode;
        String newZipcodeOldZipCode;

        assertCustomerWasImported();
        assertValidAddressRecord();

        newAddress = new Address();
        newAddress.streetName(record.get(1));
        newAddress.streetNumber(Integer.parseInt(record.get(2)));
        newAddress.town(record.get(3));

        zipCode = record.get(4);

        if (Character.isDigit(zipCode.charAt(0))) {
            if (!zipCode.chars().allMatch(aChar -> Character.isDigit(aChar))) throw new RuntimeException("Invalid old zipcode");
            importedZipCode = Integer.parseInt(zipCode);
            if (!((Integer) importedZipCode >= 1000 && (Integer) importedZipCode <= 9999)) throw new RuntimeException("Invalid old zipcode");
        } else if (Character.isLetter(zipCode.charAt(0))) {
            if (zipCode.length() != 8) throw new RuntimeException("Invalid new zipcode");
            newZipcodeOldZipCode = zipCode.substring(1, 5);
            if (!newZipcodeOldZipCode.chars().allMatch(aChar -> Character.isDigit(aChar))) throw new RuntimeException("Invalid new zipcode");
            if (!(Integer.parseInt(newZipcodeOldZipCode) > 999)) throw new RuntimeException("Invalid new zipcode");
            if (!zipCode.substring(zipCode.length() - 3).chars().allMatch(aChar -> Character.isLetter(aChar))) throw new RuntimeException("Invalid new zipcode");
            importedZipCode = zipCode;
        } else {
            throw new RuntimeException("Invalid identification type");
        }

        newAddress.zipCode(importedZipCode);
        newAddress.province(record.get(5));

        newCustomer.addAddress(newAddress);
    }

    public boolean isAddressRecord() {
        return record.get(0).equals("A");
    }

    // evaluating - private

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
