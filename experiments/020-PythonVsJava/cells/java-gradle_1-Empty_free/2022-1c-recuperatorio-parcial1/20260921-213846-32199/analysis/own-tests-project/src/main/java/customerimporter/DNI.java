package customerimporter;

import java.util.function.Supplier;

public class DNI extends Identification {

    public static final String TYPE = "D";

    private static final int MINIMUM_NUMBER = 1;
    private static final int MAXIMUM_NUMBER = 99999999;
    private static final CodeValidator validator = CodeValidator.failingWith(invalidDNINumberErrorDescription());

    private final String number;
    private final int dniNumber;

    // instance creation

    public static DNI from(String aNumber) {
        return new DNI(aNumber, validator.assertNumberBetween(aNumber, MINIMUM_NUMBER, MAXIMUM_NUMBER));
    }

    // error messages

    public static String invalidDNINumberErrorDescription() {
        return "Invalid DNI number";
    }

    // initialization

    private DNI(String aNumber, int aDNINumber) {
        number = aNumber;
        dniNumber = aDNINumber;
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
        return false;
    }

    public boolean isDNI() {
        return true;
    }

    // numbers

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return dniNumber;
    }
}
