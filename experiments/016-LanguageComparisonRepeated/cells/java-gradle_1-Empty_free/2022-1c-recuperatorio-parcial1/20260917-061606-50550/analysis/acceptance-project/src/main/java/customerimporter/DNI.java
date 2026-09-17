package customerimporter;

import java.util.function.Supplier;

public class DNI extends Identification {

    public static final String TYPE = "D";

    // initialization

    public DNI(String aNumber) {
        super(aNumber);
        assertValidNumber(Characters.areAllDigits(aNumber));
        int dniNumber = Integer.parseInt(aNumber);
        assertValidNumber(dniNumber >= 1 && dniNumber <= 99999999);
    }

    // validation

    protected String invalidNumberErrorDescription() {
        return "Invalid DNI number";
    }

    // accessing

    public String type() {
        return TYPE;
    }

    // kind

    public boolean isDNI() {
        return true;
    }

    public boolean isCUIT() {
        return false;
    }

    public Object dniNumberIfNone(Supplier<Object> aNoneBlock) {
        return Integer.parseInt(number);
    }

    public Object cuitNumberIfNone(Supplier<Object> aNoneBlock) {
        return aNoneBlock.get();
    }
}
