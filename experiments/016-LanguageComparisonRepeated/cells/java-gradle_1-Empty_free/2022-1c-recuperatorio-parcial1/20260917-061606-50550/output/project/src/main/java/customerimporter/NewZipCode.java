package customerimporter;

import java.util.function.Supplier;

public class NewZipCode extends ZipCode {

    private final String value;

    // initialization

    public NewZipCode(String aZipCode) {
        assertValid(aZipCode.length() == 8);
        String oldZipCodePart = aZipCode.substring(1, 5);
        assertValid(Characters.areAllDigits(oldZipCodePart));
        assertValid(Integer.parseInt(oldZipCodePart) > 999);
        assertValid(Characters.areAllLetters(aZipCode.substring(aZipCode.length() - 3)));
        value = aZipCode;
    }

    // validation

    protected String invalidZipCodeErrorDescription() {
        return "Invalid new zipcode";
    }

    // accessing

    public Object value() {
        return value;
    }

    // kind

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
}
