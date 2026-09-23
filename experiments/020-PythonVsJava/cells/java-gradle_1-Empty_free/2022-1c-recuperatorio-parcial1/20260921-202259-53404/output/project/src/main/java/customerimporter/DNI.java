package customerimporter;

import static customerimporter.Validation.assertThat;
import static customerimporter.Validation.isAllDigits;
import static customerimporter.Validation.isBetween;

import java.util.function.Supplier;

public class DNI extends Identification {

    public static final String TYPE_CODE = "D";

    private static final int MINIMUM_NUMBER = 1;
    private static final int MAXIMUM_NUMBER = 99999999;

    // instance creation

    public static DNI with(String aNumber) {
        assertIsValidNumber(aNumber);
        return new DNI(aNumber);
    }

    // error messages

    public static String invalidNumberErrorDescription() {
        return "Invalid DNI number";
    }

    // asserting - private

    private static void assertIsValidNumber(String aNumber) {
        assertThat(isAllDigits(aNumber), invalidNumberErrorDescription());
        assertThat(isBetween(Integer.parseInt(aNumber), MINIMUM_NUMBER, MAXIMUM_NUMBER), invalidNumberErrorDescription());
    }

    // initialization

    private DNI(String aNumber) {
        super(aNumber);
    }

    // accessing

    public String typeCode() {
        return TYPE_CODE;
    }

    // testing

    public boolean isCUIT() {
        return false;
    }

    public boolean isDNI() {
        return true;
    }

    // evaluating

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return Integer.parseInt(number());
    }
}
