package customerimporter;

import java.util.function.Supplier;

public class NewZipCode extends ZipCode {

    private final String value;

    // instance creation

    public static boolean canBeCreatedFrom(String aZipCode) {
        return Character.isLetter(aZipCode.charAt(0));
    }

    // initialization

    public NewZipCode(String aZipCode) {
        String oldZipCodePart;

        assertValidZipCode(aZipCode.length() == 8);
        oldZipCodePart = aZipCode.substring(1, 5);
        assertValidZipCode(ImportValidations.isAllDigits(oldZipCodePart));
        assertValidZipCode(Integer.parseInt(oldZipCodePart) > 999);
        assertValidZipCode(ImportValidations.isAllLetters(aZipCode.substring(aZipCode.length() - 3)));
        value = aZipCode;
    }

    // accessing

    public Object value() {
        return value;
    }

    // testing

    public boolean isNew() {
        return true;
    }

    public Object newValueIfNone(Supplier<Object> aNoneBlock) {
        return value;
    }

    // validation - private

    protected String invalidZipCodeErrorDescription() {
        return "Invalid new zipcode";
    }
}
