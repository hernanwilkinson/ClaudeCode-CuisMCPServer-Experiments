package customerimporter;

import static customerimporter.Validation.assertThat;
import static customerimporter.Validation.isAllDigits;
import static customerimporter.Validation.isBetween;

import java.util.function.Supplier;

public class OldZipCode extends ZipCode {

    private static final int MINIMUM_VALUE = 1000;
    private static final int MAXIMUM_VALUE = 9999;

    private final int value;

    // instance creation

    public static boolean canBeCreatedFrom(String aZipCode) {
        return Character.isDigit(aZipCode.charAt(0));
    }

    public static OldZipCode with(String aZipCode) {
        assertIsValid(aZipCode);
        return new OldZipCode(Integer.parseInt(aZipCode));
    }

    // error messages

    public static String invalidZipCodeErrorDescription() {
        return "Invalid old zipcode";
    }

    // asserting - private

    private static void assertIsValid(String aZipCode) {
        assertThat(isAllDigits(aZipCode), invalidZipCodeErrorDescription());
        assertThat(isBetween(Integer.parseInt(aZipCode), MINIMUM_VALUE, MAXIMUM_VALUE), invalidZipCodeErrorDescription());
    }

    // initialization

    private OldZipCode(int aValue) {
        value = aValue;
    }

    // accessing

    public Object value() {
        return value;
    }

    // testing

    public boolean isNew() {
        return false;
    }

    public boolean isOld() {
        return true;
    }

    // evaluating

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return value();
    }
}
