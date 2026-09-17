package customerimporter;

import java.util.function.Supplier;

public class OldZipCode extends ZipCode {

    private final Integer value;

    // instance creation

    static boolean canHandle(String aZipCode) {
        return Character.isDigit(aZipCode.charAt(0));
    }

    // error messages

    public static String invalidOldZipCodeErrorDescription() {
        return "Invalid old zipcode";
    }

    // initialization

    // e.g. 1636
    public OldZipCode(String aZipCode) {
        super(aZipCode);
        value = Integer.parseInt(aZipCode);
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

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return value;
    }

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    // validation

    protected boolean isValid(String aZipCode) {
        return Strings.isAllDigits(aZipCode)
            && Strings.isBetween(Long.parseLong(aZipCode), 1000, 9999);
    }

    protected String invalidZipCodeErrorDescription() {
        return invalidOldZipCodeErrorDescription();
    }
}
