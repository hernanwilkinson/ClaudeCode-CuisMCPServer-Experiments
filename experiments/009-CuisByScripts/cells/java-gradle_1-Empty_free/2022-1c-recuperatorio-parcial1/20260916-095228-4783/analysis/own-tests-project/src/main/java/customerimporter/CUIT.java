package customerimporter;

import java.util.List;
import java.util.function.Supplier;

public class CUIT extends Identification {

    public static final String TYPE = "C";
    private static final List<String> VALID_HEADERS = List.of("20", "23", "24", "25", "26", "27", "30", "33", "34");

    // subtype selection

    public static boolean canHandle(String aType) {
        return aType.equals(TYPE);
    }

    // initialization

    public CUIT(String aNumber) {
        super(aNumber);
        // "23-25666777-9" size 13
        assertValid(aNumber.length() >= 12 && aNumber.length() <= 13);
        assertValid(aNumber.charAt(2) == '-' && aNumber.charAt(aNumber.length() - 2) == '-');
        assertValid(VALID_HEADERS.contains(aNumber.substring(0, 2)));
        assertValid(Character.isDigit(aNumber.charAt(aNumber.length() - 1)));
        assertValid(Characters.areAllDigits(aNumber.substring(3, aNumber.length() - 2)));
    }

    // error messages

    protected String invalidNumberErrorDescription() {
        return "Invalid CUIT number";
    }

    // accessing

    public String type() {
        return TYPE;
    }

    // testing

    public boolean isCUIT() {
        return true;
    }

    public boolean isDNI() {
        return false;
    }

    // numbers

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return number;
    }
}
