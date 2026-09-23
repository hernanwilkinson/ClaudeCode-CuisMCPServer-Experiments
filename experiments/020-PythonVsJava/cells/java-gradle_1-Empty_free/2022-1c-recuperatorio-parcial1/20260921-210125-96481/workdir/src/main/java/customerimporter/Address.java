package customerimporter;

import java.util.function.Supplier;

public class Address {

    private int id;
    private final String streetName;
    private final int streetNumber;
    private final String town;
    private final ZipCode zipCode;
    private final String province;

    // instance creation

    public static Address at(String aStreetName, int aStreetNumber, String aTown, ZipCode aZipCode, String aProvince) {
        return new Address(aStreetName, aStreetNumber, aTown, aZipCode, aProvince);
    }

    // initialization

    private Address(String aStreetName, int aStreetNumber, String aTown, ZipCode aZipCode, String aProvince) {
        streetName = aStreetName;
        streetNumber = aStreetNumber;
        town = aTown;
        zipCode = aZipCode;
        province = aProvince;
    }

    // province

    public String province() {
        return province;
    }

    // street

    public boolean isAt(String aStreetName) {
        return streetName.equals(aStreetName);
    }

    public String streetName() {
        return streetName;
    }

    public int streetNumber() {
        return streetNumber;
    }

    // twon

    public String town() {
        return town;
    }

    // zip code

    public boolean hasNewZipCode() {
        return zipCode.isNew();
    }

    public boolean hasOldZipCode() {
        return zipCode.isOld();
    }

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return zipCode.newValueIfNone(aNoneBlock);
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return zipCode.oldValueIfNone(aNoneBlock);
    }

    public Object zipCode() {
        return zipCode.value();
    }
}
