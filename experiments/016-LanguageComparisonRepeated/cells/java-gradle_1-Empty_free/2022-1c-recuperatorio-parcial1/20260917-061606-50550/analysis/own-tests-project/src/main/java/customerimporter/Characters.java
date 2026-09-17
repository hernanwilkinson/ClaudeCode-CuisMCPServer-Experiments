package customerimporter;

public class Characters {

    // testing

    public static boolean areAllDigits(String aString) {
        return aString.chars().allMatch(aChar -> Character.isDigit(aChar));
    }

    public static boolean areAllLetters(String aString) {
        return aString.chars().allMatch(aChar -> Character.isLetter(aChar));
    }
}
