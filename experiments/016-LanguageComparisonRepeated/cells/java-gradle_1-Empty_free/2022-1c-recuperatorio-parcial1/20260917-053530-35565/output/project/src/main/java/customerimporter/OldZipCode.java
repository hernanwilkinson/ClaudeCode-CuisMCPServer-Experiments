package customerimporter;

import java.util.function.Supplier;

public class OldZipCode extends ZipCode {

    private final int value;

    // error messages

    public static String invalidOldZipCodeErrorDescription() {
        return "Invalid old zipcode";
    }

    // initialization

    public OldZipCode(String aZipCode) {
        assertValid(isAllDigits(aZipCode));
        value = Integer.parseInt(aZipCode);
        assertValid(value >= 1000 && value <= 9999);
    }

    protected String invalidValueErrorDescription() {
        return invalidOldZipCodeErrorDescription();
    }

    // accessing

    public Object value() {
        return value;
    }

    // testing

    public boolean isOld() {
        return true;
    }

    public boolean isNew() {
        return false;
    }

    public Object oldValueIfNone(Supplier<Object> aNoneBlock) {
        return value;
    }

    public Object newValueIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }
}
