package customerimporter;

import java.util.function.Supplier;

public class Address {

    private int id;
    private String streetName;
    private int streetNumber;
    private String town;
    private Object zipCode;
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

    // twon

    public String town() {
        return town;
    }

    public void town(String aTown) {
        town = aTown;
    }

    // zip code

    public boolean hasNewZipCode() {
        return zipCode instanceof String;
    }

    public boolean hasOldZipCode() {
        return zipCode instanceof Integer;
    }

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        if (hasNewZipCode())
            return zipCode;
        else
            return aNoneBlock.get();
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        if (hasOldZipCode())
            return zipCode;
        else
            return aNoneBlock.get();
    }

    public Object zipCode() {
        return zipCode;
    }

    public void zipCode(Object aZipCode) {
        zipCode = aZipCode;
    }
}
