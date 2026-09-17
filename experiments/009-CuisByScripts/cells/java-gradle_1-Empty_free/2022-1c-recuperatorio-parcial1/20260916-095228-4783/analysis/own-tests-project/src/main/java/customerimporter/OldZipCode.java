package customerimporter;

import java.util.function.Supplier;

public class OldZipCode extends ZipCode {

    private final int value;

    // subtype selection

    public static boolean canHandle(String aZipCode) {
        return Characters.startsWithDigit(aZipCode);
    }

    // initialization

    public OldZipCode(String aZipCode) {
        assertValid(Characters.areAllDigits(aZipCode));
        value = Integer.parseInt(aZipCode);
        assertValid(value >= 1000 && value <= 9999);
    }

    // error messages

    protected String invalidZipCodeErrorDescription() {
        return "Invalid old zipcode";
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

    // values

    public Object oldValueIfNone(Supplier<Object> aNoneBlock) {
        return value;
    }
}
