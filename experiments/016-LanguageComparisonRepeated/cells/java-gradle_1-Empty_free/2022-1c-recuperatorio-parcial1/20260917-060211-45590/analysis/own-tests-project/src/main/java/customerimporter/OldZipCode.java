package customerimporter;

import java.util.function.Supplier;

public class OldZipCode extends ZipCode {

    // instance creation

    public static boolean canHandle(String aZipCode) {
        return Character.isDigit(aZipCode.charAt(0));
    }

    // error messages

    public static String invalidOldZipCodeErrorDescription() {
        return "Invalid old zipcode";
    }

    // initialization

    public OldZipCode(String aZipCode) {
        super(aZipCode);
    }

    // accessing

    public Object value() {
        return Integer.parseInt(code);
    }

    // testing

    public boolean isOld() {
        return true;
    }

    public boolean isNew() {
        return false;
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return value();
    }

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    // validation

    protected void assertIsValid() {
        assertThat(Characters.areAllDigits(code));
        int number = Integer.parseInt(code);
        assertThat(number >= 1000 && number <= 9999);
    }

    protected String invalidZipCodeErrorDescription() {
        return invalidOldZipCodeErrorDescription();
    }
}
