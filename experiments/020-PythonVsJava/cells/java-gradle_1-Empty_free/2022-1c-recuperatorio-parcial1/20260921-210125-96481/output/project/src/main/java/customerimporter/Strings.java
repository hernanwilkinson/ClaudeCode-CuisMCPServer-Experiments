package customerimporter;

public class Strings {

    // testing

    public static boolean hasOnlyDigits(String aString) {
        return aString.chars().allMatch(aCharacter -> Character.isDigit(aCharacter));
    }

    public static boolean hasOnlyLetters(String aString) {
        return aString.chars().allMatch(aCharacter -> Character.isLetter(aCharacter));
    }
}
