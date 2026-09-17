package customerimporter;

import java.util.List;
import java.util.function.Supplier;

public class CUIT extends Identification {

    private static final String TYPE = "C";
    private static final List<String> VALID_HEADERS = List.of("20", "23", "24", "25", "26", "27", "30", "33", "34");

    // instance creation

    static boolean canHandle(String aType) {
        return TYPE.equals(aType);
    }

    // error messages

    public static String invalidCUITNumberErrorDescription() {
        return "Invalid CUIT number";
    }

    // initialization

    public CUIT(String aNumber) {
        super(aNumber);
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

    // validation

    // e.g. "23-25666777-9"
    protected boolean isValidNumber(String aNumber) {
        int size = aNumber.length();

        return size >= 12 && size <= 13
            && aNumber.charAt(2) == '-'
            && aNumber.charAt(size - 2) == '-'
            && VALID_HEADERS.contains(aNumber.substring(0, 2))
            && Character.isDigit(aNumber.charAt(size - 1))
            && Strings.isAllDigits(aNumber.substring(3, size - 2));
    }

    protected String invalidNumberErrorDescription() {
        return invalidCUITNumberErrorDescription();
    }
}
