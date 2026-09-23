package customerimporter;

import java.util.function.Supplier;

public class DNI extends Identification {

    public static final String TYPE_CODE = "D";

    private static final int SMALLEST_NUMBER = 1;
    private static final int BIGGEST_NUMBER = 99999999;

    // instance creation

    public static boolean recognizes(String aTypeCode) {
        return TYPE_CODE.equals(aTypeCode);
    }

    // initialization

    public DNI(String aNumber) {
        super(aNumber);
    }

    // identification

    public String typeCode() {
        return TYPE_CODE;
    }

    public boolean isDNI() {
        return true;
    }

    public boolean isCUIT() {
        return false;
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return Integer.parseInt(number());
    }

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    // validation

    protected boolean isValidNumber(String aNumber) {
        return Strings.areAllDigits(aNumber) && isInValidRange(Integer.parseInt(aNumber));
    }

    protected String invalidNumberErrorDescription() {
        return "Invalid DNI number";
    }

    // validation - private

    private boolean isInValidRange(int aDniNumber) {
        return aDniNumber >= SMALLEST_NUMBER && aDniNumber <= BIGGEST_NUMBER;
    }
}
