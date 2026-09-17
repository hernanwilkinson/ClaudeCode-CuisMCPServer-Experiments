package customerimporter;

import java.util.function.Supplier;

public class DNI extends Identification {

    public static final String TYPE = "D";

    // error messages

    public static String invalidDNINumberErrorDescription() {
        return "Invalid DNI number";
    }

    // initialization

    public DNI(String aNumber) {
        super(aNumber);
    }

    protected void assertValidNumber(String aNumber) {
        assertValid(isAllDigits(aNumber));
        int dniNumber = Integer.parseInt(aNumber);
        assertValid(dniNumber >= 1 && dniNumber <= 99999999);
    }

    protected String invalidValueErrorDescription() {
        return invalidDNINumberErrorDescription();
    }

    // accessing

    public String type() {
        return TYPE;
    }

    // testing

    public boolean isDNI() {
        return true;
    }

    public boolean isCUIT() {
        return false;
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return Integer.parseInt(number());
    }

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }
}
