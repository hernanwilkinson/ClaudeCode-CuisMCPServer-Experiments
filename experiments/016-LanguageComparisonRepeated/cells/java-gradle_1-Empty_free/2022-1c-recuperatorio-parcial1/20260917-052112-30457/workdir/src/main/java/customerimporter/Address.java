package customerimporter;

import java.util.function.Supplier;

public class Address {

    private int id;
    private String streetName;
    private int streetNumber;
    private String town;
    private ZipCode zipCode;
    private String province;

    // province

    public String province() {
        return province;
    }

    public void province(String aProvince) {
        province = aProvince;
    }

    // street

    public boolean isAt(String aStreetName) {
        return streetName.equals(aStreetName);
    }

    public String streetName() {
        return streetName;
    }

    public void streetName(String aStreetName) {
        streetName = aStreetName;
    }

    public int streetNumber() {
        return streetNumber;
    }

    public void streetNumber(int aStreetNumber) {
        streetNumber = aStreetNumber;
    }

    // town

    public String town() {
        return town;
    }

    public void town(String aTown) {
        town = aTown;
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

    public void zipCode(ZipCode aZipCode) {
        zipCode = aZipCode;
    }
}
