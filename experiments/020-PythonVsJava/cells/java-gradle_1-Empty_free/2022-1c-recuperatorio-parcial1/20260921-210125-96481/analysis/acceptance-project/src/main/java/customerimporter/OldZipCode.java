package customerimporter;

import java.util.function.Supplier;

public class OldZipCode extends ZipCode {

    private static final int minimumValue = 1000;
    private static final int maximumValue = 9999;

    // instance creation

    public static boolean canRepresent(String aCode) {
        return Character.isDigit(aCode.charAt(0));
    }

    public static OldZipCode from(String aCode) {
        return new OldZipCode(aCode);
    }

    // error messages

    public String invalidZipCodeErrorDescription() {
        return "Invalid old zipcode";
    }

    // initialization

    private OldZipCode(String aCode) {
        super(aCode);
    }

    // zip code

    public Object value() {
        return Integer.parseInt(code());
    }

    // old - new

    public boolean isOld() {
        return true;
    }

    public Object oldValueIfNone(Supplier<Object> aNoneBlock) {
        return value();
    }

    // validation

    protected boolean isValid(String aCode) {
        return Strings.hasOnlyDigits(aCode) && isInValidRange(Integer.parseInt(aCode));
    }

    private boolean isInValidRange(int aValue) {
        return aValue >= minimumValue && aValue <= maximumValue;
    }
}
