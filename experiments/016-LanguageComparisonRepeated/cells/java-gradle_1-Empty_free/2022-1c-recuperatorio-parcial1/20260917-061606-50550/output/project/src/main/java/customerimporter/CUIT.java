package customerimporter;

import java.util.List;
import java.util.function.Supplier;

public class CUIT extends Identification {

    public static final String TYPE = "C";

    private static final List<String> VALID_HEADERS = List.of("20", "23", "24", "25", "26", "27", "30", "33", "34");

    // initialization

    public CUIT(String aNumber) {
        super(aNumber);
        // "23-25666777-9" size 13
        assertValidNumber(aNumber.length() >= 12 && aNumber.length() <= 13);
        assertValidNumber(aNumber.charAt(2) == '-' && aNumber.charAt(aNumber.length() - 2) == '-');
        assertValidNumber(VALID_HEADERS.contains(aNumber.substring(0, 2)));
        assertValidNumber(Character.isDigit(aNumber.charAt(aNumber.length() - 1)));
        assertValidNumber(Characters.areAllDigits(aNumber.substring(3, aNumber.length() - 2)));
    }

    // validation

    protected String invalidNumberErrorDescription() {
        return "Invalid CUIT number";
    }

    // accessing

    public String type() {
        return TYPE;
    }

    // kind

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
        return number;
    }
}
