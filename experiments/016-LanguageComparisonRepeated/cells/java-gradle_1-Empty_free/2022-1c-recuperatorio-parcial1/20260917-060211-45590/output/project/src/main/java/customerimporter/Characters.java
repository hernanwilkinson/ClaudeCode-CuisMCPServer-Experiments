package customerimporter;

public final class Characters {

    // testing

    public static boolean areAllDigits(String aString) {
        return aString.chars().allMatch(Character::isDigit);
    }

    public static boolean areAllLetters(String aString) {
        return aString.chars().allMatch(Character::isLetter);
    }

    // initialization

    private Characters() {
    }
}
