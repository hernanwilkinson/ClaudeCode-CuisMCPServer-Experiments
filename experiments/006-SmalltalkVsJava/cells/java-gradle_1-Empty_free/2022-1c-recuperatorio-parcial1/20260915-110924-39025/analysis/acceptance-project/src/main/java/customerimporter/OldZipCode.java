package customerimporter;

import java.util.function.Supplier;

public class OldZipCode extends ZipCode {

    // instance creation

    static boolean appliesTo(String aZipCode) {
        return Character.isDigit(aZipCode.charAt(0));
    }

    // error messages

    public static String invalidOldZipCodeErrorDescription() {
        return "Invalid old zipcode";
    }

    // initialization

    OldZipCode(String aCode) {
        super(aCode);
    }

    // zip code

    public Object value() {
        return number();
    }

    public int number() {
        return Integer.parseInt(code());
    }

    // type

    public boolean isOld() {
        return true;
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return value();
    }

    // validation

    protected void assertIsValid() {
        assertThat(Characters.areAllDigits(code()));
        assertThat(number() >= 1000 && number() <= 9999);
    }

    protected String invalidZipCodeErrorDescription() {
        return invalidOldZipCodeErrorDescription();
    }
}
