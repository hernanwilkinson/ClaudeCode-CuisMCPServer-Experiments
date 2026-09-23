package customerimporter;

/**
 * Checks shared by the validation of {@link Identification}s and {@link ZipCode}s,
 * so that no rule and no error signaling is written twice.
 */
class Validation {

    // asserting

    static void assertThat(boolean aCondition, String anErrorDescription) {
        if (!aCondition) throw new RuntimeException(anErrorDescription);
    }

    // characters

    static boolean isAllDigits(String aString) {
        return aString.chars().allMatch(aChar -> Character.isDigit(aChar));
    }

    static boolean isAllLetters(String aString) {
        return aString.chars().allMatch(aChar -> Character.isLetter(aChar));
    }

    // numbers

    static boolean isBetween(int aNumber, int aMinimum, int aMaximum) {
        return aNumber >= aMinimum && aNumber <= aMaximum;
    }
}
