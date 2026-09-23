package customerimporter;

import java.util.function.Supplier;

public class OldZipCode extends ZipCode {

    private static final int SMALLEST_CODE = 1000;
    private static final int BIGGEST_CODE = 9999;

    // instance creation

    public static boolean recognizes(String aCode) {
        return Strings.startsWithDigit(aCode);
    }

    // initialization

    public OldZipCode(String aCode) {
        super(aCode);
    }

    // zip code

    public Object value() {
        return Integer.parseInt(code());
    }

    public boolean isOld() {
        return true;
    }

    public boolean isNew() {
        return false;
    }

    public Object oldZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return value();
    }

    public Object newZipCodeIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    // validation

    protected boolean isValidCode(String aCode) {
        return Strings.areAllDigits(aCode) && isInValidRange(Integer.parseInt(aCode));
    }

    protected String invalidCodeErrorDescription() {
        return "Invalid old zipcode";
    }

    // validation - private

    private boolean isInValidRange(int aZipCodeNumber) {
        return aZipCodeNumber >= SMALLEST_CODE && aZipCodeNumber <= BIGGEST_CODE;
    }
}
