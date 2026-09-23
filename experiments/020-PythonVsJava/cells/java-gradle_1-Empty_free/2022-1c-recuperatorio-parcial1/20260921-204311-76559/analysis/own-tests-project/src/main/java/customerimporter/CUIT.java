package customerimporter;

import java.util.Arrays;
import java.util.List;
import java.util.function.Supplier;

public class CUIT extends Identification {

    public static final String TYPE = "C";

    // "23-2566677-9" size 12, "23-25666777-9" size 13
    private static final int MINIMUM_SIZE = 12;
    private static final int MAXIMUM_SIZE = 13;
    private static final int HEADER_SIZE = 2;
    private static final List<String> VALID_HEADERS = Arrays.asList("20", "23", "24", "25", "26", "27", "30", "33", "34");

    // error messages

    public static String invalidNumberErrorDescription() {
        return "Invalid CUIT number";
    }

    // initialization

    CUIT(String anIdentificationNumber) {
        super(anIdentificationNumber);
        assertIsValidNumber(anIdentificationNumber);
    }

    // identification

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
        return number();
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    // initialization - private

    private static void assertIsValidNumber(String aNumber) {
        String errorDescription = invalidNumberErrorDescription();

        Validation.assertThat(aNumber.length() >= MINIMUM_SIZE && aNumber.length() <= MAXIMUM_SIZE, errorDescription);
        Validation.assertThat(aNumber.charAt(HEADER_SIZE) == '-' && aNumber.charAt(aNumber.length() - 2) == '-', errorDescription);
        Validation.assertThat(VALID_HEADERS.contains(aNumber.substring(0, HEADER_SIZE)), errorDescription);
        Validation.assertThat(Character.isDigit(aNumber.charAt(aNumber.length() - 1)), errorDescription);
        Validation.assertAreAllDigits(aNumber.substring(HEADER_SIZE + 1, aNumber.length() - 2), errorDescription);
    }
}
