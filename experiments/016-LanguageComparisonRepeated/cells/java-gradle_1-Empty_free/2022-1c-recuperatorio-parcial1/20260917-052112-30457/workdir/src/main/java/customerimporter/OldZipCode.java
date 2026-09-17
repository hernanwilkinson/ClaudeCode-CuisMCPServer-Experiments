package customerimporter;

import java.util.function.Supplier;

public class OldZipCode extends ZipCode {

    private final Integer value;

    // instance creation

    public static boolean canBeCreatedFrom(String aZipCode) {
        return Character.isDigit(aZipCode.charAt(0));
    }

    // initialization

    public OldZipCode(String aZipCode) {
        assertValidZipCode(ImportValidations.isAllDigits(aZipCode));
        value = Integer.parseInt(aZipCode);
        assertValidZipCode(ImportValidations.isBetween(value, 1000, 9999));
    }

    // accessing

    public Object value() {
        return value;
    }

    // testing

    public boolean isOld() {
        return true;
    }

    public Object oldValueIfNone(Supplier<Object> aNoneBlock) {
        return value;
    }

    // validation - private

    protected String invalidZipCodeErrorDescription() {
        return "Invalid old zipcode";
    }
}
