package customerimporter;

import java.util.function.Supplier;

public class OldZipCode extends ZipCode {

    private static final int MINIMUM_NUMBER = 1000;
    private static final int MAXIMUM_NUMBER = 9999;

    private final int number;

    // instance creation

    public static boolean canBeCreatedFrom(String aZipCode) {
        return Character.isDigit(aZipCode.charAt(0));
    }

    // error messages

    public static String invalidZipCodeErrorDescription() {
        return "Invalid old zipcode";
    }

    // number - a new zip code carries an old zip code number, so both validate it the same way,
    // each one reporting its own error

    static int assertIsValidNumber(String aNumber, String anErrorDescription) {
        return Validation.assertIsNumberBetween(aNumber, MINIMUM_NUMBER, MAXIMUM_NUMBER, anErrorDescription);
    }

    // initialization

    OldZipCode(String aZipCode) {
        number = assertIsValidNumber(aZipCode, invalidZipCodeErrorDescription());
    }

    // zip code

    public Object value() {
        return number;
    }

    // testing

    public boolean isNew() {
        return false;
    }

    public boolean isOld() {
        return true;
    }

    // values

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return number;
    }
}
