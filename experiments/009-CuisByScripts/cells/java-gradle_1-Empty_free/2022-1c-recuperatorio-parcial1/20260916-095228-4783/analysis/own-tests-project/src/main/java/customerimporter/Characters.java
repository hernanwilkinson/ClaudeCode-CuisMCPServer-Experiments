package customerimporter;

public class Characters {

    // testing

    public static boolean areAllDigits(String aString) {
        return aString.chars().allMatch(Character::isDigit);
    }

    public static boolean areAllLetters(String aString) {
        return aString.chars().allMatch(Character::isLetter);
    }

    public static boolean startsWithDigit(String aString) {
        return Character.isDigit(aString.charAt(0));
    }

    public static boolean startsWithLetter(String aString) {
        return Character.isLetter(aString.charAt(0));
    }
}
