package customerimporter;

import java.util.function.Supplier;

public class NewZipCode extends ZipCode {

    // "B1636BBE": a letter, an old zip code number and three letters
    private static final int SIZE = 8;
    private static final int NUMBER_FIRST_INDEX = 1;
    private static final int NUMBER_LAST_INDEX = 5;
    private static final int ENDING_LETTERS_SIZE = 3;

    private final String zipCode;

    // instance creation

    public static boolean canBeCreatedFrom(String aZipCode) {
        return Character.isLetter(aZipCode.charAt(0));
    }

    // error messages

    public static String invalidZipCodeErrorDescription() {
        return "Invalid new zipcode";
    }

    // initialization

    NewZipCode(String aZipCode) {
        assertIsValid(aZipCode);
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

    // initialization - private

    private static void assertIsValid(String aZipCode) {
        String errorDescription = invalidZipCodeErrorDescription();

        Validation.assertThat(aZipCode.length() == SIZE, errorDescription);
        OldZipCode.assertIsValidNumber(aZipCode.substring(NUMBER_FIRST_INDEX, NUMBER_LAST_INDEX), errorDescription);
        Validation.assertAreAllLetters(aZipCode.substring(aZipCode.length() - ENDING_LETTERS_SIZE), errorDescription);
    }
}
