package customerimporter;

import java.util.Collection;

public class CodeValidator {

    private final String errorDescription;

    // instance creation

    public static CodeValidator failingWith(String anErrorDescription) {
        return new CodeValidator(anErrorDescription);
    }

    // initialization

    private CodeValidator(String anErrorDescription) {
        errorDescription = anErrorDescription;
    }

    // asserting

    public void assertAllDigits(String aString) {
        assertThat(aString.chars().allMatch(aChar -> Character.isDigit(aChar)));
    }

    public void assertAllLetters(String aString) {
        assertThat(aString.chars().allMatch(aChar -> Character.isLetter(aChar)));
    }

    public void assertCharAtIs(String aString, int anIndex, char aChar) {
        assertThat(aString.charAt(anIndex) == aChar);
    }

    public void assertIsOneOf(String aString, Collection<String> validValues) {
        assertThat(validValues.contains(aString));
    }

    public int assertNumberBetween(String aString, int aMinimum, int aMaximum) {
        int aNumber;

        assertAllDigits(aString);
        aNumber = Integer.parseInt(aString);
        assertThat(aNumber >= aMinimum && aNumber <= aMaximum);

        return aNumber;
    }

    public void assertSizeBetween(String aString, int aMinimum, int aMaximum) {
        assertThat(aString.length() >= aMinimum && aString.length() <= aMaximum);
    }

    public void assertSizeIs(String aString, int aSize) {
        assertSizeBetween(aString, aSize, aSize);
    }

    // asserting - private

    private void assertThat(boolean aCondition) {
        if (!aCondition) throw new RuntimeException(errorDescription);
    }
}
