package customerimporter;

class Characters {

    // testing

    static boolean areAllDigits(String aString) {
        return aString.chars().allMatch(aChar -> Character.isDigit(aChar));
    }

    static boolean areAllLetters(String aString) {
        return aString.chars().allMatch(aChar -> Character.isLetter(aChar));
    }
}
