package customerimporter;

import java.util.function.Supplier;

public class OldZipCode extends ZipCode {

    private final int value;

    // initialization

    public OldZipCode(String aZipCode) {
        assertValid(Characters.areAllDigits(aZipCode));
        value = Integer.parseInt(aZipCode);
        assertValid(value >= 1000 && value <= 9999);
    }

    // validation

    protected String invalidZipCodeErrorDescription() {
        return "Invalid old zipcode";
    }

    // accessing

    public Object value() {
        return value;
    }

    // kind

    public boolean isOld() {
        return true;
    }

    public boolean isNew() {
        return false;
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return value;
    }

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }
}
