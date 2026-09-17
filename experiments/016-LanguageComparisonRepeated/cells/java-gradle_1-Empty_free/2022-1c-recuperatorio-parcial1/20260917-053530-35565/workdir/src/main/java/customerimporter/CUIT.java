package customerimporter;

import java.util.List;
import java.util.function.Supplier;

public class CUIT extends Identification {

    public static final String TYPE = "C";

    private static final List<String> VALID_HEADERS = List.of("20", "23", "24", "25", "26", "27", "30", "33", "34");

    // error messages

    public static String invalidCUITNumberErrorDescription() {
        return "Invalid CUIT number";
    }

    // initialization

    public CUIT(String aNumber) {
        super(aNumber);
    }

    protected void assertValidNumber(String aNumber) {
        // "23-25666777-9" size 13
        assertValid(aNumber.length() >= 12 && aNumber.length() <= 13);
        assertValid(aNumber.charAt(2) == '-' && aNumber.charAt(aNumber.length() - 2) == '-');
        assertValid(VALID_HEADERS.contains(aNumber.substring(0, 2)));
        assertValid(Character.isDigit(aNumber.charAt(aNumber.length() - 1)));
        assertValid(isAllDigits(aNumber.substring(3, aNumber.length() - 2)));
    }

    protected String invalidValueErrorDescription() {
        return invalidCUITNumberErrorDescription();
    }

    // accessing

    public String type() {
        return TYPE;
    }

    // testing

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
}
