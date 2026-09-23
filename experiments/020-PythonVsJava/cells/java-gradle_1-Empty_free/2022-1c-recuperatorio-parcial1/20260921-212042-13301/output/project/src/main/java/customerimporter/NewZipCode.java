package customerimporter;

import java.util.function.Supplier;

public class NewZipCode extends ZipCode {

    // "B1636BBE" size 8
    private static final int SIZE = 8;
    private static final int NUMBER_OF_ENDING_LETTERS = 3;
    private static final int SMALLEST_OLD_ZIP_CODE_PART = 1000;

    // instance creation

    public static boolean recognizes(String aCode) {
        return Strings.startsWithLetter(aCode);
    }

    // initialization

    public NewZipCode(String aCode) {
        super(aCode);
    }

    // zip code

    public Object value() {
        return code();
    }

    public boolean isOld() {
        return false;
    }

    public boolean isNew() {
        return true;
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return value();
    }

    // validation

    protected boolean isValidCode(String aCode) {
        return hasValidSize(aCode)
            && hasValidOldZipCodePart(aCode)
            && endsWithLetters(aCode);
    }

    protected String invalidCodeErrorDescription() {
        return "Invalid new zipcode";
    }

    // validation - private

    private boolean hasValidSize(String aCode) {
        return aCode.length() == SIZE;
    }

    private boolean hasValidOldZipCodePart(String aCode) {
        String oldZipCodePart = oldZipCodePartOf(aCode);
        return Strings.areAllDigits(oldZipCodePart) && Integer.parseInt(oldZipCodePart) >= SMALLEST_OLD_ZIP_CODE_PART;
    }

    private boolean endsWithLetters(String aCode) {
        return Strings.areAllLetters(aCode.substring(aCode.length() - NUMBER_OF_ENDING_LETTERS));
    }

    private String oldZipCodePartOf(String aCode) {
        return aCode.substring(1, 5);
    }
}
