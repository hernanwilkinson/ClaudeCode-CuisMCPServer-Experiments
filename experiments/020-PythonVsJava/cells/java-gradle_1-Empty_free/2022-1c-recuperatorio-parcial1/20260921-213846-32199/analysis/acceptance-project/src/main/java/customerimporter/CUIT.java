package customerimporter;

import java.util.List;
import java.util.function.Supplier;

public class CUIT extends Identification {

    public static final String TYPE = "C";

    // "23-25666777-9" size 13
    private static final int MINIMUM_SIZE = 12;
    private static final int MAXIMUM_SIZE = 13;
    private static final int FIRST_DASH_INDEX = 2;
    private static final List<String> VALID_PREFIXES = List.of("20", "23", "24", "25", "26", "27", "30", "33", "34");
    private static final CodeValidator validator = CodeValidator.failingWith(invalidCUITNumberErrorDescription());

    private final String number;

    // instance creation

    public static CUIT from(String aNumber) {
        assertIsValidNumber(aNumber);
        return new CUIT(aNumber);
    }

    // error messages

    public static String invalidCUITNumberErrorDescription() {
        return "Invalid CUIT number";
    }

    // asserting - private

    private static void assertIsValidNumber(String aNumber) {
        validator.assertSizeBetween(aNumber, MINIMUM_SIZE, MAXIMUM_SIZE);
        validator.assertCharAtIs(aNumber, FIRST_DASH_INDEX, '-');
        validator.assertCharAtIs(aNumber, aNumber.length() - 2, '-');
        validator.assertIsOneOf(prefixOf(aNumber), VALID_PREFIXES);
        validator.assertAllDigits(verificationDigitOf(aNumber));
        validator.assertAllDigits(identificationNumberOf(aNumber));
    }

    private static String identificationNumberOf(String aNumber) {
        return aNumber.substring(FIRST_DASH_INDEX + 1, aNumber.length() - 2);
    }

    private static String prefixOf(String aNumber) {
        return aNumber.substring(0, FIRST_DASH_INDEX);
    }

    private static String verificationDigitOf(String aNumber) {
        return aNumber.substring(aNumber.length() - 1);
    }

    // initialization

    private CUIT(String aNumber) {
        number = aNumber;
    }

    // identification

    public String number() {
        return number;
    }

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

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }
}
