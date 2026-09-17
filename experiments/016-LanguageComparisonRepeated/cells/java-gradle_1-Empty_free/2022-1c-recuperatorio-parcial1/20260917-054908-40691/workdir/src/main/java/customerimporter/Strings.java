package customerimporter;

final class Strings {

    // testing

    static boolean isAllDigits(String aString) {
        return aString.chars().allMatch(aChar -> Character.isDigit(aChar));
    }

    static boolean isAllLetters(String aString) {
        return aString.chars().allMatch(aChar -> Character.isLetter(aChar));
    }

    static boolean isBetween(long aValue, long aMin, long aMax) {
        return aValue >= aMin && aValue <= aMax;
    }

    // initialization

    private Strings() {
    }
}
