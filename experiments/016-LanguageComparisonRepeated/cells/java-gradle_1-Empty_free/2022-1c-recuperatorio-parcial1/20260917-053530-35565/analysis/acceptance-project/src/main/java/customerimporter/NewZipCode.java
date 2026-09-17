package customerimporter;

import java.util.function.Supplier;

public class NewZipCode extends ZipCode {

    private final String value;

    // error messages

    public static String invalidNewZipCodeErrorDescription() {
        return "Invalid new zipcode";
    }

    // initialization

    public NewZipCode(String aZipCode) {
        // "B1636BBE": a letter, the old zip code and three letters
        assertValid(aZipCode.length() == 8);
        String oldZipCode = aZipCode.substring(1, 5);
        assertValid(isAllDigits(oldZipCode));
        assertValid(Integer.parseInt(oldZipCode) > 999);
        assertValid(isAllLetters(aZipCode.substring(aZipCode.length() - 3)));
        value = aZipCode;
    }

    protected String invalidValueErrorDescription() {
        return invalidNewZipCodeErrorDescription();
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

    public Object oldValueIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object newValueIfNone(Supplier<Object> aNoneBlock) {
        return value;
    }
}
