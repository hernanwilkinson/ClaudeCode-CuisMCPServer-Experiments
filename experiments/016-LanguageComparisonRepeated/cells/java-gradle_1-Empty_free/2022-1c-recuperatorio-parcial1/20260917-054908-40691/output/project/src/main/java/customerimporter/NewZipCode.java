package customerimporter;

import java.util.function.Supplier;

public class NewZipCode extends ZipCode {

    private final String value;

    // instance creation

    static boolean canHandle(String aZipCode) {
        return Character.isLetter(aZipCode.charAt(0));
    }

    // error messages

    public static String invalidNewZipCodeErrorDescription() {
        return "Invalid new zipcode";
    }

    // initialization

    // e.g. B1636BBE
    public NewZipCode(String aZipCode) {
        super(aZipCode);
        value = aZipCode;
    }

    // accessing

    public Object value() {
        return value;
    }

    // testing

    public boolean isOld() {
        return false;
    }

    public boolean isNew() {
        return true;
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return value;
    }

    // validation

    protected boolean isValid(String aZipCode) {
        return aZipCode.length() == 8
            && isValidOldZipCodePart(aZipCode.substring(1, 5))
            && Strings.isAllLetters(aZipCode.substring(5));
    }

    private boolean isValidOldZipCodePart(String anOldZipCodePart) {
        return Strings.isAllDigits(anOldZipCodePart) && Integer.parseInt(anOldZipCodePart) > 999;
    }

    protected String invalidZipCodeErrorDescription() {
        return invalidNewZipCodeErrorDescription();
    }
}
