package customerimporter;

import java.util.function.Supplier;

public class NewZipCode extends ZipCode {

    // instance creation

    static boolean appliesTo(String aZipCode) {
        return Character.isLetter(aZipCode.charAt(0));
    }

    // error messages

    public static String invalidNewZipCodeErrorDescription() {
        return "Invalid new zipcode";
    }

    // initialization

    NewZipCode(String aCode) {
        super(aCode);
    }

    // zip code

    public Object value() {
        return code();
    }

    // type

    public boolean isNew() {
        return true;
    }

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return value();
    }

    // validation

    protected void assertIsValid() {
        // "B1636BBE" size 8
        assertThat(code().length() == 8);
        assertThat(Characters.areAllDigits(oldZipCodePart()));
        assertThat(Integer.parseInt(oldZipCodePart()) > 999);
        assertThat(Characters.areAllLetters(code().substring(code().length() - 3)));
    }

    protected String invalidZipCodeErrorDescription() {
        return invalidNewZipCodeErrorDescription();
    }

    // validation - private

    private String oldZipCodePart() {
        return code().substring(1, 5);
    }
}
