package customerimporter;

public class Strings {

    // testing

    public static boolean areAllDigits(String aString) {
        return aString.chars().allMatch(aChar -> Character.isDigit(aChar));
    }

    public static boolean areAllLetters(String aString) {
        return aString.chars().allMatch(aChar -> Character.isLetter(aChar));
    }

    public static boolean startsWithDigit(String aString) {
        return Character.isDigit(aString.charAt(0));
    }

    public static boolean startsWithLetter(String aString) {
        return Character.isLetter(aString.charAt(0));
    }
}
