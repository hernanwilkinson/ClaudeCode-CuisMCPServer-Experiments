package customerimporter;

public final class Validation {

    // asserting

    public static void assertAreAllDigits(String aString, String anErrorDescription) {
        assertThat(aString.chars().allMatch(aChar -> Character.isDigit(aChar)), anErrorDescription);
    }

    public static void assertAreAllLetters(String aString, String anErrorDescription) {
        assertThat(aString.chars().allMatch(aChar -> Character.isLetter(aChar)), anErrorDescription);
    }

    public static int assertIsNumberBetween(String aString, int aMinimum, int aMaximum, String anErrorDescription) {
        int number;

        assertAreAllDigits(aString, anErrorDescription);
        number = Integer.parseInt(aString);
        assertThat(number >= aMinimum && number <= aMaximum, anErrorDescription);

        return number;
    }

    public static void assertThat(boolean aCondition, String anErrorDescription) {
        if (!aCondition) throw new RuntimeException(anErrorDescription);
    }

    // initialization

    private Validation() {
    }
}
