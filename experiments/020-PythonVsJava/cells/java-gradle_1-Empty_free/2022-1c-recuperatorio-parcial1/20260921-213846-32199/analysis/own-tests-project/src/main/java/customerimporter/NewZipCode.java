package customerimporter;

import java.util.function.Supplier;

public class NewZipCode extends ZipCode {

    // "B1636BBE" size 8
    private static final int SIZE = 8;
    private static final int POSTAL_NUMBER_START_INDEX = 1;
    private static final int POSTAL_NUMBER_SIZE = 4;
    private static final int SUFFIX_SIZE = 3;
    private static final CodeValidator validator = CodeValidator.failingWith(invalidNewZipCodeErrorDescription());

    private final String zipCode;

    // instance creation

    public static boolean canCreateFrom(String aZipCode) {
        return Character.isLetter(aZipCode.charAt(0));
    }

    public static NewZipCode from(String aZipCode) {
        assertIsValidZipCode(aZipCode);
        return new NewZipCode(aZipCode);
    }

    // error messages

    public static String invalidNewZipCodeErrorDescription() {
        return "Invalid new zipcode";
    }

    // asserting - private

    private static void assertIsValidZipCode(String aZipCode) {
        validator.assertSizeIs(aZipCode, SIZE);
        assertIsValidPostalNumber(postalNumberOf(aZipCode), validator);
        validator.assertAllLetters(suffixOf(aZipCode));
    }

    private static String postalNumberOf(String aZipCode) {
        return aZipCode.substring(POSTAL_NUMBER_START_INDEX, POSTAL_NUMBER_START_INDEX + POSTAL_NUMBER_SIZE);
    }

    private static String suffixOf(String aZipCode) {
        return aZipCode.substring(aZipCode.length() - SUFFIX_SIZE);
    }

    // initialization

    private NewZipCode(String aZipCode) {
        zipCode = aZipCode;
    }

    // zip code

    public Object value() {
        return zipCode;
    }

    // testing

    public boolean isNew() {
        return true;
    }

    public boolean isOld() {
        return false;
    }

    // values

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return zipCode;
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }
}
