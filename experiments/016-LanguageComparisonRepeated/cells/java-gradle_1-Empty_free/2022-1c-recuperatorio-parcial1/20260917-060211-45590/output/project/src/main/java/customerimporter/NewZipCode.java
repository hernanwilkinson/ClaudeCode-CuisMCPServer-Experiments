package customerimporter;

import java.util.function.Supplier;

public class NewZipCode extends ZipCode {

    // instance creation

    public static boolean canHandle(String aZipCode) {
        return Character.isLetter(aZipCode.charAt(0));
    }

    // error messages

    public static String invalidNewZipCodeErrorDescription() {
        return "Invalid new zipcode";
    }

    // initialization

    public NewZipCode(String aZipCode) {
        super(aZipCode);
    }

    // accessing

    public Object value() {
        return code;
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
        return value();
    }

    // validation

    // "B1636BBE": a letter, the old zip code and three letters
    protected void assertIsValid() {
        assertThat(code.length() == 8);
        String oldZipCode = code.substring(1, 5);
        assertThat(Characters.areAllDigits(oldZipCode));
        assertThat(Integer.parseInt(oldZipCode) > 999);
        assertThat(Characters.areAllLetters(code.substring(code.length() - 3)));
    }

    protected String invalidZipCodeErrorDescription() {
        return invalidNewZipCodeErrorDescription();
    }
}
