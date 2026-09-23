package customerimporter;

import java.util.function.Supplier;

public class OldZipCode extends ZipCode {

    private static final CodeValidator validator = CodeValidator.failingWith(invalidOldZipCodeErrorDescription());

    private final int postalNumber;

    // instance creation

    public static boolean canCreateFrom(String aZipCode) {
        return Character.isDigit(aZipCode.charAt(0));
    }

    public static OldZipCode from(String aZipCode) {
        return new OldZipCode(assertIsValidPostalNumber(aZipCode, validator));
    }

    // error messages

    public static String invalidOldZipCodeErrorDescription() {
        return "Invalid old zipcode";
    }

    // initialization

    private OldZipCode(int aPostalNumber) {
        postalNumber = aPostalNumber;
    }

    // zip code

    public Object value() {
        return postalNumber;
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
        return postalNumber;
    }
}
