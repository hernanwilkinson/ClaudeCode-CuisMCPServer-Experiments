package customerimporter;

import static customerimporter.Validation.assertThat;
import static customerimporter.Validation.isAllDigits;
import static customerimporter.Validation.isBetween;

import java.util.List;
import java.util.function.Supplier;

public class CUIT extends Identification {

    public static final String TYPE_CODE = "C";

    // "23-25666777-9" size 13
    private static final int MINIMUM_SIZE = 12;
    private static final int MAXIMUM_SIZE = 13;
    private static final List<String> validHeaders = List.of("20", "23", "24", "25", "26", "27", "30", "33", "34");

    // instance creation

    public static CUIT with(String aNumber) {
        assertIsValidNumber(aNumber);
        return new CUIT(aNumber);
    }

    // error messages

    public static String invalidNumberErrorDescription() {
        return "Invalid CUIT number";
    }

    // asserting - private

    private static void assertIsValidNumber(String aNumber) {
        assertThat(isBetween(aNumber.length(), MINIMUM_SIZE, MAXIMUM_SIZE), invalidNumberErrorDescription());
        assertThat(aNumber.charAt(2) == '-' && aNumber.charAt(aNumber.length() - 2) == '-', invalidNumberErrorDescription());
        assertThat(validHeaders.contains(aNumber.substring(0, 2)), invalidNumberErrorDescription());
        assertThat(Character.isDigit(aNumber.charAt(aNumber.length() - 1)), invalidNumberErrorDescription());
        assertThat(isAllDigits(aNumber.substring(3, aNumber.length() - 2)), invalidNumberErrorDescription());
    }

    // initialization

    private CUIT(String aNumber) {
        super(aNumber);
    }

    // accessing

    public String typeCode() {
        return TYPE_CODE;
    }

    // testing

    public boolean isCUIT() {
        return true;
    }

    public boolean isDNI() {
        return false;
    }

    // evaluating

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return number();
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }
}
