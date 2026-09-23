package customerimporter;

import java.util.List;
import java.util.function.Supplier;

public class CUIT extends Identification {

    public static final String TYPE_CODE = "C";

    // "23-25666777-9" size 13
    private static final int SMALLEST_SIZE = 12;
    private static final int BIGGEST_SIZE = 13;

    private static final List<String> VALID_HEADERS = List.of("20", "23", "24", "25", "26", "27", "30", "33", "34");

    // instance creation

    public static boolean recognizes(String aTypeCode) {
        return TYPE_CODE.equals(aTypeCode);
    }

    // initialization

    public CUIT(String aNumber) {
        super(aNumber);
    }

    // identification

    public String typeCode() {
        return TYPE_CODE;
    }

    public boolean isDNI() {
        return false;
    }

    public boolean isCUIT() {
        return true;
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return number();
    }

    // validation

    protected boolean isValidNumber(String aNumber) {
        return hasValidSize(aNumber)
            && hasDashesInRightPositions(aNumber)
            && hasValidHeader(aNumber)
            && endsWithVerificationDigit(aNumber)
            && hasAllDigitsInBody(aNumber);
    }

    protected String invalidNumberErrorDescription() {
        return "Invalid CUIT number";
    }

    // validation - private

    private boolean hasValidSize(String aNumber) {
        return aNumber.length() >= SMALLEST_SIZE && aNumber.length() <= BIGGEST_SIZE;
    }

    private boolean hasDashesInRightPositions(String aNumber) {
        return aNumber.charAt(2) == '-' && aNumber.charAt(aNumber.length() - 2) == '-';
    }

    private boolean hasValidHeader(String aNumber) {
        return VALID_HEADERS.contains(aNumber.substring(0, 2));
    }

    private boolean endsWithVerificationDigit(String aNumber) {
        return Character.isDigit(aNumber.charAt(aNumber.length() - 1));
    }

    private boolean hasAllDigitsInBody(String aNumber) {
        return Strings.areAllDigits(aNumber.substring(3, aNumber.length() - 2));
    }
}
