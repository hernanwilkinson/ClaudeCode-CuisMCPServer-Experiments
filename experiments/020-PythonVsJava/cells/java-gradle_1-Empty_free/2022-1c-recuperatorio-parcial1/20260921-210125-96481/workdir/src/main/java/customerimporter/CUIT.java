package customerimporter;

import java.util.List;
import java.util.function.Supplier;

public class CUIT extends Identification {

    public static final String type = "C";

    // "23-25666777-9" size 13
    private static final int minimumSize = 12;
    private static final int maximumSize = 13;
    private static final List<String> validHeaders = List.of("20", "23", "24", "25", "26", "27", "30", "33", "34");

    // instance creation

    public static CUIT withNumber(String aNumber) {
        return new CUIT(aNumber);
    }

    // error messages

    public String invalidNumberErrorDescription() {
        return "Invalid CUIT number";
    }

    // initialization

    private CUIT(String aNumber) {
        super(aNumber);
    }

    // identification

    public String type() {
        return type;
    }

    // dni - cuit

    public boolean isCUIT() {
        return true;
    }

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return number();
    }

    // validation

    protected boolean isValidNumber(String aNumber) {
        return hasValidSize(aNumber)
            && hasDashesInRightPositions(aNumber)
            && hasValidHeader(aNumber)
            && endsWithDigit(aNumber)
            && hasOnlyDigitsInBody(aNumber);
    }

    private boolean hasValidSize(String aNumber) {
        return aNumber.length() >= minimumSize && aNumber.length() <= maximumSize;
    }

    private boolean hasDashesInRightPositions(String aNumber) {
        return aNumber.charAt(2) == '-' && aNumber.charAt(aNumber.length() - 2) == '-';
    }

    private boolean hasValidHeader(String aNumber) {
        return validHeaders.contains(aNumber.substring(0, 2));
    }

    private boolean endsWithDigit(String aNumber) {
        return Character.isDigit(aNumber.charAt(aNumber.length() - 1));
    }

    private boolean hasOnlyDigitsInBody(String aNumber) {
        return Strings.hasOnlyDigits(aNumber.substring(3, aNumber.length() - 2));
    }
}
