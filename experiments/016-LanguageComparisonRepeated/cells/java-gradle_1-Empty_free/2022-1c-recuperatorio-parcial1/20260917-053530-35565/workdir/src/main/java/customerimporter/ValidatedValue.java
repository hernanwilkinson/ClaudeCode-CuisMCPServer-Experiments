package customerimporter;

public abstract class ValidatedValue {

    // assertions

    protected void assertValid(boolean aCondition) {
        if (!aCondition) throw new RuntimeException(invalidValueErrorDescription());
    }

    protected abstract String invalidValueErrorDescription();

    // characters

    protected static boolean isAllDigits(String aString) {
        return aString.chars().allMatch(Character::isDigit);
    }

    protected static boolean isAllLetters(String aString) {
        return aString.chars().allMatch(Character::isLetter);
    }
}
