package customerimporter;

public class ImportValidations {

    // assertions

    public static void assertThat(boolean aCondition, String anErrorDescription) {
        if (!aCondition) throw new RuntimeException(anErrorDescription);
    }

    // testing

    public static boolean isAllDigits(String aString) {
        return aString.chars().allMatch(aChar -> Character.isDigit(aChar));
    }

    public static boolean isAllLetters(String aString) {
        return aString.chars().allMatch(aChar -> Character.isLetter(aChar));
    }

    public static boolean isBetween(int aNumber, int aMin, int aMax) {
        return aNumber >= aMin && aNumber <= aMax;
    }
}
