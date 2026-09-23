package customerimporter;

import static customerimporter.Validation.assertThat;
import static customerimporter.Validation.isAllDigits;
import static customerimporter.Validation.isAllLetters;

import java.util.function.Supplier;

public class NewZipCode extends ZipCode {

    // "B1636BBE": one letter, the old zip code and three letters
    private static final int SIZE = 8;
    private static final int MINIMUM_OLD_ZIP_CODE_VALUE = 1000;
    private static final int NUMBER_OF_ENDING_LETTERS = 3;

    private final String value;

    // instance creation

    public static boolean canBeCreatedFrom(String aZipCode) {
        return Character.isLetter(aZipCode.charAt(0));
    }

    public static NewZipCode with(String aZipCode) {
        assertIsValid(aZipCode);
        return new NewZipCode(aZipCode);
    }

    // error messages

    public static String invalidZipCodeErrorDescription() {
        return "Invalid new zipcode";
    }

    // asserting - private

    private static void assertIsValid(String aZipCode) {
        assertThat(aZipCode.length() == SIZE, invalidZipCodeErrorDescription());
        assertThat(isAllDigits(oldZipCodePartOf(aZipCode)), invalidZipCodeErrorDescription());
        assertThat(Integer.parseInt(oldZipCodePartOf(aZipCode)) >= MINIMUM_OLD_ZIP_CODE_VALUE, invalidZipCodeErrorDescription());
        assertThat(isAllLetters(endingLettersOf(aZipCode)), invalidZipCodeErrorDescription());
    }

    private static String endingLettersOf(String aZipCode) {
        return aZipCode.substring(aZipCode.length() - NUMBER_OF_ENDING_LETTERS);
    }

    private static String oldZipCodePartOf(String aZipCode) {
        return aZipCode.substring(1, 5);
    }

    // initialization

    private NewZipCode(String aValue) {
        value = aValue;
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

    // evaluating

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return value();
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }
}
