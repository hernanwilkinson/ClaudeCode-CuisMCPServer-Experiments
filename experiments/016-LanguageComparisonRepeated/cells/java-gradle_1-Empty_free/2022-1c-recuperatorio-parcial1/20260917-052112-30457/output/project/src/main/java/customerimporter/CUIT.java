package customerimporter;

import java.util.Arrays;
import java.util.List;
import java.util.function.Supplier;

public class CUIT extends Identification {

    public static final String TYPE = "C";

    private static final List<String> VALID_HEADERS = Arrays.asList("20", "23", "24", "25", "26", "27", "30", "33", "34");

    // initialization

    public CUIT(String aNumber) {
        super(aNumber);
    }

    // accessing

    public String type() {
        return TYPE;
    }

    // testing

    public boolean isCUIT() {
        return true;
    }

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return number;
    }

    // validation - private

    protected void assertIsValid() {
        // "23-25666777-9" size 13
        int size = number.length();

        assertValidNumber(ImportValidations.isBetween(size, 12, 13));
        assertValidNumber(number.charAt(2) == '-' && number.charAt(size - 2) == '-');
        assertValidNumber(VALID_HEADERS.contains(number.substring(0, 2)));
        assertValidNumber(Character.isDigit(number.charAt(size - 1)));
        assertValidNumber(ImportValidations.isAllDigits(number.substring(3, size - 2)));
    }

    protected String invalidNumberErrorDescription() {
        return "Invalid CUIT number";
    }
}
