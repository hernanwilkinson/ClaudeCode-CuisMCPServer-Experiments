package customerimporter;

import java.util.function.Supplier;

public class NewZipCode extends ZipCode {

    // "B1636BBE" size 8
    private static final int validSize = 8;
    private static final int minimumOldZipCodePart = 1000;
    private static final int numberOfEndingLetters = 3;

    // instance creation

    public static boolean canRepresent(String aCode) {
        return Character.isLetter(aCode.charAt(0));
    }

    public static NewZipCode from(String aCode) {
        return new NewZipCode(aCode);
    }

    // error messages

    public String invalidZipCodeErrorDescription() {
        return "Invalid new zipcode";
    }

    // initialization

    private NewZipCode(String aCode) {
        super(aCode);
    }

    // zip code

    public Object value() {
        return code();
    }

    // old - new

    public boolean isNew() {
        return true;
    }

    public Object newValueIfNone(Supplier<Object> aNoneBlock) {
        return value();
    }

    // validation

    protected boolean isValid(String aCode) {
        return hasValidSize(aCode) && hasValidOldZipCodePart(aCode) && endsWithLetters(aCode);
    }

    private boolean hasValidSize(String aCode) {
        return aCode.length() == validSize;
    }

    private boolean hasValidOldZipCodePart(String aCode) {
        String oldZipCodePart = aCode.substring(1, 5);
        return Strings.hasOnlyDigits(oldZipCodePart) && Integer.parseInt(oldZipCodePart) >= minimumOldZipCodePart;
    }

    private boolean endsWithLetters(String aCode) {
        return Strings.hasOnlyLetters(aCode.substring(aCode.length() - numberOfEndingLetters));
    }
}
