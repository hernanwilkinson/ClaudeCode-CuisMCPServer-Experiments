package customerimporter;

import java.util.function.Supplier;

public class NewZipCode extends ZipCode {

    private final String value;

    // subtype selection

    public static boolean canHandle(String aZipCode) {
        return Characters.startsWithLetter(aZipCode);
    }

    // initialization

    public NewZipCode(String aZipCode) {
        assertValid(aZipCode.length() == 8);
        String oldZipCodePart = aZipCode.substring(1, 5);
        assertValid(Characters.areAllDigits(oldZipCodePart));
        assertValid(Integer.parseInt(oldZipCodePart) > 999);
        assertValid(Characters.areAllLetters(aZipCode.substring(aZipCode.length() - 3)));
        value = aZipCode;
    }

    // error messages

    protected String invalidZipCodeErrorDescription() {
        return "Invalid new zipcode";
    }

    // accessing

    public Object value() {
        return value;
    }

    // testing

    public boolean isNew() {
        return true;
    }

    public boolean isOld() {
        return false;
    }

    // values

    public Object newValueIfNone(Supplier<Object> aNoneBlock) {
        return value;
    }
}
